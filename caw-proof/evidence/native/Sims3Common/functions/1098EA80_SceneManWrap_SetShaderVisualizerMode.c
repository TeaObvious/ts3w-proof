/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetShaderVisualizerMode. Export
   ordinal(s): 2282. Entry VA: 0x1098ea80. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600015F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_SetShaderVisualizerMode(void *param_1,int param_2)

{
                    /* 0x98ea80  2282  SceneManWrap_SetShaderVisualizerMode */
  if (param_2 == 0) {
    *(undefined1 *)((int)param_1 + 0x378) = 0;
    return;
  }
  *(undefined1 *)((int)param_1 + 0x378) = 1;
  FUN_104de540(param_1,param_2);
  return;
}

