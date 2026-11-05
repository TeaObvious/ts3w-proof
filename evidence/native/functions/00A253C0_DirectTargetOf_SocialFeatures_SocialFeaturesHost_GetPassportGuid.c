/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportGuid at 0x00770ed0, bytes e9eb442b00.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined8 __cdecl DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportGuid(int param_1)

{
  int iVar1;
  void *this;
  undefined8 uVar2;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  this = (void *)FUN_009de7f0(iVar1);
  uVar2 = FUN_00a3af70(this,param_1);
  return uVar2;
}

