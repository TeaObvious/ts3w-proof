/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, walker/state pointers, RET8. Null
   walker no-op. A nonzero desired state matching retained graph state78 reuses it; identical
   pending1C no-op. Differing retained graph dispatches phase3 and clears78. Write changed pending1C
   then dirty propagation only when newstate nonzero. Null desired state clears pending without
   abandoning retained graph. */

void __thiscall SacsDriver_ReplacePendingWalkerState(void *this,void *param_1,int param_2)

{
  int iVar1;
  
  if (param_1 != (void *)0x0) {
    if (param_2 != 0) {
      iVar1 = *(int *)((int)param_1 + 0x78);
      if (param_2 == iVar1) {
        if (param_2 == *(int *)((int)param_1 + 0x1c)) {
          return;
        }
        SacsWalker_SetPendingState(param_1,param_2);
        return;
      }
      if (iVar1 != 0) {
        if (*(void **)(iVar1 + 0x38) != (void *)0x0) {
          SacsDecisionGraph_DispatchPhase
                    (*(void **)(iVar1 + 0x38),3,(void *)((int)this + 0x44),(uint)param_1);
        }
        *(undefined4 *)((int)param_1 + 0x78) = 0;
      }
    }
    if (param_2 != *(int *)((int)param_1 + 0x1c)) {
      *(int *)((int)param_1 + 0x1c) = param_2;
      SacsWalker_PropagateDirtyState(param_1,param_2 != 0);
    }
  }
  return;
}

