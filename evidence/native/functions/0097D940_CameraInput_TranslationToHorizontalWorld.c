/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Actual caller supplies three stack pointers:
   output, local translation vector, camera matrix; decompiler invents two additional register
   parameters from MOVMSKPS scratch registers and labels this fastcall. Preserve that ABI
   uncertainty; raw [EBP+8/+C/+10] and caller cleanup govern invocation. Initialize
   output=(0,inputY,0,0). If abs(inputX) and abs(inputZ)<=binary32 epsilon [010470C0]=2^-23, return.
   Otherwise flatten Y of matrix column0 and negative column2, independently normalize their XYZ
   lengths using RSQRTPS and two Newton refinements, then combine inputX*right +
   inputZ*negativeForward + inputY*up. Main frame applies this only to translation parts of
   rate/impulse, not angular values. */

void __fastcall
CameraInput_TranslationToHorizontalWorld
          (undefined4 param_1,undefined4 param_2,float *worldTranslation,float *localTranslation,
          float *cameraMatrix)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  undefined1 auVar10 [16];
  int iVar11;
  float fVar12;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  float fVar23;
  float fVar27;
  float fVar28;
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  float fVar29;

  fVar3 = *localTranslation;
  fVar4 = localTranslation[1];
  fVar5 = localTranslation[2];
  *worldTranslation = 0.0;
  worldTranslation[1] = fVar4;
  worldTranslation[2] = 0.0;
  worldTranslation[3] = 0.0;
  auVar24._0_4_ = fVar3 * -1.0;
  auVar24._4_4_ = fVar3 * -1.0;
  auVar24._8_4_ = fVar3 * -1.0;
  auVar24._12_4_ = fVar3 * -1.0;
  auVar21._8_4_ = 0x34000000;
  auVar21._0_8_ = 0x3400000034000000;
  auVar21._12_4_ = 0x34000000;
  auVar25._4_4_ = fVar3;
  auVar25._0_4_ = fVar3;
  auVar25._8_4_ = fVar3;
  auVar25._12_4_ = fVar3;
  auVar25 = maxps(auVar24,auVar25);
  auVar26._4_4_ = -(uint)(auVar25._4_4_ <= 1.1920929e-07);
  auVar26._0_4_ = -(uint)(auVar25._0_4_ <= 1.1920929e-07);
  auVar26._8_4_ = -(uint)(auVar25._8_4_ <= 1.1920929e-07);
  auVar26._12_4_ = -(uint)(auVar25._12_4_ <= 1.1920929e-07);
  iVar11 = movmskps(param_1,auVar26);
  if (iVar11 == 0xf) {
    auVar13._0_4_ = fVar5 * -1.0;
    auVar13._4_4_ = fVar5 * -1.0;
    auVar13._8_4_ = fVar5 * -1.0;
    auVar13._12_4_ = fVar5 * -1.0;
    auVar1._4_4_ = fVar5;
    auVar1._0_4_ = fVar5;
    auVar1._8_4_ = fVar5;
    auVar1._12_4_ = fVar5;
    auVar25 = maxps(auVar13,auVar1);
    auVar14._4_4_ = -(uint)(auVar25._4_4_ <= 1.1920929e-07);
    auVar14._0_4_ = -(uint)(auVar25._0_4_ <= 1.1920929e-07);
    auVar14._8_4_ = -(uint)(auVar25._8_4_ <= 1.1920929e-07);
    auVar14._12_4_ = -(uint)(auVar25._12_4_ <= 1.1920929e-07);
    iVar11 = movmskps(param_2,auVar14);
    if (iVar11 == 0xf) {
      return;
    }
  }
                    /* Basis source: [matrix+0] and negative [matrix+20], with each Y component set
                       zero. Normalize independently. Constants [00FAB218]=-1, [00F998F8]=1,
                       [00F9B5B4]=.5. Degenerate horizontal basis is not repaired by a fallback in
                       native code. */
  fVar7 = *cameraMatrix;
  fVar8 = cameraMatrix[2];
  fVar9 = cameraMatrix[3];
  fVar6 = cameraMatrix[0xb];
  fVar15 = 0.0 - cameraMatrix[8];
  fVar18 = 0.0 - cameraMatrix[10];
  fVar12 = fVar8 * fVar8 + 0.0 + fVar7 * fVar7;
  auVar2._4_4_ = fVar12;
  auVar2._0_4_ = fVar12;
  auVar2._8_4_ = fVar12;
  auVar2._12_4_ = fVar12;
  auVar25 = rsqrtps(auVar21,auVar2);
  fVar16 = auVar25._0_4_;
  fVar17 = auVar25._4_4_;
  fVar19 = auVar25._8_4_;
  fVar20 = auVar25._12_4_;
  fVar16 = (1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16;
  fVar17 = (1.0 - fVar17 * fVar17 * fVar12) * fVar17 * 0.5 + fVar17;
  fVar19 = (1.0 - fVar19 * fVar19 * fVar12) * fVar19 * 0.5 + fVar19;
  fVar20 = (1.0 - fVar20 * fVar20 * fVar12) * fVar20 * 0.5 + fVar20;
  fVar23 = fVar15 * fVar15;
  auVar10._4_4_ = fVar23;
  auVar10._0_4_ = fVar23;
  auVar10._8_4_ = fVar23;
  auVar10._12_4_ = 0;
  auVar22._0_4_ = fVar18 * fVar18 + 0.0 + fVar23;
  auVar22._4_4_ = auVar22._0_4_;
  auVar22._8_4_ = auVar22._0_4_;
  auVar22._12_4_ = auVar22._0_4_;
  auVar25 = rsqrtps(auVar10 << 0x20,auVar22);
  fVar23 = auVar25._0_4_;
  fVar27 = auVar25._4_4_;
  fVar28 = auVar25._8_4_;
  fVar29 = auVar25._12_4_;
  fVar23 = (1.0 - fVar23 * fVar23 * auVar22._0_4_) * fVar23 * 0.5 + fVar23;
  fVar27 = (1.0 - fVar27 * fVar27 * auVar22._0_4_) * fVar27 * 0.5 + fVar27;
  fVar28 = (1.0 - fVar28 * fVar28 * auVar22._0_4_) * fVar28 * 0.5 + fVar28;
  fVar29 = (1.0 - fVar29 * fVar29 * auVar22._0_4_) * fVar29 * 0.5 + fVar29;
  *worldTranslation =
       ((1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16) * fVar7 * fVar3 +
       ((1.0 - fVar23 * fVar23 * auVar22._0_4_) * fVar23 * 0.5 + fVar23) * fVar15 * fVar5 + 0.0;
  worldTranslation[1] =
       ((1.0 - fVar17 * fVar17 * fVar12) * fVar17 * 0.5 + fVar17) * 0.0 * fVar3 +
       ((1.0 - fVar27 * fVar27 * auVar22._0_4_) * fVar27 * 0.5 + fVar27) * 0.0 * fVar5 + fVar4;
  worldTranslation[2] =
       ((1.0 - fVar19 * fVar19 * fVar12) * fVar19 * 0.5 + fVar19) * fVar8 * fVar3 +
       ((1.0 - fVar28 * fVar28 * auVar22._0_4_) * fVar28 * 0.5 + fVar28) * fVar18 * fVar5 + 0.0;
  worldTranslation[3] =
       ((1.0 - fVar20 * fVar20 * fVar12) * fVar20 * 0.5 + fVar20) * fVar9 * fVar3 +
       ((1.0 - fVar29 * fVar29 * auVar22._0_4_) * fVar29 * 0.5 + fVar29) * (0.0 - fVar6) * fVar5 +
       0.0;
  return;
}

