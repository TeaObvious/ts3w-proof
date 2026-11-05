/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetPaintingLayersCount. Export
   ordinal(s): 2569. Entry VA: 0x109969f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B18. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl WorldTerrainWrap_GetPaintingLayersCount(int param_1)

{
  int iVar1;
  
                    /* 0x9969f0  2569  WorldTerrainWrap_GetPaintingLayersCount */
  if ((param_1 != 0) && (*(int *)(param_1 + 100) != 0)) {
    iVar1 = FUN_101fa530(*(int *)(param_1 + 100));
    return iVar1;
  }
  return 0;
}

