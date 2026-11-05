/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Additional writer/reader join: the selected grid pointer is terrain owner+C8,
   the water-elevation layer installed/initialized by AEF480 and written by AEAEF0.
   Historical analyst function name is retained; it does not turn the array into
   a different floor-grid resource. COMISS carry branches reject unordered X/Z
   to FLDZ; FIST correction and x87 interpolation are not blanket float32 parity. */

/* Analyst: samples the lot terrain height at two local float coordinates. Returns x87 ST0; outside
   inclusive lot X/Z bounds returns zero. Selects/clamps a cell, reads four float grid corners, and
   interpolates the triangle selected by fractional X<=fractional Z, using the 00-to-11 diagonal.
   The decompiler ROUND/float-bit cell-index expression must be read with original FIST and
   correction instructions. This separate terrain probe supplies the +0.075 guard in both level
   selectors. */

float10 __thiscall LotTerrainHeight_SampleLocalXZ(void *param_1,float param_2,float param_3)

{
  float fVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  float10 fVar7;
  float10 fVar8;
  float fVar9;
  float fVar10;
  
  if ((((param_2 < 0.0) || ((float)*(int *)(*(int *)((int)param_1 + 4) + 0x174) < param_2)) ||
      (param_3 < 0.0)) || ((float)*(int *)(*(int *)((int)param_1 + 4) + 0x178) < param_3)) {
    return (float10)0;
  }
  iVar5 = (int)ROUND(param_2) + -1 +
          (uint)((uint)(param_2 - (float)(int)ROUND(param_2)) < 0x80000001);
  iVar6 = (int)ROUND(param_3) + -1 +
          (uint)((uint)(param_3 - (float)(int)ROUND(param_3)) < 0x80000001);
  if (*(int *)((int)param_1 + 0xc) <= iVar5) {
    iVar5 = *(int *)((int)param_1 + 0xc) + -1;
  }
  if (*(int *)((int)param_1 + 0x10) <= iVar6) {
    iVar6 = *(int *)((int)param_1 + 0x10) + -1;
  }
  iVar3 = *(int *)((int)param_1 + 200);
  iVar4 = *(int *)((int)param_1 + 200);
  fVar10 = param_2 - (float)iVar5;
  fVar9 = param_3 - (float)iVar6;
  fVar1 = *(float *)(*(int *)(iVar3 + 0xc) + (*(int *)(iVar3 + 8) * iVar5 + iVar6) * 4);
  fVar2 = *(float *)(*(int *)(iVar3 + 0xc) + 4 + (*(int *)(iVar3 + 8) * (iVar5 + 1) + iVar6) * 4);
  if (fVar10 <= fVar9) {
    fVar7 = (float10)*(float *)(*(int *)(iVar4 + 0xc) + 4 +
                               (*(int *)(iVar4 + 8) * iVar5 + iVar6) * 4);
    fVar8 = (float10)fVar1;
    return (fVar7 - fVar8) * (float10)fVar9 + ((float10)fVar2 - fVar7) * (float10)fVar10 + fVar8;
  }
  fVar7 = (float10)*(float *)(*(int *)(iVar4 + 0xc) +
                             (*(int *)(iVar4 + 8) * (iVar5 + 1) + iVar6) * 4);
  fVar8 = (float10)fVar1;
  return (fVar7 - fVar8) * (float10)fVar10 + ((float10)fVar2 - fVar7) * (float10)fVar9 + fVar8;
}

