/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Traverses listener list with dispatch
   depth incremented and invokes listener vtable+0 for each non-null listener with payload and
   registration token. Traversal loads next node before call; deferred removals cleaned after
   dispatch. */

void __thiscall AnimationController_DispatchStarted(void *this,undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
  uVar3 = -(uint)(this != (void *)0x0) & (int)this + 0xcU;
  puVar1 = *(undefined4 **)(uVar3 + 4);
  while (puVar2 = puVar1, puVar2 != (undefined4 *)(uVar3 + 4)) {
    puVar1 = (undefined4 *)*puVar2;
    if ((undefined4 *)puVar2[2] != (undefined4 *)0x0) {
      (*(code *)**(undefined4 **)puVar2[2])(param_1,puVar2[3]);
    }
  }
  AnimationController_FinishListenerDispatch((int)this + 0xcU);
  return;
}

