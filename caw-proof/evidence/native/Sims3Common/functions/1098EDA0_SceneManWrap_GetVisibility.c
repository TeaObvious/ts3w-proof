/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetVisibility. Export ordinal(s):
   2263. Entry VA: 0x1098eda0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005B3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl SceneManWrap_GetVisibility(int param_1)

{
  uint in_EAX;
  int iVar1;
  undefined4 uVar2;
  
                    /* 0x98eda0  2263  SceneManWrap_GetVisibility */
  if (param_1 != 0) {
    FUN_1073ae50(param_1);
    iVar1 = FUN_104f31a0();
    in_EAX = 0;
    if (iVar1 != 0) {
      iVar1 = FUN_104f36d0(iVar1);
      in_EAX = 0;
      if (iVar1 != 0) {
        uVar2 = FUN_105186b0(iVar1);
        return (uint)(((byte)uVar2 & 1) == 1);
      }
    }
  }
  return in_EAX & 0xffffff00;
}

