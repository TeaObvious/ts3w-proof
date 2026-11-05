/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetCullingEnabled. Export
   ordinal(s): 2254. Entry VA: 0x1098e970. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000151. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SceneManWrap_GetCullingEnabled(int param_1)

{
                    /* 0x98e970  2254  SceneManWrap_GetCullingEnabled */
  return *(char *)(param_1 + 0x262) != '\0';
}

