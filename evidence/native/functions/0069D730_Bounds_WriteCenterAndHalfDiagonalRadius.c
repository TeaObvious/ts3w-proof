/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 Physical ECX aligned16-byte output plus aligned32-byte min/max rows, RET04; no
   return pointer claimed. SSE computes squared differences, reduces (dz*dz+dy*dy)+dx*dx, SQRTPS,
   and assembles center xyz=(min+max)*0.5 plus radius=length(max-min)*0.5 into one MOVAPS. Actual
   binary32 half constant at00F9B5B4 is3F000000. No invalid/finite check occurs here; actual006FC960
   handles its selected X invalid/unordered branch before calling this helper. */

void __thiscall Bounds_WriteCenterAndHalfDiagonalRadius(void *this,float *param_1)

{
  float fVar1;
  float fVar3;
  float fVar4;
  undefined1 auVar2 [16];
  
  fVar1 = param_1[4] - *param_1;
  fVar3 = param_1[5] - param_1[1];
  fVar4 = param_1[6] - param_1[2];
  auVar2._0_4_ = fVar4 * fVar4 + fVar3 * fVar3 + fVar1 * fVar1;
  auVar2._4_4_ = auVar2._0_4_;
  auVar2._8_4_ = auVar2._0_4_;
  auVar2._12_4_ = auVar2._0_4_;
  auVar2 = sqrtps(auVar2,auVar2);
  fVar1 = (param_1[1] + param_1[5]) * _DAT_00f9b5b4;
  fVar3 = (param_1[2] + param_1[6]) * _DAT_00f9b5b4;
  fVar4 = auVar2._12_4_ * _DAT_00f9b5b4;
  *(float *)this = (*param_1 + param_1[4]) * _DAT_00f9b5b4;
  *(float *)((int)this + 4) = fVar1;
  *(float *)((int)this + 8) = fVar3;
  *(float *)((int)this + 0xc) = fVar4;
  return;
}

