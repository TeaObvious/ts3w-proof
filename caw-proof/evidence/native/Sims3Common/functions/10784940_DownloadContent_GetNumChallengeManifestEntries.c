/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetNumChallengeManifestEntries;
   ContentTransferManager_GetNumChallengeManifestEntries. Export ordinal(s): 384; 1794. Entry VA:
   0x10784940. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000916; ScriptCore:0x060011D2.
   This is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int DownloadContent_GetNumChallengeManifestEntries(void)

{
  int iVar1;
  
                    /* 0x784940  384  DownloadContent_GetNumChallengeManifestEntries
                       0x784940  1794  ContentTransferManager_GetNumChallengeManifestEntries */
  if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
    iVar1 = FUN_106735b0();
    return iVar1;
  }
  return 0;
}

