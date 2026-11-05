/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f00 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetCollectionPresetListImpl [assembly=ScriptCore
   token=0x06000BF7; collectionId: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetCollectionPresetListImpl(uint param_1,uint param_2)

{
  void *this;
  undefined4 uVar1;
  int local_10 [3];
  char *local_4;
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 != (void *)0x0) {
    GetGlobalInterfacePointer_11D5BBC();
    local_10[0] = 0;
    local_10[1] = 0;
    local_10[2] = 0;
    local_4 = "World/UserToolHost/ProductPresetReferenceVector";
    FUN_007df600(this,param_1,param_2,local_10);
    uVar1 = FUN_00ceaf30(local_10,0);
    if (local_10[0] != 0) {
      FUN_004e44e0(local_10[0]);
    }
    return uVar1;
  }
  return 0;
}

