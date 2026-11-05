/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl AL. Endpoint
   containment first, then closed-edge intersections. Accepts inclusive 0<=t<=1 and 0<=u<=1. Rejects
   determinants with absolute value below float at 0x0106e6ec (approximately 0.01). Point kernel
   reads last vertex before count check, requiring valid nonempty input. */

bool __cdecl
Geometry_SegmentIntersectsPolygon(float *param_1,float *param_2,float *param_3,uint param_4)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  float *pfVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  bVar1 = Geometry_PointInPolygonCrossing(param_1,param_3,param_4);
  if (bVar1) {
    return true;
  }
  bVar1 = Geometry_PointInPolygonCrossing(param_2,param_3,param_4);
  if (!bVar1) {
    if (param_4 != 0) {
      fVar9 = *param_2 - *param_1;
      uVar3 = 1;
      pfVar4 = param_3;
      do {
        uVar2 = uVar3;
        if (uVar3 == param_4) {
          uVar2 = 0;
        }
        fVar8 = *pfVar4 - param_3[uVar2 * 2];
        fVar7 = (pfVar4[1] - param_3[uVar2 * 2 + 1]) * fVar9 - fVar8 * (param_2[1] - param_1[1]);
        if (_DAT_0106e6ec <= ABS(fVar7)) {
          fVar7 = DAT_00f998f8 / fVar7;
          fVar5 = *pfVar4 - *param_1;
          fVar6 = pfVar4[1] - param_1[1];
          fVar8 = ((pfVar4[1] - param_3[uVar2 * 2 + 1]) * fVar5 - fVar6 * fVar8) * fVar7;
          fVar7 = (fVar6 * fVar9 - (param_2[1] - param_1[1]) * fVar5) * fVar7;
          if ((((0.0 <= fVar8) && (fVar8 <= DAT_00f998f8)) && (0.0 <= fVar7)) &&
             (fVar7 <= DAT_00f998f8)) {
            return true;
          }
        }
        pfVar4 = pfVar4 + 2;
        bVar1 = uVar3 < param_4;
        uVar3 = uVar3 + 1;
      } while (bVar1);
    }
    return false;
  }
  return true;
}

