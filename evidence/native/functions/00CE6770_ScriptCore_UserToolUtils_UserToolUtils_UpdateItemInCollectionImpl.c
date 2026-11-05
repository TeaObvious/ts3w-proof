/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f20 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_UpdateItemInCollectionImpl [assembly=ScriptCore
   token=0x06000BFB; bAdd: System.Boolean, collectionId: System.UInt64, instanceID: System.UInt64,
   groupID: System.UInt32, typeID: System.UInt32, presetId: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.UserToolUtils::UserToolUtils_UpdateItemInCollectionImpl
          (char param_1,uint param_2,uint param_3,int param_4,undefined4 param_5,undefined4 param_6,
          int param_7,undefined4 param_8)

{
  void *this;
  int iVar1;
  int local_10;
  undefined4 local_c;
  int local_8;
  undefined4 local_4;
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 != (void *)0x0) {
    local_10 = param_4;
    local_c = param_5;
    local_8 = param_7;
    local_4 = param_6;
    if (param_1 != '\0') {
      if ((param_7 == 0x319e4f1d) && (DAT_011ee034 != (void *)0x0)) {
        iVar1 = FUN_00c8c820(DAT_011ee034,&local_10,'\0');
        if (iVar1 != 0) {
          local_10 = *(int *)(iVar1 + 8);
          local_c = *(undefined4 *)(iVar1 + 0xc);
          local_8 = *(int *)(iVar1 + 0x10);
          local_4 = *(undefined4 *)(iVar1 + 0x14);
        }
      }
      FUN_007df550(this,param_2,param_3,&local_10,param_8);
      return;
    }
    FUN_007deac0(DAT_011d9ac8,param_2,param_3,&local_10,param_8);
  }
  return;
}

