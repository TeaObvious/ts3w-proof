// Analyst: Add wakes only at Count==1. Simulate captures Count once, restores each original request, wakes failures, disposes each context, clears then sleeps; no local exception handling.
using System.Collections.Generic;
using Sims3.SimIFace;

namespace ScriptCore;

internal class LoadSaveManagerTask : Task
{
	public struct TaskRestoreRequest
	{
		public ulong mObjectId;

		public SavedTaskContext mContext;
	}

	private List<TaskRestoreRequest> mRestoreRequests = new List<TaskRestoreRequest>();

	public void Add(ref TaskRestoreRequest request)
	{
		mRestoreRequests.Add(request);
		if (mRestoreRequests.Count == 1)
		{
			Sims3.SimIFace.Simulator.Wake(ObjectId);
		}
	}

	public override void Simulate()
	{
		while (true)
		{
			int count = mRestoreRequests.Count;
			for (int i = 0; i < count; i++)
			{
				TaskRestoreRequest taskRestoreRequest = mRestoreRequests[i];
				if (!taskRestoreRequest.mContext.Restore(taskRestoreRequest.mObjectId))
				{
					Sims3.SimIFace.Simulator.Wake(new ObjectGuid(taskRestoreRequest.mObjectId));
				}
				taskRestoreRequest.mContext.Dispose();
			}
			mRestoreRequests.Clear();
			Sims3.SimIFace.Simulator.Sleep(uint.MaxValue);
		}
	}
}
