/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Clears four integer raster dirty-rectangle fields at
   +54,+58,+5C,+60 to zero and resets dirty byte +34. Does not rewrite height data. Native terrain
   renderer acknowledges the rectangle through 0x101FA030. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_HeightRasterClearDirtyRect(int param_1)

{
  *(undefined4 *)(param_1 + 0x54) = 0;
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(undefined4 *)(param_1 + 0x60) = 0;
  *(undefined1 *)(param_1 + 0x34) = 0;
  return;
}

