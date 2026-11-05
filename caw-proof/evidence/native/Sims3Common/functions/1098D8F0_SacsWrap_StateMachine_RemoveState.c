/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_RemoveState. Export
   ordinal(s): 2220. Entry VA: 0x1098d8f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CE5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_StateMachine_RemoveState(int param_1,int *param_2)

{
  code *UNRECOVERED_JUMPTABLE;
  
                    /* 0x98d8f0  2220  SacsWrap_StateMachine_RemoveState */
  if ((param_1 != 0) && (param_2 != (int *)0x0)) {
    FUN_100ddbd0((void *)(param_1 + 0x80),(uint *)(param_2 + 10));
    UNRECOVERED_JUMPTABLE = *(code **)(*param_2 + 4);
    param_2[0xd] = 0;
                    /* WARNING: Could not recover jumptable at 0x1098d91f. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*UNRECOVERED_JUMPTABLE)();
    return;
  }
  return;
}

