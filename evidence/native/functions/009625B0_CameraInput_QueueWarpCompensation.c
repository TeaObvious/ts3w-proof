/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Stores anchor-minus-event warp compensation at input+520/+524 (duplicate
   SIMD lanes+528/+52C) only when its squared magnitude exceeds queued compensation. Drag aggregator
   adds it to anchor/previous before computing motion and clears it after aggregation. */

void __thiscall CameraInput_QueueWarpCompensation(void *this,float param_1,float param_2)

{
  float fVar4;
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  float fVar5;
  float fVar6;

  auVar3._0_4_ = param_1 * param_1;
  fVar4 = param_2 * param_2;
  auVar3._4_4_ = auVar3._0_4_;
  auVar3._8_4_ = auVar3._0_4_;
  auVar3._12_4_ = auVar3._0_4_;
  fVar5 = *(float *)((int)this + 0x520) * *(float *)((int)this + 0x520);
  fVar6 = *(float *)((int)this + 0x524) * *(float *)((int)this + 0x524);
  auVar1._4_4_ = fVar4 + auVar3._0_4_;
  auVar1._0_4_ = fVar4 + auVar3._0_4_;
  auVar1._8_4_ = fVar4 + auVar3._0_4_;
  auVar1._12_4_ = fVar4 + auVar3._0_4_;
  auVar1 = sqrtps(auVar3,auVar1);
  auVar2._0_4_ = fVar6 + fVar5;
  auVar2._4_4_ = fVar6 + fVar5;
  auVar2._8_4_ = fVar6 + fVar5;
  auVar2._12_4_ = fVar6 + fVar5;
  auVar3 = sqrtps(auVar2,auVar2);
  if (auVar3._0_4_ < auVar1._0_4_) {
    *(float *)((int)this + 0x520) = param_1;
    *(float *)((int)this + 0x524) = param_2;
    *(float *)((int)this + 0x528) = param_1;
    *(float *)((int)this + 0x52c) = param_1;
  }
  return;
}

