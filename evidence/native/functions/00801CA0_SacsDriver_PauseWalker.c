/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, walker RET4, AL Boolean only. Null
   or status4 returns false; otherwise original atomic status6, conditional phase3 cleanup and clear
   retained graph78 then true. Positive status alone does not reject pause. No original managed task
   completion inferred. */

undefined4 __thiscall SacsDriver_PauseWalker(void *this,uint param_1)

{
  void *this_00;
  undefined4 *in_EAX;
  undefined4 uVar1;
  
  if ((param_1 != 0) && (in_EAX = (undefined4 *)(param_1 + 0x6c), *(int *)(param_1 + 0x6c) != 4)) {
    LOCK();
    *in_EAX = 6;
    UNLOCK();
    uVar1 = 0;
    if (*(int *)(param_1 + 0x78) != 0) {
      this_00 = *(void **)(*(int *)(param_1 + 0x78) + 0x38);
      uVar1 = 0;
      if (this_00 != (void *)0x0) {
        uVar1 = SacsDecisionGraph_DispatchPhase(this_00,3,(void *)((int)this + 0x44),param_1);
      }
      *(undefined4 *)(param_1 + 0x78) = 0;
    }
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return (uint)in_EAX & 0xffffff00;
}

