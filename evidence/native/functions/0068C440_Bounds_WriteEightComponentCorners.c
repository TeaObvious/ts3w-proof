/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67, complete53instructions/188ownedbytes checked against pristine PE. ECX points at min/max
   component bounds; one incoming stack DWORD points at eight output16byte records; physical RET4.
   Original SHUFPS writes xyz combinations in bit order: min/min/min, min/min/max, min/max/min,
   min/max/max, max/min/min, max/min/max, max/max/min, max/max/max. For cornerindices0..7 the fourth
   lane is exactly minX,maxX,minX,maxX,minX,maxX,minX,maxX; it follows the selected minZ/maxZ
   endpoint, not consistently the corner X and never a homogeneous1. B0EA00 ultimately selects
   transformed cornerindices0,1,5,6; arbitrary tilted-box behavior must preserve those actual
   indices. No memory/ABI/type changes. */

void __thiscall Bounds_WriteEightComponentCorners(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)this;
  uVar2 = *(undefined4 *)((int)this + 4);
  uVar3 = *(undefined4 *)((int)this + 8);
  *param_1 = uVar1;
  param_1[1] = uVar2;
  param_1[2] = uVar3;
  param_1[3] = uVar1;
  uVar3 = *(undefined4 *)((int)this + 4);
  uVar1 = *(undefined4 *)((int)this + 0x10);
  uVar2 = *(undefined4 *)((int)this + 0x18);
  param_1[4] = *(undefined4 *)this;
  param_1[5] = uVar3;
  param_1[6] = uVar2;
  param_1[7] = uVar1;
  uVar1 = *(undefined4 *)this;
  uVar2 = *(undefined4 *)((int)this + 8);
  uVar3 = *(undefined4 *)((int)this + 0x14);
  param_1[8] = uVar1;
  param_1[9] = uVar3;
  param_1[10] = uVar2;
  param_1[0xb] = uVar1;
  uVar1 = *(undefined4 *)((int)this + 0x14);
  uVar2 = *(undefined4 *)((int)this + 0x10);
  uVar3 = *(undefined4 *)((int)this + 0x18);
  param_1[0xc] = *(undefined4 *)this;
  param_1[0xd] = uVar1;
  param_1[0xe] = uVar3;
  param_1[0xf] = uVar2;
  uVar1 = *(undefined4 *)this;
  uVar2 = *(undefined4 *)((int)this + 4);
  uVar3 = *(undefined4 *)((int)this + 8);
  param_1[0x10] = *(undefined4 *)((int)this + 0x10);
  param_1[0x11] = uVar2;
  param_1[0x12] = uVar3;
  param_1[0x13] = uVar1;
  uVar1 = *(undefined4 *)((int)this + 4);
  uVar2 = *(undefined4 *)((int)this + 0x10);
  uVar3 = *(undefined4 *)((int)this + 0x18);
  param_1[0x14] = *(undefined4 *)((int)this + 0x10);
  param_1[0x15] = uVar1;
  param_1[0x16] = uVar3;
  param_1[0x17] = uVar2;
  uVar1 = *(undefined4 *)((int)this + 0x14);
  uVar2 = *(undefined4 *)this;
  uVar3 = *(undefined4 *)((int)this + 8);
  param_1[0x18] = *(undefined4 *)((int)this + 0x10);
  param_1[0x19] = uVar1;
  param_1[0x1a] = uVar3;
  param_1[0x1b] = uVar2;
  uVar1 = *(undefined4 *)((int)this + 0x14);
  uVar2 = *(undefined4 *)((int)this + 0x10);
  uVar3 = *(undefined4 *)((int)this + 0x18);
  param_1[0x1c] = *(undefined4 *)((int)this + 0x10);
  param_1[0x1d] = uVar1;
  param_1[0x1e] = uVar3;
  param_1[0x1f] = uVar2;
  return;
}

