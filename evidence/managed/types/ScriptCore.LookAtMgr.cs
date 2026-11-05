// Original PC 1.67 ScriptCore.dll. Actual ILSpy C#; paired complete original IL06000FF5..FF7.
// Constructor registers this service. Create retains the original LookAtTask constructor; Flush forwards the full ObjectGuid and signed priority.
using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public class LookAtMgr : ILookAt
{
	[DllImport("Sims3Common.dll")]
	private static extern int LookAt_FlushLookAtQueueImpl(ulong handle, int priority);

	public LookAtMgr()
	{
		AppDomain.CurrentDomain.SetData("LookAtMgr", this);
	}

	public ILookAtTask CreateLookAtTask(IScriptProxy simObj, int priority, LookAtJointFilter jointFilter)
	{
		return new LookAtTask(simObj, priority, jointFilter);
	}

	public int FlushLookAtQueue(IScriptProxy simObj, int priority)
	{
		return LookAt_FlushLookAtQueueImpl(simObj.ObjectId.Value, priority);
	}
}
