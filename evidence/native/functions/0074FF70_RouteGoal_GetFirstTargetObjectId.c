/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Traverses destinations, invokes vtable+0x14, returns first
   nonzero ObjectGuid in EDX:EAX. Original assembly tests both halves. Return type corrected
   from32-bit to64-bit; slot and radial targets participate. */

ulonglong __fastcall RouteGoal_GetFirstTargetObjectId(void *goal)

{
  undefined4 *puVar1;
  int *piVar2;
  ulonglong uVar3;
  
  puVar1 = *(undefined4 **)((int)goal + 0x18);
  while( true ) {
    if (puVar1 == (undefined4 *)((int)goal + 0x18)) {
      return 0;
    }
    if (puVar1 == (undefined4 *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = puVar1 + -1;
    }
    uVar3 = (**(code **)(*piVar2 + 0x14))();
    if (uVar3 != 0) break;
    puVar1 = (undefined4 *)*puVar1;
  }
  return uVar3;
}

