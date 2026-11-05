/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl AL. Strict
   overlap of precomputed X/Z AABBs; merely touching bounds reject. Nonempty polygons then use edge
   intersections with determinant threshold
   max(min(XwidthA,XwidthB)*float(0x00fb35b4),float(0x01018b50)). Segment parameters are inclusive
   0..1. Fallback tests containment both directions and equal-length cyclic vertices via 0x007ce9a0.
   Pointer-typed floating locals are decompiler artifacts.
   
   PC1.67 original static instructions. cdecl4DWORDargs/RET; AL only. Original parameter solver
   computes one binary32 reciprocal DIVSS at7CEC21 then two MULSS at7CEC5D/65. Direct
   numerator/determinant divisions can differ at rounding boundaries. Strict bounds reject edge-only
   contact; reciprocal, SSE and x87 determinant comparisons are exact instruction contracts, not
   generic epsilon folklore. Empty polygon rejection follows admitted bounds. Child
   containment/cyclic comparison boundaries unchanged. */

bool __cdecl
Geometry_PolygonsIntersectWithBounds
          (undefined4 *param_1,float *param_2,undefined4 *param_3,float *param_4)

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  float **ppfVar4;
  float **ppfVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  float *pfVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float *local_14;
  float local_10;
  float local_c;
  uint local_8;
  uint local_4;
  
  if (*param_4 < param_2[2]) {
    if (((*param_2 < param_4[2]) && (param_4[1] <= param_2[3] && param_2[3] != param_4[1])) &&
       (param_2[1] <= param_4[3] && param_4[3] != param_2[1])) {
      pfVar2 = (float *)*param_1;
      pfVar3 = (float *)*param_3;
      uVar11 = param_1[1] - (int)pfVar2 >> 3;
      uVar10 = param_3[1] - (int)pfVar3 >> 3;
      local_4 = uVar11;
      if ((uVar11 == 0) || (uVar10 == 0)) {
        return false;
      }
      param_4 = (float *)(param_4[2] - *param_4);
      local_14 = (float *)(param_2[2] - *param_2);
      ppfVar4 = &param_4;
      if ((float)local_14 <= (float)param_4) {
        ppfVar4 = &local_14;
      }
      param_4 = (float *)((float)*ppfVar4 * 0.001);
      ppfVar5 = (float **)&DAT_01018b50;
      if (1.1920929e-07 <= (float)*ppfVar4 * 0.001) {
        ppfVar5 = &param_4;
      }
      pfVar1 = *ppfVar5;
      uVar12 = 0;
      param_4 = pfVar1;
      if (uVar11 != 0) {
        do {
          local_8 = uVar12 + 1;
          uVar6 = local_8;
          if (local_8 == uVar11) {
            uVar6 = 0;
          }
          if (uVar10 != 0) {
            local_14 = (float *)pfVar2[uVar6 * 2 + 1];
            local_c = pfVar2[uVar12 * 2];
            local_10 = (float)local_14 - pfVar2[uVar12 * 2 + 1];
            uVar8 = 1;
            pfVar9 = pfVar3;
            do {
              uVar7 = uVar8;
              if (uVar8 == uVar10) {
                uVar7 = 0;
              }
              fVar17 = *pfVar9 - pfVar3[uVar7 * 2];
              param_4 = (float *)((pfVar9[1] - pfVar3[uVar7 * 2 + 1]) *
                                  (pfVar2[uVar6 * 2] - local_c) - local_10 * fVar17);
              if ((float)pfVar1 <= ABS((float)param_4)) {
                fVar14 = *pfVar9 - local_c;
                fVar15 = pfVar9[1] - pfVar2[uVar12 * 2 + 1];
                fVar16 = ((pfVar9[1] - pfVar3[uVar7 * 2 + 1]) * fVar14 - fVar15 * fVar17) *
                         (1.0 / (float)param_4);
                fVar17 = (fVar15 * (pfVar2[uVar6 * 2] - local_c) -
                         ((float)local_14 - pfVar2[uVar12 * 2 + 1]) * fVar14) *
                         (1.0 / (float)param_4);
                if (((0.0 <= fVar16) && (fVar16 <= 1.0)) && ((0.0 <= fVar17 && (fVar17 <= 1.0)))) {
                  return true;
                }
              }
              pfVar9 = pfVar9 + 2;
              bVar13 = uVar8 < uVar10;
              uVar8 = uVar8 + 1;
            } while (bVar13);
          }
          uVar12 = local_8;
        } while (local_8 < uVar11);
      }
      bVar13 = Geometry_PointInPolygonCrossing(pfVar2,pfVar3,uVar10);
      if (((!bVar13) && (bVar13 = Geometry_PointInPolygonCrossing(pfVar3,pfVar2,uVar11), !bVar13))
         && ((uVar11 != uVar10 ||
             (bVar13 = Geometry_PolygonsEqualCyclicTolerance(param_1,param_3), !bVar13)))) {
        return false;
      }
      return true;
    }
  }
  return false;
}

