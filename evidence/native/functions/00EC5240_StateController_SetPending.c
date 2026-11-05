/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (83 bytes/39 instructions). ECX=controller, stack(state,tag), RET8.
   Same incoming/pending pointer writes only pending tag+0x30. Otherwise invokes incoming
   virtual+0x0 when nonnull, publishes pending pointer+0x2C, invokes old pending virtual+0x4 when
   nonnull, then writes+0x30. Pointer publication precedes old lifetime callback and tag publication
   follows it. No atomic pair, callback-reentry safety or rollback is established; child effects
   remain open. Preserve stored prototype and storage. */

void __thiscall StateController_SetPending(void *this,int *param_1,undefined4 param_2)

{
  int *piVar1;
  
  piVar1 = *(int **)((int)this + 0x2c);
  if (param_1 == piVar1) {
    *(undefined4 *)((int)this + 0x30) = param_2;
    return;
  }
  if (param_1 != (int *)0x0) {
    (**(code **)*param_1)();
  }
  *(int **)((int)this + 0x2c) = param_1;
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
    *(undefined4 *)((int)this + 0x30) = param_2;
    return;
  }
  *(undefined4 *)((int)this + 0x30) = param_2;
  return;
}

