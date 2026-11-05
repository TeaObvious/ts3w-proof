// Original ScriptCore MethodDef 0x060005F1; identity: evidence/managed/reference-inputs.json, ScriptCore resource.
// Static ILSpy rendering. Optional handler dispatch or enqueue plus conditional Wake; native delivery order remains unproved.
// Renderer warnings and reference/type projections are preserved; use paired tokenized IL for exact semantics.
// This selected method rendering is not a standalone or reconstructed product source file.

using Sims3.SimIFace;

private void OnNativeEvent(uint type, uint subType, uint id, string message)
{
	//IL_0041: Unknown result type (might be due to invalid IL or missing references)
	//IL_0046: Unknown result type (might be due to invalid IL or missing references)
	//IL_0053: Unknown result type (might be due to invalid IL or missing references)
	Event obj = CreateEvent(type, subType, id, message);
	if (mPermissiveOnEvent != null)
	{
		mPermissiveOnEvent.Invoke((IEvent)(object)obj);
	}
	if (mOnEvent != null)
	{
		mOnEvent.Invoke((IEvent)(object)obj);
		return;
	}
	mEvents.Enqueue(obj);
	if (mSleepingTask != ObjectGuid.InvalidObjectGuid)
	{
		Simulator.Wake(mSleepingTask, false);
	}
}
