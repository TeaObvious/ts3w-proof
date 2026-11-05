using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class DeviceConfig : IDeviceConfig
{
	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] DeviceConfig_GetResolutionList();

	[DllImport("Sims3Common")]
	private static extern void DeviceConfig_GetCurrentResolution(out uint width, out uint height, out uint refresh, [MarshalAs(UnmanagedType.I1)] out bool fullScreen);

	[DllImport("Sims3Common")]
	private static extern uint DeviceConfig_GetErrorCode();

	[DllImport("Sims3Common.dll")]
	private static extern int DeviceConfig_GetErrorLine();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsCardRecognized();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsCardSupported();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsMac();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsDriverOld();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsAASupported();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsNewConfiguration();

	[DllImport("Sims3Common")]
	private static extern int DeviceConfig_GetProcessorLevel();

	[DllImport("Sims3Common")]
	private static extern int DeviceConfig_GetVideoCardLevel();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_GetOption([MarshalAs(UnmanagedType.LPWStr)] string key, out uint value);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_GetOptionDefault([MarshalAs(UnmanagedType.LPWStr)] string key, out uint value);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_SetOption([MarshalAs(UnmanagedType.LPWStr)] string key, uint value);

	[DllImport("Sims3Common")]
	private static extern int DeviceConfig_GetProperty([MarshalAs(UnmanagedType.LPWStr)] string key, int defaultValue);

	[DllImport("Sims3Common")]
	private static extern void DeviceConfig_SetProperty([MarshalAs(UnmanagedType.LPWStr)] string key, int value);

	[DllImport("Sims3Common")]
	private static extern void DeviceConfig_ApplyOptions();

	[DllImport("Sims3Common")]
	private static extern void DeviceConfig_SaveOptions();

	[DllImport("Sims3Common")]
	private static extern int DeviceConfig_AuthenticateDisc();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DeviceConfig_IsRegistryTelemetryEnabled();

	[DllImport("Sims3Common")]
	private static extern void DeviceConfig_EnableRegistryTelemetry(bool bEnable);

	public DeviceConfig()
	{
		AppDomain.CurrentDomain.SetData("DeviceConfig", this);
	}

	public Resolution[] GetResolutionList()
	{
		ulong[] array = DeviceConfig_GetResolutionList();
		Resolution[] array2 = new Resolution[array.Length];
		int num = 0;
		ulong[] array3 = array;
		foreach (ulong num2 in array3)
		{
			array2[num].mWidth = (uint)(num2 >> 32);
			array2[num].mHeight = (uint)((num2 >> 16) & 0xFFFF);
			array2[num].mRefresh = (uint)(num2 & 0xFFFF);
			num++;
		}
		return array2;
	}

	public Resolution GetCurrentResolution(out bool fullScreen)
	{
		Resolution result = default;
		DeviceConfig_GetCurrentResolution(out result.mWidth, out result.mHeight, out result.mRefresh, out fullScreen);
		return result;
	}

	public DeviceConfigError GetErrorCode()
	{
		return (DeviceConfigError)DeviceConfig_GetErrorCode();
	}

	public int GetErrorLine()
	{
		return DeviceConfig_GetErrorLine();
	}

	public bool IsCardRecognized()
	{
		return DeviceConfig_IsCardRecognized();
	}

	public bool IsCardSupported()
	{
		return DeviceConfig_IsCardSupported();
	}

	public bool IsMac()
	{
		return DeviceConfig_IsMac();
	}

	public bool IsDriverOld()
	{
		return DeviceConfig_IsDriverOld();
	}

	public bool IsAASupported()
	{
		return DeviceConfig_IsAASupported();
	}

	public bool IsNewConfiguration()
	{
		return DeviceConfig_IsNewConfiguration();
	}

	public int GetProcessorLevel()
	{
		return DeviceConfig_GetProcessorLevel();
	}

	public int GetVideoCardLevel()
	{
		return DeviceConfig_GetVideoCardLevel();
	}

	public bool GetOption(string key, out uint value)
	{
		return DeviceConfig_GetOption(key, out value);
	}

	public bool GetOptionDefault(string key, out uint value)
	{
		return DeviceConfig_GetOptionDefault(key, out value);
	}

	public bool SetOption(string key, uint value)
	{
		return DeviceConfig_SetOption(key, value);
	}

	public int GetProperty(string key, int defaultValue)
	{
		return DeviceConfig_GetProperty(key, defaultValue);
	}

	public void SetProperty(string key, int value)
	{
		DeviceConfig_SetProperty(key, value);
	}

	public void ApplyOptions()
	{
		DeviceConfig_ApplyOptions();
	}

	public void SaveOptions()
	{
		DeviceConfig_SaveOptions();
	}

	public DiscAuthResult AuthenticateDisc()
	{
		return (DiscAuthResult)DeviceConfig_AuthenticateDisc();
	}

	public bool IsRegistryTelemetryEnabled()
	{
		return DeviceConfig_IsRegistryTelemetryEnabled();
	}

	public void EnableRegistryTelemetry(bool bEnable)
	{
		DeviceConfig_EnableRegistryTelemetry(bEnable);
	}
}
