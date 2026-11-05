/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_SendPassportMessage at 0x00770fc0, bytes
   e9ab452b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl
DirectTargetOf_SocialFeatures_SocialFeaturesHost_SendPassportMessage
          (int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  this = (void *)FUN_009de7f0(iVar1);
  FUN_00a3d630(this,param_1,param_2,param_3);
  return;
}

