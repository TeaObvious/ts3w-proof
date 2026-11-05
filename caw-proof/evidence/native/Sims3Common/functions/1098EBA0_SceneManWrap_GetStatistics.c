/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetStatistics. Export ordinal(s):
   2262. Entry VA: 0x1098eba0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000161. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SceneManWrap_GetStatistics(int param_1,undefined4 *param_2)

{
                    /* 0x98eba0  2262  SceneManWrap_GetStatistics */
  if (param_1 != 0) {
    *param_2 = *(undefined4 *)(param_1 + 0x4c8);
    param_2[2] = *(undefined4 *)(param_1 + 0x4d0);
    param_2[1] = *(undefined4 *)(param_1 + 0x4cc);
  }
  return;
}

