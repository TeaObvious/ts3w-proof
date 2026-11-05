// Original PC1.67 package assembly; actual ILSpy selected-member output.
// Analyst: original managed pose/layout/outfit policy remains in game assemblies.
// MethodDef/RVA and complete typed CIL are indexed beside this file.
using System;
using Sims3.SimIFace;

public void Simulate()
{
	try
	{
		Delegate[] invocationList = mCallback.GetInvocationList();
		for (int i = 0; i < invocationList.Length; i++)
		{
			PrepareThumbnailObject prepareThumbnailObject = (PrepareThumbnailObject)invocationList[i];
			if (prepareThumbnailObject(mTemplateGuid, mTargetGuid, mIndex, mUintVal1, mUintVal2, mSize, mPrepareType, mUintVal3))
			{
				break;
			}
		}
	}
	finally
	{
		ThumbnailManager_NotifyPreparationCompleted();
		Sims3.SimIFace.Simulator.DestroyObject(mObjectId);
	}
}
