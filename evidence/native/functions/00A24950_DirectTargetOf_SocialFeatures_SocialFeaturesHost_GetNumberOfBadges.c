/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfBadges at 0x00770c00, bytes e94b3d2b00.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined4 DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfBadges(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  iVar1 = GetNativeDescriptorTypeName_Field4(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_008c2c70(iVar1);
    return uVar2;
  }
  return 1;
}

