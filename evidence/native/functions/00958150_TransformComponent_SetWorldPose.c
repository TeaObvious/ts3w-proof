/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. ECXTransform, sole stack argument pointer32-bytepose; RET4.
   No meaningfulEDXargument. No parent: local setter; elseinverse parent rotation andtranslation
   tolocal pose, thenlocal setter. */

void __thiscall TransformComponent_SetWorldPose(void *this,float *worldPose)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float *pfVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined1 in_XMM4 [16];
  undefined1 auVar16 [16];
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30 [4];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (*(int *)((int)this + 0x30) == 0) {
    TransformComponent_SetLocalPose(this,worldPose);
    return;
  }
  pfVar4 = TransformComponent_GetParentSlotQuaternionTranslation(this,local_30);
  fVar8 = *pfVar4;
  fVar10 = pfVar4[1];
  fVar13 = pfVar4[2];
  fVar6 = pfVar4[3];
  fVar5 = fVar6 * fVar6 + fVar10 * fVar10 + fVar13 * fVar13 + fVar8 * fVar8;
  auVar16._4_4_ = fVar5;
  auVar16._0_4_ = fVar5;
  auVar16._8_4_ = fVar5;
  auVar16._12_4_ = fVar5;
  auVar16 = rcpps(in_XMM4,auVar16);
  fVar7 = (DAT_0103fd88 - auVar16._0_4_ * fVar5) * auVar16._0_4_;
  fVar9 = (DAT_0103fd88 - auVar16._4_4_ * fVar5) * auVar16._4_4_;
  fVar12 = (DAT_0103fd88 - auVar16._8_4_ * fVar5) * auVar16._8_4_;
  fVar15 = (DAT_0103fd88 - auVar16._12_4_ * fVar5) * auVar16._12_4_;
  fVar1 = pfVar4[4];
  fVar2 = pfVar4[5];
  fVar3 = pfVar4[6];
  fVar7 = (DAT_0103fd88 - fVar7 * fVar5) * fVar7 * -fVar8;
  fVar9 = (DAT_0103fd88 - fVar9 * fVar5) * fVar9 * -fVar10;
  fVar12 = (DAT_0103fd88 - fVar12 * fVar5) * fVar12 * -fVar13;
  fVar6 = (DAT_0103fd88 - fVar15 * fVar5) * fVar15 * fVar6;
  fVar8 = (fVar3 * fVar9 - fVar2 * fVar12) + fVar6 * fVar1;
  fVar10 = (fVar1 * fVar12 - fVar3 * fVar7) + fVar6 * fVar2;
  fVar13 = (fVar2 * fVar7 - fVar1 * fVar9) + fVar6 * fVar3;
  local_20 = 0.0 - ((fVar13 * fVar9 - fVar10 * fVar12) * DAT_0103fd88 + fVar1);
  fStack_1c = 0.0 - ((fVar8 * fVar12 - fVar13 * fVar7) * DAT_0103fd88 + fVar2);
  fStack_18 = 0.0 - ((fVar10 * fVar7 - fVar8 * fVar9) * DAT_0103fd88 + fVar3);
  fStack_14 = 0.0 - ((fVar8 * fVar7 - fVar8 * fVar7) * DAT_0103fd88 + pfVar4[7]);
  fVar8 = worldPose[4];
  fVar10 = worldPose[5];
  fVar13 = worldPose[6];
  fVar15 = (fVar13 * fVar9 - fVar10 * fVar12) + fVar8 * fVar6;
  fVar11 = (fVar8 * fVar12 - fVar13 * fVar7) + fVar10 * fVar6;
  fVar14 = (fVar10 * fVar7 - fVar8 * fVar9) + fVar13 * fVar6;
  fVar1 = *worldPose;
  fVar2 = worldPose[1];
  fVar3 = worldPose[2];
  fVar5 = worldPose[3];
  local_40 = (fVar14 * fVar9 - fVar11 * fVar12) * DAT_0103fd88 + fVar8 + local_20;
  fStack_3c = (fVar15 * fVar12 - fVar14 * fVar7) * DAT_0103fd88 + fVar10 + fStack_1c;
  fStack_38 = (fVar11 * fVar7 - fVar15 * fVar9) * DAT_0103fd88 + fVar13 + fStack_18;
  fStack_34 = (fVar15 * fVar7 - fVar15 * fVar7) * DAT_0103fd88 + worldPose[7] + fStack_14;
  local_50 = (fVar3 * fVar9 - fVar2 * fVar12) + fVar1 * fVar6 + fVar5 * fVar7;
  fStack_4c = (fVar1 * fVar12 - fVar3 * fVar7) + fVar2 * fVar6 + fVar5 * fVar9;
  fStack_48 = (fVar2 * fVar7 - fVar1 * fVar9) + fVar3 * fVar6 + fVar5 * fVar12;
  fStack_44 = fVar5 * fVar6 - (fVar3 * fVar12 + fVar2 * fVar9 + fVar1 * fVar7);
  TransformComponent_SetLocalPose(this,&local_50);
  return;
}

