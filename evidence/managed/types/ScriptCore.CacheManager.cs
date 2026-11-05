using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

internal class CacheManager : ICacheManager
{
	private bool mIsCacheVerified;

	private bool mIsCachingEnabled;

	internal static readonly string kDatabaseName = "GameplayData";

	public bool IsCachingEnabled
	{
		get
		{
			if (!mIsCacheVerified)
			{
				VerifyCache();
			}
			return mIsCachingEnabled;
		}
	}

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CacheManager_IsCachingAllowed([MarshalAs(UnmanagedType.LPWStr)] string databaseName);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CacheManager_ReadCachedData([MarshalAs(UnmanagedType.LPWStr)] string tagStr, [MarshalAs(UnmanagedType.SafeArray)] out byte[] data);

	[DllImport("Sims3Common")]
	private static extern uint CacheManager_ReadCachedDataAsStream([MarshalAs(UnmanagedType.LPWStr)] string tagStr);

	[DllImport("Sims3Common")]
	private static extern void CacheManager_WriteCachedData([MarshalAs(UnmanagedType.LPWStr)] string tagStr, [MarshalAs(UnmanagedType.SafeArray)] byte[] data, uint length);

	[DllImport("Sims3Common")]
	private static extern void CacheManager_WriteCachedDataFromStream([MarshalAs(UnmanagedType.LPWStr)] string tagStr, uint streamHandle);

	[DllImport("Sims3Common")]
	private static extern void CacheManager_ClearCache();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	internal static extern bool CacheManager_ReadDatabaseChecksum([MarshalAs(UnmanagedType.LPWStr)] string databaseName, out ulong checksum, out ulong dataSize, out int recordCount);

	public CacheManager()
	{
		AppDomain.CurrentDomain.SetData("CacheManager", this);
	}

	public object LoadTuningData(string tag)
	{
		if (!mIsCacheVerified)
		{
			VerifyCache();
		}
		if (!mIsCachingEnabled)
		{
			return null;
		}
		uint num = CacheManager_ReadCachedDataAsStream(tag);
		if (num == 0)
		{
			return null;
		}
		using FastStreamReader streamReader = new FastStreamReader(num);
		return Deserialize(streamReader);
	}

	public object Deserialize(byte[] data)
	{
		if (data == null)
		{
			return null;
		}
		using FastStreamReader streamReader = new FastStreamReader(data);
		return Deserialize(streamReader);
	}

	private static object Deserialize(FastStreamReader streamReader)
	{
		using PersistReader persistReader = new PersistReader();
		bool enableTypeRemapping = Persist.EnableTypeRemapping;
		Persist.EnableTypeRemapping = false;
		bool requireAllPersistable = Persist.RequireAllPersistable;
		Persist.RequireAllPersistable = true;
		try
		{
			persistReader.Load(streamReader, null);
		}
		finally
		{
			Persist.EnableTypeRemapping = enableTypeRemapping;
			Persist.RequireAllPersistable = requireAllPersistable;
		}
		return (persistReader.Count > 0) ? persistReader[0] : null;
	}

	public void SaveTuningData(string tag, object baseObject, object basePersistGroup)
	{
		if (!mIsCacheVerified)
		{
			VerifyCache();
		}
		if (!mIsCachingEnabled)
		{
			return;
		}
		using FastStreamWriter fastStreamWriter = new FastStreamWriter();
		Sims3.SimIFace.StopWatch stopWatch = Sims3.SimIFace.StopWatch.Create(Sims3.SimIFace.StopWatch.TickStyles.Milliseconds);
		stopWatch.Start();
		Serialize(baseObject, basePersistGroup, fastStreamWriter);
		CacheManager_WriteCachedDataFromStream(tag, fastStreamWriter.Handle);
	}

	public byte[] Serialize(object baseObject, object basePersistGroup)
	{
		using FastStreamWriter fastStreamWriter = new FastStreamWriter();
		Serialize(baseObject, basePersistGroup, fastStreamWriter);
		return fastStreamWriter.ToArray();
	}

	private static void Serialize(object baseObject, object basePersistGroup, FastStreamWriter binWriter)
	{
		PersistWriter persistWriter = new PersistWriter();
		bool enableTypeRemapping = Persist.EnableTypeRemapping;
		Persist.EnableTypeRemapping = false;
		bool requireAllPersistable = Persist.RequireAllPersistable;
		Persist.RequireAllPersistable = true;
		try
		{
			persistWriter.AddGroup(basePersistGroup);
			persistWriter.Begin();
			persistWriter.AddObject(baseObject);
			persistWriter.End(binWriter);
		}
		finally
		{
			Persist.EnableTypeRemapping = enableTypeRemapping;
			Persist.RequireAllPersistable = requireAllPersistable;
		}
	}

	public byte[] LoadRawTuningData(string tag)
	{
		if (!mIsCacheVerified)
		{
			VerifyCache();
		}
		if (!mIsCachingEnabled)
		{
			return null;
		}
		if (!CacheManager_ReadCachedData(tag, out var data))
		{
			return null;
		}
		return data;
	}

	public void SaveRawTuningData(string tag, byte[] data)
	{
		if (!mIsCacheVerified)
		{
			VerifyCache();
		}
		if (mIsCachingEnabled)
		{
			CacheManager_WriteCachedData(tag, data, (uint)data.Length);
		}
	}

	private void VerifyCache()
	{
		mIsCacheVerified = true;
		mIsCachingEnabled = false;
		CacheSignature cacheSignature = new CacheSignature();
		if (!cacheSignature.Init())
		{
			return;
		}
		if (CacheManager_IsCachingAllowed(kDatabaseName) && CacheManager_ReadCachedData("CacheSignature", out var data))
		{
			CacheSignature cacheSignature2 = new CacheSignature();
			if (cacheSignature2.Read(data) && cacheSignature2.Equals(cacheSignature))
			{
				mIsCachingEnabled = true;
			}
		}
		if (!mIsCachingEnabled)
		{
			CacheManager_ClearCache();
			byte[] array = cacheSignature.Write();
			CacheManager_WriteCachedData("CacheSignature", array, (uint)array.Length);
		}
	}
}
