using System;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public sealed class LoadSaveManager
{
	public enum eLoadSaveErrorCode
	{
		kNoError,
		kNoSaveFileInfo,
		kNoActiveWorld,
		kSavePathEmpty,
		kCantGetSaveDir,
		kCantFindRequestedFile,
		kInvalidSaveFileLength,
		kFilenameIsInvalid,
		kFilePathLengthTooLarge,
		kFailedToCreateHeaderRecord,
		kFailedToWriteHeaderRecord,
		kPreSaveCallbackFailure,
		kWorldFileSaveFailure,
		kPostSaveCallbackFailure,
		kNoLoadSaveManagerFound,
		kOpenFailure,
		kLooseFileCopyFailure,
		kOtherError
	}

	private static ILoadSaveManager gLoadSaveManager;

	public static event ObjectGroupCreatedHandler ObjectGroupCreated
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupCreated += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupCreated -= value;
			}
		}
	}

	public static event ObjectGroupDestroyedHandler ObjectGroupDestroyed
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupDestroyed += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupDestroyed -= value;
			}
		}
	}

	public static event ObjectGroupLoadedHandler ObjectGroupLoaded
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupLoaded += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupLoaded -= value;
			}
		}
	}

	public static event ObjectGroupSavingHandler ObjectGroupSaving
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupSaving += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupSaving -= value;
			}
		}
	}

	public static event ObjectGroupsPreLoadHandler ObjectGroupsPreLoad
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupsPreLoad += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupsPreLoad -= value;
			}
		}
	}

	public static event ObjectGroupsPostLoadHandler ObjectGroupsPostLoad
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupsPostLoad += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectGroupsPostLoad -= value;
			}
		}
	}

	public static event ObjectStackLoadFailedHandler ObjectStackLoadFailed
	{
		add
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectStackLoadFailed += value;
			}
		}
		remove
		{
			if (gLoadSaveManager != null)
			{
				gLoadSaveManager.ObjectStackLoadFailed -= value;
			}
		}
	}

	public static event VoidEventHandler PreWorldBuilderSaveWorld;

	static LoadSaveManager()
	{
		gLoadSaveManager = AppDomain.CurrentDomain.GetData("LoadSaveManager") as ILoadSaveManager;
	}

	public static LoadSaveFileInfo CreateLoadSaveFileInfo(string strid)
	{
		if (gLoadSaveManager == null)
		{
			return LoadSaveFileInfo.sEmptyLoadSaveFileInfo;
		}
		return gLoadSaveManager.CreateLoadSaveFileInfo(strid);
	}

	public static uint SaveGame(LoadSaveFileInfo info, bool bIsTravelling)
	{
		if (gLoadSaveManager == null)
		{
			return 14u;
		}
		return gLoadSaveManager.SaveGame(info, bIsTravelling);
	}

	public static uint SaveTravel()
	{
		if (gLoadSaveManager == null)
		{
			return 14u;
		}
		return gLoadSaveManager.SaveTravel();
	}

	public static void ResetSaveLocation()
	{
		if (gLoadSaveManager != null)
		{
			gLoadSaveManager.ResetSaveLocation();
		}
	}

	public static bool SaveWorld()
	{
		if (PreWorldBuilderSaveWorld != null)
		{
			PreWorldBuilderSaveWorld();
		}
		return gLoadSaveManager.SaveWorld();
	}

	public static ulong GetCurrentGameGuid()
	{
		if (gLoadSaveManager == null)
		{
			return 0uL;
		}
		return gLoadSaveManager.GetCurrentGameGuid();
	}

	public static LoadSaveFileInfo GetCurrentSaveGameInfo()
	{
		if (gLoadSaveManager == null)
		{
			return LoadSaveFileInfo.sEmptyLoadSaveFileInfo;
		}
		return gLoadSaveManager.GetCurrentSaveGameInfo();
	}

	public static string GetLoadSaveFileInfoID(uint h)
	{
		if (gLoadSaveManager == null)
		{
			return "";
		}
		return gLoadSaveManager.GetLoadSaveFileInfoID(h);
	}

	public static bool ReleaseLoadSaveFileInfoHandle(uint h)
	{
		if (gLoadSaveManager == null)
		{
			return false;
		}
		if (h == 0)
		{
			return false;
		}
		return gLoadSaveManager.ReleaseLoadSaveFileInfoHandle(h);
	}

	public static IScriptObjectGroup GetGlobalObjectGroup()
	{
		return gLoadSaveManager.GetGlobalObjectGroup();
	}

	public static bool IsPersistable(Type t)
	{
		return gLoadSaveManager.CreatePersistClassDB()?.IsPersistable(t) ?? false;
	}

	public static IScriptObjectGroup GetObjectGroup(ObjectGuid id)
	{
		return gLoadSaveManager.GetObjectGroup(id);
	}

	public static IPersistClassDB CreatePersistClassDB()
	{
		return gLoadSaveManager.CreatePersistClassDB();
	}

	public static bool ChecksumMethodTest(RuntimeMethodHandle handle, out uint checksum)
	{
		return gLoadSaveManager.ChecksumMethodTest(handle, out checksum);
	}

	public static uint NativeRead(int saveIndex)
	{
		return gLoadSaveManager.NativeRead(saveIndex);
	}

	public static int NativeWrite(uint handle)
	{
		return gLoadSaveManager.NativeWrite(handle);
	}

	public static string TestTaskSave(ObjectGuid id)
	{
		return gLoadSaveManager.TestTaskSave(id);
	}

	public static uint SaveChallengeData(string compiledXMLData, string profileName)
	{
		return gLoadSaveManager.SaveChallengeData(compiledXMLData, profileName);
	}

	public static string LoadChallengeData(string profileName)
	{
		return gLoadSaveManager.LoadChallengeData(profileName);
	}

	public static uint SavePassportData(string compiledXMLData, string profileName)
	{
		return gLoadSaveManager.SavePassportData(compiledXMLData, profileName);
	}

	public static string LoadPassportData(string profileName)
	{
		return gLoadSaveManager.LoadPassportData(profileName);
	}
}
