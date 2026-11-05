/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachineDriver_GetStateMachine.
   Export ordinal(s): 2196. Entry VA: 0x1098d470. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000D8F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SacsWrap_StateMachineDriver_GetStateMachine(int param_1)

{
                    /* 0x98d470  2196  SacsWrap_StateMachineDriver_GetStateMachine */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0xc);
  }
  return 0;
}

