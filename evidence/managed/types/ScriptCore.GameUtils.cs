using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class GameUtils : CallbackObject, IGameUtils
{
	[DllImport("Sims3Common.dll")]
	private static extern uint GameUtils_CreateWorldFileSearchImpl(uint searchtype);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_WorldFileSearchCompleteImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_WorldFileSearchMoveNextImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_WorldFileSearchGetCurrentImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_WorldFileSearchFreeSearchImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint GameUtils_CreateCSVFileImpl([MarshalAs(UnmanagedType.LPWStr)] string filePath);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_CSVFileMoveNextImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_CSVFileSetToBeginImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_CSVFileGetCurrentImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_CSVFileGetLabelsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DeleteCSVFileImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint GameUtils_CreateCSVFile_ListImpl([MarshalAs(UnmanagedType.LPWStr)] string filePath);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_CSVFileMoveNext_ListImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_CSVFileSetToBegin_ListImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_CSVFileGetCurrent_ListImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DeleteCSVFile_ListImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_TransitionToLoadWorldImpl([MarshalAs(UnmanagedType.LPWStr)] string worldFile);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_TransitionToNotInWorldImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_TransitionToQuitImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_StartLauncherImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_InitSceneWindowImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DestroySceneWindowImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_PauseImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_UnpauseImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsPausedImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_SetGameTimeScaleImpl(float newScale);

	[DllImport("Sims3Common.dll")]
	private static extern float GameUtils_GetGameTimeScaleImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_SetGameTimeSpeedLevel(int speedLevel);

	[DllImport("Sims3Common.dll")]
	private static extern int GameUtils_GetGameTimeSpeedLevel();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsValidFilename([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_SetScreenPostProcessOverride(int style);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_SetWeatherOverride(float weatherType, float transitionTime);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_HasValidFilenameChars([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_GetNativePath([MarshalAs(UnmanagedType.LPWStr)] string path);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_DeleteSaveFileImpl([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_RenameSaveFileImpl([MarshalAs(UnmanagedType.LPWStr)] string oldName, [MarshalAs(UnmanagedType.LPWStr)] string newName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_CopySaveFileImpl([MarshalAs(UnmanagedType.LPWStr)] string oldName, [MarshalAs(UnmanagedType.LPWStr)] string newName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_HasSaveFileImpl([MarshalAs(UnmanagedType.LPWStr)] string worldName, [MarshalAs(UnmanagedType.LPWStr)] string saveName);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_UpdateLocalAutonomyRadiusDisplay(float radius);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_GetGenericString(uint id);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_SetGenericString(uint id, [MarshalAs(UnmanagedType.LPWStr)] string str);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_GetCommandLineSwitch([MarshalAs(UnmanagedType.LPWStr)] string flag);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_GetConfigValue([MarshalAs(UnmanagedType.LPWStr)] string key, ref uint value);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_GetConfigStringValue([MarshalAs(UnmanagedType.LPWStr)] string key, [MarshalAs(UnmanagedType.LPWStr)] string defaultValue);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_ToggleDebugInfo(bool show);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DumpResourceCacheSummary();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DumpProfilerScopeAverages();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_ResetProfilerScopeAverages();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_ResetProfilerPeaks();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DumpProfilerReport(uint flags, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_AddOrConfigureProfiler([MarshalAs(UnmanagedType.LPWStr)] string name, [MarshalAs(UnmanagedType.LPWStr)] string options);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_AddOrConfigureLogReporter([MarshalAs(UnmanagedType.LPWStr)] string name, [MarshalAs(UnmanagedType.LPWStr)] string options);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_SetDebugOption([MarshalAs(UnmanagedType.LPWStr)] string name, [MarshalAs(UnmanagedType.LPWStr)] string value);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsSingleThreadedMode();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsCallstackProfilingEnabled();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_SetMemoryTrackingMode(uint mode);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_DumpMemoryReport(uint flags, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern uint GameUtils_GetFrameNumber();

	[DllImport("Sims3Common.dll")]
	private static extern float GameUtils_GetCurrentFps();

	[DllImport("Sims3Common.dll")]
	private static extern float GameUtils_GetCurrentMemoryUsage();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_BeginLoadEvent([MarshalAs(UnmanagedType.LPWStr)] string scopeName);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_EndLoadEvent();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_ResetLoadEvents();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_RegisterCheats();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_UnregisterCheats();

	[DllImport("Sims3Common.dll")]
	private static extern uint GameUtils_GetProductFlags();

	[DllImport("Sims3Common.dll")]
	private static extern uint GameUtils_GetModFilesCount();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string GameUtils_GetModFilesName(uint idx);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_EnableSceneDraw(bool enable);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_FreezeLotLODs(bool enable);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_WaitForSceneReadiness(uint testFlags, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_WaitForFrameEvaluation([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_StartupYield([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_StartupComplete();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_RemoveStartupScreen();

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_SwapLoadScreen([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_WaitForTextureCompositor([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void GameUtils_WaitForSimService([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsValidInstallation();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsPreExistingInstallation();

	[DllImport("Sims3Common.dll")]
	private static extern WorldName GameUtils_GetWorldName();

	[DllImport("Sims3Common.dll")]
	private static extern WorldType GameUtils_GetWorldType();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsValidSavegame([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsSaveGameCorruptedByEP1([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_FixSaveGameCorruptedByEP1([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool GameUtils_IsWorldInstalled(uint id);

	public GameUtils()
	{
		AppDomain.CurrentDomain.SetData("GameUtils", this);
	}

	public uint CreateWorldFileSearch(uint searchtype)
	{
		return GameUtils_CreateWorldFileSearchImpl(searchtype);
	}

	public bool WorldFileSearchMoveNext(uint handle)
	{
		return GameUtils_WorldFileSearchMoveNextImpl(handle);
	}

	public string WorldFileSearchGetCurrent(uint handle)
	{
		return GameUtils_WorldFileSearchGetCurrentImpl(handle);
	}

	public void WorldFileSearchFreeSearch(uint handle)
	{
		GameUtils_WorldFileSearchFreeSearchImpl(handle);
	}

	public void TransitionToLoadWorld(string worldFile)
	{
		GameUtils_TransitionToLoadWorldImpl(worldFile);
	}

	public uint CreateCSVFile(string filePath)
	{
		return GameUtils_CreateCSVFileImpl(filePath);
	}

	public bool CSVFileMoveNext(uint handle)
	{
		return GameUtils_CSVFileMoveNextImpl(handle);
	}

	public bool CSVFileSetToBegin(uint handle)
	{
		return GameUtils_CSVFileSetToBeginImpl(handle);
	}

	public string CSVFileGetCurrent(uint handle)
	{
		return GameUtils_CSVFileGetCurrentImpl(handle);
	}

	public string CSVFileGetLabels(uint handle)
	{
		return GameUtils_CSVFileGetLabelsImpl(handle);
	}

	public void DeleteCSVFile(uint handle)
	{
		GameUtils_DeleteCSVFileImpl(handle);
	}

	public uint CreateCSVFile_List(string filePath)
	{
		return GameUtils_CreateCSVFile_ListImpl(filePath);
	}

	public bool CSVFileMoveNext_List(uint handle)
	{
		return GameUtils_CSVFileMoveNext_ListImpl(handle);
	}

	public bool CSVFileSetToBegin_List(uint handle)
	{
		return GameUtils_CSVFileSetToBegin_ListImpl(handle);
	}

	public string CSVFileGetCurrent_List(uint handle)
	{
		return GameUtils_CSVFileGetCurrent_ListImpl(handle);
	}

	public void DeleteCSVFile_List(uint handle)
	{
		GameUtils_DeleteCSVFile_ListImpl(handle);
	}

	public void TransitionToNotInWorld()
	{
		GameUtils_TransitionToNotInWorldImpl();
	}

	public void TransitionToQuit()
	{
		GameUtils_TransitionToQuitImpl();
	}

	public void StartLauncher()
	{
		GameUtils_StartLauncherImpl();
	}

	public void InitSceneWindow()
	{
		GameUtils_InitSceneWindowImpl();
	}

	public void DestroySceneWindow()
	{
		GameUtils_DestroySceneWindowImpl();
	}

	public void Pause()
	{
		GameUtils_PauseImpl();
	}

	public void Unpause()
	{
		GameUtils_UnpauseImpl();
	}

	public bool IsPaused()
	{
		return GameUtils_IsPausedImpl();
	}

	public void SetGameTimeScale(float newScale)
	{
		GameUtils_SetGameTimeScaleImpl(newScale);
	}

	public float GetGameTimeScale()
	{
		return GameUtils_GetGameTimeScaleImpl();
	}

	public void SetGameTimeSpeedLevel(int speedLevel)
	{
		GameUtils_SetGameTimeSpeedLevel(speedLevel);
	}

	public int GetGameTimeSpeedLevel()
	{
		return GameUtils_GetGameTimeSpeedLevel();
	}

	public bool IsValidFilename(string name)
	{
		return GameUtils_IsValidFilename(name);
	}

	public void SetScreenPostProcessOverrideStyle(int style)
	{
		GameUtils_SetScreenPostProcessOverride(style);
	}

	public void SetWeatherOverride(float weatherType, float transitionTime)
	{
		GameUtils_SetWeatherOverride(weatherType, transitionTime);
	}

	public void DisableWeatherOverride(float transitionTime)
	{
		GameUtils_SetWeatherOverride(0f, 0f - transitionTime);
	}

	public bool HasValidFilenameChars(string name)
	{
		return GameUtils_HasValidFilenameChars(name);
	}

	public string GetNativePath(string path)
	{
		return GameUtils_GetNativePath(path);
	}

	public bool DeleteSaveFile(string name)
	{
		return GameUtils_DeleteSaveFileImpl(name);
	}

	public bool RenameSaveFile(string oldName, string newName)
	{
		return GameUtils_RenameSaveFileImpl(oldName, newName);
	}

	public bool CopySaveFile(string oldName, string newName)
	{
		return GameUtils_CopySaveFileImpl(oldName, newName);
	}

	public bool HasSaveFile(string worldName, string saveName)
	{
		return GameUtils_HasSaveFileImpl(worldName, saveName);
	}

	public void UpdateLocalAutonomyRadiusDisplay(float radius)
	{
		GameUtils_UpdateLocalAutonomyRadiusDisplay(radius);
	}

	public string GetGenericString(GenericStringID id)
	{
		return GameUtils_GetGenericString((uint)id);
	}

	public bool SetGenericString(GenericStringID id, string str)
	{
		return GameUtils_SetGenericString((uint)id, str);
	}

	public string GetCommandLineSwitch(string flag)
	{
		return GameUtils_GetCommandLineSwitch(flag);
	}

	public bool GetConfigValue(string key, ref uint value)
	{
		return GameUtils_GetConfigValue(key, ref value);
	}

	public bool GetConfigValue(string key, ref string value)
	{
		string text = GameUtils_GetConfigStringValue(key, value);
		if (text == null)
		{
			return false;
		}
		value = text;
		return true;
	}

	public void ToggleDebugInfo(bool show)
	{
		GameUtils_ToggleDebugInfo(show);
	}

	public void DumpResourceCacheSummary()
	{
		GameUtils_DumpResourceCacheSummary();
	}

	public void DumpProfilerScopeAverages()
	{
		GameUtils_DumpProfilerScopeAverages();
	}

	public void ResetProfilerScopeAverages()
	{
		GameUtils_ResetProfilerScopeAverages();
	}

	public void ResetProfilerPeaks()
	{
		GameUtils_ResetProfilerPeaks();
	}

	public void DumpProfilerReport(uint flags)
	{
		GameUtils_DumpProfilerReport(flags, CallbackDelegate);
	}

	public bool AddOrConfigureProfiler(string name, string options)
	{
		return GameUtils_AddOrConfigureProfiler(name, options);
	}

	public bool AddOrConfigureLogReporter(string name, string options)
	{
		return GameUtils_AddOrConfigureLogReporter(name, options);
	}

	public bool SetDebugOption(string name, string value)
	{
		return GameUtils_SetDebugOption(name, value);
	}

	public bool IsSingleThreadedMode()
	{
		return GameUtils_IsSingleThreadedMode();
	}

	public bool IsCallstackProfilingEnabled()
	{
		return GameUtils_IsCallstackProfilingEnabled();
	}

	public void SetMemoryTrackingMode(uint mode)
	{
		GameUtils_SetMemoryTrackingMode(mode);
	}

	public void DumpMemoryReport(uint flags)
	{
		GameUtils_DumpMemoryReport(flags, CallbackDelegate);
	}

	public uint GetFrameNumber()
	{
		return GameUtils_GetFrameNumber();
	}

	public float GetCurrentFps()
	{
		return GameUtils_GetCurrentFps();
	}

	public float GetCurrentMemoryUsage()
	{
		return GameUtils_GetCurrentMemoryUsage();
	}

	public void BeginLoadEvent(string scopeName)
	{
		GameUtils_BeginLoadEvent(scopeName);
	}

	public void EndLoadEvent()
	{
		GameUtils_EndLoadEvent();
	}

	public void ResetLoadEvents()
	{
		GameUtils_ResetLoadEvents();
	}

	public void RegisterCheats()
	{
		GameUtils_RegisterCheats();
	}

	public void UnregisterCheats()
	{
		GameUtils_UnregisterCheats();
	}

	public uint GetProductFlags()
	{
		return GameUtils_GetProductFlags();
	}

	public uint GetModFilesCount()
	{
		return GameUtils_GetModFilesCount();
	}

	public string GetModFilesName(uint idx)
	{
		return GameUtils_GetModFilesName(idx);
	}

	public void EnableSceneDraw(bool enable)
	{
		GameUtils_EnableSceneDraw(enable);
	}

	public void FreezeLotLODs(bool enable)
	{
		GameUtils_FreezeLotLODs(enable);
	}

	public void WaitForSceneReadiness(SceneMaskFlags maskFlags)
	{
		GameUtils_WaitForSceneReadiness((uint)maskFlags, CallbackDelegate);
	}

	public void WaitForFrameEvaluation()
	{
		GameUtils_WaitForFrameEvaluation(CallbackDelegate);
	}

	public void StartupYield()
	{
		GameUtils_StartupYield(CallbackDelegate);
	}

	public void StartupComplete()
	{
		GameUtils_StartupComplete();
	}

	public void RemoveStartupScreen()
	{
		GameUtils_RemoveStartupScreen();
	}

	public void SwapLoadScreen(Delegate readyCallback)
	{
		GameUtils_SwapLoadScreen(readyCallback);
	}

	public void WaitForTextureCompositor()
	{
		GameUtils_WaitForTextureCompositor(CallbackDelegate);
	}

	public void WaitForSimService()
	{
		GameUtils_WaitForSimService(CallbackDelegate);
	}

	public bool IsValidInstallation()
	{
		return GameUtils_IsValidInstallation();
	}

	public bool IsPreExistingInstallation()
	{
		return GameUtils_IsPreExistingInstallation();
	}

	public WorldName GetCurrentWorldName()
	{
		return GameUtils_GetWorldName();
	}

	public WorldType GetCurrentWorldType()
	{
		return GameUtils_GetWorldType();
	}

	public bool IsValidSavegame(string name)
	{
		return GameUtils_IsValidSavegame(name);
	}

	public bool IsSaveGameCorruptedByEP1(string name)
	{
		return GameUtils_IsSaveGameCorruptedByEP1(name);
	}

	public bool FixSaveGameCorruptedByEP1(string name)
	{
		return GameUtils_FixSaveGameCorruptedByEP1(name);
	}

	public bool IsWorldInstalled(WorldName id)
	{
		return GameUtils_IsWorldInstalled((uint)id);
	}

	protected override void OnAbortCallbackResult(object value)
	{
	}
}
