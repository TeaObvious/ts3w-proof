/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: original PC 1.67 portal contract. Marshals six typed arguments into registered managed
   event0x3b: lotGUID, followerGUID, portalObjectGUID, signed managedint16 sourceRoom/destRoom
   (rawroom conversion is unsigned before narrowing), bool defaultLocked. Returns originaluint
   PortalLockedCallbackResults; nolisteners0 interpreted by consumer. */

uint __cdecl
World_InvokePortalLockedCallback
          (ulonglong lotId,ulonglong followerId,ulonglong portalObjectId,short sourceRoom,
          short destRoom,bool defaultLocked)

{
  undefined4 *puVar1;
  undefined4 *this;
  undefined **local_108 [2];
  ushort local_100;
  undefined2 local_fe;
  undefined1 local_f8;
  int local_e8;
  uint local_e4;
  undefined **local_e0 [2];
  ushort local_d8;
  undefined2 local_d6;
  uint local_d0;
  undefined **local_c0 [2];
  undefined2 local_b8;
  undefined2 local_b6;
  undefined **local_a0 [2];
  undefined2 local_98;
  undefined2 local_96;
  undefined **local_80 [2];
  undefined2 local_78;
  undefined2 local_76;
  undefined **local_60 [2];
  undefined2 local_58;
  undefined2 local_56;
  undefined **local_40 [2];
  undefined2 local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  local_e0[0] = &PTR_FUN_00fba6f4;
  local_d8 = 0;
  local_d6 = 0;
  local_c0[0] = &PTR_FUN_00fba6f4;
  local_b8 = 0;
  local_b6 = 0;
  local_a0[0] = &PTR_FUN_00fba6f4;
  local_98 = 0;
  local_96 = 0;
  local_80[0] = &PTR_FUN_00fba6f4;
  local_78 = 0;
  local_76 = 0;
  local_60[0] = &PTR_FUN_00fba6f4;
  local_58 = 0;
  local_56 = 0;
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  local_108[0] = &PTR_FUN_0100886c;
  local_fe = 0xc;
  local_100 = 2;
  Variant_AssignUInt64(local_108,&lotId);
  FUN_004f64b0(local_c0,(int)local_108);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  local_108[0] = &PTR_FUN_0100886c;
  local_fe = 0xc;
  local_100 = 2;
  Variant_AssignUInt64(local_108,&followerId);
  FUN_004f64b0(local_a0,(int)local_108);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  local_108[0] = &PTR_FUN_0100886c;
  local_fe = 0xc;
  local_100 = 2;
  Variant_AssignUInt64(local_108,&portalObjectId);
  FUN_004f64b0(local_80,(int)local_108);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  local_108[0] = &PTR_FUN_0100886c;
  local_fe = 7;
  local_100 = 2;
  FUN_004f5e20(local_108,&sourceRoom);
  FUN_004f64b0(local_60,(int)local_108);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  local_108[0] = &PTR_FUN_0100886c;
  local_fe = 7;
  local_100 = 2;
  FUN_004f5e20(local_108,&destRoom);
  FUN_004f64b0(local_40,(int)local_108);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  local_f8 = defaultLocked;
  local_108[0] = &PTR_FUN_0100886c;
  local_fe = 1;
  local_100 = 2;
  FUN_004f64b0(local_20,(int)local_108);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  puVar1 = World_DispatchRegisteredEventCallback(local_108,0x3b,local_c0,6);
  FUN_004f64b0(local_e0,(int)puVar1);
  local_108[0] = &PTR_FUN_00fba6f4;
  if ((local_100 & 4) != 0) {
    FUN_004f5760(local_108,'\0');
  }
  local_e4 = local_d0;
  local_e8 = 5;
  puVar1 = (undefined4 *)register0x00000010;
  do {
    this = puVar1 + -8;
    *this = &PTR_FUN_00fba6f4;
    if ((*(byte *)(puVar1 + -6) & 4) != 0) {
      FUN_004f5760(this,'\0');
    }
    local_e8 = local_e8 + -1;
    puVar1 = this;
  } while (-1 < local_e8);
  local_e0[0] = &PTR_FUN_00fba6f4;
  if ((local_d8 & 4) != 0) {
    FUN_004f5760(local_e0,'\0');
  }
  return local_e4;
}

