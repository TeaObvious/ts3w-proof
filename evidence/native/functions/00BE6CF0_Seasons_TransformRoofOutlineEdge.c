/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_TransformRoofOutlineEdge:


/* Analyst-assigned name. Converts roof-outline start/end through lot transform, returns world start
   and direction normalized by horizontalXZ length. Vertical component retains slope; normalization
   is SIMD rsqrt with Newton refinements. Attachment placement advances separately along the
   original 3D line. */

void __thiscall
Seasons_TransformRoofOutlineEdge
          (void *this,float *param_1,float *param_2,float *param_3,float *param_4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float *pfVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined1 in_XMM4 [16];
  undefined1 auVar17 [16];

  fVar4 = *param_1;
  fVar5 = param_1[1];
  fVar6 = param_1[2];
  pfVar7 = (float *)FUN_00adf630(*(int *)((int)this + 0x28));
  fVar11 = pfVar7[5];
  fVar12 = pfVar7[6];
  fVar13 = pfVar7[7];
  fVar8 = pfVar7[1];
  fVar9 = pfVar7[2];
  fVar10 = pfVar7[3];
  fVar14 = pfVar7[9];
  fVar15 = pfVar7[10];
  fVar16 = pfVar7[0xb];
  fVar1 = pfVar7[0xd];
  fVar2 = pfVar7[0xe];
  fVar3 = pfVar7[0xf];
  *param_3 = fVar5 * pfVar7[4] + fVar4 * *pfVar7 + fVar6 * pfVar7[8] + pfVar7[0xc] * 1.0;
  param_3[1] = fVar5 * fVar11 + fVar4 * fVar8 + fVar6 * fVar14 + fVar1 * 1.0;
  param_3[2] = fVar5 * fVar12 + fVar4 * fVar9 + fVar6 * fVar15 + fVar2 * 1.0;
  param_3[3] = fVar5 * fVar13 + fVar4 * fVar10 + fVar6 * fVar16 + fVar3 * 1.0;
  fVar11 = *param_2;
  fVar12 = param_2[1];
  fVar13 = param_2[2];
  pfVar7 = (float *)FUN_00adf630(*(int *)((int)this + 0x28));
  fVar8 = (fVar12 * pfVar7[4] + fVar11 * *pfVar7 + fVar13 * pfVar7[8] + pfVar7[0xc] * 1.0) -
          *param_3;
  fVar9 = (fVar12 * pfVar7[5] + fVar11 * pfVar7[1] + fVar13 * pfVar7[9] + pfVar7[0xd] * 1.0) -
          param_3[1];
  fVar10 = (fVar12 * pfVar7[6] + fVar11 * pfVar7[2] + fVar13 * pfVar7[10] + pfVar7[0xe] * 1.0) -
           param_3[2];
  fVar11 = (fVar12 * pfVar7[7] + fVar11 * pfVar7[3] + fVar13 * pfVar7[0xb] + pfVar7[0xf] * 1.0) -
           param_3[3];
  fVar12 = fVar10 * fVar10 + 0.0 + fVar8 * fVar8;
  *param_4 = fVar8;
  param_4[1] = fVar9;
  param_4[2] = fVar10;
  param_4[3] = fVar11;
  auVar17._4_4_ = fVar12;
  auVar17._0_4_ = fVar12;
  auVar17._8_4_ = fVar12;
  auVar17._12_4_ = fVar12;
  auVar17 = rsqrtps(in_XMM4,auVar17);
  fVar13 = auVar17._0_4_;
  fVar14 = auVar17._4_4_;
  fVar15 = auVar17._8_4_;
  fVar16 = auVar17._12_4_;
  fVar13 = (1.0 - fVar13 * fVar13 * fVar12) * fVar13 * 0.5 + fVar13;
  fVar14 = (1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14;
  fVar15 = (1.0 - fVar15 * fVar15 * fVar12) * fVar15 * 0.5 + fVar15;
  fVar16 = (1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16;
  *param_4 = ((1.0 - fVar13 * fVar13 * fVar12) * fVar13 * 0.5 + fVar13) * fVar8;
  param_4[1] = ((1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14) * fVar9;
  param_4[2] = ((1.0 - fVar15 * fVar15 * fVar12) * fVar15 * 0.5 + fVar15) * fVar10;
  param_4[3] = ((1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16) * fVar11;
  return;
}


