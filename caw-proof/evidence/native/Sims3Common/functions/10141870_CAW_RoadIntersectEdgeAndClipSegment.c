/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Computes the directed edge/clip-segment planar intersection
   using binary32 reciprocal of the cross denominator and interpolates the clip-segment vertex
   position. Input polygon3D carrier is(x,0,planarY,x); other interpolated fields and normalization
   belong to the shared clipping vertex record. The edge classification guarantees a crossing for
   the call path; no invented parallel-segment epsilon is present. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

void __cdecl
CAW_RoadIntersectEdgeAndClipSegment
          (float *param_1,float *param_2,float *param_3,float *param_4,float *param_5)

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
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined1 auVar17 [16];
  float fVar18;
  float fVar19;
  
  fVar4 = _DAT_10b310ec;
  fVar1 = *param_3;
  fVar2 = param_3[1];
  fVar3 = param_3[2];
  fVar7 = param_3[3];
  fVar8 = param_4[1];
  fVar9 = param_4[2];
  fVar10 = param_4[3];
  fVar18 = *param_2 - *param_1;
  fVar5 = param_2[1] - param_1[1];
  fVar19 = *param_4 - fVar1;
  fVar16 = fVar9 - fVar3;
  fVar14 = fVar3 - param_1[1];
  fVar6 = DAT_10acb0d4 / (fVar18 * fVar16 - fVar5 * fVar19);
  fVar11 = fVar1 - *param_1;
  fVar15 = (fVar11 * fVar5 - fVar14 * fVar18) * fVar6;
  *param_5 = (*param_4 - fVar1) * fVar15 + fVar1;
  param_5[1] = (fVar8 - fVar2) * fVar15 + fVar2;
  param_5[2] = (fVar9 - fVar3) * fVar15 + fVar3;
  param_5[3] = (fVar10 - fVar7) * fVar15 + fVar7;
  fVar1 = param_3[5];
  fVar2 = param_3[6];
  fVar3 = param_3[7];
  fVar7 = param_4[5];
  fVar8 = param_4[6];
  fVar9 = param_4[7];
  param_5[4] = (param_4[4] - param_3[4]) * fVar15 + param_3[4];
  param_5[5] = (fVar7 - fVar1) * fVar15 + fVar1;
  param_5[6] = (fVar8 - fVar2) * fVar15 + fVar2;
  param_5[7] = (fVar9 - fVar3) * fVar15 + fVar3;
  fVar1 = param_5[4];
  fVar2 = param_5[5];
  fVar3 = param_5[6];
  fVar10 = fVar3 * fVar3 + fVar2 * fVar2 + fVar1 * fVar1;
  auVar17._4_4_ = fVar10;
  auVar17._0_4_ = fVar10;
  auVar17._8_4_ = fVar10;
  auVar17._12_4_ = fVar10;
  auVar17 = rsqrtps(ZEXT416((uint)fVar16),auVar17);
  fVar5 = auVar17._0_4_;
  fVar18 = auVar17._4_4_;
  fVar12 = auVar17._8_4_;
  fVar13 = auVar17._12_4_;
  fVar5 = (DAT_10acb0d4 - fVar5 * fVar5 * fVar10) * fVar4 * fVar5 + fVar5;
  fVar18 = (DAT_10acb0d4 - fVar18 * fVar18 * fVar10) * fVar4 * fVar18 + fVar18;
  fVar12 = (DAT_10acb0d4 - fVar12 * fVar12 * fVar10) * fVar4 * fVar12 + fVar12;
  fVar13 = (DAT_10acb0d4 - fVar13 * fVar13 * fVar10) * fVar4 * fVar13 + fVar13;
  fVar7 = DAT_10acb0d4 - fVar18 * fVar18 * fVar10;
  fVar8 = DAT_10acb0d4 - fVar12 * fVar12 * fVar10;
  fVar9 = DAT_10acb0d4 - fVar13 * fVar13 * fVar10;
  param_5[4] = ((DAT_10acb0d4 - fVar5 * fVar5 * fVar10) * fVar4 * fVar5 + fVar5) * fVar1;
  param_5[5] = (fVar7 * fVar4 * fVar18 + fVar18) * fVar2;
  param_5[6] = (fVar8 * fVar4 * fVar12 + fVar12) * fVar3;
  param_5[7] = (fVar9 * fVar4 * fVar13 + fVar13) * param_5[7];
  param_5[0xc] = (param_4[0xc] - param_3[0xc]) * fVar15 + param_3[0xc];
  param_5[0xd] = param_5[0xd];
  param_5[0xe] = param_5[0xe];
  param_5[0xf] = param_5[0xf];
  fVar1 = param_4[0xd];
  fVar2 = param_3[0xd];
  param_5[0xc] = param_5[0xc];
  param_5[0xd] = (fVar1 - fVar2) * fVar15 + fVar2;
  param_5[0xe] = param_5[0xe];
  param_5[0xf] = param_5[0xf];
  fVar1 = param_2[2];
  fVar2 = param_1[2];
  param_5[0xc] = param_5[0xc];
  param_5[0xd] = param_5[0xd];
  param_5[0xe] = (fVar1 - fVar2) * (fVar11 * fVar16 - fVar14 * fVar19) * fVar6 + fVar2;
  param_5[0xf] = param_5[0xf];
  param_5[9] = -NAN;
  return;
}

