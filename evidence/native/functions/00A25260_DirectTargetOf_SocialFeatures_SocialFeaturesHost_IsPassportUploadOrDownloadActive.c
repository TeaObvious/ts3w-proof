/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_IsPassportUploadOrDownloadActive at 0x00770e60,
   bytes e9fb432b00. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

uint DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsPassportUploadOrDownloadActive(void)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined3 extraout_var;
  undefined4 unaff_EBX;
  
  iVar2 = FUN_0056c070(DAT_011ebda0);
  if (iVar2 != 0) {
    iVar2 = FUN_009de7f0(iVar2);
    if (iVar2 != 0) {
      uVar3 = FUN_00a3a9e0(iVar2);
      bVar1 = FUN_00a3a980(iVar2);
      return CONCAT31(extraout_var,bVar1) | CONCAT31((int3)((uint)unaff_EBX >> 8),(char)uVar3);
    }
  }
  return 0;
}

