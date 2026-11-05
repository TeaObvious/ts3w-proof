/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachineDriver_Destroy. Export
   ordinal(s): 2193. Entry VA: 0x1098cd20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000D8E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_StateMachineDriver_Destroy(int param_1)

{
                    /* 0x98cd20  2193  SacsWrap_StateMachineDriver_Destroy */
  if ((DAT_10c7d5a0 != 0) && (param_1 != 0)) {
                    /* WARNING: Could not recover jumptable at 0x1098cd39. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*(int *)(param_1 + 8) + 4))();
    return;
  }
  return;
}

