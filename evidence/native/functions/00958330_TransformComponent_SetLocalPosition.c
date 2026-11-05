/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Ignore whenabsoluteXYZ deltas<=2^-16; Wignored. Otherwise
   orderedfinite rangegate thenlarge-displacement notification, store 16-byte translation,
   notifyevent0e. */

void __thiscall TransformComponent_SetLocalPosition(void *this,float *localPosition)

{
  bool bVar1;
  undefined4 in_EAX;
  undefined4 uVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  fVar6 = *localPosition - *(float *)((int)this + 0x20);
  fVar7 = localPosition[1] - *(float *)((int)this + 0x24);
  fVar8 = localPosition[2] - *(float *)((int)this + 0x28);
  fVar9 = localPosition[3] - *(float *)((int)this + 0x2c);
  auVar3._0_4_ = DAT_00fab218 * fVar6;
  auVar3._4_4_ = DAT_00fab218 * fVar7;
  auVar3._8_4_ = DAT_00fab218 * fVar8;
  auVar3._12_4_ = DAT_00fab218 * fVar9;
  auVar4._4_4_ = fVar7;
  auVar4._0_4_ = fVar6;
  auVar4._8_4_ = fVar8;
  auVar4._12_4_ = fVar9;
  auVar4 = maxps(auVar3,auVar4);
  auVar5._4_4_ = -(uint)(auVar4._4_4_ <= DAT_0104581c);
  auVar5._0_4_ = -(uint)(auVar4._0_4_ <= DAT_0104581c);
  auVar5._8_4_ = -(uint)(auVar4._8_4_ <= DAT_0104581c);
  auVar5._12_4_ = -(uint)(auVar4._12_4_ <= DAT_0104581c);
  uVar2 = movmskps(in_EAX,auVar5);
  if (((byte)uVar2 & 7) != 7) {
    bVar1 = TransformComponent_PositionWithinFiniteRange(localPosition);
    if (bVar1) {
      TransformComponent_NotifyLargePositionChange(this,localPosition);
      fVar6 = localPosition[1];
      fVar7 = localPosition[2];
      fVar8 = localPosition[3];
      *(float *)((int)this + 0x20) = *localPosition;
      *(float *)((int)this + 0x24) = fVar6;
      *(float *)((int)this + 0x28) = fVar7;
      *(float *)((int)this + 0x2c) = fVar8;
      TransformComponent_NotifyPoseChanged(this);
    }
  }
  return;
}

