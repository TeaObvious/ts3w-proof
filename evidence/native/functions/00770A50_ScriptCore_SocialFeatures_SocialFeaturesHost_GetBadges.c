/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162550 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadges [assembly=ScriptCore token=0x06000ABC;
   startIndex: System.UInt32, numRecords: System.UInt32, platform: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_SocialFeatures__SocialFeaturesHost_GetBadges
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  this = (void *)GetNativeDescriptorTypeName_Field4(iVar1);
  if (this == (void *)0x0) {
    return 1;
  }
  FUN_00a1a590(this,param_1,param_2,param_3);
  return 0;
}

