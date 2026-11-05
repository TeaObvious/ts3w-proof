/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189fa0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetPresetStringImpl [assembly=ScriptCore
   token=0x06000C1A; typeID: System.UInt32, instanceID: System.UInt64, groupID: System.UInt32;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetPresetStringImpl
          (undefined **param_1,uint param_2,undefined4 param_3,uint param_4)

{
  int *piVar1;
  void *this;
  void *unaff_EBX;
  undefined4 unaff_ESI;
  uint uVar2;
  undefined1 local_44 [4];
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined2 *local_38;
  char *local_34;
  uint local_30;
  undefined4 local_2c;
  undefined **local_28;
  uint local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_34 = "UserTool/PresetXml";
  local_40 = &DAT_011c8e54;
  local_3c = &DAT_011c8e54;
  local_38 = &DAT_011c8e56;
  if (DAT_011ee034 != (void *)0x0) {
    local_30 = param_2;
    local_2c = param_3;
    local_28 = param_1;
    local_24 = param_4 & 0xff000000;
    this = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,&local_30);
    if (this != (void *)0x0) {
      uVar2 = param_4 & 0xffffff;
      if ((uVar2 == 0) || (uVar2 == 0xffffff)) {
        ObjectProduct_ReadFirstPresetString(this,&local_40);
      }
      else {
        uVar2 = ObjectProduct_FindPresetOrdinalByFullId(this,uVar2);
        if (uVar2 != 0xffffffff) {
          FUN_00c98490(this,uVar2,&local_40);
        }
      }
    }
  }
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  FUN_004f59c0(local_20,0x13,9,&local_40,0x10,1);
  (**(code **)(*piVar1 + 0x50))(local_20,local_44);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
  }
  if ((2 < (int)((int)local_40 - (int)unaff_EBX & 0xfffffffeU)) && (unaff_EBX != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EBX);
  }
  return unaff_ESI;
}

