/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). stdcall RET12, AL.
   Returns on first polygon/disc overlap. Original stack radius stays unchanged across calls;
   decompiler extraout_ST0 does not establish radius mutation. */

bool Geometry_DiscOverlapsAnyPolygon(int *param_1,float *param_2,float param_3)

{
  bool bVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  float10 fVar5;
  float10 extraout_ST0;
  
  piVar2 = (int *)*param_1;
  uVar4 = 0;
  uVar3 = param_1[1] - (int)piVar2 >> 4;
  if (uVar3 != 0) {
    fVar5 = (float10)param_3;
    do {
      bVar1 = Geometry_DiscOverlapsPolygon(piVar2,param_2,(float)fVar5);
      if (bVar1) {
        return true;
      }
      uVar4 = uVar4 + 1;
      piVar2 = piVar2 + 4;
      fVar5 = extraout_ST0;
    } while (uVar4 < uVar3);
  }
  return false;
}

