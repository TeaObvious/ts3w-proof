/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXpoint/out aligned16byte vector stackword RET4. Absent auxiliary pointer+14 writes four +0 words. Present pointer copies itsXYZ and duplicates X into fourth lane. Sender958B10 later forces positionW=1; do not infer vectorW=1 here. Source auxiliary pointer writer950970/9DE4D0 is borrowed, no local retain. */

void __thiscall FUN_0080d650(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  
  if (*(int *)((int)this + 0x14) == 0) {
    *param_1 = 0;
    param_1[1] = 0;
    param_1[2] = 0;
    param_1[3] = 0;
    return;
  }
  puVar4 = *(undefined4 **)((int)this + 0x14);
  uVar1 = puVar4[2];
  uVar2 = *puVar4;
  uVar3 = puVar4[1];
  *param_1 = uVar2;
  param_1[1] = uVar3;
  param_1[2] = uVar1;
  param_1[3] = uVar2;
  return;
}
