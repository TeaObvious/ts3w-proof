/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetPaintingLayerTextureFilePath.
   Export ordinal(s): 2568. Entry VA: 0x10996a10. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B19. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldTerrainWrap_GetPaintingLayerTextureFilePath(int param_1,byte param_2)

{
  undefined4 uVar1;
  
                    /* 0x996a10  2568  WorldTerrainWrap_GetPaintingLayerTextureFilePath */
  if ((param_1 != 0) && (*(void **)(param_1 + 100) != (void *)0x0)) {
    uVar1 = FUN_101fa580(*(void **)(param_1 + 100),(uint)param_2);
    return uVar1;
  }
  return 0;
}

