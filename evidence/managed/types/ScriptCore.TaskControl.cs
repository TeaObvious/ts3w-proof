using System;
using System.Runtime.InteropServices;

namespace ScriptCore;

[ComVisible(false)]
public class TaskControl
{
	[DllImport("Sims3Common.dll")]
	private static extern bool TaskControl_GetTaskContext(ulong taskId, bool methodsOnly, out TaskContext context);

	[DllImport("Sims3Common.dll")]
	private static extern bool TaskControl_SetTaskContext(ulong taskId, ref TaskContext context);

	[DllImport("Sims3Common.dll")]
	private static extern bool TaskControl_ResolveFieldReference(ulong taskId, ref TaskFieldReference fieldRef);

	[DllImport("Sims3Common.dll")]
	private static extern object TaskControl_GetFieldValue(ulong taskId, ref TaskFieldReference fieldRef);

	[DllImport("Sims3Common.dll")]
	private static extern void TaskControl_SetFieldValue(ulong taskId, ref TaskFieldReference fieldRef, object value);

	[DllImport("Sims3Common.dll")]
	private static extern void TaskControl_SetFieldReference(ulong taskId, ref TaskFieldReference fieldRef, ref TaskFieldReference source);

	[DllImport("Sims3Common.dll")]
	private static extern bool TaskControl_GetMethodChecksum(IntPtr handle, out uint checksum);

	[DllImport("Sims3Common.dll")]
	private static extern uint TaskControl_LoadNativeYieldObject(uint nativeReader, int saveIndex);

	[DllImport("Sims3Common.dll")]
	private static extern int TaskControl_SaveNativeYieldObject(uint nativeWriter, uint yieldCallHandle);

	[DllImport("Sims3Common.dll")]
	internal static extern void TaskControl_ReleaseYieldingCall(uint handle);

	[DllImport("Sims3Common.dll")]
	internal static extern bool TaskControl_CanSaveYieldingCall(uint handle);

	public static bool GetTaskContext(ulong taskId, bool methodsOnly, out TaskContext context)
	{
		return TaskControl_GetTaskContext(taskId, methodsOnly, out context);
	}

	public static bool SetTaskContext(ulong taskId, ref TaskContext context)
	{
		return TaskControl_SetTaskContext(taskId, ref context);
	}

	public static object GetFieldValue(ulong taskId, TaskFieldReference fieldRef)
	{
		return TaskControl_GetFieldValue(taskId, ref fieldRef);
	}

	public static bool ResolveFieldReference(ulong taskId, ref TaskFieldReference fieldRef)
	{
		return TaskControl_ResolveFieldReference(taskId, ref fieldRef);
	}

	public static void SetFieldValue(ulong taskId, TaskFieldReference fieldRef, object value)
	{
		TaskControl_SetFieldValue(taskId, ref fieldRef, value);
	}

	public static void SetFieldReference(ulong taskId, TaskFieldReference targetFieldRef, TaskFieldReference sourceFieldRef)
	{
		TaskControl_SetFieldReference(taskId, ref targetFieldRef, ref sourceFieldRef);
	}

	public static bool GetMethodChecksum(RuntimeMethodHandle handle, out uint checksum)
	{
		return TaskControl_GetMethodChecksum(handle.Value, out checksum);
	}

	public static NativeYieldingCall LoadNativeYieldObject(uint nativeTaskIOHandle, int saveIndex)
	{
		uint num = TaskControl_LoadNativeYieldObject(nativeTaskIOHandle, saveIndex);
		if (num == 0)
		{
			return null;
		}
		return new NativeYieldingCall(num);
	}

	public static int SaveNativeYieldObject(uint nativeTaskIOHandle, NativeYieldingCall yieldCall)
	{
		return TaskControl_SaveNativeYieldObject(nativeTaskIOHandle, yieldCall.Handle);
	}
}
