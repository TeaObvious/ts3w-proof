/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorOperationNode_SetTarget;
   SacsWrap_SelectOnParameterNode_SetParameter. Export ordinal(s): 2104; 2186. Entry VA: 0x1098d500.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000E24; CSHostWrap:0x06000EA9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SacsWrap_ActorOperationNode_SetTarget(int param_1,int *param_2)

{
  int *piVar1;
  
                    /* 0x98d500  2104  SacsWrap_ActorOperationNode_SetTarget
                       0x98d500  2186  SacsWrap_SelectOnParameterNode_SetParameter */
  if ((param_1 != 0) && (piVar1 = *(int **)(param_1 + 0x50), param_2 != piVar1)) {
    if (param_2 != (int *)0x0) {
      (**(code **)*param_2)();
    }
    *(int **)(param_1 + 0x50) = param_2;
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1098d533. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

