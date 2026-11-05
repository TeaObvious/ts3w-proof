/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_Shutdown. Export ordinal(s): 2288.
   Entry VA: 0x1098e7f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000140. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SceneManWrap_Shutdown(int param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x98e7f0  2288  SceneManWrap_Shutdown */
  iVar1 = FUN_104de3a0();
  if (iVar1 == param_1) {
    FUN_104de3b0(0);
    piVar2 = (int *)FUN_1050d160();
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  FUN_104df5b0(param_1);
  return;
}

