/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162740 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportId [assembly=ScriptCore
   token=0x06000AE9; travelType: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_SocialFeatures__SocialFeaturesHost_GetPassportId(int param_1)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  if (iVar1 != 0) {
    this = (void *)FUN_009de7f0(iVar1);
    if (this != (void *)0x0) {
      uVar2 = FUN_00a3acc0(this,param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

