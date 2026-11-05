/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67: derives a normalized saved position-to-target ray; for a sufficiently
   nonhorizontal ray it uses current-minus-saved altitude to project a displacement along that ray,
   then clamps horizontal components to ±10 before adding them to the saved position. This endpoint
   is used by smooth fly preset recall; exact visual motion was not observed. Raw instruction proof:
   00967520_FlyCamera_AdjustSmoothRecallEndpoint.asm. Reference
   original PC 1.67 TS3W.exe. */

void __thiscall
FlyCamera_AdjustSmoothRecallEndpoint(void *this,float *param_1,float *param_2,float *param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar13;
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar14;
  float fVar16;
  float fVar17;
  undefined1 auVar15 [16];
  undefined1 in_XMM5 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  
  fVar1 = param_2[1];
  fVar2 = param_2[2];
  fVar3 = param_2[3];
  fVar4 = param_3[3];
  fVar14 = *param_2 - *param_3;
  fVar16 = fVar1 - param_3[1];
  fVar17 = fVar2 - param_3[2];
  fVar5 = fVar17 * fVar17 + fVar16 * fVar16 + fVar14 * fVar14;
  auVar18._4_4_ = fVar5;
  auVar18._0_4_ = fVar5;
  auVar18._8_4_ = fVar5;
  auVar18._12_4_ = fVar5;
  auVar18 = rsqrtps(in_XMM5,auVar18);
  auVar11._0_4_ = auVar18._0_4_;
  fVar7 = auVar18._4_4_;
  fVar8 = auVar18._8_4_;
  fVar9 = auVar18._12_4_;
  auVar11._0_4_ =
       (DAT_00f998f8 - auVar11._0_4_ * auVar11._0_4_ * fVar5) * _DAT_00f9b5b4 * auVar11._0_4_ +
       auVar11._0_4_;
  fVar7 = (DAT_00f998f8 - fVar7 * fVar7 * fVar5) * _DAT_00f9b5b4 * fVar7 + fVar7;
  fVar8 = (DAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8;
  fVar9 = (DAT_00f998f8 - fVar9 * fVar9 * fVar5) * _DAT_00f9b5b4 * fVar9 + fVar9;
  fVar13 = _DAT_00f9b5b4 * fVar9;
  fVar6 = DAT_00f998f8 - fVar9 * fVar9 * fVar5;
  fVar16 = ((DAT_00f998f8 - fVar7 * fVar7 * fVar5) * _DAT_00f9b5b4 * fVar7 + fVar7) * fVar16;
  fVar7 = *(float *)((int)this + 0x604) - param_2[1];
  auVar10._4_4_ = fVar16;
  auVar10._0_4_ = fVar16;
  auVar10._8_4_ = fVar16;
  auVar10._12_4_ = fVar16;
  auVar19._0_4_ = DAT_00fab218 * fVar16;
  auVar19._4_4_ = DAT_00fab218 * fVar16;
  auVar19._8_4_ = DAT_00fab218 * fVar16;
  auVar19._12_4_ = DAT_00fab218 * fVar16;
  auVar18 = maxps(auVar19,auVar10);
  if (_DAT_00f9e2c8 < auVar18._0_4_) {
    fVar7 = fVar7 / fVar16;
  }
  auVar11._0_4_ =
       fVar7 * ((DAT_00f998f8 - auVar11._0_4_ * auVar11._0_4_ * fVar5) *
                _DAT_00f9b5b4 * auVar11._0_4_ + auVar11._0_4_) * fVar14;
  fVar5 = fVar7 * ((DAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8) * fVar17;
  auVar11._4_4_ = auVar11._0_4_;
  auVar11._8_4_ = auVar11._0_4_;
  auVar11._12_4_ = auVar11._0_4_;
  auVar15._0_4_ = DAT_00fab218 * auVar11._0_4_;
  auVar15._4_4_ = DAT_00fab218 * auVar11._0_4_;
  auVar15._8_4_ = DAT_00fab218 * auVar11._0_4_;
  auVar15._12_4_ = DAT_00fab218 * auVar11._0_4_;
  auVar18 = maxps(auVar15,auVar11);
  if (DAT_00f998f4 < auVar18._0_4_) {
    auVar11._0_4_ =
         (float)(-(uint)(auVar11._0_4_ < 0.0) & (uint)DAT_00fab218 |
                -(uint)(0.0 < auVar11._0_4_) & (uint)DAT_00f998f8) * DAT_00f998f4;
  }
  auVar20._4_4_ = fVar5;
  auVar20._0_4_ = fVar5;
  auVar20._8_4_ = fVar5;
  auVar20._12_4_ = fVar5;
  auVar12._0_4_ = DAT_00fab218 * fVar5;
  auVar12._4_4_ = DAT_00fab218 * fVar5;
  auVar12._8_4_ = DAT_00fab218 * fVar5;
  auVar12._12_4_ = DAT_00fab218 * fVar5;
  auVar18 = maxps(auVar12,auVar20);
  if (DAT_00f998f4 < auVar18._0_4_) {
    fVar5 = (float)(-(uint)(fVar5 < 0.0) & (uint)DAT_00fab218 |
                   -(uint)(0.0 < fVar5) & (uint)DAT_00f998f8) * DAT_00f998f4;
  }
  *param_1 = *param_2 + auVar11._0_4_;
  param_1[1] = fVar1 + fVar7 * fVar16;
  param_1[2] = fVar2 + fVar5;
  param_1[3] = fVar3 + fVar7 * (fVar6 * fVar13 + fVar9) * (fVar3 - fVar4);
  return;
}

