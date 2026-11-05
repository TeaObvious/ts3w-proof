/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 native two-slot pose cache lookup. Physical ECX render-state receiver plus one
   stack DWORD key; RET 04, borrowed cached pointer or zero in EAX, with no retain on the returned
   pointer. Slots are exactly receiver+10 and+18, eight bytes each: pointer then UInt32 key. SUB
   request-key and SBB high 0-borrow form the signed 64-bit difference of zero-extended UInt32
   values. JS preserves future keys; a positive difference greater than 2 clears key and pointer
   before releasing the old reference. This is not modulo UInt32-age comparison: request 0 does not
   age key FFFFFFFF out. After cleanup an equal key returns that slot pointer immediately, including
   a cleared/null key-zero slot; no guaranteed second-slot search for a nonnull key-zero value.
   Refcount decrement-to-zero resets count to1 before the actual virtual deleting call with
   argument1. Current managed vertex-byte, geometry/stream identity and bounds memo keys are not
   native facts from this function. */

int __thiscall AnimationPoseCache_FindByTick(void *this,uint param_1)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  int *piVar4;
  
  piVar4 = (int *)((int)this + 0x10);
  while( true ) {
    if (piVar4 == (int *)((int)this + 0x20)) {
      return 0;
    }
                    /* Zero-extended UInt32 request/key difference uses SUB+SBB high word:
                       negative/future preserved, positive age greater than2 retired; not modular
                       tick age. */
    uVar3 = (uint)(param_1 < (uint)piVar4[1]);
    iVar2 = -uVar3;
    if ((-1 < iVar2) && ((iVar2 != 0 && uVar3 == 0 || (2 < param_1 - piVar4[1])))) {
      puVar1 = (undefined4 *)*piVar4;
      piVar4[1] = 0;
      *piVar4 = 0;
      if ((puVar1 != (undefined4 *)0x0) &&
         (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar1[1] = 1;
        (**(code **)*puVar1)(1);
      }
    }
                    /* First equal key returns pointer even when this slot was cleared to key0/null.
                       A request for0 does not necessarily continue to another slot. */
    if (piVar4[1] == param_1) break;
    piVar4 = piVar4 + 2;
  }
  return *piVar4;
}

