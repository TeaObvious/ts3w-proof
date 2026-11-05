/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX source box (minimum at+0/+4/+8, maximum at+10/+14/+18), one stack output pointer; RET4.
   Writes eight float4 corners with W=1 from00F998F8. Z varies fastest, then Y, then X. Source
   fourth lanes are not copied. No allocation, box validation or ownership transfer is established.
    */

void __thiscall Bounds_WriteEightHomogeneousCorners(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  float fVar3;
  
  fVar3 = FLOAT_00f998f8;
  uVar1 = *(undefined4 *)((int)this + 4);
  uVar2 = *(undefined4 *)((int)this + 8);
  *param_1 = *(undefined4 *)this;
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  param_1[3] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 0x18);
  uVar2 = *(undefined4 *)((int)this + 4);
  param_1[4] = *(undefined4 *)this;
  param_1[5] = uVar2;
  param_1[6] = uVar1;
  param_1[7] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 8);
  uVar2 = *(undefined4 *)((int)this + 0x14);
  param_1[8] = *(undefined4 *)this;
  param_1[9] = uVar2;
  param_1[10] = uVar1;
  param_1[0xb] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 0x14);
  uVar2 = *(undefined4 *)((int)this + 0x18);
  param_1[0xc] = *(undefined4 *)this;
  param_1[0xd] = uVar1;
  param_1[0xe] = uVar2;
  param_1[0xf] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 4);
  uVar2 = *(undefined4 *)((int)this + 8);
  param_1[0x10] = *(undefined4 *)((int)this + 0x10);
  param_1[0x11] = uVar1;
  param_1[0x12] = uVar2;
  param_1[0x13] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 0x18);
  uVar2 = *(undefined4 *)((int)this + 4);
  param_1[0x14] = *(undefined4 *)((int)this + 0x10);
  param_1[0x15] = uVar2;
  param_1[0x16] = uVar1;
  param_1[0x17] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 8);
  uVar2 = *(undefined4 *)((int)this + 0x14);
  param_1[0x18] = *(undefined4 *)((int)this + 0x10);
  param_1[0x19] = uVar2;
  param_1[0x1a] = uVar1;
  param_1[0x1b] = fVar3;
  uVar1 = *(undefined4 *)((int)this + 0x14);
  uVar2 = *(undefined4 *)((int)this + 0x18);
  param_1[0x1c] = *(undefined4 *)((int)this + 0x10);
  param_1[0x1d] = uVar1;
  param_1[0x1e] = uVar2;
  param_1[0x1f] = fVar3;
  return;
}

