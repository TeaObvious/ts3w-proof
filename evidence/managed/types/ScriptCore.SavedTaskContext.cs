// Analyst: Restore patches frame/field references before SetTaskContext; NativeYieldingCall disposal precedes testing its result. Later field writes have no rollback.
using System;
using Sims3.SimIFace;

namespace ScriptCore;

public class SavedTaskContext : IDisposable
{
	public TaskContext mTaskContext;

	public NativeYieldingCall mNativeYieldingCall;

	public object[][] mFieldData;

	public bool Restore(ulong targetTaskId)
	{
		for (int i = 0; i < mTaskContext.mFrames.Length; i++)
		{
			if (!Patch(ref mTaskContext.mFrames[i]) || !PatchObjects(mFieldData[i]))
			{
				return false;
			}
		}
		bool flag = TaskControl.SetTaskContext(targetTaskId, ref mTaskContext);
		if (mNativeYieldingCall != null)
		{
			mNativeYieldingCall.Dispose();
			mTaskContext.mNativeYieldCall = 0u;
		}
		if (!flag)
		{
			return false;
		}
		object[][] array = mFieldData;
		TaskFieldReference taskFieldReference = default;
		for (int j = 0; j < array.Length; j++)
		{
			object[] array2 = array[j];
			taskFieldReference.mFrameIndex = j;
			for (int k = 0; k < array2.Length; k++)
			{
				taskFieldReference.mFieldIndex = k;
				object obj = array2[k];
				if (obj is TaskFieldReference)
				{
					TaskControl.SetFieldReference(targetTaskId, taskFieldReference, (TaskFieldReference)obj);
				}
				else
				{
					TaskControl.SetFieldValue(targetTaskId, taskFieldReference, obj);
				}
			}
		}
		return true;
	}

	public void Dispose()
	{
		if (mNativeYieldingCall != null)
		{
			mNativeYieldingCall.Dispose();
			mTaskContext.mNativeYieldCall = 0u;
		}
	}

	private bool Patch(ref TaskFrame taskFrame)
	{
		if (taskFrame.mThisObj is IStackReference stackReference)
		{
			object obj = stackReference.ResolveStackReference();
			if (obj == null)
			{
				return false;
			}
			taskFrame.mThisObj = obj;
		}
		if (taskFrame.mEvalStack != null && !PatchObjects(taskFrame.mEvalStack))
		{
			return false;
		}
		return true;
	}

	private bool PatchObjects(object[] objects)
	{
		int num = objects.Length;
		for (int i = 0; i < num; i++)
		{
			if (objects[i] is IStackReference stackReference)
			{
				object obj = stackReference.ResolveStackReference();
				if (obj == null)
				{
					return false;
				}
				objects[i] = obj;
			}
		}
		return true;
	}
}
