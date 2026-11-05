/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011627b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_CompletePassportHosting [assembly=ScriptCore
   token=0x06000AF9; finishType: System.Int32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SocialFeatures__SocialFeaturesHost_CompletePassportHosting(int param_1)

{
  int iVar1;
  void *this;
  
  iVar1 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  this = (void *)FUN_009de7f0(iVar1);
  FUN_00a3d440(this,param_1);
  return;
}

