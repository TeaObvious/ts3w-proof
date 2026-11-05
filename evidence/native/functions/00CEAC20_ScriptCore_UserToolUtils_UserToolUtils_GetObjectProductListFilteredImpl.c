/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e58 (original PC1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetObjectProductListFilteredImpl [assembly=ScriptCore
   token=0x06000C00; buyCategoryFlag: System.UInt32, buildCategoryFlag: System.UInt32,
   buySubCategoryFlag: System.UInt64, buySubCategory2Flag: System.UInt64, buyRoomSubCategoryFlag:
   System.UInt64, excludeBuyRoomSubCategoryFlag: System.UInt64, includeRoomFlag: System.UInt32,
   excludeRoomFlag: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 catalog/template instruction contract): Existing managed registration
   identity preserved. Physical ABI is cdecl12 stack words, plain RET, not stdcall. Builds native
   filter descriptor then C90060; function/buy/build exclusion words are initializedzero; room and
   buy-room exclusion fields come from explicit managed arguments. CEA820 converts selected borrowed
   products to managed handles, and temporary vector is freed. Managed registration specifies
   argument domains, not native ownership/cache behavior. */

undefined4 __cdecl
ScriptCore_UserToolUtils__UserToolUtils_GetObjectProductListFilteredImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
          undefined4 param_9,undefined4 param_10,uint param_11,undefined4 param_12)

{
  undefined4 uVar1;
  void *pvStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  char *pcStack_54;
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
  
  if (DAT_011ee034 != (void *)0x0) {
    uStack_4c = param_1;
    uStack_48 = param_3;
    uStack_44 = param_4;
    uStack_40 = param_5;
    uStack_3c = param_6;
    uStack_38 = param_7;
    uStack_34 = param_8;
    uStack_10 = param_9;
    uStack_c = param_10;
    uStack_50 = param_11;
    uStack_2c = param_12;
    uStack_30 = param_2;
    pvStack_60 = (void *)0x0;
    uStack_5c = 0;
    uStack_58 = 0;
    pcStack_54 = "World/Catalog/ProductVector";
    uStack_28 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    uStack_8 = 0;
    ObjectCatalog_CollectFilteredProducts(DAT_011ee034,&uStack_50,&pvStack_60);
    uVar1 = FUN_00cea820((int *)&pvStack_60,4,(int)&uStack_50);
    if (pvStack_60 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_60);
    }
    return uVar1;
  }
  return 0;
}

