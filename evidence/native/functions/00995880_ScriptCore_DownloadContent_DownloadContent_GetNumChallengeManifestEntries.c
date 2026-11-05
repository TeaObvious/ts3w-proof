/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181728 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetNumChallengeManifestEntries [assembly=ScriptCore
   token=0x060000F1; ; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_DownloadContent__DownloadContent_GetNumChallengeManifestEntries(void)

{
  int iVar1;
  
  if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
    iVar1 = FUN_008818f0();
    return iVar1;
  }
  return 0;
}

