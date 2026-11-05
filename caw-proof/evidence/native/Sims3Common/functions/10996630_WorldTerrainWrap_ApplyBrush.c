/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll PE export WorldTerrainWrap_ApplyBrush (RVA 0x996630).
   Pristine CSHostWrap declares void WorldTerrainWrap_ApplyBrush(IntPtr terrain, ref
   HeightMapBrushParameters brushParams). Raw x86 reads the terrain pointer at [ESP+4], follows
   +0x64 then +0x8, and calls worker 0x1006AAD0 with the byref brush pointer from [ESP+8] only when
   that nested field is nonzero. No null guard for the outer pointer appears in this wrapper. The
   worker computes brush bounds and updates parameter fields; the complete terrain mutation path is
   not established by this wrapper alone. */

void __cdecl WorldTerrainWrap_ApplyBrush(int param_1,undefined **param_2)

{
  void *this;
  
                    /* 0x996630  2552  WorldTerrainWrap_ApplyBrush */
  this = *(void **)(*(int *)(param_1 + 100) + 8);
  if (this != (void *)0x0) {
    CAW_TerrainApplyBrushAndComputeBounds(this,param_2);
  }
  return;
}

