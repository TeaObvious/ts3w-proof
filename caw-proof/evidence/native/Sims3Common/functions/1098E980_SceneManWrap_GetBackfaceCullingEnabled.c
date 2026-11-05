/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetBackfaceCullingEnabled. Export
   ordinal(s): 2251. Entry VA: 0x1098e980. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000152. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SceneManWrap_GetBackfaceCullingEnabled(int param_1)

{
                    /* 0x98e980  2251  SceneManWrap_GetBackfaceCullingEnabled */
  return *(char *)(param_1 + 0x263) != '\0';
}

