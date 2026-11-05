/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX floor-grid owner; signed level in point despite float-pointer C. x87
   height, RET0x04. Outside XZ bounds returns zero; min/max recursion uses three-unit level stride.
   Fractions<0.001 use grid vertex, otherwise A8B360 triangle interpolation. Distinct from A8C690
   guarded world fallback; current owner/grid/domain join remains open. Descriptive analyst role,
   not a recovered original symbol. */

float10 __thiscall WallFloor_SampleLevelGridHeight(void *param_1,float *param_2)

{
  float fVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float local_10;
  float local_c;
  float local_8;
  float local_4;
  
  fVar7 = *param_2;
  fVar8 = param_2[1];
  if ((((fVar7 < 0.0) || ((float)*(int *)(*(int *)((int)param_1 + 8) + 0x60) < fVar7)) ||
      (fVar8 < 0.0)) || ((float)*(int *)(*(int *)((int)param_1 + 8) + 100) < fVar8)) {
    return (float10)0;
  }
  fVar1 = param_2[2];
  if ((int)fVar1 < *(int *)((int)param_1 + 0xc)) {
    local_10 = fVar7;
    local_c = fVar8;
    local_8 = (float)*(int *)((int)param_1 + 0xc);
    fVar6 = WallFloor_SampleLevelGridHeight(param_1,&local_10);
    return fVar6 - (float10)(*(int *)((int)param_1 + 0xc) - (int)fVar1) * (float10)3.0;
  }
  if (*(int *)((int)param_1 + 0x10) < (int)fVar1) {
    local_10 = fVar7;
    local_c = fVar8;
    local_8 = (float)*(int *)((int)param_1 + 0x10);
    fVar6 = WallFloor_SampleLevelGridHeight(param_1,&local_10);
    return (float10)((int)fVar1 - *(int *)((int)param_1 + 0x10)) * (float10)3.0 + fVar6;
  }
  iVar3 = (int)ROUND(fVar7) + -1 + (uint)((uint)(fVar7 - (float)(int)ROUND(fVar7)) < 0x80000001);
  iVar4 = (int)ROUND(fVar8) + -1 + (uint)((uint)(fVar8 - (float)(int)ROUND(fVar8)) < 0x80000001);
  if (*(int *)((int)param_1 + 0x14) <= iVar3) {
    iVar3 = *(int *)((int)param_1 + 0x14) + -1;
  }
  if (*(int *)((int)param_1 + 0x18) <= iVar4) {
    iVar4 = *(int *)((int)param_1 + 0x18) + -1;
  }
  iVar5 = (int)fVar1 - *(int *)((int)param_1 + 0xc);
  fVar7 = fVar7 - (float)iVar3;
  fVar8 = fVar8 - (float)iVar4;
  if ((fVar7 < 0.001) && (fVar8 < 0.001)) {
    iVar2 = *(int *)((int)param_1 + 0x78);
    return (float10)*(float *)(*(int *)(iVar2 + 0x10) +
                              ((*(int *)(iVar2 + 4) * iVar5 + iVar3) * *(int *)(iVar2 + 8) + iVar4)
                              * 4);
  }
  HeightGrid_ReadFourCorners(*(void **)((int)param_1 + 0x78),iVar3,iVar4,iVar5,&local_10);
  if (local_4 + local_10 <= local_c + local_8) {
    if (fVar8 + fVar7 < 1.0) {
      fVar6 = (float10)local_10;
      return ((float10)local_8 - fVar6) * (float10)fVar7 +
             ((float10)local_c - fVar6) * (float10)fVar8 + fVar6;
    }
    return (float10)local_c +
           ((float10)local_4 - (float10)local_c) * (float10)fVar7 +
           ((float10)1 - (float10)fVar8) * ((float10)local_8 - (float10)local_4);
  }
  if (0.0 < fVar7 - fVar8) {
    return ((float10)local_8 - (float10)local_10) * (float10)fVar7 +
           ((float10)local_4 - (float10)local_8) * (float10)fVar8 + (float10)local_10;
  }
  return ((float10)local_c - (float10)local_10) * (float10)fVar8 +
         ((float10)local_4 - (float10)local_c) * (float10)fVar7 + (float10)local_10;
}

