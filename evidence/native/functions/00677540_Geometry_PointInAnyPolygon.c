/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET8, AL.
   Walks 0x10-byte vertex-vector descriptors, returns on first strict-X point containment hit. */

bool Geometry_PointInAnyPolygon(int *param_1,float *param_2)

{
  bool bVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  
  piVar2 = (int *)*param_1;
  uVar4 = 0;
  uVar3 = param_1[1] - (int)piVar2 >> 4;
  if (uVar3 != 0) {
    do {
      bVar1 = Geometry_PointInPolygonRayCrossingStrictX(piVar2,param_2);
      if (bVar1) {
        return true;
      }
      uVar4 = uVar4 + 1;
      piVar2 = piVar2 + 4;
    } while (uVar4 < uVar3);
  }
  return false;
}

