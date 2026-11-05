/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. ECX swap and point stack word RET4; B10B60 gets fresh locator. Success only writes byte+40=1 and float4 point+30. No cache/COM preset transfer in this body. */

undefined4 __thiscall FUN_00a5e2f0(void *this,float *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  char cVar4;
  uint3 extraout_var;
  undefined4 local_1c;
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  undefined1 local_15;
  undefined1 local_14;
  undefined1 local_13;
  
  local_18 = 0xff;
  local_17 = 0xff;
  local_15 = 0xff;
  local_14 = 0xff;
  local_16 = 0;
  local_13 = 0;
  local_1c = 0;
  cVar4 = FUN_00b10b60(param_1,&local_1c,(undefined4 *)&local_18);
  if (cVar4 == '\0') {
    return (uint)extraout_var << 8;
  }
  *(undefined1 *)((int)this + 0x40) = 1;
  fVar1 = param_1[1];
  fVar2 = param_1[2];
  fVar3 = param_1[3];
  *(float *)((int)this + 0x30) = *param_1;
  *(float *)((int)this + 0x34) = fVar1;
  *(float *)((int)this + 0x38) = fVar2;
  *(float *)((int)this + 0x3c) = fVar3;
  return CONCAT31(extraout_var,1);
}
