/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   SocialFeaturesHost_IsPassportUploadOrDownloadActive. Export ordinal(s): 963. Entry VA:
   0x10562b30. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600091A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint SocialFeaturesHost_IsPassportUploadOrDownloadActive(void)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined3 extraout_var;
  undefined4 unaff_EBX;
  
                    /* 0x562b30  963  SocialFeaturesHost_IsPassportUploadOrDownloadActive */
  iVar2 = FUN_1036f400(DAT_10c8f590);
  if (iVar2 != 0) {
    iVar2 = FUN_107decd0(iVar2);
    if (iVar2 != 0) {
      uVar3 = FUN_10826020(iVar2);
      bVar1 = FUN_10825fc0(iVar2);
      return CONCAT31(extraout_var,bVar1) | CONCAT31((int3)((uint)unaff_EBX >> 8),(char)uVar3);
    }
  }
  return 0;
}

