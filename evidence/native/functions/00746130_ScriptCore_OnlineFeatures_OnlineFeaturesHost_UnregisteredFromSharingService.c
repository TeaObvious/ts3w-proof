/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161618 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_UnregisteredFromSharingService [assembly=ScriptCore
   token=0x06000642; service: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_OnlineFeatures__OnlineFeaturesHost_UnregisteredFromSharingService(uint param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = 0;
    if ((param_1 & 0xffff0000) != 0) {
      iVar1 = 0x10;
      param_1 = param_1 >> 0x10;
    }
    if ((param_1 & 0xff00) != 0) {
      iVar1 = iVar1 + 8;
      param_1 = param_1 >> 8;
    }
    if ((param_1 & 0xf0) != 0) {
      iVar1 = iVar1 + 4;
      param_1 = param_1 >> 4;
    }
    if ((param_1 & 0xc) != 0) {
      iVar1 = iVar1 + 2;
      param_1 = param_1 >> 2;
    }
    if ((param_1 & 2) != 0) {
      iVar1 = iVar1 + 1;
    }
    if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
      FUN_008827f0(iVar1);
    }
  }
  return;
}

