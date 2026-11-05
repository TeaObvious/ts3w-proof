/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET12. Empty
   matrix vector simply deep-copies the source. For each nonempty 0x40-byte matrix entry, appends a
   source record, transforms it in place, then appends another deep copy of that transformed record.
   Calls 0x00946eb0, 0x0082b820, 0x00932f90 and 0x0082b7b0 establish two records per matrix; do not
   collapse to one copy. */

void FootprintPolygon_AppendRelativeTransformCopies(void *param_1,undefined4 *param_2,int *param_3)

{
  undefined4 *puVar1;
  float *pfVar2;
  float *pfVar3;
  undefined4 *this;
  
  if (*param_3 == param_3[1]) {
    puVar1 = *(undefined4 **)((int)param_1 + 4);
    if (*(undefined4 **)((int)param_1 + 8) <= puVar1) {
      FUN_0082f220(param_1,puVar1,param_2);
      return;
    }
    *(undefined4 **)((int)param_1 + 4) = puVar1 + 0x10;
    if (puVar1 != (undefined4 *)0x0) {
      FootprintPolygon_CopyConstruct(puVar1,param_2);
      return;
    }
  }
  else {
    FUN_009464c0(param_1,param_3[1] - *param_3 >> 6);
    pfVar2 = (float *)param_3[1];
    for (pfVar3 = (float *)*param_3; pfVar3 != pfVar2; pfVar3 = pfVar3 + 0x10) {
      FootprintPolygonVector_AppendDefault(param_1);
      this = (undefined4 *)(*(int *)((int)param_1 + 4) + -0x40);
      FUN_0082b820(this,param_2);
      FootprintPolygon_TransformXZAndRebuildBounds(this,pfVar3);
      puVar1 = *(undefined4 **)((int)param_1 + 4);
      if (puVar1 < *(undefined4 **)((int)param_1 + 8)) {
        *(undefined4 **)((int)param_1 + 4) = puVar1 + 0x10;
        if (puVar1 != (undefined4 *)0x0) {
          FootprintPolygon_CopyConstruct(puVar1,this);
        }
      }
      else {
        FUN_0082f220(param_1,puVar1,this);
      }
    }
  }
  return;
}

