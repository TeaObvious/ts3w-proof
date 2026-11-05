/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Adaptive de Casteljau midpoint traversal preserves
   left-recursion, midpoint append, right-recursion ordering. Entry stops if parameter span<binary32
   0.0001, depth>=20, or existing count>=100. Flatness stops when squared sum of absolute
   handle/chord planar crosses is strictly below chord-length-squared times binary32 0.1. Appended
   midpoint tangent is normalized from the right subdivision handle minus midpoint using RSQRTPS/two
   binary32 Newton refinements; appends are not uniformly spaced in parameter or world distance.
   Additional records retain arc-distance metadata. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

void CAW_RoadSplineSubdividePolyline
               (int *param_1,uint *param_2,float *param_3,float *param_4,float *param_5,
               float *param_6,float param_7,float param_8,undefined4 param_9,undefined4 param_10,
               float *param_11,uint param_12,float *param_13)

{
  undefined1 auVar1 [16];
  float *pfVar2;
  int iVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar9;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar21 [16];
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  undefined1 local_30 [16];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (((DAT_10abf094 <= param_8 - param_7) && (param_12 < 0x14)) && (*param_2 < 100)) {
    fVar4 = (param_7 + param_8) * _DAT_10b310ec;
    fVar5 = (fVar4 - param_7) / (param_8 - param_7);
    fVar6 = DAT_10acb0d4 - fVar5;
    local_40 = *param_3 * fVar6 + *param_4 * fVar5;
    fStack_3c = param_3[1] * fVar6 + param_4[1] * fVar5;
    fStack_38 = param_3[2] * fVar6 + param_4[2] * fVar5;
    fStack_34 = param_3[3] * fVar6 + param_4[3] * fVar5;
    fVar13 = *param_5 * fVar5 + fVar6 * *param_4;
    fVar17 = param_5[1] * fVar5 + fVar6 * param_4[1];
    fVar19 = param_5[2] * fVar5 + fVar6 * param_4[2];
    fVar20 = param_5[3] * fVar5 + fVar6 * param_4[3];
    local_70 = *param_5 * fVar6 + *param_6 * fVar5;
    fStack_6c = param_5[1] * fVar6 + param_6[1] * fVar5;
    fStack_68 = param_5[2] * fVar6 + param_6[2] * fVar5;
    fStack_64 = param_5[3] * fVar6 + param_6[3] * fVar5;
    local_50 = fVar5 * fVar13 + fVar6 * local_40;
    fStack_4c = fVar5 * fVar17 + fVar6 * fStack_3c;
    fStack_48 = fVar5 * fVar19 + fVar6 * fStack_38;
    fStack_44 = fVar5 * fVar20 + fVar6 * fStack_34;
    local_60 = fVar5 * local_70 + fVar6 * fVar13;
    fStack_5c = fVar5 * fStack_6c + fVar6 * fVar17;
    fStack_58 = fVar5 * fStack_68 + fVar6 * fVar19;
    fStack_54 = fVar5 * fStack_64 + fVar6 * fVar20;
    local_90 = fVar5 * local_60 + fVar6 * local_50;
    fStack_8c = fVar5 * fStack_5c + fVar6 * fStack_4c;
    fStack_88 = fVar5 * fStack_58 + fVar6 * fStack_48;
    fStack_84 = fVar5 * fStack_54 + fVar6 * fStack_44;
    local_20 = *param_6 - *param_3;
    fStack_1c = param_6[1] - param_3[1];
    fStack_18 = param_6[2] - param_3[2];
    fStack_14 = param_6[3] - param_3[3];
    fVar5 = *param_6;
    fVar6 = param_6[1];
    fVar13 = *param_4;
    fVar17 = param_4[1];
    auVar21._4_4_ = fVar6;
    auVar21._0_4_ = fVar6;
    auVar21._8_4_ = fVar6;
    auVar21._12_4_ = fVar6;
    fVar19 = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    fVar20 = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    auVar8._4_4_ = fVar20;
    auVar8._0_4_ = fVar19;
    fVar9 = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    fVar13 = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    auVar15._0_4_ = DAT_10aae184 * fVar19;
    auVar15._4_4_ = DAT_10aae184 * fVar20;
    auVar15._8_4_ = DAT_10aae184 * fVar9;
    auVar15._12_4_ = DAT_10aae184 * fVar13;
    auVar8._8_4_ = fVar9;
    auVar8._12_4_ = fVar13;
    local_30 = maxps(auVar15,auVar8);
    fVar13 = *param_5;
    fVar17 = param_5[1];
    fVar19 = local_20 * local_20;
    fVar20 = fStack_1c * fStack_1c;
    auVar16._0_4_ = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    auVar16._4_4_ = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    auVar16._8_4_ = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    auVar16._12_4_ = (fVar13 - fVar5) * fStack_1c - (fVar17 - fVar6) * local_20;
    auVar7._0_4_ = DAT_10aae184 * auVar16._0_4_;
    auVar7._4_4_ = DAT_10aae184 * auVar16._4_4_;
    auVar7._8_4_ = DAT_10aae184 * auVar16._8_4_;
    auVar7._12_4_ = DAT_10aae184 * auVar16._12_4_;
    auVar8 = maxps(auVar7,auVar16);
    local_80 = auVar8._0_4_;
    fVar5 = local_80 + (float)local_30._0_4_;
    local_80 = fVar20 + fVar19;
    fStack_7c = fVar20 + fVar19;
    fStack_78 = fVar20 + fVar19;
    fStack_74 = fVar20 + fVar19;
    if (fVar5 * fVar5 < local_80 * DAT_10ab2934) {
      *param_13 = SQRT(local_80) + *param_13;
      return;
    }
    CAW_RoadSplineSubdividePolyline
              (param_1,param_2,param_3,&local_40,&local_50,&local_90,param_7,fVar4,param_9,param_9,
               param_11,param_12 + 1,param_13);
    fVar5 = _DAT_10b310ec;
    pfVar2 = (float *)(*param_2 * 0x40 + *param_1);
    pfVar2[4] = local_90;
    pfVar2[5] = fStack_8c;
    pfVar2[6] = fStack_88;
    pfVar2[7] = fStack_84;
    fVar14 = local_60 - local_90;
    fVar18 = fStack_5c - fStack_8c;
    fVar6 = fVar14 * fVar14;
    fVar13 = fVar18 * fVar18;
    fVar11 = fVar13 + fVar6;
    fVar17 = fVar13 + fVar6;
    fVar12 = fVar13 + fVar6;
    fVar13 = fVar13 + fVar6;
    auVar1._4_4_ = fVar17;
    auVar1._0_4_ = fVar11;
    auVar1._8_4_ = fVar12;
    auVar1._12_4_ = fVar13;
    auVar8 = rsqrtps(auVar21,auVar1);
    fVar19 = auVar8._0_4_;
    fVar20 = auVar8._4_4_;
    fVar9 = auVar8._8_4_;
    fVar10 = auVar8._12_4_;
    fVar19 = (DAT_10acb0d4 - fVar19 * fVar19 * fVar11) * fVar19 * fVar5 + fVar19;
    fVar20 = (DAT_10acb0d4 - fVar20 * fVar20 * fVar17) * fVar20 * fVar5 + fVar20;
    fVar9 = (DAT_10acb0d4 - fVar9 * fVar9 * fVar12) * fVar9 * fVar5 + fVar9;
    fVar10 = (DAT_10acb0d4 - fVar10 * fVar10 * fVar13) * fVar10 * fVar5 + fVar10;
    fVar6 = DAT_10acb0d4 - fVar20 * fVar20 * fVar17;
    fVar17 = DAT_10acb0d4 - fVar9 * fVar9 * fVar12;
    fVar13 = DAT_10acb0d4 - fVar10 * fVar10 * fVar13;
    pfVar2[8] = ((DAT_10acb0d4 - fVar19 * fVar19 * fVar11) * fVar19 * fVar5 + fVar19) * fVar14;
    pfVar2[9] = (fVar6 * fVar20 * fVar5 + fVar20) * fVar18;
    pfVar2[10] = (fVar17 * fVar9 * fVar5 + fVar9) * (fStack_58 - fStack_88);
    pfVar2[0xb] = (fVar13 * fVar10 * fVar5 + fVar10) * (fStack_54 - fStack_84);
    pfVar2[0xe] = *param_11;
    pfVar2[0xc] = *param_13;
    *pfVar2 = fVar4;
    if (*param_2 != 0) {
      iVar3 = *param_2 * 0x40;
      *(float *)(iVar3 + *param_1 + -0xc) = *param_13 - *(float *)(iVar3 + -0x10 + *param_1);
    }
    *param_2 = *param_2 + 1;
    CAW_RoadSplineSubdividePolyline
              (param_1,param_2,&local_90,&local_60,&local_70,param_6,fVar4,param_8,param_9,param_10,
               param_11,param_12 + 1,param_13);
  }
  return;
}

