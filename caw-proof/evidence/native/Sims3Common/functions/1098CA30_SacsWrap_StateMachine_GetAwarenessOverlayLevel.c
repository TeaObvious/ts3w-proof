/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_GetAwarenessOverlayLevel.
   Export ordinal(s): 2211. Entry VA: 0x1098ca30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CF0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SacsWrap_StateMachine_GetAwarenessOverlayLevel(int param_1)

{
                    /* 0x98ca30  2211  SacsWrap_StateMachine_GetAwarenessOverlayLevel */
  if (param_1 == 0) {
    return 6;
  }
  return *(undefined4 *)(param_1 + 0x38);
}

