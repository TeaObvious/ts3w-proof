/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162808 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_IsPassportUploadOrDownloadActive
   [assembly=ScriptCore token=0x06000AEB; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_SocialFeatures__SocialFeaturesHost_IsPassportUploadOrDownloadActive(void)

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

