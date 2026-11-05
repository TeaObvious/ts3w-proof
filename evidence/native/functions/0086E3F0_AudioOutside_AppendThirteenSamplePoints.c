/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 outside sampling and occlusion instruction contract. cdecl THREE stack words:
   aligned four-float center, binary32 radius, begin/end/capacity vector; RET, selected caller adds
   ESP0xC. Appends center, then SIX half-phase ring points, then SIX zero-phase ring points at SAME
   radius: thirteen appended points, no count parameter. Unsigned ordinal conversion uses signed
   FILD plus optional stored float2^32; x87 multiplies stored binary32 angleStep00FC26FC then first
   ring adds stored binary32 halfStep00FC2438, with ONE FSTP binary32 angle before FSIN/FCOS. Each
   trig result is stored binary32 before SSE MULPS/ADDPS. Point lanes are
   (sin*radius,0*radius,cos*radius,sin*radius)+center. Storage growth6C8840 and caller/FPU
   setup/exceptional input domains remain unexpanded static; do not replace this instruction
   sequence with an assertion of exact MathF.Tau equivalence. This helper also has selected
   caller86EA60 in unexpanded primitive86E990; water/pond equivalence is not established. */

void __cdecl
AudioOutside_AppendThirteenSamplePoints(float *centerFourLanes,float radius,void *pointsVector)

{
  float *pfVar1;
  undefined4 *puVar2;
  int iVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  uint uVar7;
  float10 fVar8;
  float10 fVar9;
  float fVar10;
  float fVar11;
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  float local_20;
  float fStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  pfVar1 = *(float **)((int)pointsVector + 4);
  if (pfVar1 < *(float **)((int)pointsVector + 8)) {
    *(float **)((int)pointsVector + 4) = pfVar1 + 4;
    if (pfVar1 != (float *)0x0) {
      fVar4 = centerFourLanes[1];
      fVar5 = centerFourLanes[2];
      fVar6 = centerFourLanes[3];
      *pfVar1 = *centerFourLanes;
      pfVar1[1] = fVar4;
      pfVar1[2] = fVar5;
      pfVar1[3] = fVar6;
    }
  }
  else {
    FUN_006c8840(pointsVector,pfVar1,centerFourLanes);
  }
  uVar7 = 0;
  do {
    puVar2 = *(undefined4 **)((int)pointsVector + 4);
    if (puVar2 < *(undefined4 **)((int)pointsVector + 8)) {
      *(undefined4 **)((int)pointsVector + 4) = puVar2 + 4;
    }
    else {
      FUN_006c8840(pointsVector,puVar2,local_30);
    }
    iVar3 = *(int *)((int)pointsVector + 4);
    fVar4 = (float)(int)uVar7;
    if ((int)uVar7 < 0) {
      fVar4 = fVar4 + 4.2949673e+09;
    }
                    /* Stored binary32 angle-step constant; x87 multiply, optional half-step add,
                       THEN single float store. Literal pi division or early float multiplication
                       may round differently. */
    uVar7 = uVar7 + 1;
                    /* First loop bound6; second loop bound6 at86E57C. Center already appended:13
                       points, both groups share radius. */
    fVar4 = fVar4 * 1.0471976 + 0.5235988;
    fVar8 = (float10)fsin((float10)fVar4);
    fVar9 = (float10)fcos((float10)fVar4);
    fVar10 = (float)fVar8 * radius;
    fVar11 = (float)fVar8 * radius;
    *(float *)(iVar3 + -0x10) = fVar10;
    *(float *)(iVar3 + -0xc) = radius * 0.0;
    *(float *)(iVar3 + -8) = (float)fVar9 * radius;
    *(float *)(iVar3 + -4) = fVar11;
    fVar4 = centerFourLanes[1];
    fVar5 = centerFourLanes[2];
    fVar6 = centerFourLanes[3];
    *(float *)(iVar3 + -0x10) = fVar10 + *centerFourLanes;
    *(float *)(iVar3 + -0xc) = radius * 0.0 + fVar4;
    *(float *)(iVar3 + -8) = (float)fVar9 * radius + fVar5;
    *(float *)(iVar3 + -4) = fVar11 + fVar6;
  } while (uVar7 < 6);
  uVar7 = 0;
  do {
    puVar2 = *(undefined4 **)((int)pointsVector + 4);
    if (puVar2 < *(undefined4 **)((int)pointsVector + 8)) {
      *(undefined4 **)((int)pointsVector + 4) = puVar2 + 4;
    }
    else {
      FUN_006c8840(pointsVector,puVar2,local_40);
    }
    iVar3 = *(int *)((int)pointsVector + 4);
    fVar4 = (float)(int)uVar7;
    if ((int)uVar7 < 0) {
      fVar4 = fVar4 + 4.2949673e+09;
    }
    uVar7 = uVar7 + 1;
    fVar8 = (float10)fsin((float10)(fVar4 * 1.0471976));
    local_20 = (float)fVar8;
    fVar8 = (float10)fcos((float10)(fVar4 * 1.0471976));
    fStack_1c = (float)fVar8;
    uStack_18 = 0;
    uStack_14 = 0;
    *(float *)(iVar3 + -0x10) = local_20 * radius;
    *(float *)(iVar3 + -0xc) = radius * 0.0;
    *(float *)(iVar3 + -8) = fStack_1c * radius;
    *(float *)(iVar3 + -4) = local_20 * radius;
    fVar4 = centerFourLanes[1];
    fVar5 = centerFourLanes[2];
    fVar6 = centerFourLanes[3];
    *(float *)(iVar3 + -0x10) = local_20 * radius + *centerFourLanes;
    *(float *)(iVar3 + -0xc) = radius * 0.0 + fVar4;
    *(float *)(iVar3 + -8) = fStack_1c * radius + fVar5;
    *(float *)(iVar3 + -4) = local_20 * radius + fVar6;
  } while (uVar7 < 6);
  return;
}

