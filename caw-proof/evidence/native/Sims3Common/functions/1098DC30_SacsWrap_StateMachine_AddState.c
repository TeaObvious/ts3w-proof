/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_AddState. Export
   ordinal(s): 2206. Entry VA: 0x1098dc30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CE4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl SacsWrap_StateMachine_AddState(void *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
                    /* 0x98dc30  2206  SacsWrap_StateMachine_AddState */
  if ((param_1 != (void *)0x0) && (param_2 != (undefined4 *)0x0)) {
    uVar1 = FUN_105ef230(param_1,param_2);
    return ((char)uVar1 != '\0') - 1;
  }
  return -1;
}

