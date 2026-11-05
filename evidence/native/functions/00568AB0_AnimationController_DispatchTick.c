/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Same list protocol as Started;
   listener vtable+4 receives payload/token. Invocation in clip Update is conditioned by remaining
   playback and scheduling interval. */

void __thiscall AnimationController_DispatchTick(void *this,undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
  uVar3 = -(uint)(this != (void *)0x0) & (int)this + 0xcU;
  puVar1 = *(undefined4 **)(uVar3 + 4);
  while (puVar2 = puVar1, puVar2 != (undefined4 *)(uVar3 + 4)) {
    puVar1 = (undefined4 *)*puVar2;
    if ((int *)puVar2[2] != (int *)0x0) {
      (**(code **)(*(int *)puVar2[2] + 4))(param_1,puVar2[3]);
    }
  }
  AnimationController_FinishListenerDispatch((int)this + 0xcU);
  return;
}

