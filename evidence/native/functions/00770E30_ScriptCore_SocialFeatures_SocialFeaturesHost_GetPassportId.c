/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162740 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  
  iVar1 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  if (iVar1 != 0) {
    this = (void *)FUN_009de7f0(iVar1);
    if (this != (void *)0x0) {
      uVar2 = FUN_00a3acc0(this,param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

