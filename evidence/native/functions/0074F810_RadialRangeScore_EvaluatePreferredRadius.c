/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Preferred-radius score uses squared XYZ distance from context
   center. Exact preferred squared returns1. Otherwise chooses inner/outer squared-span,
   computes1-abs(distanceSquared-preferredSquared)/span and clamps using original masks for finite
   values. Native x87 ST0 return; zero spans and NaN require original instructions. */

float10 __thiscall RadialRangeScore_EvaluatePreferredRadius(void *param_1,float *param_2)

{
  uint uVar1;
  float fVar2;
  float fVar3;
  
  fVar2 = param_2[1] - *(float *)((int)param_1 + 4);
  fVar3 = param_2[2] - *(float *)((int)param_1 + 8);
  fVar2 = fVar3 * fVar3 + fVar2 * fVar2 +
          (*param_2 - *(float *)param_1) * (*param_2 - *(float *)param_1);
  if (fVar2 == *(float *)((int)param_1 + 0x10)) {
    return (float10)1;
  }
  fVar2 = fVar2 - *(float *)((int)param_1 + 0x10);
  if (0.0 <= fVar2) {
    fVar3 = *(float *)((int)param_1 + 0x20);
  }
  else {
    fVar3 = *(float *)((int)param_1 + 0x1c);
  }
  fVar2 = DAT_00f998f8 - ABS(fVar2) / fVar3;
  fVar2 = (float)((uint)fVar2 & (int)(DAT_00f998f0 - fVar2) >> 0x1f);
  uVar1 = (int)(DAT_00f998f8 - fVar2) >> 0x1f;
  return (float10)(float)(~uVar1 & (uint)fVar2 | (uint)DAT_00f998f8 & uVar1);
}

