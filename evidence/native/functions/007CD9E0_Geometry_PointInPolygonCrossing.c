/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). AL return, cdecl.
   Float2 ray crossing with previous=last. Uses previousZ>=pointZ and currentZ>=pointZ; when side
   booleans differ toggles iff ((currentZ-pointZ)*(previousX-currentX) >=
   (previousZ-currentZ)*(currentX-pointX)) equals current-side boolean. COMISS/JC defines finite
   ordered inequalities; no epsilon and no universal boundary-inclusion guarantee. Reads last vertex
   before count-zero gate; requires valid nonempty input.
   
   PC1.67 original static instructions. cdecl3DWORDargs/RET; AL only. Cross-product comparator uses
   COMISS/JC and side equality, no tolerance. Point Z side is vertexZ>=pointZ for ordered finite
   inputs. Reads last vertex before zero-count check, so empty pointer input is not a safe public
   contract. Native exact nonfinite/FPU exception behavior must not be replaced with a generic
   boundary-inclusion promise. */

bool __cdecl Geometry_PointInPolygonCrossing(float *param_1,float *param_2,int param_3)

{
  float fVar1;
  bool bVar2;
  float *pfVar3;
  bool bVar4;
  bool bVar5;
  
  fVar1 = param_1[1];
  bVar5 = false;
  pfVar3 = param_2 + param_3 * 2 + -2;
  bVar4 = fVar1 <= param_2[param_3 * 2 + -1];
  while (param_3 != 0) {
    param_3 = param_3 + -1;
    bVar2 = fVar1 <= param_2[1];
    if ((bVar4 != bVar2) &&
       ((pfVar3[1] - param_2[1]) * (*param_2 - *param_1) <=
        (param_2[1] - fVar1) * (*pfVar3 - *param_2) == bVar2)) {
      bVar5 = bVar5 == false;
    }
    pfVar3 = param_2;
    param_2 = param_2 + 2;
    bVar4 = bVar2;
  }
  return bVar5;
}

