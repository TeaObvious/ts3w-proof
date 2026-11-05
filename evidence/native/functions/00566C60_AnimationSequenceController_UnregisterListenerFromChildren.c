/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Unregisters listener from previous,
   current and every pending child controller, using deferred-safe listener protocol. */

void __thiscall AnimationSequenceController_UnregisterListenerFromChildren(void *this,int param_1)

{
  undefined4 *puVar1;
  
  if (*(int *)((int)this + 0x3c) != 0) {
    AnimationController_UnregisterListener
              ((void *)(*(int *)((int)this + 0x3c) + 0xc),(int *)param_1);
  }
  if (*(int *)((int)this + 0x50) != 0) {
    AnimationController_UnregisterListener
              ((void *)(*(int *)((int)this + 0x50) + 0xc),(int *)param_1);
  }
  for (puVar1 = *(undefined4 **)((int)this + 0x30); puVar1 != (undefined4 *)((int)this + 0x30);
      puVar1 = (undefined4 *)*puVar1) {
    if (puVar1[2] != 0) {
      AnimationController_UnregisterListener((void *)(puVar1[2] + 0xc),(int *)param_1);
    }
  }
  return;
}

