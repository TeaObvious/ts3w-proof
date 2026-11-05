// Original ScriptCore MethodDef 0x06000114; identity: evidence/managed/reference-inputs.json, ScriptCore resource.
// Static ILSpy rendering. Constructs a ResourceKey and invokes the optional OnSimSaved delegate.
// Renderer warnings and reference/type projections are preserved; use paired tokenized IL for exact semantics.
// This selected method rendering is not a standalone or reconstructed product source file.

using Sims3.SimIFace;

private void DownloadContent_OnSimSaved(ulong longInstance, uint type, uint group)
{
	//IL_0011: Unknown result type (might be due to invalid IL or missing references)
	if (this.OnSimSaved != null)
	{
		this.OnSimSaved.Invoke(new ResourceKey(longInstance, type, group));
	}
}
