using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3Launcher;

namespace ScriptCore;

public sealed class OnlineFeatures : CallbackObject, IOnlineFeatures
{
	public delegate void CppCbMemoryUploadStatusChangedDelegate(uint identifier, uint status, uint error);

	public delegate bool CppCbPromptForCredentialsDelegate(string username);

	public delegate bool CppCbPromptForShareCredentialsDelegate(string url);

	private UiPromptForCredentialsDelegate mPromptForCredentialsDelegate;

	private UiPromptForShareCredentialsDelegate mPromptForShareCredentialsDelegate;

	private UiPromptForCredentialsFromScriptDelegate mPromptForCredentialsFromScriptDelegate;

	private UiShowProgressDialogDelegate mShowProgressDialogDelegate;

	private UiCloseProgressDialogDelegate mCloseProgressDialogDelegate;

	private CppCbMemoryUploadStatusChangedDelegate mMemoryUploadStatusChangedCBDelegate;

	private CppCbPromptForCredentialsDelegate mPromptForCredentialsCBDelegate;

	private CppCbPromptForShareCredentialsDelegate mPromptForShareCredentialsCBDelegate;

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_LogTelemetryEvent(TelemetryModuleId moduleId, TelemetryGroupId grpId, [MarshalAs(UnmanagedType.LPWStr)] string telString);

	[DllImport("Sims3Common.dll")]
	private static extern bool OnlineFeaturesHost_IsPackInstalled([MarshalAs(UnmanagedType.LPWStr)] string packageId);

