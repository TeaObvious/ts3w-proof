/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetWaitForTextures. Export
   ordinal(s): 2369. Entry VA: 0x109900c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C83. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SimBuilderWrap_SetWaitForTextures(int param_1,undefined1 param_2)

{
                    /* 0x9900c0  2369  SimBuilderWrap_SetWaitForTextures */
  if (param_1 != 0) {
    *(undefined1 *)(param_1 + 0x6a) = param_2;
  }
  return;
}

