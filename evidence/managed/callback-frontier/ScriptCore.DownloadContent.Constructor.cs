// Original ScriptCore MethodDef 0x060000B8; identity: evidence/managed/reference-inputs.json, ScriptCore resource.
// Static ILSpy rendering. Roots delegate field 04000008 and passes it to 060000B3 at IL_002E.
// Renderer warnings and reference/type projections are preserved; use paired tokenized IL for exact semantics.
// This selected method rendering is not a standalone or reconstructed product source file.

using System;

public DownloadContent()
{
	AppDomain.CurrentDomain.SetData("DownloadContent", this);
	mSimSavedDelegate = DownloadContent_OnSimSaved;
	DownloadContent_SetSimSavedCallbackImpl(mSimSavedDelegate);
}
