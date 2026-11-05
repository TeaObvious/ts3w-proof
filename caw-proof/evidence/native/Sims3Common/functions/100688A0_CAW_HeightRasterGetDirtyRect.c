/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Returns address of the owned half-open integer dirty
   rectangle at raster +54; no sample equality test or recomputation.
   TerrainGetHeightRasterDirtyRect copies these four fields for renderer consumption.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

int __fastcall CAW_HeightRasterGetDirtyRect(int param_1)

{
  return param_1 + 0x54;
}

