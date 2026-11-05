/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Returns squared XYZ distance when normalizer<=0;
   otherwise1-clamp(distanceSquared/normalizer,0,1) for ordinary finite values. Decompiler displays
   bit-casts/sign masks used by original clamp; do not implement displayed pointer/int casts
   literally. 0074ca10 returns1-this value. */

float10 __thiscall RouteScore_NormalizedNearDistance(void *param_1,float *param_2)

{
  uint uVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  
  fVar2 = *param_2 - *(float *)((int)param_1 + 0x10);
  fVar3 = param_2[1] - *(float *)((int)param_1 + 0x14);
  fVar4 = param_2[2] - *(float *)((int)param_1 + 0x18);
  fVar2 = fVar4 * fVar4 + fVar3 * fVar3 + fVar2 * fVar2;
  if (*(float *)((int)param_1 + 0x20) <= 0.0) {
    return (float10)fVar2;
  }
  fVar2 = fVar2 / *(float *)((int)param_1 + 0x20);
  fVar2 = (float)((uint)fVar2 & (int)(DAT_00f998f0 - fVar2) >> 0x1f);
  uVar1 = (int)(DAT_00f998f8 - fVar2) >> 0x1f;
  return (float10)1 - (float10)(float)(~uVar1 & (uint)fVar2 | (uint)DAT_00f998f8 & uVar1);
}

