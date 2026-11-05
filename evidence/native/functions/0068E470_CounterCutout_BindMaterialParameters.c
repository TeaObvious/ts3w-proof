/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX fixup; four physical stack words, RET10, AL
   success. Builds SinkCutout key plus CounterMatrixRow1(1,0,origin.x+0.5), Row2(0,1,0.5-origin.z),
   height(origin.y-0.1,origin.y+0.1), then actual material branch/reference ownership. Constants use
   SSE binary32 loads, not decimal decompiler precision. Caller owns output material reference; this
   is not just a coordinate function. */

undefined4 __thiscall
CounterCutout_BindMaterialParameters
          (void *this,int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  undefined4 extraout_EAX;
  uint uVar2;
  uint extraout_EAX_00;
  int *local_144;
  float local_140;
  float fStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  float local_130;
  float fStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 *local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined1 local_104;
  void *local_fc;
  uint local_f8;
  undefined4 uStack_f4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  undefined4 local_d0;
  uint local_cc;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_a8;
  uint local_a4;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  float *local_88;
  undefined4 local_84;
  undefined4 local_80;
  uint local_7c;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 *local_60;
  undefined4 local_5c;
  undefined4 local_58;
  uint local_54;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  float *local_38;
  undefined4 local_34;
  undefined4 local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20 [3];
  undefined4 uStack_14;
  
  local_20[2] = *(float *)((int)this + 0x20) + 0.5;
  local_c0 = 0;
  local_bc = 0;
  local_b8 = 0;
  local_b4 = 0;
  fStack_28 = 0.5 - *(float *)((int)this + 0x28);
  local_20[0] = 1.0;
  local_20[1] = 0.0;
  uStack_14 = 0;
  local_30 = 0;
  fStack_2c = 1.0;
  uStack_24 = 0;
  local_98 = 0;
  local_94 = 0;
  local_90 = 0;
  local_8c = 0;
  local_70 = 0;
  local_6c = 0;
  local_68 = 0;
  local_64 = 0;
  local_48 = 0;
  local_44 = 0;
  local_40 = 0;
  local_3c = 0;
  fStack_d4 = *(float *)((int)this + 0x24);
  local_140 = fStack_d4 - 0.1;
  fStack_dc = fStack_d4 - 0.1;
  fStack_d8 = fStack_d4 - 0.1;
  fStack_d4 = fStack_d4 - 0.1;
  uStack_134 = 0;
  uStack_138 = 0;
  fStack_13c = *(float *)((int)this + 0x24) + 0.1;
  uStack_128 = 0;
  uStack_124 = 0;
  local_130 = local_140;
  fStack_12c = fStack_13c;
  local_e0 = local_140;
  local_cc = HashLowercasedCStringFNV1("SinkCutout");
  local_bc = *(undefined4 *)((int)this + 0xc);
  local_b8 = *(undefined4 *)((int)this + 0x10);
  local_c0 = *(undefined4 *)((int)this + 8);
  local_b4 = *(undefined4 *)((int)this + 0x14);
  local_d0 = 4;
  local_a4 = HashLowercasedCStringFNV1("CounterMatrixRow1");
  local_88 = local_20;
  local_84 = 3;
  local_a8 = 1;
  local_7c = HashLowercasedCStringFNV1("CounterMatrixRow2");
  local_60 = &local_30;
  local_5c = 3;
  local_80 = 1;
  local_54 = HashLowercasedCStringFNV1("CutoutValidHeights");
  local_38 = &local_130;
  local_34 = 2;
  local_58 = 1;
  FUN_006db0a0(&local_114);
  local_114 = &local_d0;
  local_110 = 4;
  local_10c = param_3;
  local_104 = 1;
  local_144 = (int *)0x0;
  if (*(char *)((int)param_1 + 0x72) == '\0') {
    uVar1 = FUN_006db3d0(param_1,&local_144,(int *)&local_114,param_4);
    if ((char)uVar1 == '\0') {
      if (local_144 != (int *)0x0) {
        (**(code **)(*local_144 + 4))();
      }
      uVar2 = FUN_0073ebe0((int)local_fc,local_f8);
      uStack_f4 = 0;
      if (1 < local_f8) {
        Memory_FreeIfNonNull(local_fc);
        uVar2 = extraout_EAX_00;
      }
      return uVar2 & 0xffffff00;
    }
  }
  else {
    (**(code **)*param_1)();
    local_144 = param_1;
    FUN_006db170(param_1,(int)param_1,(int *)&local_114,param_4);
  }
  *param_2 = local_144;
  (**(code **)*local_144)();
  if (local_144 != (int *)0x0) {
    (**(code **)(*local_144 + 4))();
  }
  uVar1 = FUN_0073ebe0((int)local_fc,local_f8);
  uStack_f4 = 0;
  if (1 < local_f8) {
    Memory_FreeIfNonNull(local_fc);
    uVar1 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

