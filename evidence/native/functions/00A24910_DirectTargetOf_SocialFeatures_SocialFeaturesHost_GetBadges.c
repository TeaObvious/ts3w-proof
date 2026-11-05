/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadges at 0x00770a50, bytes e9bb3e2b00. This is
   a static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined4 __cdecl
DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadges
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  this = (void *)GetNativeDescriptorTypeName_Field4(iVar1);
  if (this != (void *)0x0) {
    FUN_00a1a590(this,param_1,param_2,param_3);
    return 0;
  }
  return 1;
}

