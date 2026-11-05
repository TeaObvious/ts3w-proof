/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Copies four integer dirty-rectangle fields from height
   raster through 0x100688A0, or returns an empty zero rectangle if no height raster is owned at
   terrain +8. Renderer update 0x1025A0B0 consumes this rectangle rather than comparing prior height
   values. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

undefined4 * __thiscall CAW_TerrainGetHeightRasterDirtyRect(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar2 = &local_10;
  if (*(int *)((int)this + 8) == 0) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
  }
  else {
    puVar2 = (undefined4 *)CAW_HeightRasterGetDirtyRect(*(int *)((int)this + 8));
  }
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  uVar1 = puVar2[2];
  param_1[3] = puVar2[3];
  param_1[2] = uVar1;
  return param_1;
}

