/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   WorldTerrainWrap_BuildPaintingMaskFromConcavityMap. Export ordinal(s): 2555. Entry VA:
   0x10996960. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B13. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldTerrainWrap_BuildPaintingMaskFromConcavityMap(int param_1)

{
  int iVar1;
  int iVar2;
  
                    /* 0x996960  2555  WorldTerrainWrap_BuildPaintingMaskFromConcavityMap */
  if ((param_1 != 0) && (iVar1 = *(int *)(param_1 + 100), iVar1 != 0)) {
    iVar2 = FUN_106b6a50(iVar1);
    if ((iVar2 != 0) && (*(int *)(iVar1 + 8) != 0)) {
      FUN_10937790();
      FUN_101f0490(iVar2);
      return;
    }
  }
  return;
}

