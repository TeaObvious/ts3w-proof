/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. No parent: local setter; otherwise inverse parentquaternion
   times desired world quaternion, thenlocal setter. Inverse usesRCPPS andtwoNewton refinements; no
   zero-normguard visible. */

void __thiscall TransformComponent_SetWorldQuaternion(void *this,float *worldQuaternion)

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
  undefined1 in_XMM4 [16];
  undefined1 auVar11 [16];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
  if (*(int *)((int)this + 0x30) == 0) {
    TransformComponent_SetLocalQuaternion(this,worldQuaternion);
    return;
  }
  pfVar4 = TransformComponent_GetParentSlotQuaternionTranslation(this,&local_30);
  fVar1 = *pfVar4;
  fVar2 = pfVar4[1];
  fVar3 = pfVar4[2];
  fVar6 = pfVar4[3];
  fVar5 = fVar6 * fVar6 + fVar2 * fVar2 + fVar3 * fVar3 + fVar1 * fVar1;
  auVar11._4_4_ = fVar5;
  auVar11._0_4_ = fVar5;
  auVar11._8_4_ = fVar5;
  auVar11._12_4_ = fVar5;
  auVar11 = rcpps(in_XMM4,auVar11);
  fVar7 = (DAT_0103fd88 - auVar11._0_4_ * fVar5) * auVar11._0_4_;
  fVar8 = (DAT_0103fd88 - auVar11._4_4_ * fVar5) * auVar11._4_4_;
  fVar9 = (DAT_0103fd88 - auVar11._8_4_ * fVar5) * auVar11._8_4_;
  fVar10 = (DAT_0103fd88 - auVar11._12_4_ * fVar5) * auVar11._12_4_;
  fVar7 = (DAT_0103fd88 - fVar7 * fVar5) * fVar7 * -fVar1;
  fVar8 = (DAT_0103fd88 - fVar8 * fVar5) * fVar8 * -fVar2;
  fVar9 = (DAT_0103fd88 - fVar9 * fVar5) * fVar9 * -fVar3;
  fVar6 = (DAT_0103fd88 - fVar10 * fVar5) * fVar10 * fVar6;
  fVar1 = *worldQuaternion;
  fVar2 = worldQuaternion[1];
  fVar3 = worldQuaternion[2];
  fVar5 = worldQuaternion[3];
  local_30 = (fVar3 * fVar8 - fVar2 * fVar9) + fVar1 * fVar6 + fVar5 * fVar7;
  fStack_2c = (fVar1 * fVar9 - fVar3 * fVar7) + fVar2 * fVar6 + fVar5 * fVar8;
  fStack_28 = (fVar2 * fVar7 - fVar1 * fVar8) + fVar3 * fVar6 + fVar5 * fVar9;
  fStack_24 = fVar5 * fVar6 - (fVar3 * fVar9 + fVar2 * fVar8 + fVar1 * fVar7);
  TransformComponent_SetLocalQuaternion(this,&local_30);
  return;
}

