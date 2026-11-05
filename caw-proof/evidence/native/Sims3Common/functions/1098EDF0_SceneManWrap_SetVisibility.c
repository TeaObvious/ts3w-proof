/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetVisibility. Export ordinal(s):
   2286. Entry VA: 0x1098edf0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005B4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SceneManWrap_SetVisibility(int param_1,char param_2)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x98edf0  2286  SceneManWrap_SetVisibility */
  if (param_1 != 0) {
    FUN_1073ae50(param_1);
    iVar1 = FUN_104f31a0();
    if ((iVar1 != 0) && (piVar2 = (int *)FUN_104f36d0(iVar1), piVar2 != (int *)0x0)) {
      (**(code **)(*piVar2 + 0x34))(1,-(uint)(param_2 != '\0'));
    }
  }
  return;
}

