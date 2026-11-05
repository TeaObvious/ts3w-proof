/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Expands a half-open integer rectangle to include raster
   cell (x,z), using exclusive maxima x+1/z+1. An empty rectangle is replaced by exactly that cell.
   HeightRasterStoreQuantized calls this on every accepted in-bounds store, regardless of old sample
   equality. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

void __cdecl CAW_DirtyRectIncludeRasterCell(int *param_1,int param_2,int param_3)

{
  if (*param_1 != param_1[2]) {
    if (param_1[1] != param_1[3]) {
      if (param_2 < *param_1) {
        *param_1 = param_2;
      }
      if (param_1[2] <= param_2) {
        param_1[2] = param_2 + 1;
      }
      if (param_3 < param_1[1]) {
        param_1[1] = param_3;
      }
      if (param_1[3] <= param_3) {
        param_1[3] = param_3 + 1;
      }
      return;
    }
  }
  *param_1 = param_2;
  param_1[1] = param_3;
  param_1[2] = param_2 + 1;
  param_1[3] = param_3 + 1;
  return;
}

