/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 retained-input replacement at render-state+24. Physical ECX state, one pointer
   stack argument, RET04. Clear field before atomically decrementing old input+4; last release
   resets reference count1 and invokes virtual0(argument1). Then nonnull incoming pointer is
   assigned through the actual00874FB0 reference helper, and dirty bit1 is ORed into+34. No equality
   fast path before releasing old input exists here. Selected producer009409F0 retains incoming
   input at its own entry across this operation. The current host model lease dictionary is a
   separate lifetime mechanism. */

void __thiscall AnimationRenderState_ReplaceRetainedInput(void *this,undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
  puVar3 = *(undefined4 **)((int)this + 0x24);
                    /* Publish null before old input's atomic decrement/destructor; caller009409F0
                       independently keeps incoming input alive. */
  *(undefined4 *)((int)this + 0x24) = 0;
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar3)(1);
    }
  }
  if (param_1 != (undefined4 *)0x0) {
    FUN_00874fb0((undefined4 *)((int)this + 0x24),param_1);
  }
  *(uint *)((int)this + 0x34) = *(uint *)((int)this + 0x34) | 1;
  return;
}

