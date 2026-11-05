/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetWorldType. Export ordinal(s): 2665.
   Entry VA: 0x109984d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000513. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl WorldWrap_GetWorldType(int param_1)

{
  int iVar1;
  
                    /* 0x9984d0  2665  WorldWrap_GetWorldType */
  if (param_1 != 0) {
    iVar1 = FUN_1039c470(param_1 + 0x270);
    return iVar1;
  }
  return -1;
}

