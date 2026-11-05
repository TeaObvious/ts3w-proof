/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET8, AL.
   Independent point kernel used by sim overlap queries: half-open Z intervals, strict pointX < ray
   intersection X. Unrolls four edges then processes remainder. No epsilon. Boundary behavior
   differs from 0x007cd9e0. */

bool Geometry_PointInPolygonRayCrossingStrictX(int *param_1,float *param_2)

{
  float fVar1;
  int iVar2;
  bool bVar3;
  float *pfVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  float fVar9;
  float fVar10;
  
  iVar2 = *param_1;
  iVar5 = param_1[1] - iVar2 >> 3;
  iVar8 = 0;
  bVar3 = false;
  iVar6 = iVar5 + -1;
  if (3 < iVar5) {
    fVar1 = param_2[1];
    iVar7 = iVar6 * 8;
    pfVar4 = (float *)(iVar2 + 0x14);
    do {
      fVar10 = pfVar4[-4];
      if ((((fVar10 <= fVar1) && (fVar9 = *(float *)(iVar7 + 4 + iVar2), fVar1 < fVar9)) ||
          ((fVar9 = *(float *)(iVar7 + 4 + iVar2), fVar9 <= fVar1 && (fVar1 < fVar10)))) &&
         (fVar9 = ((fVar1 - fVar10) * (*(float *)(iVar7 + iVar2) - pfVar4[-5])) / (fVar9 - fVar10) +
                  pfVar4[-5], *param_2 <= fVar9 && fVar9 != *param_2)) {
        bVar3 = !bVar3;
      }
      fVar9 = pfVar4[-2];
      if ((((fVar9 <= fVar1) && (fVar1 < fVar10)) || ((fVar10 <= fVar1 && (fVar1 < fVar9)))) &&
         (fVar10 = ((pfVar4[-5] - pfVar4[-3]) * (fVar1 - fVar9)) / (fVar10 - fVar9) + pfVar4[-3],
         *param_2 <= fVar10 && fVar10 != *param_2)) {
        bVar3 = !bVar3;
      }
      fVar10 = *pfVar4;
      if ((((fVar10 <= fVar1) && (fVar1 < fVar9)) || ((fVar9 <= fVar1 && (fVar1 < fVar10)))) &&
         (fVar9 = ((pfVar4[-3] - pfVar4[-1]) * (fVar1 - fVar10)) / (fVar9 - fVar10) + pfVar4[-1],
         *param_2 <= fVar9 && fVar9 != *param_2)) {
        bVar3 = !bVar3;
      }
      fVar9 = pfVar4[2];
      if ((((fVar9 <= fVar1) && (fVar1 < fVar10)) || ((fVar10 <= fVar1 && (fVar1 < fVar9)))) &&
         (fVar10 = ((pfVar4[-1] - pfVar4[1]) * (fVar1 - fVar9)) / (fVar10 - fVar9) + pfVar4[1],
         *param_2 <= fVar10 && fVar10 != *param_2)) {
        bVar3 = !bVar3;
      }
      iVar6 = iVar8 + 3;
      iVar7 = (4 - iVar2) + (int)pfVar4;
      iVar8 = iVar8 + 4;
      pfVar4 = pfVar4 + 8;
    } while (iVar8 < iVar5 + -3);
  }
  if (iVar8 < iVar5) {
    fVar1 = param_2[1];
    iVar6 = iVar6 * 8;
    iVar5 = iVar5 - iVar8;
    pfVar4 = (float *)(iVar2 + 4 + iVar8 * 8);
    do {
      if ((((*pfVar4 <= fVar1) && (fVar10 = *(float *)(iVar6 + 4 + iVar2), fVar1 < fVar10)) ||
          ((fVar10 = *(float *)(iVar6 + 4 + iVar2), fVar10 <= fVar1 && (fVar1 < *pfVar4)))) &&
         (fVar10 = ((fVar1 - *pfVar4) * (*(float *)(iVar6 + iVar2) - pfVar4[-1])) /
                   (fVar10 - *pfVar4) + pfVar4[-1], *param_2 <= fVar10 && fVar10 != *param_2)) {
        bVar3 = !bVar3;
      }
      iVar6 = (-4 - iVar2) + (int)pfVar4;
      pfVar4 = pfVar4 + 2;
      iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
  }
  return bVar3;
}

