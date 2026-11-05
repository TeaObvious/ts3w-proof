/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: copies four SIMD pose vectors into start/end position and target fields, resets
   elapsed +70 to zero, and stores the caller-supplied duration at +74. Vtable 01045B4C points to
   this begin method at +8. Raw instruction proof:
   009627B0_CameraPoseLerp_Begin.asm.
   original PC 1.67 TS3W.exe. */

void __thiscall
CameraPoseLerp_Begin
          (void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,
          undefined4 *param_4,undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  uVar1 = *param_1;
  uVar2 = param_1[1];
  uVar3 = param_1[2];
  uVar4 = param_1[3];
  *(undefined4 *)((int)this + 0x50) = uVar1;
  *(undefined4 *)((int)this + 0x54) = uVar2;
  *(undefined4 *)((int)this + 0x58) = uVar3;
  *(undefined4 *)((int)this + 0x5c) = uVar4;
  *(undefined4 *)((int)this + 0x10) = uVar1;
  *(undefined4 *)((int)this + 0x14) = uVar2;
  *(undefined4 *)((int)this + 0x18) = uVar3;
  *(undefined4 *)((int)this + 0x1c) = uVar4;
  uVar1 = *param_3;
  uVar2 = param_3[1];
  uVar3 = param_3[2];
  uVar4 = param_3[3];
  *(undefined4 *)((int)this + 0x60) = uVar1;
  *(undefined4 *)((int)this + 100) = uVar2;
  *(undefined4 *)((int)this + 0x68) = uVar3;
  *(undefined4 *)((int)this + 0x6c) = uVar4;
  *(undefined4 *)((int)this + 0x20) = uVar1;
  *(undefined4 *)((int)this + 0x24) = uVar2;
  *(undefined4 *)((int)this + 0x28) = uVar3;
  *(undefined4 *)((int)this + 0x2c) = uVar4;
  uVar1 = param_2[1];
  uVar2 = param_2[2];
  uVar3 = param_2[3];
  *(undefined4 *)((int)this + 0x30) = *param_2;
  *(undefined4 *)((int)this + 0x34) = uVar1;
  *(undefined4 *)((int)this + 0x38) = uVar2;
  *(undefined4 *)((int)this + 0x3c) = uVar3;
  uVar1 = param_4[1];
  uVar2 = param_4[2];
  uVar3 = param_4[3];
  *(undefined4 *)((int)this + 0x40) = *param_4;
  *(undefined4 *)((int)this + 0x44) = uVar1;
  *(undefined4 *)((int)this + 0x48) = uVar2;
  *(undefined4 *)((int)this + 0x4c) = uVar3;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x74) = param_5;
  return;
}

