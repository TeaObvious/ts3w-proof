/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetWireframeEnabled. Export
   ordinal(s): 2264. Entry VA: 0x1098e930. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600014D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SceneManWrap_GetWireframeEnabled(int param_1)

{
                    /* 0x98e930  2264  SceneManWrap_GetWireframeEnabled */
  return *(char *)(param_1 + 0x25c) != '\0';
}

