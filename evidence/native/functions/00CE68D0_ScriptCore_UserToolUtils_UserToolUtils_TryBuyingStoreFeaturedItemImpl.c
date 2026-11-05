/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e88 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_TryBuyingStoreFeaturedItemImpl [assembly=ScriptCore
   token=0x06000C07; itemId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_TryBuyingStoreFeaturedItemImpl
               (uint param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = FUN_00c8f000(DAT_011ee034,param_1,param_2);
  if ((uVar1 != 0) && (DAT_011ea960 != 0)) {
    FUN_009cfed0((undefined4 *)(uVar1 + 0x58),*(undefined4 *)(uVar1 + 0x48));
  }
  return;
}

