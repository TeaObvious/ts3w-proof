/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162630 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatCategory [assembly=ScriptCore
   token=0x06000AD9; nucleusID: System.Int64, index: System.UInt32; return=System.Int64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_SocialFeatures__SocialFeaturesHost_GetBadgeStatCategory(int param_1)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  this = (void *)GetNativeDescriptorTypeName_Field4(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_00a1a000(this,param_1);
    if (iVar1 != 0) {
      return *(undefined8 *)(iVar1 + 8);
    }
  }
  return 1;
}

