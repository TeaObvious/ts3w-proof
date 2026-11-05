/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetClearColor. Export ordinal(s):
   2274. Entry VA: 0x1098e920. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000147;
   CSHostWrap:0x0600014C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_SetClearColor(int param_1,undefined4 param_2)

{
                    /* 0x98e920  2274  SceneManWrap_SetClearColor */
  *(undefined4 *)(param_1 + 0x1cc) = param_2;
  return;
}

