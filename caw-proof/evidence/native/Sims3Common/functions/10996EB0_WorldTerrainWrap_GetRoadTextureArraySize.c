/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetRoadTextureArraySize;
   WorldTerrainWrap_GetRoadTextureIdx. Export ordinal(s): 2576; 2578. Entry VA: 0x10996eb0. Original
   managed P/Invoke MethodDef(s): CSHostWrap:0x06000AFD; CSHostWrap:0x06000AFE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int WorldTerrainWrap_GetRoadTextureArraySize(void)

{
                    /* 0x996eb0  2576  WorldTerrainWrap_GetRoadTextureArraySize
                       0x996eb0  2578  WorldTerrainWrap_GetRoadTextureIdx */
  return (*(int *)(*(int *)(DAT_10c700c4 + 0x5c) + 0x118) -
         *(int *)(*(int *)(DAT_10c700c4 + 0x5c) + 0x114)) / 0x250;
}

