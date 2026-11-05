/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 object screen-query original boundary review (2026-10-17). Complete111B34Listing. ECX
   bounds, two stack output pointers, RET8. Writes aligned four-lane midpoint, clamps half
   differences at0, squares all four lanes and reduces the first three as (z²+y²)+x² then square
   root into radius output. Native SSE order is not asserted bit-equivalent to current Vector3/JIT
   arithmetic. Original managed World facade and UInt64/Boolean forwarder remain authoritative. IDs,
   physical ABI, inferred prototypes/types, body/bytes/Listing/flow/references and analysis state
   remain unchanged. */

void __thiscall Bounds_WriteCenterAndRadius(void *this,float *param_1,undefined4 *param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fVar9;
  undefined4 local_20;
  
  fVar9 = *(float *)((int)this + 0x14);
  fVar1 = *(float *)((int)this + 0x18);
  fVar2 = *(float *)((int)this + 0x1c);
  fVar3 = *(float *)((int)this + 4);
  fVar4 = *(float *)((int)this + 8);
  fVar5 = *(float *)((int)this + 0xc);
  *param_1 = (*(float *)this + *(float *)((int)this + 0x10)) * 0.5;
  param_1[1] = (fVar3 + fVar9) * 0.5;
  param_1[2] = (fVar4 + fVar1) * 0.5;
  param_1[3] = (fVar5 + fVar2) * 0.5;
  auVar6._0_4_ = (*(float *)((int)this + 0x10) - *(float *)this) * 0.5;
  auVar6._4_4_ = (*(float *)((int)this + 0x14) - *(float *)((int)this + 4)) * 0.5;
  auVar6._8_4_ = (*(float *)((int)this + 0x18) - *(float *)((int)this + 8)) * 0.5;
  auVar6._12_4_ = (*(float *)((int)this + 0x1c) - *(float *)((int)this + 0xc)) * 0.5;
  auVar7 = maxps(auVar6,ZEXT816(0));
  auVar8._0_4_ = auVar7._0_4_ * auVar7._0_4_;
  auVar8._4_4_ = auVar7._4_4_ * auVar7._4_4_;
  auVar8._8_4_ = auVar7._8_4_ * auVar7._8_4_;
  auVar8._12_4_ = auVar7._12_4_ * auVar7._12_4_;
  fVar9 = auVar8._8_4_ + auVar8._4_4_ + auVar8._0_4_;
  auVar7._4_4_ = fVar9;
  auVar7._0_4_ = fVar9;
  auVar7._8_4_ = fVar9;
  auVar7._12_4_ = fVar9;
  auVar7 = sqrtps(auVar8,auVar7);
  local_20 = auVar7._0_4_;
  *param_2 = local_20;
  return;
}

