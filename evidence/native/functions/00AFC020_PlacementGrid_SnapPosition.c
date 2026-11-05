/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placement/source boundary. cdecl inputpointer,stepfloat,outputpointer three
   words/plainRET. Binary32 inverse=1/step, MULSS each firsttwo coordinates, FLD/FISTP under ambient
   x87roundcontrol, CVTSI2SS then MULSSstep. Thirdcoordinatecopied. Current X/Z vector helper uses
   nearest/ties-even explicitly; arbitrary original ambient roundcontrol not inferred. */

void __cdecl PlacementGrid_SnapPosition(float *param_1,float param_2,float *param_3)

{
  float fVar1;
  
  fVar1 = param_1[1];
  *param_3 = (float)(int)ROUND(*param_1 * (1.0 / param_2)) * param_2;
  param_3[1] = (float)(int)ROUND(fVar1 * (1.0 / param_2)) * param_2;
  param_3[2] = param_1[2];
  return;
}

