/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetWireframeEnabled. Export
   ordinal(s): 2287. Entry VA: 0x1098e9c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000155. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_SetWireframeEnabled(int param_1,int param_2)

{
                    /* 0x98e9c0  2287  SceneManWrap_SetWireframeEnabled */
  *(bool *)(param_1 + 0x25c) = param_2 != 0;
  return;
}

