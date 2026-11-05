/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WeatherControl_GetSettings. Export ordinal(s):
   1253. Entry VA: 0x10576260. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600030B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 WeatherControl_GetSettings(void)

{
  undefined4 uVar1;
  int *piVar2;
  void *this;
  undefined4 local_bc;
  int local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  int local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  byte local_94;
  undefined4 local_90;
  byte local_8c;
  undefined4 local_88;
  undefined4 local_84;
  int local_80;
  int local_7c;
  ushort local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  float local_5c;
  undefined4 local_58;
  float local_54;
  undefined4 local_50;
  undefined4 local_4c;
  float local_48;
  float local_44;
  float local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  float local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x576260  1253  WeatherControl_GetSettings */
  if (DAT_10c700c4 == 0) {
    this = (void *)0x0;
  }
  else {
    this = *(void **)(DAT_10c700c4 + 0x74);
  }
  uVar1 = 0;
  local_bc = 0;
  if (this != (void *)0x0) {
    local_b8 = 0;
    local_ac = 0;
    local_94 = 0;
    local_b4 = DAT_10acb0d4;
    local_b0 = 0;
    local_a8 = 0;
    local_a4 = 0;
    local_a0 = 0;
    local_9c = 0;
    local_98 = 0;
    local_90 = 0;
    local_8c = 1;
    local_88 = 0;
    local_84 = DAT_10aae184;
    local_74 = 0;
    local_70 = 0;
    local_6c = 0;
    local_68 = 0;
    local_64 = 0;
    local_60 = 0;
    FUN_10342c70(this,&local_b8);
    local_5c = (float)local_b8;
    if (local_b8 < 0) {
      local_5c = local_5c + _DAT_10aae190;
    }
    local_54 = (float)local_ac;
    local_58 = local_b4;
    if (local_ac < 0) {
      local_54 = local_54 + _DAT_10aae190;
    }
    local_48 = (float)local_80;
    local_50 = local_a8;
    local_4c = local_a4;
    if (local_80 < 0) {
      local_48 = local_48 + _DAT_10aae190;
    }
    local_44 = (float)local_7c;
    if (local_7c < 0) {
      local_44 = local_44 + _DAT_10aae190;
    }
    local_40 = (float)local_78;
    local_3c = local_b0;
    local_38 = local_a0;
    local_34 = local_9c;
    local_30 = local_98;
    local_2c = local_90;
    local_28 = (float)local_8c;
    local_24 = local_88;
    local_20 = local_74;
    local_1c = local_70;
    local_18 = local_84;
    local_14 = local_6c;
    local_10 = (float)local_94;
    local_c = local_68;
    local_8 = local_64;
    local_4 = local_60;
    piVar2 = (int *)FUN_1055b120();
    (**(code **)(*piVar2 + 0x8c))(&local_bc,0x17);
    uVar1 = 0;
    (**(code **)(*piVar2 + 0xa8))(&stack0xffffff3c,&local_64,0,0x17);
  }
  return uVar1;
}

