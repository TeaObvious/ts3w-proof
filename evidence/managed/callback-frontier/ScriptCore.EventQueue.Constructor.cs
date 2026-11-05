// Original ScriptCore MethodDef 0x060005F2; identity: evidence/managed/reference-inputs.json, ScriptCore resource.
// Static ILSpy rendering. Roots delegate field 04000079 and passes it to 060005EE at IL_0035.
// Renderer warnings and reference/type projections are preserved; use paired tokenized IL for exact semantics.
// This selected method rendering is not a standalone or reconstructed product source file.

using System.Collections.Generic;
using Sims3.SimIFace;

public EventQueue()
{
	//IL_000c: Unknown result type (might be due to invalid IL or missing references)
	//IL_0011: Unknown result type (might be due to invalid IL or missing references)
	mEvents = new Queue<Event>();
	mSleepingTask = ObjectGuid.InvalidObjectGuid;
	base..ctor();
	mOnNativeEvent = OnNativeEvent;
	mHandle = new EventQueueHandle(EventQueue_CreateEventQueueImpl(mOnNativeEvent));
}
