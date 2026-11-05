/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_IsAnyExportBinPackageHiddenImpl.
   Export ordinal(s): 396. Entry VA: 0x10784300. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011EC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool DownloadContent_IsAnyExportBinPackageHiddenImpl(void)

{
  bool bVar1;
  
                    /* 0x784300  396  DownloadContent_IsAnyExportBinPackageHiddenImpl */
  if (DAT_10c8de94 != 0) {
    bVar1 = FUN_107907b0(DAT_10c8de94);
    return bVar1;
  }
  return false;
}

