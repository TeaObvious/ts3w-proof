/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Returns negative1 when the first endpoint-handle length is
   below1e-5. Otherwise computes the absolute2D cross-product based endpoint curvature. The global
   permitted curvature threshold is runtime data; its on-disk zero is not a recovered active tuning
   default. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

float10 CAW_RoadSplineEndpointCurvature(float *param_1,float *param_2,float *param_3)

{
  float10 fVar1;
  float fVar2;
  float fVar3;
  float fVar6;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  float local_30;
  
  fVar2 = *param_1 - *param_2;
  fVar3 = param_1[1] - param_2[1];
  auVar4._0_4_ = fVar2 * fVar2;
  fVar6 = fVar3 * fVar3;
  auVar4._4_4_ = auVar4._0_4_;
  auVar4._8_4_ = auVar4._0_4_;
  auVar4._12_4_ = auVar4._0_4_;
  auVar5._4_4_ = fVar6 + auVar4._0_4_;
  auVar5._0_4_ = fVar6 + auVar4._0_4_;
  auVar5._8_4_ = fVar6 + auVar4._0_4_;
  auVar5._12_4_ = fVar6 + auVar4._0_4_;
  auVar5 = sqrtps(auVar4,auVar5);
  local_30 = auVar5._0_4_;
  if (local_30 < DAT_10abefe8) {
    return (float10)DAT_10aae184;
  }
  fVar1 = (float10)local_30;
  return ((ABS((float10)((param_2[1] - param_3[1]) * fVar2 - fVar3 * (*param_2 - *param_3))) / fVar1
          ) * (float10)DAT_10abef98) / (fVar1 * fVar1);
}

