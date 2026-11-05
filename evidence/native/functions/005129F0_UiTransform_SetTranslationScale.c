/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_005129f0. Physical ECX transform plus translation and scale pointers/RET8.
   Writes diagonal from scaleXYZ, translation at30/34/38, homogeneous1 at3C, remaining matrix lanes0
   and classification1. Existing inferred pointer types retained. */

void __thiscall UiTransform_SetTranslationScale(void *this,undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  float fVar3;
  
  *(undefined4 *)((int)this + 0x40) = 1;
  *(undefined4 *)this = *param_2;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  uVar1 = param_2[1];
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = uVar1;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  uVar1 = param_2[2];
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = uVar1;
  *(undefined4 *)((int)this + 0x2c) = 0;
  fVar3 = FLOAT_00f998f8;
  uVar1 = param_1[1];
  uVar2 = param_1[2];
  *(undefined4 *)((int)this + 0x30) = *param_1;
  *(undefined4 *)((int)this + 0x34) = uVar1;
  *(undefined4 *)((int)this + 0x38) = uVar2;
  *(float *)((int)this + 0x3c) = fVar3;
  return;
}

