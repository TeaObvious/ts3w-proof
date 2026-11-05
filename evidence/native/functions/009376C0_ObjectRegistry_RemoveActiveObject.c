/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Low22bits ofobject+28 index activevector; index0 skipped.
   Removeby swap with last and update moved index; clear removed low index. End decreases4. */

void __thiscall ObjectRegistry_RemoveActiveObject(void *this,void *object)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
  uVar1 = *(uint *)((int)object + 0x28);
  uVar4 = uVar1 & 0x3fffff;
  if (uVar4 != 0) {
    uVar3 = (*(int *)((int)this + 0x11d8) - *(int *)((int)this + 0x11d4) >> 2) - 1;
    if (uVar3 != uVar4) {
      iVar2 = *(int *)(*(int *)((int)this + 0x11d4) + uVar3 * 4);
      *(uint *)(iVar2 + 0x28) = (*(uint *)(iVar2 + 0x28) & 0xff800000) + uVar4;
      *(int *)(*(int *)((int)this + 0x11d4) + uVar4 * 4) = iVar2;
    }
    *(uint *)((int)object + 0x28) = uVar1 & 0xff800000;
    *(int *)((int)this + 0x11d8) = *(int *)((int)this + 0x11d8) + -4;
  }
  return;
}

