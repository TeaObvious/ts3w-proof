/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStatCategory at 0x00770b00, bytes
   e93b3d2b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined8 __cdecl
DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatCategory(int param_1)

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

