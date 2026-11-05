using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class LoadSaveManager : ILoadSaveManager
{
	private delegate void SaveWorldDelegate(bool success);

	private static NativePersistReader sNativeReader;

	private static NativePersistWriter sNativeWriter;

	private static LoadSaveManager sInstance;

	private Dictionary<ulong, ScriptObjectGroup> mObjectGroups = new Dictionary<ulong, ScriptObjectGroup>();

	private LoadSaveManagerTask mTask = new LoadSaveManagerTask();

	private static PersistReader mObjectGroupReader;

	private static PersistWriter mObjectGroupWriter;

	private static TaskStateCollection sTaskStates;

	public static LoadSaveManager Instance => sInstance;

	public static NativePersistReader CurrentNativeReader => sNativeReader;

	public static NativePersistWriter CurrentNativeWriter => sNativeWriter;

	public event ObjectGroupCreatedHandler ObjectGroupCreated;

	public event ObjectGroupDestroyedHandler ObjectGroupDestroyed;

	public event ObjectGroupLoadedHandler ObjectGroupLoaded;

	public event ObjectGroupSavingHandler ObjectGroupSaving;

	public event ObjectGroupsPreLoadHandler ObjectGroupsPreLoad;

	public event ObjectGroupsPostLoadHandler ObjectGroupsPostLoad;

	public event ObjectStackLoadFailedHandler ObjectStackLoadFailed;

	[DllImport("Sims3Common.dll")]
	private static extern uint LoadSaveManager_CreateLoadSaveFileInfo_Impl([MarshalAs(UnmanagedType.LPWStr)] string strid);

	[DllImport("Sims3Common.dll")]
	private static extern uint LoadSaveManager_SaveGame_Impl(uint h, bool isTravelSave, bool isTraveling);

	[DllImport("Sims3Common.dll")]
	private static extern void LoadSaveManager_ResetSaveLocation_Impl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool LoadSaveManager_LoadGame_Impl(uint h);

	[DllImport("Sims3Common.dll")]
	private static extern void LoadSaveManager_SaveWorld(SaveWorldDelegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern ulong LoadSaveManager_GetCurrentGameGuid_Impl();

	[DllImport("Sims3Common.dll")]
	private static extern uint LoadSaveManager_GetCurrentSaveGameInfo_Impl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string LoadSaveManager_GetLoadSaveFileInfoID_Impl(uint h);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl(uint h);

	[DllImport("Sims3Common.dll")]
	internal static extern uint LoadSaveManager_LoadNativeObject(uint nativeReader, int saveIndex);

	[DllImport("Sims3Common.dll")]
	internal static extern int LoadSaveManager_SaveNativeObject(uint nativeReader, uint objectHandle);

	[DllImport("Sims3Common.dll")]
	internal static extern uint LoadSaveManager_CreateNativeWriter();

	[DllImport("Sims3Common.dll")]
	internal static extern void LoadSaveManager_DestroyNativeWriter(uint nativeWriter);

	[DllImport("Sims3Common.dll")]
	internal static extern uint LoadSaveManager_SaveChallengeData([MarshalAs(UnmanagedType.LPWStr)] string compiledXMLData, uint stringLength, [MarshalAs(UnmanagedType.LPWStr)] string profileName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	internal static extern string LoadSaveManager_LoadChallengeData([MarshalAs(UnmanagedType.LPWStr)] string profileName);

	[DllImport("Sims3Common.dll")]
	internal static extern uint LoadSaveManager_SavePassportData([MarshalAs(UnmanagedType.LPWStr)] string compiledXMLData, uint stringLength, [MarshalAs(UnmanagedType.LPWStr)] string profileName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	internal static extern string LoadSaveManager_LoadPassportData([MarshalAs(UnmanagedType.LPWStr)] string profileName);

	public uint NativeRead(int saveIndex)
	{
		return sNativeReader.Read(saveIndex);
	}

	public int NativeWrite(uint handle)
	{
		return sNativeWriter.Write(handle);
	}

	public LoadSaveManager()
	{
		sInstance = this;
		AppDomain.CurrentDomain.SetData("LoadSaveManager", this);
		Sims3.SimIFace.Simulator.AddObject(mTask);
	}

	public LoadSaveFileInfo CreateLoadSaveFileInfo(string strid)
	{
		return new LoadSaveFileInfo(LoadSaveManager_CreateLoadSaveFileInfo_Impl(strid));
	}

	public uint SaveGame(LoadSaveFileInfo info, bool isOnVacation)
	{
		return LoadSaveManager_SaveGame_Impl(info.NativeHandle, isTravelSave: false, isOnVacation);
	}

	public uint SaveTravel()
	{
		return LoadSaveManager_SaveGame_Impl(0u, isTravelSave: true, isTraveling: true);
	}

	public void ResetSaveLocation()
	{
		LoadSaveManager_ResetSaveLocation_Impl();
	}

	public bool LoadGame(LoadSaveFileInfo info)
	{
		return LoadSaveManager_LoadGame_Impl(info.NativeHandle);
	}

	public bool SaveWorld()
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		bool[] array = new bool[1];
		bool[] success = array;
		LoadSaveManager_SaveWorld((bool result) =>
		{
			success[0] = result;
		});
		return success[0];
	}

	public ulong GetCurrentGameGuid()
	{
		return LoadSaveManager_GetCurrentGameGuid_Impl();
	}

	public LoadSaveFileInfo GetCurrentSaveGameInfo()
	{
		return new LoadSaveFileInfo(LoadSaveManager_GetCurrentSaveGameInfo_Impl());
	}

	public string GetLoadSaveFileInfoID(uint h)
	{
		return LoadSaveManager_GetLoadSaveFileInfoID_Impl(h);
	}

	public bool ReleaseLoadSaveFileInfoHandle(uint h)
	{
		return LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl(h);
	}

	public IScriptObjectGroup GetGlobalObjectGroup()
	{
		return GetObjectGroup(Sims3.SimIFace.World.GlobalObjectManagerId);
	}

	public IScriptObjectGroup GetObjectGroup(ObjectGuid id)
	{
		ScriptObjectGroup value = null;
		mObjectGroups.TryGetValue(id.Value, out value);
		return value;
	}

	public IPersistClassDB CreatePersistClassDB()
	{
		return new PersistedClassDB();
	}

	public bool ChecksumMethodTest(RuntimeMethodHandle handle, out uint checksum)
	{
		return TaskControl.GetMethodChecksum(handle, out checksum);
	}

	public string TestTaskSave(ObjectGuid id)
	{
		string[] array = new string[1];
		string[] returnValue = array;
		uint num = LoadSaveManager_CreateNativeWriter();
		BeginSaveObjects(num);
		sTaskStates.SaveFailure += (ulong failedTaskId, string message) =>
		{
			returnValue[0] = message;
		};
		sTaskStates.AddTaskState(id.Value);
		EndSaveObjects(StreamHost.StreamHost_Create());
		LoadSaveManager_DestroyNativeWriter(num);
		return returnValue[0];
	}

	public uint SaveChallengeData(string compiledXMLData, string profileName)
	{
		return LoadSaveManager_SaveChallengeData(compiledXMLData, (uint)compiledXMLData.Length, profileName);
	}

	public string LoadChallengeData(string profileName)
	{
		return LoadSaveManager_LoadChallengeData(profileName);
	}

	public uint SavePassportData(string compiledXMLData, string profileName)
	{
		return LoadSaveManager_SavePassportData(compiledXMLData, (uint)compiledXMLData.Length, profileName);
	}

	public string LoadPassportData(string profileName)
	{
		return LoadSaveManager_LoadPassportData(profileName);
	}

	/* Analyst: original PC1.67 MethodDef0x06000209, RVA0x42FC, complete88CIL bytes.
	   Constructs the original readers, synchronously calls PersistReader.Load inside a stream using/finally, then finds retained task states. The table preparation passes occur inside Load before this member returns.
	   Complete paired IL: ../selected/object-table-preparation/LoadSaveManager.il.txt. */
	private static void BeginLoadObjects(uint streamHandle, uint nativeReaderHandle)
	{
		sNativeReader = new NativePersistReader(nativeReaderHandle);
		mObjectGroupReader = new PersistReader();
		using (FastStreamReader reader = new FastStreamReader(streamHandle))
		{
			mObjectGroupReader.Load(reader, null);
		}
		TaskStateCollection taskStateCollection = (TaskStateCollection)mObjectGroupReader.GetObjectByType(typeof(TaskStateCollection));
		if (taskStateCollection != null)
		{
			sTaskStates = taskStateCollection;
		}
	}

	/* Analyst: original PC1.67 MethodDef0x0600020A, RVA0x4370, complete32CIL bytes.
	   Reads the current original PersistReader item, casts to IScriptLogic, calls Load even
	   for null and returns whether that target is nonnull. There is no local range/ownership
	   guard or EH. The uint index reaches the Int32 getter as the same32bit pattern.
	   Complete original IL is retained in ../selected/resident-loaded-proxy-binding/LoadSaveManager.il.txt. */
	private static bool BindLoadedObject(ScriptProxy proxy, uint index)
	{
		IScriptLogic scriptLogic = (IScriptLogic)mObjectGroupReader[(int)index];
		proxy.Load(scriptLogic);
		return scriptLogic != null;
	}

	internal static bool LoadObjectStack(ScriptProxy proxy, int index)
	{
		if (sTaskStates == null || index < 0 || index >= sTaskStates.Count)
		{
			proxy.mResetSavedObject = true;
			return false;
		}
		if (sTaskStates.TakeState(index, out var ctx))
		{
			if (ctx == null)
			{
				proxy.mResetSavedObject = true;
				return false;
			}
			proxy.mSavedTaskContext = ctx;
		}
		return true;
	}

	internal static bool RestoreObjectStack(ulong objectId)
	{
		if (!(Simulator.Instance.GetProxyPreInit(new ObjectGuid(objectId)) is ScriptProxy scriptProxy))
		{
			return false;
		}
		if (scriptProxy.mSavedTaskContext != null)
		{
			bool result = scriptProxy.mSavedTaskContext.Restore(scriptProxy.ObjectId.Value);
			scriptProxy.mSavedTaskContext.Dispose();
			scriptProxy.mSavedTaskContext = null;
			return result;
		}
		return false;
	}

	private static void DisposeObjectStack(ulong objectId)
	{
		if (Simulator.Instance.GetProxy(new ObjectGuid(objectId)) is ScriptProxy { mSavedTaskContext: not null } scriptProxy)
		{
			scriptProxy.mSavedTaskContext.Dispose();
			scriptProxy.mSavedTaskContext = null;
		}
	}

	internal static bool SendObjectFailedEvent(ScriptProxy proxy)
	{
		ObjectStackLoadFailedHandler objectStackLoadFailed = sInstance.ObjectStackLoadFailed;
		if (objectStackLoadFailed != null)
		{
			Delegate[] invocationList = objectStackLoadFailed.GetInvocationList();
			for (int i = 0; i < invocationList.Length; i++)
			{
				ObjectStackLoadFailedHandler objectStackLoadFailedHandler = (ObjectStackLoadFailedHandler)invocationList[i];
				if (objectStackLoadFailedHandler(proxy))
				{
					return true;
				}
			}
		}
		return false;
	}

	private static void DisposeLoadedObject(uint index)
	{
		if (mObjectGroupReader[(int)index] != null)
		{
			((IScriptLogic)mObjectGroupReader[(int)index]).Dispose();
			mObjectGroupReader[(int)index] = null;
		}
	}

	private static void StaticCreateObjectGroup(ulong groupId)
	{
		sInstance.CreateObjectGroup(groupId);
	}

	public IScriptObjectGroup CreateObjectGroup(ulong groupId)
	{
		if (!mObjectGroups.TryGetValue(groupId, out var value))
		{
			ObjectGuid id = new ObjectGuid(groupId);
			value = new ScriptObjectGroup(id);
			mObjectGroups.Add(groupId, value);
			if (ObjectGroupCreated != null)
			{
				ObjectGroupCreated(value);
			}
		}
		return value;
	}

	private static void DestroyObjectGroup(ulong groupId)
	{
		if (sInstance.mObjectGroups.TryGetValue(groupId, out var value))
		{
			if (sInstance.ObjectGroupDestroyed != null)
			{
				sInstance.ObjectGroupDestroyed(value);
			}
			value.Dispose();
			sInstance.mObjectGroups.Remove(groupId);
		}
	}

	internal static void OnObjectGroupsPreLoad()
	{
		sInstance.ObjectGroupsPreLoad?.Invoke();
	}

	internal static void OnObjectGroupsPostLoad()
	{
		sInstance.ObjectGroupsPostLoad?.Invoke();
	}

	internal static void OnObjectGroupLoaded(ScriptObjectGroup group)
	{
		sInstance.ObjectGroupLoaded?.Invoke(group);
	}

	/* Analyst: original PC1.67 MethodDef0x06000216, RVA0x4640, complete70CIL bytes.
	   Executes reader postloads before task/reader disposal and static field clearing. There is no enclosing finally for the entire completion sequence.
	   Complete paired IL: ../selected/object-table-preparation/LoadSaveManager.il.txt. */
	private static void EndLoadObjects()
	{
		if (mObjectGroupReader != null)
		{
			mObjectGroupReader.ExecutePostLoads();
		}
		if (sTaskStates != null)
		{
			sTaskStates.Dispose();
			sTaskStates = null;
		}
		if (mObjectGroupReader != null)
		{
			mObjectGroupReader.Dispose();
			mObjectGroupReader = null;
		}
		sNativeReader = null;
	}

	private static void BeginSaveObjects(uint nativeWriterHandle)
	{
		sNativeWriter = new NativePersistWriter(nativeWriterHandle);
		mObjectGroupWriter = new PersistWriter();
		mObjectGroupWriter.Begin();
		sTaskStates = new TaskStateCollection();
	}

	private static int SaveObject(ulong objectId)
	{
		Simulator simulator = (Simulator)AppDomain.CurrentDomain.GetData("Simulator");
		IScriptProxy proxy = simulator.GetProxy(new ObjectGuid(objectId));
		if (proxy == null)
		{
			return -1;
		}
		IScriptLogic target = proxy.Target;
		return mObjectGroupWriter.AddObject(target);
	}

	/* Analyst: original PC1.67 MethodDef0x06000219, RVA0x4708, complete51CIL bytes/18instructions, two locals and no EH.
	   CurrentDomain.GetData("Simulator") is cast to the concrete ScriptCore.Simulator before GetProxy(ObjectGuid).
	   A null proxy returns signed -1 at IL0025/0026. Only the nonnull arm reads live sTaskStates at IL0027
	   and delegates to AddTaskState; this method neither captures a task-state snapshot nor catches faults.
	   Full original IL: ../selected/save-object-stack/LoadSaveManager.il.txt. */
	internal static int SaveObjectStack(ulong objectId)
	{
		Simulator simulator = (Simulator)AppDomain.CurrentDomain.GetData("Simulator");
		IScriptProxy proxy = simulator.GetProxy(new ObjectGuid(objectId));
		if (proxy == null)
		{
			return -1;
		}
		return sTaskStates.AddTaskState(objectId);
	}

	private static int SaveObjectGroup(ulong groupId)
	{
		if (mObjectGroupWriter == null)
		{
			return -1;
		}
		if (sInstance.mObjectGroups.TryGetValue(groupId, out var value))
		{
			mObjectGroupWriter.AddGroup(value);
			if (sInstance.ObjectGroupSaving != null)
			{
				sInstance.ObjectGroupSaving(value);
			}
			value.PreSave();
			return mObjectGroupWriter.AddObject(value);
		}
		return -1;
	}

	private static bool EndSaveObjects(uint streamHandle)
	{
		mObjectGroupWriter.AddObject(sTaskStates);
		using (FastStreamWriter writer = new FastStreamWriter(streamHandle))
		{
			mObjectGroupWriter.End(writer);
		}
		mObjectGroupWriter.Dispose();
		mObjectGroupWriter = null;
		sTaskStates.Dispose();
		sTaskStates = null;
		sNativeWriter = null;
		return true;
	}

	internal static void RequestTaskRestore(SavedTaskContext ctx)
	{
		LoadSaveManagerTask.TaskRestoreRequest request = new LoadSaveManagerTask.TaskRestoreRequest
		{
			mObjectId = Sims3.SimIFace.Simulator.CurrentTask.Value,
			mContext = ctx
		};
		sInstance.mTask.Add(ref request);
	}
}
