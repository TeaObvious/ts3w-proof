/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role from original PC1.67 instructions. Physical thiscall ECX destination,
   sixteen stack DWORD slots, RET40hex, EAX same destination. Installs vtable00FE7460;00604C70
   allocates68hex FabricOp and calls here for DrawFabric034210A5. Retains supplied four-word
   payload, dimension words, key projection and packed flags. Rectangle arguments5/6 use binary32
   255 at00FA4134, MULSS/CVTTSS2SI and signed-word storage at+3C..+42/+44..+4A, including observed
   sign-extend/float/retruncate stages. Scalar arguments7/13/14 pack to+38/+3A/+60; float4
   argument15 is copied before0060D360 stores packed word+5C. These establish construction/storage,
   not full fabric acquisition/lifetime, ambient FP-control independence, native unpacking or
   initial XML/default/HSV policy. */

void * __thiscall
CompositorFabricOp_ConstructPackedFields
          (void *this,undefined4 *param_1,undefined4 param_2,undefined2 param_3,undefined2 param_4,
          float *param_5,float *param_6,float param_7,byte param_8,byte param_9,char param_10,
          byte param_11,byte param_12,float param_13,float param_14,float *param_15,
          undefined4 *param_16)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  *(undefined1 *)((int)this + 10) = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined2 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(byte *)((int)this + 0xb) = *(byte *)((int)this + 0xb) & 0xfa | 2;
  *(undefined ***)this = &PTR_LAB_00fe7460;
  *(undefined4 *)((int)this + 0x10) = *param_1;
  *(undefined4 *)((int)this + 0x14) = param_1[1];
  *(undefined4 *)((int)this + 0x18) = param_1[2];
  *(undefined4 *)((int)this + 0x1c) = param_1[3];
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined2 *)((int)this + 0x34) = param_3;
  *(undefined4 *)((int)this + 0x30) = param_2;
  *(undefined2 *)((int)this + 0x36) = param_4;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x4c) = *param_16;
  *(undefined4 *)((int)this + 0x50) = param_16[1];
  *(undefined4 *)((int)this + 0x54) = param_16[3];
  fVar2 = param_14 * DAT_00fa4134;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(byte *)((int)this + 99) = *(byte *)((int)this + 99) | 0xf;
  *(byte *)((int)this + 0x62) = param_10 << 4 | param_9 & 0xf;
  *(short *)((int)this + 0x60) = (short)(int)fVar2;
  *(byte *)((int)this + 10) =
       ((param_11 & 1) * '\x02' | param_8 & 1) << 5 | *(byte *)((int)this + 10) & 0x90 |
       param_12 & 0xf;
  fStack_14 = param_15[3];
  fStack_18 = param_15[2];
  fStack_1c = param_15[1];
  local_20 = *param_15;
  PackedArgb_StoreFloat4((void *)((int)this + 0x5c),&local_20);
  fVar1 = DAT_00fa4134;
  fVar2 = param_5[2] * DAT_00fa4134;
  fVar3 = param_5[1] * DAT_00fa4134;
  fVar4 = param_5[3] * DAT_00fa4134;
  *(short *)((int)this + 0x3c) = (short)(int)(float)(int)(short)(int)(*param_5 * DAT_00fa4134);
  *(short *)((int)this + 0x3e) = (short)(int)(float)(int)(short)(int)fVar3;
  *(short *)((int)this + 0x40) = (short)(int)(float)(int)(short)(int)fVar2;
  *(short *)((int)this + 0x42) = (short)(int)(float)(int)(short)(int)fVar4;
  fVar2 = *param_6;
  fVar3 = param_6[1];
  fVar4 = param_6[3];
  *(short *)((int)this + 0x48) = (short)(int)(float)(int)(short)(int)(param_6[2] * fVar1);
  *(short *)((int)this + 0x44) = (short)(int)(float)(int)(short)(int)(fVar2 * fVar1);
  *(short *)((int)this + 0x4a) = (short)(int)(float)(int)(short)(int)(fVar4 * fVar1);
  *(short *)((int)this + 0x46) = (short)(int)(float)(int)(short)(int)(fVar3 * fVar1);
  *(short *)((int)this + 0x3a) = (short)(int)(param_13 * fVar1);
  *(short *)((int)this + 0x38) = (short)(int)(param_7 * fVar1);
  return this;
}

