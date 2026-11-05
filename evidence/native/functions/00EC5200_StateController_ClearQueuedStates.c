/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 existing DISCONTIGUOUS body:00EC5200..00EC520C and00EC5210..00EC522E,44 owned bytes/19
   instructions. The47-byte linear envelope contains3 unowned alignment bytes00EC520D..0F; no gap
   unit/function repair is proposed. ECX=controller, plain RET. While begin+0x14!=end+0x18, select
   end-8, invoke its state virtual+0x4 WITHOUT null guard, decrement live end by8 and recheck live
   endpoints. It neither frees storage nor handles current/pending slots. Relation to destructor
   ordering, callback reentry and malformed vector state remain open. */

void __fastcall StateController_ClearQueuedStates(int param_1)

{
  if (*(int *)(param_1 + 0x14) != *(int *)(param_1 + 0x18)) {
    do {
      (**(code **)(**(int **)(*(int *)(param_1 + 0x18) + -8) + 4))();
      *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + -8;
    } while (*(int *)(param_1 + 0x14) != *(int *)(param_1 + 0x18));
  }
  return;
}

