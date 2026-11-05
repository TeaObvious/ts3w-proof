/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelComponent_GetModelProxy. Export ordinal(s):
   1939. Entry VA: 0x10980570. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005AA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl ModelComponent_GetModelProxy(int param_1)

{
  int iVar1;
  
                    /* 0x980570  1939  ModelComponent_GetModelProxy */
  FUN_1073ae50(param_1);
  iVar1 = FUN_10980510();
  if (iVar1 != 0) {
    return iVar1 + 0x210;
  }
  return 0;
}

