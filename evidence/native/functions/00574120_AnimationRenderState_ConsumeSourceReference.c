/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 actual render-state vtable slot0, verified by initialized FC3D90 first DWORD. ECX
   state plus one incoming source reference, RET04. Different source first frees matrix storage+28,
   retains new source through virtual0, assigns+20 then releases old through virtual4. If retained
   input+24 exists, set dirty bit1 and compare its+8 count to actual selected source count; mismatch
   clears that input through00573FD0. Regardless of equality branch, nonnull incoming source is
   released through virtual4 at the end: this consumes a caller-owned retained reference, not an
   ordinary borrowed-pointer setter.006F5B00 creates that temporary retain immediately before
   virtual dispatch. Unknown concrete source/input interface types remain opaque. */

void __thiscall AnimationRenderState_ConsumeSourceReference(void *this,int *param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  
  if (param_1 != *(int **)((int)this + 0x20)) {
    if (*(void **)((int)this + 0x28) != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)((int)this + 0x28));
      *(undefined4 *)((int)this + 0x28) = 0;
    }
    piVar1 = *(int **)((int)this + 0x20);
    if (param_1 != piVar1) {
      if (param_1 != (int *)0x0) {
        (**(code **)*param_1)();
      }
      *(int **)((int)this + 0x20) = param_1;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    if (*(int *)((int)this + 0x24) != 0) {
      *(uint *)((int)this + 0x34) = *(uint *)((int)this + 0x34) | 1;
      iVar2 = *(int *)(*(int *)((int)this + 0x24) + 8);
      if (*(int *)((int)this + 0x20) == 0) {
        iVar3 = 0;
      }
      else {
        iVar3 = FUN_00575750(*(int *)((int)this + 0x20) + 0x28);
      }
      if (iVar2 != iVar3) {
        FUN_00573fd0((int *)((int)this + 0x24));
      }
    }
  }
                    /* Consume nonnull incoming retained source even when it matched existing+20;
                       caller must supply a live retained reference. */
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}

