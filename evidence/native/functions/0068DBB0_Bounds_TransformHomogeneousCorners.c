/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX output box, two stack pointers (source box then 4x4 matrix); RET8. Calls0068C500 for eight
   homogeneous corners. Separate MULPS/ADDPS stages accumulate
   (((x*row0)+(y*row1))+(z*row2))+(w*row3). Initial minimum+16777216 and maximum-16777216
   from00FF1898/00FF1894. MINPS/MAXPS use prior accumulator as second operand. Writes two float4
   extrema; no finite/inversion admission or Boolean return is established by this body. Inferred
   prototype does not represent the physical ECX output. */

void Bounds_TransformHomogeneousCorners(void *param_1,float *param_2)

{
  undefined1 auVar1 [16];
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float *pfVar6;
  int iVar7;
  undefined1 (*extraout_EDX) [16];
  undefined4 uVar8;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined1 auVar15 [16];
  undefined4 uVar18;
  float local_90 [35];
  
  Bounds_WriteEightHomogeneousCorners(param_1,local_90);
  pfVar6 = local_90;
  iVar7 = 8;
  uVar14 = DAT_00ff1898;
  uVar16 = DAT_00ff1898;
  uVar17 = DAT_00ff1898;
  uVar18 = DAT_00ff1898;
  uVar8 = DAT_00ff1894;
  uVar11 = DAT_00ff1894;
  uVar12 = DAT_00ff1894;
  uVar13 = DAT_00ff1894;
  do {
    fVar2 = *pfVar6;
    fVar3 = pfVar6[1];
    fVar4 = pfVar6[2];
    fVar5 = pfVar6[3];
    auVar9._0_8_ = CONCAT44(fVar2 * param_2[1] + fVar3 * param_2[5] + fVar4 * param_2[9] +
                            fVar5 * param_2[0xd],
                            fVar2 * *param_2 + fVar3 * param_2[4] + fVar4 * param_2[8] +
                            fVar5 * param_2[0xc]);
    auVar9._8_4_ = fVar2 * param_2[2] + fVar3 * param_2[6] + fVar4 * param_2[10] +
                   fVar5 * param_2[0xe];
    auVar9._12_4_ =
         fVar2 * param_2[3] + fVar3 * param_2[7] + fVar4 * param_2[0xb] + fVar5 * param_2[0xf];
    auVar15._8_4_ = auVar9._8_4_;
    auVar15._0_8_ = auVar9._0_8_;
    auVar15._12_4_ = auVar9._12_4_;
    pfVar6 = pfVar6 + 4;
    iVar7 = iVar7 + -1;
    auVar10._4_4_ = uVar16;
    auVar10._0_4_ = uVar14;
    auVar10._8_4_ = uVar17;
    auVar10._12_4_ = uVar18;
    auVar15 = minps(auVar15,auVar10);
    auVar1._4_4_ = uVar11;
    auVar1._0_4_ = uVar8;
    auVar1._8_4_ = uVar12;
    auVar1._12_4_ = uVar13;
    auVar10 = maxps(auVar9,auVar1);
    uVar14 = auVar15._0_4_;
    uVar16 = auVar15._4_4_;
    uVar17 = auVar15._8_4_;
    uVar18 = auVar15._12_4_;
    uVar8 = auVar10._0_4_;
    uVar11 = auVar10._4_4_;
    uVar12 = auVar10._8_4_;
    uVar13 = auVar10._12_4_;
  } while (iVar7 != 0);
  *extraout_EDX = auVar15;
  extraout_EDX[1] = auVar10;
  return;
}

