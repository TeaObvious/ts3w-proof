/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: If terrain owns a height raster at +8, calls 0x10068CC0 to
   clear its dirty rectangle. This acknowledges consumed raster invalidation; it does not compare
   height samples or determine persistent world modification. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_TerrainClearHeightRasterDirtyRect(int param_1)

{
  if (*(int *)(param_1 + 8) != 0) {
    CAW_HeightRasterClearDirtyRect(*(int *)(param_1 + 8));
    return;
  }
  return;
}

