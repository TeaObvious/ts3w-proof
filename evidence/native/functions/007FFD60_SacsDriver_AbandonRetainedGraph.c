/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, walker RET4. Nonnull walker with
   retained state78 dispatches its graph38 phase3 using context driver44, then clears78. Does not
   stop accepted animation controllers or fabricate script events/tasks. */

void __thiscall SacsDriver_AbandonRetainedGraph(void *this,uint param_1)

{
  void *this_00;
  
  if ((param_1 != 0) && (*(int *)(param_1 + 0x78) != 0)) {
    this_00 = *(void **)(*(int *)(param_1 + 0x78) + 0x38);
    if (this_00 != (void *)0x0) {
      SacsDecisionGraph_DispatchPhase(this_00,3,(void *)((int)this + 0x44),param_1);
    }
    *(undefined4 *)(param_1 + 0x78) = 0;
  }
  return;
}

