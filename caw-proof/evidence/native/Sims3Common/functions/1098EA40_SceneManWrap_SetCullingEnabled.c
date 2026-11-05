/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetCullingEnabled. Export
   ordinal(s): 2275. Entry VA: 0x1098ea40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000159. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_SetCullingEnabled(int param_1,int param_2)

{
                    /* 0x98ea40  2275  SceneManWrap_SetCullingEnabled */
  *(bool *)(param_1 + 0x262) = param_2 != 0;
  return;
}

