/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_IsPassportUploadOrDownloadActive at 0x00770e60,
   bytes e9fb432b00. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_IsPassportUploadOrDownloadActive at 0x00770e60,
   bytes e9fb432b00. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

uint DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsPassportUploadOrDownloadActive(void)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined3 extraout_var;
  undefined4 unaff_EBX;
  
  iVar2 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
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

