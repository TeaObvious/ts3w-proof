/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX controller plus clip RET4. Retain new
   clip/release old at+3B8, copy four words from clip+8..14 into+398..3A4, returnAL1. Exact meaning
   of copied header words needs reader/consumer beyond this ownership operation. */

undefined4 __thiscall ClipPoseController_AssignRetainedClip(void *this,int *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
  piVar1 = *(int **)((int)this + 0x3b8);
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)*param_1)();
    }
    *(int **)((int)this + 0x3b8) = param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  iVar2 = *(int *)((int)this + 0x3b8);
  *(undefined4 *)((int)this + 0x398) = *(undefined4 *)(iVar2 + 8);
  *(undefined4 *)((int)this + 0x39c) = *(undefined4 *)(iVar2 + 0xc);
  *(undefined4 *)((int)this + 0x3a0) = *(undefined4 *)(iVar2 + 0x10);
  uVar3 = *(undefined4 *)(iVar2 + 0x14);
  *(undefined4 *)((int)this + 0x3a4) = uVar3;
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

