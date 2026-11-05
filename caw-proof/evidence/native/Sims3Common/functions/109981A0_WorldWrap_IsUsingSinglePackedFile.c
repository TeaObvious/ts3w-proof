/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsUsingSinglePackedFile. Export
   ordinal(s): 2677. Entry VA: 0x109981a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000501. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_IsUsingSinglePackedFile(int param_1)

{
                    /* 0x9981a0  2677  WorldWrap_IsUsingSinglePackedFile */
  if ((param_1 != 0) && (*(char *)(param_1 + 400) != '\0')) {
    return 1;
  }
  return 0;
}

