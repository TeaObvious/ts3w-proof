/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189e68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedItemsListFilteredImpl [assembly=ScriptCore
   token=0x06000C05; buyCategoryFlag: System.UInt32, buildCategoryFlag: System.UInt32,
   buySubCategoryFlag: System.UInt64, buySubCategoryFlag2: System.UInt64, buyRoomSubCategoryFlag:
   System.UInt64, excludeBuyRoomSubCategoryFlag: System.UInt64, includeRoomFlag: System.UInt32,
   excludeRoomFlag: System.UInt32; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_UserToolUtils__UserToolUtils_GetFeaturedItemsListFilteredImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
          undefined4 param_9,undefined4 param_10,uint param_11,undefined4 param_12)

{
  void *this;
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uStack_88;
  void *pvStack_84;
  int iStack_80;
  undefined4 uStack_7c;
  char *pcStack_78;
  int *piStack_74;
  undefined **appuStack_70 [2];
  ushort uStack_68;
  undefined2 uStack_66;
  uint uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  this = DAT_011ee034;
  if (DAT_011ee034 == (void *)0x0) {
    return 0;
  }
  uStack_88 = 0;
  piStack_74 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piStack_74 != (int *)0x0) {
    uStack_4c = param_1;
    uStack_48 = param_3;
    uStack_40 = param_5;
    uStack_3c = param_6;
    uStack_44 = param_4;
    uStack_34 = param_8;
    uStack_10 = param_9;
    uStack_38 = param_7;
    uStack_50 = param_11;
    uStack_2c = param_12;
    uStack_c = param_10;
    uStack_28 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    uStack_8 = 0;
    uStack_30 = param_2;
    pvStack_84 = (void *)0x0;
    iStack_80 = 0;
    uStack_7c = 0;
    pcStack_78 = "Scratch/UserToolHost/FeaturedItems";
    FUN_00c909b0(this,&uStack_50,&pvStack_84);
    uVar3 = iStack_80 - (int)pvStack_84 >> 3;
    piVar1 = FUN_004e6f20(DAT_011cc864,uVar3 * 8,0);
    if (piVar1 != (int *)0x0) {
      uVar2 = 0;
      if (uVar3 != 0) {
        do {
          piVar1[uVar2 * 2] = *(int *)((int)pvStack_84 + uVar2 * 8);
          piVar1[uVar2 * 2 + 1] = *(int *)((int)pvStack_84 + uVar2 * 8 + 4);
          uVar2 = uVar2 + 1;
        } while (uVar2 < uVar3);
      }
      appuStack_70[0] = &PTR_FUN_00fba6f4;
      uStack_68 = 0;
      uStack_66 = 0;
      if (uVar3 == 0) {
        uVar3 = 0;
        uVar2 = 0x20;
      }
      else {
        uVar2 = 0x18;
      }
      FUN_004f59c0(appuStack_70,0xc,uVar2,piVar1,8,uVar3);
      (**(code **)(*piStack_74 + 0x50))(appuStack_70,&uStack_88);
      FUN_004e5e70(DAT_011cc864,(int)piVar1);
      appuStack_70[0] = &PTR_FUN_00fba6f4;
      if ((uStack_68 & 4) != 0) {
        FUN_004f5760(appuStack_70,'\0');
      }
    }
    if (pvStack_84 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_84);
    }
  }
  return uStack_88;
}

