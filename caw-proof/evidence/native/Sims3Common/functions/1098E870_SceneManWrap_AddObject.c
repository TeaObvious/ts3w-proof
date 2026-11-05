/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_AddObject. Export ordinal(s): 2244.
   Entry VA: 0x1098e870. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000145. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void SceneManWrap_AddObject(void)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x98e870  2244  SceneManWrap_AddObject */
  iVar1 = FUN_1072a1a0();
  uVar2 = FUN_1072abb0(iVar1);
  if (uVar2 != 0) {
    FUN_107282f0(0xb,uVar2,0);
  }
  return;
}

