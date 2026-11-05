/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. One-shot guard at controller+0x24 is
   set before callbacks. Increments dispatch depth and invokes listener vtable+0xc with
   payload/token, independently of Started. Deferred listener removals cleaned at depth zero. */

void __thiscall Animation_DispatchCompletedOnce(void *this,undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  if (*(char *)((int)this + 0x24) == '\0') {
    *(undefined1 *)((int)this + 0x24) = 1;
    *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
    puVar1 = *(undefined4 **)((int)this + 0x10);
    while (puVar2 = puVar1, puVar2 != (undefined4 *)((int)this + 0x10)) {
      puVar1 = (undefined4 *)*puVar2;
      if ((int *)puVar2[2] != (int *)0x0) {
        (**(code **)(*(int *)puVar2[2] + 0xc))(param_1,puVar2[3]);
      }
    }
    AnimationController_FinishListenerDispatch((int)this + 0xc);
  }
  return;
}

