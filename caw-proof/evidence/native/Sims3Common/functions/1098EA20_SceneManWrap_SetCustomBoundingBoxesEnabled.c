/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetCustomBoundingBoxesEnabled.
   Export ordinal(s): 2276. Entry VA: 0x1098ea20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000158. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_SetCustomBoundingBoxesEnabled(int param_1,int param_2)

{
                    /* 0x98ea20  2276  SceneManWrap_SetCustomBoundingBoxesEnabled */
  *(bool *)(param_1 + 0x25e) = param_2 != 0;
  return;
}

