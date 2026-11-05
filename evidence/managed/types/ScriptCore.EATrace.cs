using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class EATrace : ITrace
{
	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool EATrace_ShouldLogImpl(int level, [MarshalAs(UnmanagedType.LPWStr)] string pGroup);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_LogImpl(int level, [MarshalAs(UnmanagedType.LPWStr)] string pGroup, [MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_TraceImpl([MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_WarnImpl(bool condition, [MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_NotifyImpl(bool condition, [MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_AssertImpl(bool condition, [MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_VerifyImpl(bool condition, [MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	[DllImport("Sims3Common.dll")]
	private static extern int EATrace_FailImpl([MarshalAs(UnmanagedType.LPWStr)] string pMessage, [MarshalAs(UnmanagedType.LPWStr)] string pFile, int line, [MarshalAs(UnmanagedType.LPWStr)] string pMethod);

	public EATrace()
	{
		AppDomain.CurrentDomain.SetData("EATrace", this);
	}

	public bool ShouldLog(int level, string group)
	{
		return EATrace_ShouldLogImpl(level, group);
	}

	public int Log(int level, string group, string message, string file, int line, string method)
	{
		return EATrace_LogImpl(level, group, message, file, line, method);
	}

	public int Trace(string message, string file, int line, string method)
	{
		return EATrace_TraceImpl(message, file, line, method);
	}

	public int Warn(bool condition, string message, string file, int line, string method)
	{
		return EATrace_WarnImpl(condition, message, file, line, method);
	}

	public int Notify(bool condition, string message, string file, int line, string method)
	{
		return EATrace_NotifyImpl(condition, message, file, line, method);
	}

	public int Assert(bool condition, string message, string file, int line, string method)
	{
		return EATrace_AssertImpl(condition, message, file, line, method);
	}

	public int Verify(bool condition, string message, string file, int line, string method)
	{
		return EATrace_VerifyImpl(condition, message, file, line, method);
	}

	public int Fail(string message, string file, int line, string method)
	{
		return EATrace_FailImpl(message, file, line, method);
	}
}
