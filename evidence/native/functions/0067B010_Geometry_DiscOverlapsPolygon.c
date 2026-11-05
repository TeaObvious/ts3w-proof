/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET12, AL.
   First tests center with strict-X kernel. Otherwise tests closed polygon edges and accepts squared
   point-to-edge distance <= radius squared. Projection uses start endpoint when <=0, end endpoint
   when >edgeLengthSquared, interpolation otherwise. Zero-length edges use endpoint path. */

bool Geometry_DiscOverlapsPolygon(int *param_1,float *param_2,float param_3)

{
  float fVar1;
  float *pfVar2;
  float *pfVar3;
  bool bVar4;
  float *pfVar5;
  float *pfVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  
  bVar4 = Geometry_PointInPolygonRayCrossingStrictX(param_1,param_2);
  if (!bVar4) {
    pfVar2 = (float *)param_1[1];
    if ((float *)*param_1 == pfVar2) {
      return bVar4;
    }
    pfVar3 = (float *)*param_1;
    pfVar6 = pfVar2 + -2;
    while( true ) {
      pfVar5 = pfVar3;
      fVar1 = *pfVar6;
      fVar10 = pfVar6[1];
      fVar7 = *pfVar5 - fVar1;
      fVar12 = pfVar5[1] - fVar10;
      fVar8 = (*param_2 - fVar1) * fVar7 + (param_2[1] - fVar10) * fVar12;
      fVar9 = fVar1;
      if ((0.0 < fVar8) &&
         (fVar11 = fVar7 * fVar7 + fVar12 * fVar12, fVar10 = pfVar5[1], fVar9 = *pfVar5,
         fVar8 <= fVar11)) {
        fVar8 = fVar8 / fVar11;
        fVar10 = pfVar6[1] + fVar8 * fVar12;
        fVar9 = fVar1 + fVar7 * fVar8;
      }
      fVar9 = *param_2 - fVar9;
      fVar10 = param_2[1] - fVar10;
      if (fVar9 * fVar9 + fVar10 * fVar10 <= param_3 * param_3) break;
      pfVar3 = pfVar5 + 2;
      pfVar6 = pfVar5;
      if (pfVar5 + 2 == pfVar2) {
        return false;
      }
    }
  }
  return true;
}

