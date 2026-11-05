/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_AddFillLight. Export ordinal(s):
   2243. Entry VA: 0x1098e6a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600013C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SceneManWrap_AddFillLight(int param_1)

{
  int iVar1;
  
                    /* 0x98e6a0  2243  SceneManWrap_AddFillLight */
  iVar1 = FUN_104de430(param_1);
  if (iVar1 != 0) {
    FUN_104a34c0(iVar1);
    return;
  }
  return;
}

