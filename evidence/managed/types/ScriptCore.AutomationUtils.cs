using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class AutomationUtils : IAutomationUtils
{
	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Automation_EnableNetworkListening();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Automation_GetNextScript();

	[DllImport("Sims3Common.dll")]
	private static extern void Automation_TakeSnapShot([MarshalAs(UnmanagedType.LPWStr)] string strid);

	[DllImport("Sims3Common.dll")]
	private static extern void Automation_SetFailureExitCode(int exitCode);

	public AutomationUtils()
	{
		AppDomain.CurrentDomain.SetData("AutomationUtils", this);
	}

	public bool EnableNetworkListening()
	{
		return Automation_EnableNetworkListening();
	}

	public string GetNextScript()
	{
		return Automation_GetNextScript();
	}

	public void TakeSnapShot(string screenShotPath)
	{
		Automation_TakeSnapShot(screenShotPath);
	}

	public void SetFailureExitCode(int exitCode)
	{
		Automation_SetFailureExitCode(exitCode);
	}
}
