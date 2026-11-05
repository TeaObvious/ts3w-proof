using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class ProfilerUtils : IProfiler
{
	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_BeginEventImpl(string pTag);

	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_EndEventImpl();

	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_MarkerImpl([MarshalAs(UnmanagedType.LPWStr)] string pTag);

	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_CounterImpl([MarshalAs(UnmanagedType.LPWStr)] string pTag, int value);

	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_DeltaImpl([MarshalAs(UnmanagedType.LPWStr)] string pTag, int value);

	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_BeginLoadEventImpl([MarshalAs(UnmanagedType.LPWStr)] string pTag);

	[DllImport("Sims3Common.dll")]
	[IgnoreWhenCheckingImports]
	private static extern void ProfilerUtils_EndLoadEventImpl();

	private ProfilerUtils()
	{
		AppDomain.CurrentDomain.SetData("ProfilerUtils", this);
	}

	public void BeginEvent(string pTag)
	{
		ProfilerUtils_BeginEventImpl(pTag);
	}

	public void EndEvent()
	{
		ProfilerUtils_EndEventImpl();
	}

	public void Marker(string pTag)
	{
		ProfilerUtils_MarkerImpl(pTag);
	}

	public void Counter(string pTag, int value)
	{
		ProfilerUtils_CounterImpl(pTag, value);
	}

	public void Delta(string pTag, int value)
	{
		ProfilerUtils_DeltaImpl(pTag, value);
	}
}
