/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportId at 0x00770e30, bytes e9cb432b00. This
   is a static control-flow link from the registered entry; the target may have other callers and
   its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined4 __cdecl DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportId(int param_1)

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

