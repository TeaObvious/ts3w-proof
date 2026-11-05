/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original: ECX route manager, one binary32 stack value, RET 4, no return-value contract.
   MOVSS copies the value to manager +0x968. A nonnull planner at manager +0x960 receives identical
   bits at planner +0x8C. AnalyzeStreets 0065A010 reads planner +0x8C. This setter performs no
   finite-value check, clamp or default substitution. */

void __thiscall RouteManager_SetMinimumCarTravelDistance(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 0x968) = param_1;
  if (*(int *)((int)this + 0x960) != 0) {
    *(undefined4 *)(*(int *)((int)this + 0x960) + 0x8c) = param_1;
  }
  return;
}

