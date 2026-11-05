/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e98 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_IncViewCountStoreFeaturedItemImpl [assembly=ScriptCore
   token=0x06000C09; itemId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_IncViewCountStoreFeaturedItemImpl
               (uint param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = FUN_00c8f000(DAT_011ee034,param_1,param_2);
  if (uVar1 != 0) {
    FUN_00c9b660(uVar1);
    return;
  }
  return;
}

