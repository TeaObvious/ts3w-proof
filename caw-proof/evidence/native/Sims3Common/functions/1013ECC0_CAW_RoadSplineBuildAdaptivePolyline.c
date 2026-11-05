/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Straight (+28) path produces exactly two samples, using the
   normalized endpoint chord. Curved path appends the start point with normalized first-handle
   tangent, calls 0x1013C460 over [0,1] at depth0/count1, then appends the endpoint with normalized
   last-handle tangent. Sample record is64bytes: parameter+0, planar point+10, tangent+20,
   cumulative/segment lengths+30/+34, index metadata+38. Replaces owned cache+184..+188.
   Normalization uses RSQRTPS and two binary32 Newton refinements. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

void __fastcall CAW_RoadSplineBuildAdaptivePolyline(int param_1)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  float fVar7;
  undefined4 *puVar8;
  float *pfVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar28;
  float fVar29;
  float fVar30;
  undefined1 auVar27 [16];
  undefined1 in_XMM5 [16];
  undefined1 auVar31 [16];
  uint local_8c;
  float local_88;
  float local_84;
  undefined4 *local_80;
  undefined4 *local_7c;
  undefined4 *local_78;
  char *local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined1 local_60 [8];
  float fStack_58;
  float fStack_54;
  undefined4 local_50 [19];
  
  local_74 = "RoadNetwork/RoadSpline/TempPolyline";
  local_80 = (undefined4 *)FUN_10918ed0(0x1900,0x10,0,"RoadNetwork/RoadSpline/TempPolyline",0);
  local_78 = local_80 + 0x640;
  FUN_1013c0d0((int)local_80,100,local_50);
  fVar21 = _DAT_10b310ec;
  fVar19 = DAT_10acb0d4;
  local_7c = local_80 + 0x640;
  local_8c = 0;
  if (*(char *)(param_1 + 0x28) == '\0') {
    local_84 = 0.0;
    local_88 = 0.0;
    *local_80 = 0;
    uVar4 = *(undefined4 *)(param_1 + 0x34);
    uVar5 = *(undefined4 *)(param_1 + 0x38);
    uVar6 = *(undefined4 *)(param_1 + 0x3c);
    local_80[4] = *(undefined4 *)(param_1 + 0x30);
    local_80[5] = uVar4;
    local_80[6] = uVar5;
    local_80[7] = uVar6;
    local_80[0xc] = 0;
    fVar23 = *(float *)(param_1 + 0x38);
    fVar25 = *(float *)(param_1 + 0x3c);
    fVar10 = *(float *)(param_1 + 0x48);
    fVar11 = *(float *)(param_1 + 0x4c);
    fVar22 = *(float *)(param_1 + 0x40) - *(float *)(param_1 + 0x30);
    fVar24 = *(float *)(param_1 + 0x44) - *(float *)(param_1 + 0x34);
    fVar16 = fVar22 * fVar22;
    fVar17 = fVar24 * fVar24;
    fVar15 = fVar17 + fVar16;
    fVar18 = fVar17 + fVar16;
    fVar20 = fVar17 + fVar16;
    fVar17 = fVar17 + fVar16;
    auVar31._4_4_ = fVar18;
    auVar31._0_4_ = fVar15;
    auVar31._8_4_ = fVar20;
    auVar31._12_4_ = fVar17;
    auVar31 = rsqrtps(in_XMM5,auVar31);
    fVar16 = auVar31._0_4_;
    fVar12 = auVar31._4_4_;
    fVar13 = auVar31._8_4_;
    fVar14 = auVar31._12_4_;
    auVar27._4_4_ = fVar21;
    auVar27._0_4_ = fVar21;
    auVar27._8_4_ = fVar21;
    auVar27._12_4_ = fVar21;
    fVar16 = (fVar19 - fVar16 * fVar16 * fVar15) * fVar21 * fVar16 + fVar16;
    fVar12 = (fVar19 - fVar12 * fVar12 * fVar18) * fVar21 * fVar12 + fVar12;
    fVar13 = (fVar19 - fVar13 * fVar13 * fVar20) * fVar21 * fVar13 + fVar13;
    fVar14 = (fVar19 - fVar14 * fVar14 * fVar17) * fVar21 * fVar14 + fVar14;
    local_70 = fVar19;
    fStack_6c = fVar19;
    fStack_68 = fVar19;
    fStack_64 = fVar19;
    local_80[8] = ((fVar19 - fVar16 * fVar16 * fVar15) * fVar21 * fVar16 + fVar16) * fVar22;
    local_80[9] = ((fVar19 - fVar12 * fVar12 * fVar18) * fVar21 * fVar12 + fVar12) * fVar24;
    local_80[10] = ((fVar19 - fVar13 * fVar13 * fVar20) * fVar21 * fVar13 + fVar13) *
                   (fVar10 - fVar23);
    local_80[0xb] =
         ((fVar19 - fVar14 * fVar14 * fVar17) * fVar21 * fVar14 + fVar14) * (fVar11 - fVar25);
    local_80[0xe] = 0;
    local_8c = 1;
    pfVar1 = (float *)(param_1 + 0x60);
    _local_60 = auVar27;
    CAW_RoadSplineSubdividePolyline
              ((int *)&local_80,&local_8c,(float *)(param_1 + 0x30),(float *)(param_1 + 0x40),
               (float *)(param_1 + 0x50),pfVar1,0.0,1.0,0,1,&local_88,0,&local_84);
    pfVar9 = (float *)(local_80 + local_8c * 0x10);
    *pfVar9 = DAT_10acb0d4;
    fVar19 = *(float *)(param_1 + 100);
    fVar21 = *(float *)(param_1 + 0x68);
    fVar23 = *(float *)(param_1 + 0x6c);
    pfVar9[4] = *pfVar1;
    pfVar9[5] = fVar19;
    pfVar9[6] = fVar21;
    pfVar9[7] = fVar23;
    pfVar9[0xc] = local_84;
    pfVar9[0xd] = 0.0;
    fVar19 = *(float *)(param_1 + 0x58);
    fVar21 = *(float *)(param_1 + 0x5c);
    fVar23 = *(float *)(param_1 + 0x68);
    fVar25 = *(float *)(param_1 + 0x6c);
    fVar18 = *pfVar1 - *(float *)(param_1 + 0x50);
    fVar20 = *(float *)(param_1 + 100) - *(float *)(param_1 + 0x54);
    fVar10 = fVar18 * fVar18;
    fVar11 = fVar20 * fVar20;
    fVar13 = fVar11 + fVar10;
    fVar14 = fVar11 + fVar10;
    fVar15 = fVar11 + fVar10;
    fVar11 = fVar11 + fVar10;
    auVar3._4_4_ = fVar14;
    auVar3._0_4_ = fVar13;
    auVar3._8_4_ = fVar15;
    auVar3._12_4_ = fVar11;
    auVar31 = rsqrtps(auVar27,auVar3);
    fVar10 = auVar31._0_4_;
    fVar16 = auVar31._4_4_;
    fVar17 = auVar31._8_4_;
    fVar12 = auVar31._12_4_;
    fVar10 = (local_70 - fVar10 * fVar10 * fVar13) * (float)local_60._0_4_ * fVar10 + fVar10;
    fVar16 = (fStack_6c - fVar16 * fVar16 * fVar14) * (float)local_60._4_4_ * fVar16 + fVar16;
    fVar17 = (fStack_68 - fVar17 * fVar17 * fVar15) * fStack_58 * fVar17 + fVar17;
    fVar12 = (fStack_64 - fVar12 * fVar12 * fVar11) * fStack_54 * fVar12 + fVar12;
    pfVar9[8] = ((local_70 - fVar10 * fVar10 * fVar13) * (float)local_60._0_4_ * fVar10 + fVar10) *
                fVar18;
    pfVar9[9] = ((fStack_6c - fVar16 * fVar16 * fVar14) * (float)local_60._4_4_ * fVar16 + fVar16) *
                fVar20;
    pfVar9[10] = ((fStack_68 - fVar17 * fVar17 * fVar15) * fStack_58 * fVar17 + fVar17) *
                 (fVar23 - fVar19);
    pfVar9[0xb] = ((fStack_64 - fVar12 * fVar12 * fVar11) * fStack_54 * fVar12 + fVar12) *
                  (fVar25 - fVar21);
    local_88 = (float)((int)local_88 + 1);
    pfVar9[0xe] = local_88;
    local_80[local_8c * 0x10 + -3] = local_84 - (float)local_80[local_8c * 0x10 + -4];
    local_8c = local_8c + 1;
  }
  else {
    fVar19 = *(float *)(param_1 + 0x30);
    fVar21 = *(float *)(param_1 + 0x34);
    fVar23 = *(float *)(param_1 + 0x38);
    fVar25 = *(float *)(param_1 + 0x3c);
    fVar26 = *(float *)(param_1 + 0x60) - fVar19;
    fVar28 = *(float *)(param_1 + 100) - fVar21;
    fVar29 = *(float *)(param_1 + 0x68) - fVar23;
    fVar30 = *(float *)(param_1 + 0x6c) - fVar25;
    fVar10 = fVar26 * fVar26;
    fVar11 = fVar28 * fVar28;
    fVar16 = fVar11 + fVar10;
    fVar17 = fVar11 + fVar10;
    fVar18 = fVar11 + fVar10;
    fVar11 = fVar11 + fVar10;
    auVar2._4_4_ = fVar17;
    auVar2._0_4_ = fVar16;
    auVar2._8_4_ = fVar18;
    auVar2._12_4_ = fVar11;
    auVar31 = rsqrtps(in_XMM5,auVar2);
    fVar12 = auVar31._0_4_;
    fVar13 = auVar31._4_4_;
    fVar14 = auVar31._8_4_;
    fVar15 = auVar31._12_4_;
    fVar12 = (DAT_10acb0d4 - fVar12 * fVar12 * fVar16) * _DAT_10b310ec * fVar12 + fVar12;
    fVar13 = (DAT_10acb0d4 - fVar13 * fVar13 * fVar17) * _DAT_10b310ec * fVar13 + fVar13;
    fVar14 = (DAT_10acb0d4 - fVar14 * fVar14 * fVar18) * _DAT_10b310ec * fVar14 + fVar14;
    fVar15 = (DAT_10acb0d4 - fVar15 * fVar15 * fVar11) * _DAT_10b310ec * fVar15 + fVar15;
    fVar10 = DAT_10acb0d4 - fVar12 * fVar12 * fVar16;
    fVar16 = DAT_10acb0d4 - fVar13 * fVar13 * fVar17;
    fVar17 = DAT_10acb0d4 - fVar14 * fVar14 * fVar18;
    fVar11 = DAT_10acb0d4 - fVar15 * fVar15 * fVar11;
    fVar18 = _DAT_10b310ec * fVar12;
    fVar20 = _DAT_10b310ec * fVar13;
    fVar22 = _DAT_10b310ec * fVar14;
    fVar24 = _DAT_10b310ec * fVar15;
    do {
      puVar8 = local_80 + local_8c * 0x10;
      *puVar8 = 0;
      puVar8[4] = fVar19;
      puVar8[5] = fVar21;
      puVar8[6] = fVar23;
      puVar8[7] = fVar25;
      puVar8[8] = (fVar10 * fVar18 + fVar12) * fVar26;
      puVar8[9] = (fVar16 * fVar20 + fVar13) * fVar28;
      puVar8[10] = (fVar17 * fVar22 + fVar14) * fVar29;
      puVar8[0xb] = (fVar11 * fVar24 + fVar15) * fVar30;
      puVar8[0xe] = local_8c;
      puVar8[0xd] = *(undefined4 *)(param_1 + 0x170);
      fVar7 = (float)(int)local_8c;
      if ((int)local_8c < 0) {
        fVar7 = fVar7 + _DAT_10aae190;
      }
      fVar19 = fVar26 + fVar19;
      fVar21 = fVar28 + fVar21;
      fVar23 = fVar29 + fVar23;
      fVar25 = fVar30 + fVar25;
      puVar8[0xc] = fVar7 * *(float *)(param_1 + 0x170);
      local_8c = local_8c + 1;
    } while (local_8c < 2);
  }
  *(undefined4 *)(param_1 + 0x188) = *(undefined4 *)(param_1 + 0x184);
  FUN_1013eb20((undefined4 *)(param_1 + 0x184),local_8c);
  memcpy(*(void **)(param_1 + 0x184),local_80,local_8c << 6);
  if (local_80 != (undefined4 *)0x0) {
    FUN_10918e90((int)local_80);
  }
  return;
}

