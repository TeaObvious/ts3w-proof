/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfBadgeStatistics at 0x00770ae0, bytes
   e9fb3c2b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfBadgeStatistics at 0x00770ae0, bytes
   e9fb3c2b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfBadgeStatistics(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  iVar1 = GetNativeDescriptorTypeName_Field4(iVar1);
  if (iVar1 == 0) {
    return 1;
  }
  uVar2 = FUN_00739aa0(iVar1);
  return uVar2;
}

