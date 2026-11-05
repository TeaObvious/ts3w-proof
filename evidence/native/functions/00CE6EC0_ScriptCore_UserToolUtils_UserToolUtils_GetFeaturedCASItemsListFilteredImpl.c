/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189ec0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedCASItemsListFilteredImpl [assembly=ScriptCore
   token=0x06000C06; bodyPart: System.UInt32, outfitTypeFlags: System.UInt32, ageGenderFlags:
   System.UInt32, numNonSetItems: System.UInt32, isHat: System.Boolean; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedCASItemsListFilteredImpl
          (uint param_1,uint param_2,uint param_3,uint param_4,uint param_5)

{
  void *this;
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_38;
  int *local_34;
  void *local_30;
  int local_2c;
  undefined4 local_28;
  char *local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  this = DAT_011ee034;
  if (DAT_011ee034 == (void *)0x0) {
    return 0;
  }
  local_38 = 0;
  local_34 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_34 != (int *)0x0) {
    local_30 = (void *)0x0;
    local_2c = 0;
    local_28 = 0;
    local_24 = "Scratch/UserToolHost/FeaturedItems";
    FUN_00c90670(this,param_1,param_2,param_3,param_4,(int *)&local_30,param_5);
    uVar3 = local_2c - (int)local_30 >> 3;
    piVar1 = FUN_004e6f20(DAT_011cc864,uVar3 * 8,0);
    if (piVar1 != (int *)0x0) {
      uVar2 = 0;
      if (uVar3 != 0) {
        do {
          piVar1[uVar2 * 2] = *(int *)((int)local_30 + uVar2 * 8);
          piVar1[uVar2 * 2 + 1] = *(int *)((int)local_30 + uVar2 * 8 + 4);
          uVar2 = uVar2 + 1;
        } while (uVar2 < uVar3);
      }
      local_20[0] = &PTR_FUN_00fba6f4;
      local_18 = 0;
      local_16 = 0;
      if (uVar3 == 0) {
        uVar3 = 0;
        uVar2 = 0x20;
      }
      else {
        uVar2 = 0x18;
      }
      FUN_004f59c0(local_20,0xc,uVar2,piVar1,8,uVar3);
      (**(code **)(*local_34 + 0x50))(local_20,&local_38);
      FUN_004e5e70(DAT_011cc864,(int)piVar1);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((local_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
    }
    if (local_30 != (void *)0x0) {
      Memory_FreeIfNonNull(local_30);
    }
  }
  return local_38;
}

