/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 stair collision and renderer contract): ECX renderer; RET20 eight physical
   stack slots: direction32, float rise, float run, float* position4, float* outAdvance4, float*
   outWorldPosition4, float* outWorldDirection4, byte transformDirection. Original scalar
   instruction lanes establish rise versus run: for cardinal directions0/2/4/6 advance XYZ is
   (run,-rise,0),(0,-rise,-run),(-run,-rise,0),(0,-rise,run). Fourth advance lane is retained as
   actual SIMD data, not assigned a guessed homogeneous-W role. Original MOVAPS accesses require
   16-byte-aligned four-lane vector pointers; direct callbacks align their local stack vectors.
   Writes cardinal orientation and adds four advance lanes to position; forces position-transform
   input lane3=1, applies lot matrix from ADF630. Optional direction transform excludes translation
   and produces final lane3=1. Unsupported directions skip initialization of advance/direction
   outputs but still consume those caller-provided outputs; no success boolean/rejection is added.
   B298A0 supplies rise.75/run1, B29930 supplies .1875/.25; B234B0 then advances shared position,
   proving the four-step/one-step dimensions and immediate callback consumer. Original switch
   targets B23354 and negative-zero constant F998F0 retain exact bits; actual SIMD decompiler scalar
   artifacts remain. */

void __thiscall
ModularStairsRenderer_ComputeStepPlacement
          (void *this,int direction,float rise,float run,float *position4,float *outAdvance4,
          float *outWorldPosition4,float *outWorldDirection4,byte transformDirection)

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
  float *pfVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  
  fVar10 = FLOAT_00f998f8;
  switch(direction) {
  case 0:
    fVar15 = FLOAT_00f998f0 - rise;
    *outAdvance4 = run;
    outAdvance4[1] = fVar15;
    outAdvance4[2] = 0.0;
    outAdvance4[3] = run;
    fVar15 = 0.0;
    fVar17 = FLOAT_00fab218;
    break;
  default:
    goto switchD_00b230eb_caseD_1;
  case 2:
    fVar15 = FLOAT_00f998f0 - rise;
    fVar17 = FLOAT_00f998f0 - run;
    *outAdvance4 = 0.0;
    outAdvance4[1] = fVar15;
    outAdvance4[2] = fVar17;
    outAdvance4[3] = 0.0;
    fVar15 = fVar10;
    fVar17 = 0.0;
    break;
  case 4:
    fVar15 = FLOAT_00f998f0 - run;
    fVar17 = FLOAT_00f998f0 - rise;
    *outAdvance4 = fVar15;
    outAdvance4[1] = fVar17;
    outAdvance4[2] = 0.0;
    outAdvance4[3] = fVar15;
    fVar15 = 0.0;
    fVar17 = fVar10;
    break;
  case 6:
    fVar15 = FLOAT_00f998f0 - rise;
    *outAdvance4 = 0.0;
    outAdvance4[1] = fVar15;
    outAdvance4[2] = run;
    outAdvance4[3] = 0.0;
    fVar15 = FLOAT_00fab218;
    fVar17 = 0.0;
  }
  *outWorldDirection4 = fVar17;
  outWorldDirection4[1] = 0.0;
  outWorldDirection4[2] = fVar15;
  outWorldDirection4[3] = fVar17;
switchD_00b230eb_caseD_1:
  fVar15 = position4[3];
  fVar17 = outAdvance4[3];
  fVar12 = *position4 + *outAdvance4;
  fVar13 = position4[1] + outAdvance4[1];
  fVar14 = position4[2] + outAdvance4[2];
  *outWorldPosition4 = fVar12;
  outWorldPosition4[1] = fVar13;
  outWorldPosition4[2] = fVar14;
  outWorldPosition4[3] = fVar15 + fVar17;
  pfVar11 = (float *)FUN_00adf630(*(int *)((int)this + 0x1c));
  fVar15 = pfVar11[5];
  fVar17 = pfVar11[6];
  fVar1 = pfVar11[7];
  fVar2 = pfVar11[1];
  fVar3 = pfVar11[2];
  fVar4 = pfVar11[3];
  fVar5 = pfVar11[9];
  fVar6 = pfVar11[10];
  fVar7 = pfVar11[0xb];
  fVar8 = pfVar11[0xd];
  fVar9 = pfVar11[0xe];
  fVar16 = pfVar11[0xf];
  *outWorldPosition4 =
       fVar13 * pfVar11[4] + fVar12 * *pfVar11 + fVar14 * pfVar11[8] + fVar10 * pfVar11[0xc];
  outWorldPosition4[1] = fVar13 * fVar15 + fVar12 * fVar2 + fVar14 * fVar5 + fVar10 * fVar8;
  outWorldPosition4[2] = fVar13 * fVar17 + fVar12 * fVar3 + fVar14 * fVar6 + fVar10 * fVar9;
  outWorldPosition4[3] = fVar13 * fVar1 + fVar12 * fVar4 + fVar14 * fVar7 + fVar10 * fVar16;
  pfVar11 = (float *)FUN_00adf630(*(int *)((int)this + 0x1c));
  fVar10 = pfVar11[1];
  fVar15 = pfVar11[2];
  fVar17 = pfVar11[3];
  fVar1 = pfVar11[5];
  fVar2 = pfVar11[6];
  fVar3 = pfVar11[7];
  fVar4 = pfVar11[9];
  fVar5 = pfVar11[10];
  fVar6 = pfVar11[0xb];
  if (transformDirection != 0) {
    fVar7 = *outWorldDirection4;
    fVar8 = outWorldDirection4[1];
    fVar9 = outWorldDirection4[2];
    fVar16 = FLOAT_00f998f8 * 0.0;
    fVar12 = FLOAT_00f998f8 * 0.0;
    fVar13 = FLOAT_00f998f8 * FLOAT_00f998f8;
    *outWorldDirection4 =
         fVar7 * *pfVar11 + fVar8 * pfVar11[4] + fVar9 * pfVar11[8] + FLOAT_00f998f8 * 0.0;
    outWorldDirection4[1] = fVar7 * fVar10 + fVar8 * fVar1 + fVar9 * fVar4 + fVar16;
    outWorldDirection4[2] = fVar7 * fVar15 + fVar8 * fVar2 + fVar9 * fVar5 + fVar12;
    outWorldDirection4[3] = fVar7 * fVar17 + fVar8 * fVar3 + fVar9 * fVar6 + fVar13;
  }
  return;
}

