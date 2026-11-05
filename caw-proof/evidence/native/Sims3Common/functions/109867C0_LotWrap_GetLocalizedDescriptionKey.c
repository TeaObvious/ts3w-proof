/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetLocalizedDescriptionKey. Export
   ordinal(s): 1909. Entry VA: 0x109867c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A99. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LotWrap_GetLocalizedDescriptionKey(int param_1)

{
                    /* 0x9867c0  1909  LotWrap_GetLocalizedDescriptionKey */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x3d8);
  }
  return 0;
}

