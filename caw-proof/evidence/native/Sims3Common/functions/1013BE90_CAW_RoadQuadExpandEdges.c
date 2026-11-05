/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Computes four normalized quad edge deltas from the
   unmodified corners with RSQRTPS and two binary32 Newton refinements, scales them by the supplied
   distance, and adds/subtracts them according to edge-mask bits4,8,1,2. Self-overlap supplies
   mask0xF and distance-0.05, moving all edges inward. Corner movement sums the two edge deltas; it
   is not a centre scaling or general miter construction. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __cdecl CAW_RoadQuadExpandEdges(float *param_1,float param_2,byte param_3)

{
  undefined1 auVar1 [16];
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  undefined1 auVar6 [12];
  float fVar7;
  float fVar8;
  float fVar9;
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
  float fVar25;
  float fVar26;
  undefined1 in_XMM5 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  float local_40;
  float fStack_3c;
  float fStack_38;
  
  fVar2 = *param_1;
  fVar3 = param_1[1];
  fVar4 = param_1[2];
  fVar5 = param_1[3];
  fVar17 = param_1[4] - fVar2;
  fVar18 = param_1[5] - fVar3;
  fVar7 = fVar17 * fVar17;
  fVar8 = fVar18 * fVar18;
  fVar12 = fVar8 + fVar7;
  fVar13 = fVar8 + fVar7;
  fVar14 = fVar8 + fVar7;
  fVar8 = fVar8 + fVar7;
  auVar23._4_4_ = fVar13;
  auVar23._0_4_ = fVar12;
  auVar23._8_4_ = fVar14;
  auVar23._12_4_ = fVar8;
  auVar23 = rsqrtps(in_XMM5,auVar23);
  fVar7 = auVar23._0_4_;
  fVar9 = auVar23._4_4_;
  fVar10 = auVar23._8_4_;
  fVar11 = auVar23._12_4_;
  fVar7 = (DAT_10acb0d4 - fVar7 * fVar7 * fVar12) * _DAT_10b310ec * fVar7 + fVar7;
  fVar9 = (DAT_10acb0d4 - fVar9 * fVar9 * fVar13) * _DAT_10b310ec * fVar9 + fVar9;
  fVar10 = (DAT_10acb0d4 - fVar10 * fVar10 * fVar14) * _DAT_10b310ec * fVar10 + fVar10;
  fVar11 = (DAT_10acb0d4 - fVar11 * fVar11 * fVar8) * _DAT_10b310ec * fVar11 + fVar11;
  auVar27._0_4_ = _DAT_10b310ec * fVar7;
  auVar27._4_4_ = _DAT_10b310ec * fVar9;
  auVar27._8_4_ = _DAT_10b310ec * fVar10;
  auVar27._12_4_ = _DAT_10b310ec * fVar11;
  auVar6 = *(undefined1 (*) [12])(param_1 + 0xc);
  fVar17 = ((DAT_10acb0d4 - fVar7 * fVar7 * fVar12) * auVar27._0_4_ + fVar7) * fVar17 * param_2;
  fVar18 = ((DAT_10acb0d4 - fVar9 * fVar9 * fVar13) * auVar27._4_4_ + fVar9) * fVar18 * param_2;
  fVar15 = ((DAT_10acb0d4 - fVar10 * fVar10 * fVar14) * auVar27._8_4_ + fVar10) *
           (param_1[6] - fVar4) * param_2;
  fVar16 = ((DAT_10acb0d4 - fVar11 * fVar11 * fVar8) * auVar27._12_4_ + fVar11) *
           (param_1[7] - fVar5) * param_2;
  fVar21 = param_1[8] - *(float *)*(undefined1 (*) [12])(param_1 + 0xc);
  fVar25 = param_1[9] - param_1[0xd];
  fVar7 = fVar21 * fVar21;
  fVar8 = fVar25 * fVar25;
  fVar12 = fVar8 + fVar7;
  fVar13 = fVar8 + fVar7;
  fVar14 = fVar8 + fVar7;
  fVar8 = fVar8 + fVar7;
  auVar1._4_4_ = fVar13;
  auVar1._0_4_ = fVar12;
  auVar1._8_4_ = fVar14;
  auVar1._12_4_ = fVar8;
  auVar23 = rsqrtps(auVar27,auVar1);
  fVar7 = auVar23._0_4_;
  fVar9 = auVar23._4_4_;
  fVar10 = auVar23._8_4_;
  fVar11 = auVar23._12_4_;
  fVar7 = (DAT_10acb0d4 - fVar7 * fVar7 * fVar12) * _DAT_10b310ec * fVar7 + fVar7;
  fVar9 = (DAT_10acb0d4 - fVar9 * fVar9 * fVar13) * _DAT_10b310ec * fVar9 + fVar9;
  fVar10 = (DAT_10acb0d4 - fVar10 * fVar10 * fVar14) * _DAT_10b310ec * fVar10 + fVar10;
  fVar11 = (DAT_10acb0d4 - fVar11 * fVar11 * fVar8) * _DAT_10b310ec * fVar11 + fVar11;
  auVar28._0_4_ = _DAT_10b310ec * fVar7;
  auVar28._4_4_ = _DAT_10b310ec * fVar9;
  auVar28._8_4_ = _DAT_10b310ec * fVar10;
  auVar28._12_4_ = _DAT_10b310ec * fVar11;
  local_40 = auVar6._0_4_;
  fStack_3c = auVar6._4_4_;
  fStack_38 = auVar6._8_4_;
  local_40 = local_40 - fVar2;
  fStack_3c = fStack_3c - fVar3;
  fVar21 = ((DAT_10acb0d4 - fVar7 * fVar7 * fVar12) * auVar28._0_4_ + fVar7) * fVar21 * param_2;
  fVar25 = ((DAT_10acb0d4 - fVar9 * fVar9 * fVar13) * auVar28._4_4_ + fVar9) * fVar25 * param_2;
  fVar19 = ((DAT_10acb0d4 - fVar10 * fVar10 * fVar14) * auVar28._8_4_ + fVar10) *
           (param_1[10] - param_1[0xe]) * param_2;
  fVar20 = ((DAT_10acb0d4 - fVar11 * fVar11 * fVar8) * auVar28._12_4_ + fVar11) *
           (param_1[0xb] - param_1[0xf]) * param_2;
  fVar7 = local_40 * local_40;
  fVar8 = fStack_3c * fStack_3c;
  auVar24._0_4_ = fVar8 + fVar7;
  auVar24._4_4_ = fVar8 + fVar7;
  auVar24._8_4_ = fVar8 + fVar7;
  auVar24._12_4_ = fVar8 + fVar7;
  auVar23 = rsqrtps(auVar28,auVar24);
  fVar7 = auVar23._0_4_;
  fVar10 = auVar23._4_4_;
  fVar13 = auVar23._8_4_;
  fVar14 = auVar23._12_4_;
  auVar30._0_4_ = _DAT_10b310ec * fVar7;
  auVar30._4_4_ = _DAT_10b310ec * fVar10;
  auVar30._8_4_ = _DAT_10b310ec * fVar13;
  auVar30._12_4_ = _DAT_10b310ec * fVar14;
  fVar7 = (DAT_10acb0d4 - fVar7 * fVar7 * auVar24._0_4_) * auVar30._0_4_ + fVar7;
  fVar10 = (DAT_10acb0d4 - fVar10 * fVar10 * auVar24._4_4_) * auVar30._4_4_ + fVar10;
  fVar13 = (DAT_10acb0d4 - fVar13 * fVar13 * auVar24._8_4_) * auVar30._8_4_ + fVar13;
  fVar14 = (DAT_10acb0d4 - fVar14 * fVar14 * auVar24._12_4_) * auVar30._12_4_ + fVar14;
  fVar8 = param_1[8] - param_1[4];
  fVar11 = param_1[9] - param_1[5];
  fVar9 = fVar8 * fVar8;
  fVar12 = fVar11 * fVar11;
  fVar22 = ((DAT_10acb0d4 - fVar7 * fVar7 * auVar24._0_4_) * _DAT_10b310ec * fVar7 + fVar7) *
           local_40 * param_2;
  fVar26 = ((DAT_10acb0d4 - fVar10 * fVar10 * auVar24._4_4_) * _DAT_10b310ec * fVar10 + fVar10) *
           fStack_3c * param_2;
  fVar13 = ((DAT_10acb0d4 - fVar13 * fVar13 * auVar24._8_4_) * _DAT_10b310ec * fVar13 + fVar13) *
           (fStack_38 - fVar4) * param_2;
  fVar14 = ((DAT_10acb0d4 - fVar14 * fVar14 * auVar24._12_4_) * _DAT_10b310ec * fVar14 + fVar14) *
           (param_1[0xf] - fVar5) * param_2;
  auVar29._0_4_ = fVar12 + fVar9;
  auVar29._4_4_ = fVar12 + fVar9;
  auVar29._8_4_ = fVar12 + fVar9;
  auVar29._12_4_ = fVar12 + fVar9;
  auVar23 = rsqrtps(auVar30,auVar29);
  fVar7 = auVar23._0_4_;
  fVar9 = auVar23._4_4_;
  fVar10 = auVar23._8_4_;
  fVar12 = auVar23._12_4_;
  fVar7 = (DAT_10acb0d4 - fVar7 * fVar7 * auVar29._0_4_) * _DAT_10b310ec * fVar7 + fVar7;
  fVar9 = (DAT_10acb0d4 - fVar9 * fVar9 * auVar29._4_4_) * _DAT_10b310ec * fVar9 + fVar9;
  fVar10 = (DAT_10acb0d4 - fVar10 * fVar10 * auVar29._8_4_) * _DAT_10b310ec * fVar10 + fVar10;
  fVar12 = (DAT_10acb0d4 - fVar12 * fVar12 * auVar29._12_4_) * _DAT_10b310ec * fVar12 + fVar12;
  fVar7 = ((DAT_10acb0d4 - fVar7 * fVar7 * auVar29._0_4_) * _DAT_10b310ec * fVar7 + fVar7) * fVar8 *
          param_2;
  fVar8 = ((DAT_10acb0d4 - fVar9 * fVar9 * auVar29._4_4_) * _DAT_10b310ec * fVar9 + fVar9) * fVar11
          * param_2;
  fVar9 = ((DAT_10acb0d4 - fVar10 * fVar10 * auVar29._8_4_) * _DAT_10b310ec * fVar10 + fVar10) *
          (param_1[10] - param_1[6]) * param_2;
  fVar10 = ((DAT_10acb0d4 - fVar12 * fVar12 * auVar29._12_4_) * _DAT_10b310ec * fVar12 + fVar12) *
           (param_1[0xb] - param_1[7]) * param_2;
  if ((param_3 & 4) != 0) {
    *param_1 = fVar2 - fVar17;
    param_1[1] = fVar3 - fVar18;
    param_1[2] = fVar4 - fVar15;
    param_1[3] = fVar5 - fVar16;
    param_1[0xc] = param_1[0xc] - fVar21;
    param_1[0xd] = param_1[0xd] - fVar25;
    param_1[0xe] = param_1[0xe] - fVar19;
    param_1[0xf] = param_1[0xf] - fVar20;
  }
  if ((param_3 & 8) != 0) {
    param_1[4] = param_1[4] + fVar17;
    param_1[5] = param_1[5] + fVar18;
    param_1[6] = param_1[6] + fVar15;
    param_1[7] = param_1[7] + fVar16;
    param_1[8] = param_1[8] + fVar21;
    param_1[9] = param_1[9] + fVar25;
    param_1[10] = param_1[10] + fVar19;
    param_1[0xb] = param_1[0xb] + fVar20;
  }
  if ((param_3 & 1) != 0) {
    *param_1 = *param_1 - fVar22;
    param_1[1] = param_1[1] - fVar26;
    param_1[2] = param_1[2] - fVar13;
    param_1[3] = param_1[3] - fVar14;
    param_1[4] = param_1[4] - fVar7;
    param_1[5] = param_1[5] - fVar8;
    param_1[6] = param_1[6] - fVar9;
    param_1[7] = param_1[7] - fVar10;
  }
  if ((param_3 & 2) != 0) {
    param_1[8] = param_1[8] + fVar7;
    param_1[9] = param_1[9] + fVar8;
    param_1[10] = param_1[10] + fVar9;
    param_1[0xb] = param_1[0xb] + fVar10;
    param_1[0xc] = param_1[0xc] + fVar22;
    param_1[0xd] = param_1[0xd] + fVar26;
    param_1[0xe] = param_1[0xe] + fVar13;
    param_1[0xf] = param_1[0xf] + fVar14;
  }
  return;
}