	[DllImport("Sims3Common.dll")]
	private static extern bool OnlineFeaturesHost_GetStoreManifestFile();

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_StartLauncher([MarshalAs(UnmanagedType.Bool)] bool authToken);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_PostPipeMessage(S3L_ServerName pipename, S3L_NamedPipeMessage message, [MarshalAs(UnmanagedType.LPWStr)] string messageData);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.LPWStr)]
	private static extern string OnlineFeaturesHost_FunctionProxy(S3L_FunctionProxyKey fnKey);

	[DllImport("Sims3Common.dll")]
	private static extern uint OnlineFeaturesHost_GetAvailableEntitlements(uint source);

	[DllImport("Sims3Common.dll")]
	private static extern uint OnlineFeaturesHost_GetSharingServiceStatus(uint service);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetPersonaName();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetUserID();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_IsConnectedToInternet();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_CheckConnectionURL([MarshalAs(UnmanagedType.LPWStr)] string url);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetCrossroadsServerURL();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetBlazeServerURL();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_IsLoggedIn();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_IsSims3ServiceUnreachable();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetSims3ServiceUnreachableTitle();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetSims3ServiceUnreachableMsg();

	[DllImport("Sims3Common.dll")]
	private static extern uint OnlineFeaturesHost_Login([MarshalAs(UnmanagedType.LPWStr)] string username, [MarshalAs(UnmanagedType.LPWStr)] string password, [MarshalAs(UnmanagedType.LPWStr)] out string errorMessage);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string OnlineFeaturesHost_GetCookieValueByKey(S3L_CookieKeys key);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys key, [MarshalAs(UnmanagedType.LPWStr)] string val);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_IsStatusUpdateComplete();

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_RequestStatusUpdate();

	[DllImport("Sims3Common.dll")]
	private static extern uint OnlineFeaturesHost_GetSharingInfoStatus();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_IsRegisteredWithSharingService(uint service);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_UnregisteredFromSharingService(uint service);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool OnlineFeaturesHost_IsSharingServiceEnabled(uint service);

	[DllImport("Sims3Common.dll")]
	private static extern uint OnlineFeaturesHost_GetNumberOfMemoriesShared();

	[DllImport("Sims3Common.dll")]
	private static extern uint OnlineFeaturesHost_GetNumberOfCustomMemoriesShared();

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_ShareMemory(uint service, uint id, ResourceKey key, [MarshalAs(UnmanagedType.LPWStr)] string name, [MarshalAs(UnmanagedType.LPWStr)] string description, [MarshalAs(UnmanagedType.LPWStr)] string actorName, [MarshalAs(UnmanagedType.I1)] bool bIsCustomMemory, uint identifier);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_ShareHolidayGreetingCard(uint service, uint cardId, ResourceKey key, [MarshalAs(UnmanagedType.LPWStr)] string title, [MarshalAs(UnmanagedType.LPWStr)] string description, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] crossroadsFriends);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_RegisterMemoryUploadStatusChangedCallback([MarshalAs(UnmanagedType.Interface)] CppCbMemoryUploadStatusChangedDelegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_RegisterPromptForCredentialsCallback([MarshalAs(UnmanagedType.Interface)] CppCbPromptForCredentialsDelegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_HandlePromptForCredentialsResponse([MarshalAs(UnmanagedType.I1)] bool bResult);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_RegisterPromptForShareCredentialsCallback([MarshalAs(UnmanagedType.Interface)] CppCbPromptForShareCredentialsDelegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_HandlePromptForShareCredentialsResponse([MarshalAs(UnmanagedType.I1)] bool bResult);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_OverrideInGameBrowserUrl([MarshalAs(UnmanagedType.LPWStr)] string url);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_OverrideInGameBrowserUrlXroads([MarshalAs(UnmanagedType.LPWStr)] string url);

	[DllImport("Sims3Common.dll")]
	private static extern void OnlineFeaturesHost_WaitForDownload(ulong downloadId, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	public OnlineFeatures()
	{
		AppDomain.CurrentDomain.SetData("OnlineFeatures", this);
	}

	~OnlineFeatures()
	{
		mPromptForCredentialsDelegate = null;
		mPromptForShareCredentialsDelegate = null;
		mPromptForCredentialsFromScriptDelegate = null;
	}

	public void LogTelemetryEvent(TelemetryModuleId moduleId, TelemetryGroupId grpId, string telString)
	{
		OnlineFeaturesHost_LogTelemetryEvent(moduleId, grpId, telString);
	}

	public bool IsPackInstalled(string packageId)
	{
		return OnlineFeaturesHost_IsPackInstalled(packageId);
	}

	public bool GetStoreManifestFile()
	{
		return OnlineFeaturesHost_GetStoreManifestFile();
	}

	public void StartLauncher(bool bTakeFocus)
	{
		OnlineFeaturesHost_StartLauncher(bTakeFocus);
	}

	public bool PostPipeMessage(S3L_ServerName pipename, S3L_NamedPipeMessage message, string messageData)
	{
		return OnlineFeaturesHost_PostPipeMessage(pipename, message, messageData);
	}

	public bool PostPipeMessage(S3L_ServerName pipename, S3L_NamedPipeMessage message)
	{
		return OnlineFeaturesHost_PostPipeMessage(pipename, message, "");
	}

	public string FunctionProxy(S3L_FunctionProxyKey fnKey)
	{
		try
		{
			return OnlineFeaturesHost_FunctionProxy(fnKey);
		}
		catch (Exception)
		{
			return null;
		}
	}

	public uint GetAvailableEntitlements(EntitlementSource source)
	{
		return OnlineFeaturesHost_GetAvailableEntitlements((uint)source);
	}

	public SharingServiceStatus GetSharingServiceStatus(SharingService service)
	{
		return (SharingServiceStatus)OnlineFeaturesHost_GetSharingServiceStatus((uint)service);
	}

	public string GetPersonaName()
	{
		string text = OnlineFeaturesHost_GetPersonaName();
		if (text != null)
		{
			return text;
		}
		return "";
	}

	public string GetUserID()
	{
		string text = OnlineFeaturesHost_GetUserID();
		if (text != null)
		{
			return text;
		}
		return "";
	}

	public bool IsConnectedToInternet()
	{
		return OnlineFeaturesHost_IsConnectedToInternet();
	}

	public bool CheckConnectionURL(string url)
	{
		return OnlineFeaturesHost_CheckConnectionURL(url);
	}

	public string GetCrossroadsServerURL()
	{
		return OnlineFeaturesHost_GetCrossroadsServerURL();
	}

	public string GetBlazeServerURL()
	{
		return OnlineFeaturesHost_GetBlazeServerURL();
	}

	public bool IsLoggedIn()
	{
		return OnlineFeaturesHost_IsLoggedIn();
	}

	public bool IsSims3ServiceUnreachable()
	{
		return OnlineFeaturesHost_IsSims3ServiceUnreachable();
	}

	public string GetSims3ServiceUnreachableTitle()
	{
		return OnlineFeaturesHost_GetSims3ServiceUnreachableTitle();
	}

	public string GetSims3ServiceUnreachableMsg()
	{
		return OnlineFeaturesHost_GetSims3ServiceUnreachableMsg();
	}

	public bool Login(ref bool bKeepLoggedIn, ref bool noOriginAccount, ref bool noCrossroadsAccount, ref bool invalidVersion, ref bool serversDown)
	{
		bool bUserCancelled = false;
		bool bForceLogin = false;
		bool bEmptyLogin = false;
		bool bUserJoin = false;
		bool bUserRecoverPWD = false;
		return Login(ref bEmptyLogin, ref bUserCancelled, bForceLogin, ref bUserJoin, ref bUserRecoverPWD, ref bKeepLoggedIn, ref noOriginAccount, ref noCrossroadsAccount, ref invalidVersion, ref serversDown);
	}

	public bool Login(ref bool bEmptyLogin, ref bool bUserCancelled, ref bool noOriginAccount, ref bool noCrossroadsAccount, ref bool invalidVersion, ref bool serversDown)
	{
		bool bForceLogin = false;
		bool bUserJoin = false;
		bool bUserRecoverPWD = false;
		bool bKeepLoggedIn = false;
		return Login(ref bEmptyLogin, ref bUserCancelled, bForceLogin, ref bUserJoin, ref bUserRecoverPWD, ref bKeepLoggedIn, ref noOriginAccount, ref noCrossroadsAccount, ref invalidVersion, ref serversDown);
	}

	public bool Login(ref bool bEmptyLogin, ref bool bUserCancelled, bool bForceLogin, ref bool bUserJoin, ref bool bUserRecoverPWD, ref bool bKeepLoggedIn, ref bool noOriginAccount, ref bool noCrossroadsAccount, ref bool invalidVersion, ref bool serversDown)
	{
		noOriginAccount = false;
		noCrossroadsAccount = false;
		invalidVersion = false;
		serversDown = false;
		if (IsLoggedIn() && !bForceLogin)
		{
			return true;
		}
		if (mPromptForCredentialsFromScriptDelegate == null)
		{
			return false;
		}
		string text = "";
		string text2 = "";
		string errorMessage = "";
		bool bRememberEmail = false;
		bUserCancelled = false;
		bEmptyLogin = false;
		bUserJoin = false;
		bUserRecoverPWD = false;
		bKeepLoggedIn = bKeepLoggedIn || OnlineFeaturesHost_GetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberPassword) == "true";
		text = OnlineFeaturesHost_GetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserId);
		text2 = OnlineFeaturesHost_GetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserPassword);
		bool flag = false;
		string value = "";
		while (!flag && string.IsNullOrEmpty(value))
		{
			bool flag2 = true;
			if (bForceLogin || string.IsNullOrEmpty(text) || string.IsNullOrEmpty(text2))
			{
				flag2 = mPromptForCredentialsFromScriptDelegate(ref text, ref text2, ref bKeepLoggedIn, ref bRememberEmail, ref bUserCancelled, ref bUserRecoverPWD, ref bUserJoin);
			}
			if (!flag2)
			{
				if (bKeepLoggedIn)
				{
					OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserId, text);
					OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserPassword, text2);
					OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberPassword, bKeepLoggedIn ? "true" : "false");
					OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberUserID, bRememberEmail ? "true" : "false");
				}
				HideLoginProgress();
				return false;
			}
			if (text == "" || text2 == "")
			{
				bEmptyLogin = true;
				return false;
			}
			ShowLoginProgress();
			try
			{
				OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberPassword, bKeepLoggedIn ? "true" : "false");
				OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberUserID, bRememberEmail ? "true" : "false");
				switch ((CROSSROADSRETURNVALUE)OnlineFeaturesHost_Login(text, text2, out errorMessage))
				{
				case CROSSROADSRETURNVALUE.CROSSROADSRETURNVALUE_SUCCESS:
					flag = true;
					break;
				case CROSSROADSRETURNVALUE.CROSSROADSRETURNVALUE_NO_ORIGIN_ACCOUNT:
					noOriginAccount = true;
					break;
				case CROSSROADSRETURNVALUE.CROSSROADSRETURNVALUE_NO_CROSSROADS_ACCOUNT:
					noCrossroadsAccount = true;
					break;
				case CROSSROADSRETURNVALUE.CROSSROADSRETURNVALUE_INVALID_VERSION:
					invalidVersion = true;
					break;
				case CROSSROADSRETURNVALUE.CROSSROADSRETURNVALUE_SERVERS_DOWN:
					serversDown = true;
					break;
				}
				value = errorMessage;
				if (!flag && string.IsNullOrEmpty(value))
				{
					value = "Unable to authenticate";
				}
			}
			catch (Exception)
			{
				value = "exception error";
			}
		}
		if (flag && bKeepLoggedIn)
		{
			OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserId, text);
			OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserPassword, text2);
		}
		else
		{
			OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserId, text);
			OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserPassword, "");
		}
		HideLoginProgress();
		return flag;
	}

	public string GetCookieValueByKey(S3L_CookieKeys key)
	{
		return OnlineFeaturesHost_GetCookieValueByKey(key);
	}

	public void SetCookieValueByKey(S3L_CookieKeys key, string val)
	{
		OnlineFeaturesHost_SetCookieValueByKey(key, val);
	}

	public bool IsStatusUpdateComplete()
	{
		return OnlineFeaturesHost_IsStatusUpdateComplete();
	}

	public void RequestStatusUpdate()
	{
		OnlineFeaturesHost_RequestStatusUpdate();
	}

	public SharingInfoStatus GetSharingInfoStatus()
	{
		return (SharingInfoStatus)OnlineFeaturesHost_GetSharingInfoStatus();
	}

	public bool IsRegisteredWithSharingService(SharingService service)
	{
		return OnlineFeaturesHost_IsRegisteredWithSharingService((uint)service);
	}

	public void UnregisteredFromSharingService(SharingService service)
	{
		OnlineFeaturesHost_UnregisteredFromSharingService((uint)service);
	}

	public bool IsSharingServiceEnabled(SharingService service)
	{
		return OnlineFeaturesHost_IsSharingServiceEnabled((uint)service);
	}

	public uint GetNumberOfMemoriesShared()
	{
		return OnlineFeaturesHost_GetNumberOfMemoriesShared();
	}

	public uint GetNumberOfCustomMemoriesShared()
	{
		return OnlineFeaturesHost_GetNumberOfCustomMemoriesShared();
	}

	public void ShareMemory(uint service, IShareableLifeEvent lifeEvent)
	{
		OnlineFeaturesHost_ShareMemory(service, lifeEvent.Id, lifeEvent.Snapshot, lifeEvent.Name, lifeEvent.Description, lifeEvent.ActorName, lifeEvent.IsCustom, lifeEvent.Identifier);
	}

	public void ShareHolidayGreetingCard(uint service, IGameShareableItem card)
	{
		OnlineFeaturesHost_ShareHolidayGreetingCard(service, card.Id, card.Image, card.Title, card.Description, card.CrossroadsFriends);
	}

	public void RegisterAllCallbacksForGame()
	{
		mPromptForCredentialsCBDelegate = PromptForCredentialsCB;
		OnlineFeaturesHost_RegisterPromptForCredentialsCallback(mPromptForCredentialsCBDelegate);
		mPromptForShareCredentialsCBDelegate = PromptForShareCredentialsCB;
		OnlineFeaturesHost_RegisterPromptForShareCredentialsCallback(mPromptForShareCredentialsCBDelegate);
		mMemoryUploadStatusChangedCBDelegate = MemoryUploadStatusChangedCB;
		OnlineFeaturesHost_RegisterMemoryUploadStatusChangedCallback(mMemoryUploadStatusChangedCBDelegate);
	}

	public void RegisterPromptForCredentialsDelegate(UiPromptForCredentialsDelegate d)
	{
		mPromptForCredentialsDelegate = d;
	}

	public void RegisterPromptForCredentialsFromScriptDelegate(UiPromptForCredentialsFromScriptDelegate d)
	{
		mPromptForCredentialsFromScriptDelegate = d;
	}

	public void RegisterShowProgressDialogDelegate(UiShowProgressDialogDelegate d)
	{
		mShowProgressDialogDelegate = d;
	}

	public void RegisterCloseProgressDialogDelegate(UiCloseProgressDialogDelegate d)
	{
		mCloseProgressDialogDelegate = d;
	}

	public void ShowLoginProgress()
	{
		if (mShowProgressDialogDelegate != null)
		{
			mShowProgressDialogDelegate("");
		}
	}

	public void HideLoginProgress()
	{
		if (mCloseProgressDialogDelegate != null)
		{
			mCloseProgressDialogDelegate();
		}
	}

	public void HandlePromptForCredentialsResponse(bool bResult, string username, string password, bool bKeepLoggedIn, bool bRememberEmail, out string errorMessage)
	{
		errorMessage = "";
		bool flag = false;
		if (bResult)
		{
			try
			{
				ShowLoginProgress();
				OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberPassword, bKeepLoggedIn ? "true" : "false");
				OnlineFeaturesHost_SetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberUserID, bRememberEmail ? "true" : "false");
				if (OnlineFeaturesHost_Login(username, password, out errorMessage) == 0)
				{
					flag = true;
				}
				if (!flag)
				{
					HideLoginProgress();
					mPromptForCredentialsDelegate(username, bKeepLoggedIn, bRememberEmail);
					return;
				}
			}
			catch (Exception)
			{
			}
		}
		OnlineFeaturesHost_HandlePromptForCredentialsResponse(flag);
		HideLoginProgress();
	}

	public void RegisterPromptForShareCredentialsDelegate(UiPromptForShareCredentialsDelegate d)
	{
		mPromptForShareCredentialsDelegate = d;
	}

	public void HandlePromptForShareCredentialsResponse(bool bResult)
	{
		OnlineFeaturesHost_HandlePromptForShareCredentialsResponse(bResult);
	}

	public void OverrideInGameBrowserUrl(string url)
	{
		try
		{
			OnlineFeaturesHost_OverrideInGameBrowserUrl(url);
		}
		catch (Exception)
		{
		}
	}

	public void OverrideInGameBrowserUrlXroads(string url)
	{
		try
		{
			OnlineFeaturesHost_OverrideInGameBrowserUrlXroads(url);
		}
		catch (Exception)
		{
		}
	}

	public void WaitForDownload(ulong downloadId)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		OnlineFeaturesHost_WaitForDownload(downloadId, CallbackDelegate);
	}

	protected override void OnAbortCallbackResult(object value)
	{
	}

	private bool PromptForCredentialsCB(string sims3web_userId)
	{
		if (mPromptForCredentialsDelegate == null)
		{
			return false;
		}
		bool flag = false;
		bool bRememberEmail = false;
		flag = OnlineFeaturesHost_GetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_RememberPassword) == "true";
		string username = OnlineFeaturesHost_GetCookieValueByKey(S3L_CookieKeys.S3L_CK_DB_Sims3Web_UserId);
		bool result = false;
		try
		{
			result = mPromptForCredentialsDelegate(username, flag, bRememberEmail);
		}
		catch (Exception)
		{
		}
		return result;
	}

	private bool PromptForShareCredentialsCB(string url)
	{
		if (mPromptForCredentialsDelegate == null)
		{
			return false;
		}
		bool result = false;
		try
		{
			mPromptForShareCredentialsDelegate(url);
			result = true;
		}
		catch (Exception)
		{
		}
		return result;
	}

	private void MemoryUploadStatusChangedCB(uint identifier, uint status, uint error)
	{
		if (error == 0)
		{
			_ = 6;
		}
	}
}
