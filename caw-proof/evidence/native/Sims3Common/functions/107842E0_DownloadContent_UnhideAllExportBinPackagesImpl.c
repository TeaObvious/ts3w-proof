/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_UnhideAllExportBinPackagesImpl.
   Export ordinal(s): 415. Entry VA: 0x107842e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011EB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint DownloadContent_UnhideAllExportBinPackagesImpl(void)

{
  uint in_EAX;
  uint uVar1;
  
                    /* 0x7842e0  415  DownloadContent_UnhideAllExportBinPackagesImpl */
  if (DAT_10c8de94 != 0) {
    uVar1 = FUN_10792fd0(DAT_10c8de94);
    return uVar1;
  }
  return in_EAX & 0xffffff00;
}

