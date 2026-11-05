/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Virtual far-distance score
   is1-RouteScore_NormalizedNearDistance. Native return uses x87 ST0. */

float10 __thiscall RouteScore_NormalizedFarDistance(void *param_1,float *param_2)

{
  float10 fVar1;
  
  fVar1 = RouteScore_NormalizedNearDistance(param_1,param_2);
  return (float10)1 - fVar1;
}

