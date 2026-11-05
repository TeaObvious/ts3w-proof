/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetShadowsEnabled. Export
   ordinal(s): 2261. Entry VA: 0x1098e940. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600014E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SceneManWrap_GetShadowsEnabled(int param_1)

{
                    /* 0x98e940  2261  SceneManWrap_GetShadowsEnabled */
  return *(char *)(param_1 + 0x260) != '\0';
}

