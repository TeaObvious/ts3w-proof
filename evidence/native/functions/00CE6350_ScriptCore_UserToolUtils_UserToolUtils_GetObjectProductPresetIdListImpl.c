/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f98 (original PC1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetObjectProductPresetIdListImpl [assembly=ScriptCore
   token=0x06000C19; typeID: System.UInt32, instanceID: System.UInt64, groupID: System.UInt32;
   return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 catalog/template instruction contract): Existing managed registration
   identity preserved. cdecl4 stack words (type,instanceLow,instanceHigh,group), plain RET. Resolve
   product C8EBB0, count C983E0 includes authored+existing extra rows, allocate count*4, loopC97E10
   over all ordinals, marshal UInt32 array through host and free native buffer. No current
   portable4096-cache policy is implied. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetObjectProductPresetIdListImpl
          (undefined4 param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  void *this;
  uint uVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  uint ordinal;
  undefined4 local_38;
  int *local_34;
  uint local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  local_38 = 0;
  uVar4 = 0;
  if (DAT_011ee034 != (void *)0x0) {
    local_30 = param_2;
    local_28 = param_1;
    local_2c = param_3;
    local_24 = param_4;
    this = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,&local_30);
    if (this == (void *)0x0) {
      return local_38;
    }
    uVar1 = ObjectProduct_CountAuthoredAndExtraPresets(this);
    local_34 = (int *)GetGlobalInterfacePointer_11D5BBC();
    if ((uVar1 == 0) || (local_34 == (int *)0x0)) {
      return local_38;
    }
    piVar2 = FUN_004e6f20(DAT_011cc864,uVar1 * 4,0);
    uVar4 = local_38;
    if (piVar2 != (int *)0x0) {
      ordinal = 0;
      if (uVar1 != 0) {
        do {
          uVar3 = ObjectProduct_GetPresetFullIdByOrdinal(this,ordinal);
          piVar2[ordinal] = uVar3;
          ordinal = ordinal + 1;
        } while (ordinal < uVar1);
      }
      local_20[0] = &PTR_FUN_00fba6f4;
      local_18 = 0;
      local_16 = 0;
      FUN_004f59c0(local_20,10,0x18,piVar2,4,uVar1);
      (**(code **)(*local_34 + 0x50))(local_20,&local_38);
      FUN_004e5e70(DAT_011cc864,(int)piVar2);
      local_20[0] = &PTR_FUN_00fba6f4;
      uVar4 = local_38;
      if ((local_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
        uVar4 = local_38;
      }
    }
  }
  return uVar4;
}

