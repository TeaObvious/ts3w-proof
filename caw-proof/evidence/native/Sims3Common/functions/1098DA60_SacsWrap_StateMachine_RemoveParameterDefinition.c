/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_RemoveParameterDefinition.
   Export ordinal(s): 2219. Entry VA: 0x1098da60. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CE9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_StateMachine_RemoveParameterDefinition(int param_1,int *param_2)

{
                    /* 0x98da60  2219  SacsWrap_StateMachine_RemoveParameterDefinition */
  if ((param_1 != 0) && (param_2 != (int *)0x0)) {
    param_2[10] = 0;
    FUN_100ddbd0((void *)(param_1 + 0x60),(uint *)(param_2 + 0xb));
                    /* WARNING: Could not recover jumptable at 0x1098da8c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_2 + 4))();
    return;
  }
  return;
}

