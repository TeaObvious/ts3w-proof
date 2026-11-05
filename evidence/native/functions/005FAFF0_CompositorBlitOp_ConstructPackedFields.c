/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role from original PC1.67 instructions. Physical thiscall ECX destination,
   fourteen stack DWORD slots, RET38hex, EAX same destination. Installs vtable00FE7348;00604C70
   selects it for the resource-backed DrawImageA15200B1 BlitOp branch (the alternate branch
   calls005FB230). Retains supplied opaque three-word key projections and packed flags. Argument2/3
   four-float rectangle lanes are multiplied by binary32 255 at00FA4134, converted CVTTSS2SI and
   narrowed to signed words at+0C..+12/+14..+1A, with the observed sign-extend/float/retruncate
   stages. Scalar arguments11/4/10 pack to+48/+4A/+4C. Float4 argument12 is copied before0060D360
   stores packed word+44. No general channel/coordinate admission, texture ownership, native
   unpacking, shader result or initial material compiler equivalence is inferred. */

void * __thiscall
CompositorBlitOp_ConstructPackedFields
          (void *this,undefined4 *param_1,float *param_2,float *param_3,float param_4,byte param_5,
          byte param_6,char param_7,byte param_8,byte param_9,float param_10,float param_11,
          float *param_12,undefined4 *param_13,undefined1 param_14)

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
  *(byte *)((int)this + 0xb) = *(byte *)((int)this + 0xb) & 0xfa | 2;
  *(undefined ***)this = &PTR_LAB_00fe7348;
  *(undefined4 *)((int)this + 0x1c) = *param_13;
  *(undefined4 *)((int)this + 0x20) = param_13[1];
  *(undefined4 *)((int)this + 0x24) = param_13[3];
  *(undefined4 *)((int)this + 0x28) = *param_1;
  *(undefined4 *)((int)this + 0x2c) = param_1[1];
  *(undefined4 *)((int)this + 0x30) = param_1[3];
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  fVar4 = DAT_00fa4134;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(byte *)((int)this + 0x4e) = param_7 << 4 | param_6 & 0xf;
  *(undefined1 *)((int)this + 0x4f) = param_14;
  *(byte *)((int)this + 10) =
       ((param_8 & 1) * '\x02' | param_5 & 1) << 5 | *(byte *)((int)this + 10) & 0x90 |
       param_9 & 0xf;
  *(short *)((int)this + 0x48) = (short)(int)(param_11 * fVar4);
  *(short *)((int)this + 0x4a) = (short)(int)(param_4 * fVar4);
  *(short *)((int)this + 0x4c) = (short)(int)(param_10 * fVar4);
  fVar1 = param_3[2];
  fVar2 = param_3[1];
  fVar3 = param_3[3];
  *(short *)((int)this + 0x14) = (short)(int)(float)(int)(short)(int)(*param_3 * fVar4);
  *(short *)((int)this + 0x16) = (short)(int)(float)(int)(short)(int)(fVar2 * fVar4);
  *(short *)((int)this + 0x18) = (short)(int)(float)(int)(short)(int)(fVar1 * fVar4);
  *(short *)((int)this + 0x1a) = (short)(int)(float)(int)(short)(int)(fVar3 * fVar4);
  fVar1 = param_2[2];
  fVar2 = param_2[1];
  fVar3 = param_2[3];
  *(short *)((int)this + 0xc) = (short)(int)(float)(int)(short)(int)(*param_2 * fVar4);
  *(short *)((int)this + 0x12) = (short)(int)(float)(int)(short)(int)(fVar3 * fVar4);
  *(short *)((int)this + 0xe) = (short)(int)(float)(int)(short)(int)(fVar2 * fVar4);
  *(short *)((int)this + 0x10) = (short)(int)(float)(int)(short)(int)(fVar1 * fVar4);
  fStack_14 = param_12[3];
  fStack_18 = param_12[2];
  fStack_1c = param_12[1];
  local_20 = *param_12;
  PackedArgb_StoreFloat4((void *)((int)this + 0x44),&local_20);
  return this;
}

