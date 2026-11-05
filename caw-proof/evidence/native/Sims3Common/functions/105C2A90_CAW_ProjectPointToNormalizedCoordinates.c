/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst CAW1.22.10 original camera/picking instruction contract. Complete
   body105C2A90..105C2BAA,283bytes. Custom physical ABI: ECXcamera,EAXaligned4-float output
   pointer,ONE stackword worldPosition4; caller removes4bytes,plainRET; meaningful resultAL is
   ALWAYS1 after writes. Input4lanes read but W is overwritten with exact1 before matrix product
   camera+130..16F. Original order combines Yrow+Xrow,thenZrow,thenWrow with MULPS/ADDPS. Effective
   homogeneousW is chosen by the SIGN BIT of Float32(W-epsilon),SAR/AND/OR; epsilon raw0x3727C5AC
   (binary32 near1e-5). It is not a float-to-int numeric cast or COMISS branch. Negative-sign
   difference chooses epsilon; otherwise retains originalW bits. RCPPS plusTWO(2-w*r)*r refinements
   then multiply all4 lanes. No frustum/X/Y/Z/behind-camera rejection or finite guard. Caller
   supplies aligned readableFloat4 and writableFloat4; no null tests. Actual decompiler
   bit-cast/rendering and SIMD intrinsic artifacts are governed by the original instructions. */

byte __cdecl
CAW_ProjectPointToNormalizedCoordinates(void *camera,float *normalized4Out,float *worldPosition4)

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
  uint uVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined1 auVar17 [16];
  
                    /* Custom ABI: ECXcamera,EAXoutputFloat4,inputFloat4 at entrySP+4. MOVAPS
                       requires valid aligned buffers. Original caller105C2D1F removes4stackbytes.
                        */
  fVar8 = *worldPosition4;
  fVar9 = worldPosition4[1];
  fVar10 = worldPosition4[2];
  fVar12 = *(float *)((int)camera + 0x144);
  fVar16 = *(float *)((int)camera + 0x148);
  fVar13 = *(float *)((int)camera + 0x14c);
  fVar14 = *(float *)((int)camera + 0x134);
  fVar15 = *(float *)((int)camera + 0x138);
  fVar1 = *(float *)((int)camera + 0x13c);
  fVar2 = *(float *)((int)camera + 0x154);
  fVar3 = *(float *)((int)camera + 0x158);
  fVar4 = *(float *)((int)camera + 0x15c);
  fVar5 = *(float *)((int)camera + 0x164);
  fVar6 = *(float *)((int)camera + 0x168);
  fVar7 = *(float *)((int)camera + 0x16c);
  *normalized4Out =
       fVar9 * *(float *)((int)camera + 0x140) + fVar8 * *(float *)((int)camera + 0x130) +
       fVar10 * *(float *)((int)camera + 0x150) + *(float *)((int)camera + 0x160) * 1.0;
  normalized4Out[1] = fVar9 * fVar12 + fVar8 * fVar14 + fVar10 * fVar2 + fVar5 * 1.0;
  normalized4Out[2] = fVar9 * fVar16 + fVar8 * fVar15 + fVar10 * fVar3 + fVar6 * 1.0;
  normalized4Out[3] = fVar9 * fVar13 + fVar8 * fVar1 + fVar10 * fVar4 + fVar7 * 1.0;
  fVar16 = normalized4Out[3] - 1e-05;
                    /* Interpret rawbits of Float32(W-epsilon): MOV/SAR select a signmask; this is
                       NOT CVTTSS2SI numeric conversion. */
  uVar11 = (int)fVar16 >> 0x1f;
  fVar12 = (float)(~uVar11 & (uint)normalized4Out[3] | uVar11 & 0x3727c5ac);
  *normalized4Out = *normalized4Out;
  normalized4Out[1] = normalized4Out[1];
  normalized4Out[2] = normalized4Out[2];
  normalized4Out[3] = fVar12;
  auVar17._4_4_ = fVar12;
  auVar17._0_4_ = fVar12;
  auVar17._8_4_ = fVar12;
  auVar17._12_4_ = fVar12;
                    /* RCPPS seed then TWO(2-W*r)*r refinements; no clipping test. */
  auVar17 = rcpps(ZEXT416((uint)fVar16),auVar17);
  fVar16 = (2.0 - auVar17._0_4_ * fVar12) * auVar17._0_4_;
  fVar13 = (2.0 - auVar17._4_4_ * fVar12) * auVar17._4_4_;
  fVar14 = (2.0 - auVar17._8_4_ * fVar12) * auVar17._8_4_;
  fVar15 = (2.0 - auVar17._12_4_ * fVar12) * auVar17._12_4_;
  *normalized4Out = (2.0 - fVar16 * fVar12) * fVar16 * *normalized4Out;
  normalized4Out[1] = (2.0 - fVar13 * fVar12) * fVar13 * normalized4Out[1];
  normalized4Out[2] = (2.0 - fVar14 * fVar12) * fVar14 * normalized4Out[2];
  normalized4Out[3] = (2.0 - fVar15 * fVar12) * fVar15 * normalized4Out[3];
  return 1;
}

