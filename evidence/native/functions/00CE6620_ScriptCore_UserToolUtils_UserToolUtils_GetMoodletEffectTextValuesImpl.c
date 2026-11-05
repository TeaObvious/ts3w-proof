/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189fb8 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetMoodletEffectTextValuesImpl [assembly=ScriptCore
   token=0x06000C1D; typeID: System.UInt32, instanceID: System.UInt64, groupID: System.UInt32;
   return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetMoodletEffectTextValuesImpl
          (undefined4 param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 local_40;
  int local_3c [2];
  void *local_34;
  uint local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  local_40 = 0;
  uVar4 = 0;
  if (DAT_011ee034 != (void *)0x0) {
    local_30 = param_2;
    local_28 = param_1;
    local_2c = param_3;
    local_24 = param_4;
    local_34 = (void *)FUN_00c8ebb0(DAT_011ee034,&local_30);
    if (local_34 == (void *)0x0) {
      return local_40;
    }
    uVar1 = FUN_00c97bd0((int)local_34);
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    if ((uVar1 == 0) || (piVar2 == (int *)0x0)) {
      return local_40;
    }
    piVar3 = FUN_004e6f20(DAT_011cc864,uVar1 * 4,0);
    uVar4 = local_40;
    if (piVar3 != (int *)0x0) {
      uVar5 = 0;
      if (uVar1 != 0) {
        do {
          local_3c[1] = 0;
          local_3c[0] = 0;
          uVar4 = FUN_00c97c10(local_34,uVar5,local_3c + 1,local_3c);
          if ((char)uVar4 != '\0') {
            piVar3[uVar5] = local_3c[0];
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < uVar1);
      }
      local_20[0] = &PTR_FUN_00fba6f4;
      local_18 = 0;
      local_16 = 0;
      FUN_004f59c0(local_20,10,0x18,piVar3,4,uVar1);
      (**(code **)(*piVar2 + 0x50))(local_20,&local_40);
      FUN_004e5e70(DAT_011cc864,(int)piVar3);
      local_20[0] = &PTR_FUN_00fba6f4;
      uVar4 = local_40;
      if ((local_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
        uVar4 = local_40;
      }
    }
  }
  return uVar4;
}

