/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetBoundingBoxesEnabled. Export
   ordinal(s): 2252. Entry VA: 0x1098e950. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600014F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SceneManWrap_GetBoundingBoxesEnabled(int param_1)

{
                    /* 0x98e950  2252  SceneManWrap_GetBoundingBoxesEnabled */
  return *(char *)(param_1 + 0x25d) != '\0';
}

