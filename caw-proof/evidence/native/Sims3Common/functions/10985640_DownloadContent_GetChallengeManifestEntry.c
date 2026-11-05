/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetChallengeManifestEntry;
   ContentTransferManager_GetChallengeManifestEntry. Export ordinal(s): 371; 1793. Entry VA:
   0x10985640. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000918; ScriptCore:0x060011D4.
   This is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl DownloadContent_GetChallengeManifestEntry(uint param_1,undefined4 *param_2)

{
  uint uVar1;
  
                    /* 0x985640  371  DownloadContent_GetChallengeManifestEntry
                       0x985640  1793  ContentTransferManager_GetChallengeManifestEntry */
  if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
    uVar1 = FUN_10673610(param_1,param_2);
    return uVar1;
  }
  return DAT_10c788dc & 0xffffff00;
}

