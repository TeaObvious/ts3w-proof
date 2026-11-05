/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role from original PC1.67 instructions. Physical thiscall ECX destination, nine
   stack DWORD slots, RET24hex, EAX same destination. Installs vtable00FE72F0. Dispatcher00604C70
   uses this existing constructor for allocated ClearOp (ColorFill9CD1269D) and also
   CASPickDataC6B6AC1F; do not label it exclusively ColorFill or reinterpret every payload as color.
   Copies supplied payload/key-projection fields. Scalar argument7 is multiplied by binary32 255
   at00FA4134, CVTTSS2SI then low signed-word storage at+2C. Four argument1 rectangle lanes likewise
   use MULSS/CVTTSS2SI, signed-word narrowing and observed sign-extend/float/retruncate stages
   into+1C..+22. Copies float4 argument8 then calls0060D360 to write packed word+28. Packed flags
   retain original bit operations. No clamp/finite guard is established; ambient FP traps and later
   unpack/render/initial XML producer semantics are outside this constructor. */

void * __thiscall
CompositorClearOp_ConstructPackedFields
          (void *this,float *param_1,undefined4 param_2,byte param_3,byte param_4,char param_5,
          byte param_6,float param_7,float *param_8,undefined4 *param_9)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  *(byte *)((int)this + 0xb) = *(byte *)((int)this + 0xb) & 0xfa | 2;
  *(undefined1 *)((int)this + 10) = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined2 *)((int)this + 8) = 0;
  *(undefined ***)this = &PTR_LAB_00fe72f0;
  *(undefined4 *)((int)this + 0xc) = *param_9;
  *(undefined4 *)((int)this + 0x10) = param_9[1];
  *(undefined4 *)((int)this + 0x14) = param_9[3];
  fVar1 = param_7 * DAT_00fa4134;
  *(undefined4 *)((int)this + 0x18) = param_2;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(byte *)((int)this + 0x2e) = param_5 << 4 | param_4 & 0xf;
  *(byte *)((int)this + 10) = (param_3 & 1) << 5 | *(byte *)((int)this + 10) & 0xd0 | param_6 & 0xf;
  *(short *)((int)this + 0x2c) = (short)(int)fVar1;
  fStack_14 = param_8[3];
  fStack_18 = param_8[2];
  fStack_1c = param_8[1];
  local_20 = *param_8;
  PackedArgb_StoreFloat4((void *)((int)this + 0x28),&local_20);
  fVar1 = *param_1 * DAT_00fa4134;
  fVar2 = param_1[2] * DAT_00fa4134;
  fVar3 = param_1[1] * DAT_00fa4134;
  *(short *)((int)this + 0x22) = (short)(int)(float)(int)(short)(int)(param_1[3] * DAT_00fa4134);
  *(short *)((int)this + 0x1c) = (short)(int)(float)(int)(short)(int)fVar1;
  *(short *)((int)this + 0x1e) = (short)(int)(float)(int)(short)(int)fVar3;
  *(short *)((int)this + 0x20) = (short)(int)(float)(int)(short)(int)fVar2;
  return this;
}

