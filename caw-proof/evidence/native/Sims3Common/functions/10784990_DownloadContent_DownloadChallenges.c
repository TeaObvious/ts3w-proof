/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_DownloadChallenges. Export
   ordinal(s): 362. Entry VA: 0x10784990. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011D1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint DownloadContent_DownloadChallenges(void)

{
  uint uVar1;
  
                    /* 0x784990  362  DownloadContent_DownloadChallenges */
  if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
    uVar1 = FUN_1067bac0();
    return uVar1;
  }
  return DAT_10c788dc & 0xffffff00;
}

