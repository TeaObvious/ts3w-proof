/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX Slots receiver, child object word at
   entryESP+4, optional point-output pointer at entryESP+8; RET8, meaningful low AL. Scans circular
   list+48h for node+8 child identity. On match optionally writes node+0Ch point, unlinks and
   requests node release through004E44E0; AL1 on found/removal, AL0 on exhaustion. No Slots+64h
   access or cutout transition. Valid list/allocation assumptions remain separate; this is not an
   implicit old-parent installation clear. */

undefined4 __thiscall SlotComponent_RemoveChildPointBinding(void *this,int param_1,int *param_2)

{
  int *piVar1;
  undefined4 extraout_EAX;
  
  for (piVar1 = *(int **)((int)this + 0x48);
      (piVar1 != (int *)((int)this + 0x48) && (piVar1[2] != param_1)); piVar1 = (int *)*piVar1) {
  }
  if (piVar1 != (int *)((int)this + 0x48)) {
    if (param_2 != (int *)0x0) {
      *param_2 = piVar1[3];
    }
    piVar1 = *(int **)(*piVar1 + 4);
    *(int *)piVar1[1] = *piVar1;
    *(int *)(*piVar1 + 4) = piVar1[1];
    Memory_FreeIfNonNull(piVar1);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  return (uint)piVar1 & 0xffffff00;
}

