/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. No parent delegates local setter (includingfinite-rangegate).
   Withparent resolvesparentpose, conjugate/norminverse viaRCPPS plus two refinementsteps,
   convertsworld to local, comparesXYZepsilon2^-16 and storesdirectly. Parentedpath does not
   call00955f40/009561a0. */

void __thiscall TransformComponent_SetWorldPosition(void *this,float *worldPosition)

{
  undefined1 auVar1 [16];
  float *pfVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 in_XMM4 [16];
  undefined1 auVar18 [16];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (*(int *)((int)this + 0x30) == 0) {
    TransformComponent_SetLocalPosition(this,worldPosition);
    return;
  }
  pfVar2 = TransformComponent_GetParentSlotQuaternionTranslation(this,&local_30);
  fVar4 = fStack_24 * fStack_24 + fStack_2c * fStack_2c +
          fStack_28 * fStack_28 + local_30 * local_30;
  auVar18._4_4_ = fVar4;
  auVar18._0_4_ = fVar4;
  auVar18._8_4_ = fVar4;
  auVar18._12_4_ = fVar4;
  auVar18 = rcpps(in_XMM4,auVar18);
  fVar7 = (DAT_0103fd88 - auVar18._0_4_ * fVar4) * auVar18._0_4_;
  fVar11 = (DAT_0103fd88 - auVar18._4_4_ * fVar4) * auVar18._4_4_;
  fVar14 = (DAT_0103fd88 - auVar18._8_4_ * fVar4) * auVar18._8_4_;
  fVar17 = (DAT_0103fd88 - auVar18._12_4_ * fVar4) * auVar18._12_4_;
  fVar5 = (DAT_0103fd88 - fVar7 * fVar4) * fVar7 * -local_30;
  fVar6 = (DAT_0103fd88 - fVar11 * fVar4) * fVar11 * -fStack_2c;
  fVar14 = (DAT_0103fd88 - fVar14 * fVar4) * fVar14 * -fStack_28;
  fStack_24 = (DAT_0103fd88 - fVar17 * fVar4) * fVar17 * fStack_24;
  fVar17 = (fStack_18 * fVar6 - fStack_1c * fVar14) + fStack_24 * local_20;
  fVar12 = (local_20 * fVar14 - fStack_18 * fVar5) + fStack_24 * fStack_1c;
  fVar15 = (fStack_1c * fVar5 - local_20 * fVar6) + fStack_24 * fStack_18;
  fVar4 = *worldPosition;
  fVar7 = worldPosition[1];
  fVar11 = worldPosition[2];
  fVar8 = (fVar11 * fVar6 - fVar7 * fVar14) + fVar4 * fStack_24;
  fVar13 = (fVar4 * fVar14 - fVar11 * fVar5) + fVar7 * fStack_24;
  fVar16 = (fVar7 * fVar5 - fVar4 * fVar6) + fVar11 * fStack_24;
  fVar4 = (fVar16 * fVar6 - fVar13 * fVar14) * DAT_0103fd88 + fVar4 +
          (0.0 - ((fVar15 * fVar6 - fVar12 * fVar14) * DAT_0103fd88 + local_20));
  fVar7 = (fVar8 * fVar14 - fVar16 * fVar5) * DAT_0103fd88 + fVar7 +
          (0.0 - ((fVar17 * fVar14 - fVar15 * fVar5) * DAT_0103fd88 + fStack_1c));
  fVar11 = (fVar13 * fVar5 - fVar8 * fVar6) * DAT_0103fd88 + fVar11 +
           (0.0 - ((fVar12 * fVar5 - fVar17 * fVar6) * DAT_0103fd88 + fStack_18));
  fVar5 = (fVar8 * fVar5 - fVar8 * fVar5) * DAT_0103fd88 + worldPosition[3] +
          (0.0 - ((fVar17 * fVar5 - fVar17 * fVar5) * DAT_0103fd88 + fStack_14));
  fVar6 = fVar4 - *(float *)((int)this + 0x20);
  fVar14 = fVar7 - *(float *)((int)this + 0x24);
  fVar17 = fVar11 - *(float *)((int)this + 0x28);
  fVar8 = fVar5 - *(float *)((int)this + 0x2c);
  auVar9._0_4_ = DAT_00fab218 * fVar6;
  auVar9._4_4_ = DAT_00fab218 * fVar14;
  auVar9._8_4_ = DAT_00fab218 * fVar17;
  auVar9._12_4_ = DAT_00fab218 * fVar8;
  auVar1._4_4_ = fVar14;
  auVar1._0_4_ = fVar6;
  auVar1._8_4_ = fVar17;
  auVar1._12_4_ = fVar8;
  auVar18 = maxps(auVar9,auVar1);
  auVar10._4_4_ = -(uint)(auVar18._4_4_ <= DAT_0104581c);
  auVar10._0_4_ = -(uint)(auVar18._0_4_ <= DAT_0104581c);
  auVar10._8_4_ = -(uint)(auVar18._8_4_ <= DAT_0104581c);
  auVar10._12_4_ = -(uint)(auVar18._12_4_ <= DAT_0104581c);
  uVar3 = movmskps(pfVar2,auVar10);
  if (((byte)uVar3 & 7) != 7) {
    *(float *)((int)this + 0x20) = fVar4;
    *(float *)((int)this + 0x24) = fVar7;
    *(float *)((int)this + 0x28) = fVar11;
    *(float *)((int)this + 0x2c) = fVar5;
    TransformComponent_NotifyPoseChanged(this);
  }
  return;
}

