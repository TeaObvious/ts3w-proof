/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67, complete39instructions/118ownedbytes in two existing ranges; six-byte68D9EA..68D9EF gap
   is not owned. ECX component bounds plus two incoming stack DWORDs: transform pointer and eight
   outputfloat4 records; physical RET8. Calls0068C440 for actual ordered eight component corners.
   Every SIMD outputlane computes x*row0, adds translationrow3, then adds y*row1 and z*row2 in that
   order; source fourthlane is not multiplied. B0EA00 consumes transformed0,1,5,6 X/Z pairs,
   including maxY for corner6. Existing decompiler types/ABI retained, no bytes changed. */

void __thiscall Bounds_TransformEightComponentCorners(void *this,float *param_1,float *param_2)

{
  float *pfVar1;
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
  int iVar17;
  int iVar18;
  float local_90 [35];
  
  Bounds_WriteEightComponentCorners(this,local_90);
  iVar17 = (int)local_90 - (int)param_2;
  iVar18 = 8;
  do {
    pfVar1 = (float *)(iVar17 + (int)param_2);
    fVar2 = *pfVar1;
    fVar3 = pfVar1[1];
    fVar4 = pfVar1[2];
    fVar5 = param_1[1];
    fVar6 = param_1[2];
    fVar7 = param_1[3];
    fVar8 = param_1[5];
    fVar9 = param_1[6];
    fVar10 = param_1[7];
    fVar11 = param_1[0xd];
    fVar12 = param_1[0xe];
    fVar13 = param_1[0xf];
    fVar14 = param_1[9];
    fVar15 = param_1[10];
    fVar16 = param_1[0xb];
    *param_2 = fVar2 * *param_1 + param_1[0xc] + fVar3 * param_1[4] + fVar4 * param_1[8];
    param_2[1] = fVar2 * fVar5 + fVar11 + fVar3 * fVar8 + fVar4 * fVar14;
    param_2[2] = fVar2 * fVar6 + fVar12 + fVar3 * fVar9 + fVar4 * fVar15;
    param_2[3] = fVar2 * fVar7 + fVar13 + fVar3 * fVar10 + fVar4 * fVar16;
    param_2 = param_2 + 4;
    iVar18 = iVar18 + -1;
  } while (iVar18 != 0);
  return;
}

