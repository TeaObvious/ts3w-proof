/* Reviewed retail type. Init pairs with callers.il.txt token06000DAF; remaining methods pair with cache-signature-wire.il.json. Native checksum algorithm and runtime cache acceptance are not established by this managed type. */
using System;
using System.IO;
using System.Reflection;
using Sims3.SimIFace;

namespace ScriptCore;

internal class CacheSignature
{
	private int mAssemblyCount;

	private ulong mAssemblySignatures;

	private ulong mSourceDataHash;

	private ulong mSourceDataSize;

	private int mSourceRecordCount;

	public bool Init()
	{
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		mAssemblyCount = assemblies.Length;
		mAssemblySignatures = 0uL;
		Assembly[] array = assemblies;
		foreach (Assembly assembly in array)
		{
			object obj = PersistImports.Serializer_GetAssemblyHashCode(assembly);
			if (obj != null)
			{
				mAssemblySignatures += (ulong)obj;
			}
		}
		if (!CacheManager.CacheManager_ReadDatabaseChecksum(CacheManager.kDatabaseName, out mSourceDataHash, out mSourceDataSize, out mSourceRecordCount))
		{
			return false;
		}
		return true;
	}

	public byte[] Write()
	{
		using FastStreamWriter fastStreamWriter = new FastStreamWriter();
		fastStreamWriter.Write(1);
		fastStreamWriter.Write(mAssemblyCount);
		fastStreamWriter.Write(mAssemblySignatures);
		fastStreamWriter.Write(mSourceDataHash);
		fastStreamWriter.Write(mSourceDataSize);
		fastStreamWriter.Write(mSourceRecordCount);
		return fastStreamWriter.ToArray();
	}

	public bool Read(byte[] data)
	{
		try
		{
			using FastStreamReader fastStreamReader = new FastStreamReader(data);
			int num = fastStreamReader.ReadInt32();
			if (num != 1)
			{
				return false;
			}
			mAssemblyCount = fastStreamReader.ReadInt32();
			mAssemblySignatures = fastStreamReader.ReadUInt64();
			mSourceDataHash = fastStreamReader.ReadUInt64();
			mSourceDataSize = fastStreamReader.ReadUInt64();
			mSourceRecordCount = fastStreamReader.ReadInt32();
		}
		catch (IOException)
		{
			return false;
		}
		return true;
	}

	public override bool Equals(object o)
	{
		if (!(o is CacheSignature cacheSignature))
		{
			return false;
		}
		if (mAssemblyCount == cacheSignature.mAssemblyCount && mAssemblySignatures == cacheSignature.mAssemblySignatures && mSourceDataHash == cacheSignature.mSourceDataHash && mSourceDataSize == cacheSignature.mSourceDataSize)
		{
			return mSourceRecordCount == cacheSignature.mSourceRecordCount;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return mAssemblyCount + mAssemblySignatures.GetHashCode() + mSourceDataHash.GetHashCode() + mSourceDataSize.GetHashCode() + mSourceRecordCount;
	}
}
