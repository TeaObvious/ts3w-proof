/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162808 (original PC 1.67 TS3W.exe).
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

