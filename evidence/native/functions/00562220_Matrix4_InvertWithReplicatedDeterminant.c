/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 828 complete owned bytes/196 actual Listing
   instructions. No runtime execution.
   Three stack pointers, plain RET. SSE cofactor calculation from four16-byte input rows forms a
   determinant replicated across four lanes, writes it through third pointer, and DIVPS divides
   cofactor rows into four output rows. No singularity branch is present. This is a general matrix
   inverse; no CLR evaluation/exception equivalence is inferred. */

void __cdecl
Matrix4_InvertWithReplicatedDeterminant
          (undefined1 (*param_1) [16],undefined1 (*param_2) [16],float *param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar7;
  float fVar8;
  undefined1 auVar6 [16];
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar24 [16];
  undefined1 local_60 [8];
  float fStack_58;
  float fStack_54;
  
  auVar6 = param_2[1];
  fVar1 = auVar6._12_4_;
  auVar14 = *param_2;
  fVar2 = auVar14._12_4_;
  fVar9 = auVar6._0_4_;
  fVar15 = auVar6._4_4_;
  fVar19 = auVar6._8_4_;
  auVar6 = param_2[2];
  fVar3 = auVar6._12_4_;
  fVar10 = auVar6._0_4_;
  fVar16 = auVar6._4_4_;
  fVar20 = auVar6._8_4_;
  auVar6 = param_2[3];
  fVar4 = auVar6._12_4_;
  fVar11 = auVar6._0_4_;
  fVar17 = auVar6._4_4_;
  fVar21 = auVar6._8_4_;
  fVar5 = auVar14._0_4_;
  fVar7 = auVar14._4_4_;
  fVar8 = auVar14._8_4_;
  fVar12 = (fVar4 * fVar20 - fVar3 * fVar21) * fVar15 + (fVar3 * fVar17 - fVar4 * fVar16) * fVar19 +
           (fVar21 * fVar16 - fVar20 * fVar17) * fVar1;
  fVar22 = (fVar17 * fVar10 - fVar16 * fVar11) * fVar1 + (fVar16 * fVar4 - fVar17 * fVar3) * fVar9 +
           (fVar11 * fVar3 - fVar10 * fVar4) * fVar15;
  fVar18 = -((fVar11 * fVar3 - fVar10 * fVar4) * fVar19 +
             (fVar10 * fVar21 - fVar11 * fVar20) * fVar1 + (fVar4 * fVar20 - fVar3 * fVar21) * fVar9
            );
  fVar23 = -((fVar21 * fVar16 - fVar20 * fVar17) * fVar9 +
             (fVar20 * fVar11 - fVar21 * fVar10) * fVar15 +
            (fVar17 * fVar10 - fVar16 * fVar11) * fVar19);
  local_60._4_4_ = fVar2 * fVar23 + fVar7 * fVar18 + fVar8 * fVar22 + fVar5 * fVar12;
  local_60._0_4_ = local_60._4_4_;
  fStack_58 = (float)local_60._4_4_;
  fStack_54 = (float)local_60._4_4_;
  *param_3 = (float)local_60._4_4_;
  param_3[1] = (float)local_60._4_4_;
  param_3[2] = (float)local_60._4_4_;
  param_3[3] = (float)local_60._4_4_;
  auVar6._4_4_ = (fVar5 * fVar4 - fVar11 * fVar2) * fVar20 +
                 (fVar11 * fVar8 - fVar5 * fVar21) * fVar3 +
                 (fVar2 * fVar21 - fVar4 * fVar8) * fVar10;
  auVar6._0_4_ = fVar18;
  auVar6._8_4_ = -((fVar9 * fVar2 - fVar5 * fVar1) * fVar21 +
                   (fVar5 * fVar19 - fVar9 * fVar8) * fVar4 +
                  (fVar1 * fVar8 - fVar2 * fVar19) * fVar11);
  auVar6._12_4_ =
       (fVar10 * fVar1 - fVar9 * fVar3) * fVar8 + (fVar9 * fVar20 - fVar10 * fVar19) * fVar2 +
       (fVar3 * fVar19 - fVar1 * fVar20) * fVar5;
  auVar6 = divps(auVar6,_local_60);
  param_1[1] = auVar6;
  auVar24._4_4_ =
       -((fVar2 * fVar21 - fVar4 * fVar8) * fVar16 + (fVar4 * fVar7 - fVar2 * fVar17) * fVar20 +
        (fVar8 * fVar17 - fVar21 * fVar7) * fVar3);
  auVar24._0_4_ = fVar12;
  auVar24._8_4_ =
       (fVar1 * fVar8 - fVar2 * fVar19) * fVar17 + (fVar2 * fVar15 - fVar1 * fVar7) * fVar21 +
       (fVar19 * fVar7 - fVar8 * fVar15) * fVar4;
  auVar24._12_4_ =
       -((fVar3 * fVar19 - fVar1 * fVar20) * fVar7 + (fVar1 * fVar16 - fVar3 * fVar15) * fVar8 +
        (fVar20 * fVar15 - fVar19 * fVar16) * fVar2);
  auVar14._4_4_ =
       -((fVar7 * fVar11 - fVar17 * fVar5) * fVar3 + (fVar17 * fVar2 - fVar7 * fVar4) * fVar10 +
        (fVar5 * fVar4 - fVar11 * fVar2) * fVar16);
  auVar14._0_4_ = fVar22;
  auVar14._8_4_ =
       (fVar15 * fVar5 - fVar7 * fVar9) * fVar4 + (fVar7 * fVar1 - fVar15 * fVar2) * fVar11 +
       (fVar9 * fVar2 - fVar5 * fVar1) * fVar17;
  auVar14._12_4_ =
       -((fVar16 * fVar9 - fVar15 * fVar10) * fVar2 + (fVar15 * fVar3 - fVar16 * fVar1) * fVar5 +
        (fVar10 * fVar1 - fVar9 * fVar3) * fVar7);
  auVar13._4_4_ =
       (fVar8 * fVar17 - fVar21 * fVar7) * fVar10 + (fVar21 * fVar5 - fVar8 * fVar11) * fVar16 +
       (fVar7 * fVar11 - fVar17 * fVar5) * fVar20;
  auVar13._0_4_ = fVar23;
  auVar13._8_4_ =
       -((fVar19 * fVar7 - fVar8 * fVar15) * fVar11 + (fVar8 * fVar9 - fVar19 * fVar5) * fVar17 +
        (fVar15 * fVar5 - fVar7 * fVar9) * fVar21);
  auVar13._12_4_ =
       (fVar20 * fVar15 - fVar19 * fVar16) * fVar5 + (fVar19 * fVar10 - fVar20 * fVar9) * fVar7 +
       (fVar16 * fVar9 - fVar15 * fVar10) * fVar8;
  auVar24 = divps(auVar24,_local_60);
  auVar6 = divps(auVar14,_local_60);
  auVar14 = divps(auVar13,_local_60);
  *param_1 = auVar24;
  param_1[2] = auVar6;
  param_1[3] = auVar14;
  return;
}

