/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161568 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetStoreManifestFile [assembly=ScriptCore
   token=0x0600062B; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_OnlineFeatures__OnlineFeaturesHost_GetStoreManifestFile(void)

{
  undefined4 uVar1;
  
  if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
    uVar1 = FUN_0088d6d0();
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return DAT_011d5068 & 0xffffff00;
}

