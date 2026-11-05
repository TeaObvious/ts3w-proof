/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3PackFile_GetFileCount. Export ordinal(s):
   2404. Entry VA: 0x109926f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A1D. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl Sims3PackFile_GetFileCount(int param_1)

{
                    /* 0x9926f0  2404  Sims3PackFile_GetFileCount */
  return (*(int *)(param_1 + 8) - *(int *)(param_1 + 4)) / 0x868;
}

