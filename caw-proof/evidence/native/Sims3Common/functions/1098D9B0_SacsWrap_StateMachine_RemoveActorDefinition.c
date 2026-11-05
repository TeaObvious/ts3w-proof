/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_RemoveActorDefinition.
   Export ordinal(s): 2218. Entry VA: 0x1098d9b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CE7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_StateMachine_RemoveActorDefinition(int param_1,int *param_2)

{
                    /* 0x98d9b0  2218  SacsWrap_StateMachine_RemoveActorDefinition */
  if ((param_1 != 0) && (param_2 != (int *)0x0)) {
    param_2[10] = 0;
    FUN_100ddbd0((void *)(param_1 + 0x40),(uint *)(param_2 + 0xb));
                    /* WARNING: Could not recover jumptable at 0x1098d9dc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_2 + 4))();
    return;
  }
  return;
}

