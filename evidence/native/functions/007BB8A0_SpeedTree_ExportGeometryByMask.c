/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 billboard orientation contract. ECX wrapper, output geometry and byte mask.
   Bits1/2/4 dispatch branch/frond/leaf export; bit8 calls7B8890 billboard export. The actual
   species initializer718260 supplies mask0F before717280 consumes geometry+B0. */

void __thiscall SpeedTree_ExportGeometryByMask(void *this,undefined4 *param_1,byte param_2)

{
  if ((param_2 & 1) != 0) {
    FUN_007bab90(this,param_1);
  }
  if ((param_2 & 2) != 0) {
    FUN_007bad60(this,(int)param_1);
  }
  if ((param_2 & 4) != 0) {
    FUN_007baf40(this,(int)param_1);
  }
  if ((param_2 & 8) != 0) {
    SpeedTree_ExportBillboardGeometry(this,(int)param_1);
  }
  return;
}

