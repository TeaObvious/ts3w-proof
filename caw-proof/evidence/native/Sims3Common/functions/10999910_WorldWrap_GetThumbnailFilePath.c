/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetThumbnailFilePath. Export
   ordinal(s): 2659. Entry VA: 0x10999910. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600050F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl WorldWrap_GetThumbnailFilePath(int param_1)

{
                    /* 0x999910  2659  WorldWrap_GetThumbnailFilePath */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x2b0) != *(int *)(param_1 + 0x2b4))) {
    return *(int *)(param_1 + 0x2b0);
  }
  return 0;
}

