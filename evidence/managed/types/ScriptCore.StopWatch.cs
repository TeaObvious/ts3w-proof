using System;
using System.Reflection;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public class StopWatch : Sims3.SimIFace.StopWatch
{
	private uint mHandle;

	[DllImport("Sims3Common.dll")]
	private static extern uint StopWatch_CreateStopwatch(int tickStyle);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_DestroyStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_StartStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_StopStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_ResetStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_RestartStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint StopWatch_GetElapsedTimeStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float StopWatch_GetElapsedTimeFloatStopwatch(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_SetElapsedTimeStopwatch(uint handle, uint elapsedTime);

	[DllImport("Sims3Common.dll")]
	private static extern void StopWatch_SetElapsedTimeFloatStopwatch(uint handle, float elapsedTime);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool StopWatch_IsRunningStopwatch(uint handle);

	static StopWatch()
	{
		Type[] types = new Type[1] { typeof(TickStyles) };
		ConstructorInfo constructor = typeof(StopWatch).GetConstructor(types);
		AppDomain.CurrentDomain.SetData("StopWatchCtor", constructor);
	}

	public StopWatch()
	{
	}

	public StopWatch(TickStyles tickStyle)
	{
		mHandle = StopWatch_CreateStopwatch((int)tickStyle);
	}

	~StopWatch()
	{
		if (mHandle != 0)
		{
			StopWatch_DestroyStopwatch(mHandle);
		}
		mHandle = 0u;
	}

	public override void Dispose()
	{
		if (mHandle != 0)
		{
			StopWatch_DestroyStopwatch(mHandle);
		}
		mHandle = 0u;
		GC.SuppressFinalize(this);
	}

	public override void Start()
	{
		StopWatch_StartStopwatch(mHandle);
	}

	public override void Stop()
	{
		StopWatch_StopStopwatch(mHandle);
	}

	public override void Reset()
	{
		StopWatch_ResetStopwatch(mHandle);
	}

	public override void Restart()
	{
		StopWatch_RestartStopwatch(mHandle);
	}

	public override uint GetElapsedTime()
	{
		return StopWatch_GetElapsedTimeStopwatch(mHandle);
	}

	public override float GetElapsedTimeFloat()
	{
		return StopWatch_GetElapsedTimeFloatStopwatch(mHandle);
	}

	public override void SetElapsedTime(uint elapsedTime)
	{
		StopWatch_SetElapsedTimeStopwatch(mHandle, elapsedTime);
	}

	public override void SetElapsedTimeFloat(float elapsedTime)
	{
		StopWatch_SetElapsedTimeFloatStopwatch(mHandle, elapsedTime);
	}

	public override bool IsRunning()
	{
		return StopWatch_IsRunningStopwatch(mHandle);
	}
}
