/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXpoint/out aligned16byte vector stackword RET4. Absent auxiliary pointer+14 writes four +0 words. Present pointer copies float words+0C/+10/+14 and duplicates first into fourth lane. Consumer703CA0 interprets first three as Euler angles via fsin/fcos, not quaternionXYZW despite source comments; exact angle conventions/FP behavior not fully certified. */

void __thiscall FUN_0080d6b0(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (*(int *)((int)this + 0x14) == 0) {
    *param_1 = 0;
    param_1[1] = 0;
    param_1[2] = 0;
    param_1[3] = 0;
    return;
  }
  iVar4 = *(int *)((int)this + 0x14);
  uVar1 = *(undefined4 *)(iVar4 + 0x14);
  uVar2 = *(undefined4 *)(iVar4 + 0xc);
  uVar3 = *(undefined4 *)(iVar4 + 0x10);
  *param_1 = uVar2;
  param_1[1] = uVar3;
  param_1[2] = uVar1;
  param_1[3] = uVar2;
  return;
}
