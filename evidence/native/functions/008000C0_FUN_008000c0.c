/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction qualification: physicalECXdriver + hash stackword RET4. Loads driver+C machine, pushes actualhash and calls7FD820, thenNEG/SBB/NEG normalizes fullEAX0or1. Storedfastcalloneformal and omitted hash in C are inference artifacts; actual machine actor-definition lookup semantics/lifetime remain separate callee, not walker membership or cachedGUID. */
bool __fastcall FUN_008000c0(int param_1)

{
  int iVar1;
  
  iVar1 = FUN_007fd820(*(int *)(param_1 + 0xc));
  return iVar1 != 0;
}

