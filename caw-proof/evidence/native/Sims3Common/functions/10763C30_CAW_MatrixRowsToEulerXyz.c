/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst CAW1.22.10 transform/Euler instruction contract. Complete416-byte cdecl body, two
   stackwords angles4Out and aligned matrixRows12, plainRET/no return value. Reads first3 rows
   of4Float32 values; writes16bytes, not only Vector3. h=SQRTPS(Float32(m00*m00 + m01*m01)); COMISS
   h, Float32 constant0x3A83126F (near0.001), JBE selects singular path on less/equal OR unordered.
   General angles: atan2(m12,m22), atan2(0-m02,h), atan2(m01,m00); output lanes[X,Y,Z,Z]. Singular:
   atan2(0-m21,m11), atan2(0-m02,h),positive0,positive0. FPATAN loads numerator then denominator and
   computes atan2(ST1,ST0), with x87 intermediates rounded through binary32 FSTP before SIMD
   packing. Negations are SUBPS from positive zero; do not replace exceptional/signed-zero
   arithmetic with unverified bit flips. No finite guard, clamping or angle wrapping. X87 control
   word/MXCSR and exception masks are caller state; MathF equivalence is not established. */

void __cdecl CAW_MatrixRowsToEulerXyz(float *angles4Out,float *matrixRows12)

{
  float fVar1;
  float fVar2;
  float10 fVar3;
  float10 fVar4;
  float10 fVar5;
  float fVar6;
  undefined1 auVar7 [16];
  
  fVar1 = *matrixRows12;
  fVar2 = matrixRows12[1];
  auVar7._0_4_ = fVar1 * fVar1 + fVar2 * fVar2;
  auVar7._4_4_ = fVar1 * fVar1 + fVar2 * fVar2;
  auVar7._8_4_ = fVar1 * fVar1 + fVar2 * fVar2;
  auVar7._12_4_ = fVar1 * fVar1 + fVar2 * fVar2;
  auVar7 = sqrtps(auVar7,auVar7);
  fVar6 = auVar7._0_4_;
                    /* COMISS h, threshold3A83126F; following JBE routes equality, less and
                       unordered to singular branch. */
  if (0.001 < fVar6) {
                    /* FPATAN stack order is atan2(m12,m22), not swapped. FSTP later rounds to
                       binary32. */
    fVar3 = (float10)fpatan((float10)matrixRows12[6],(float10)matrixRows12[10]);
    fVar4 = (float10)fpatan((float10)(0.0 - matrixRows12[2]),(float10)fVar6);
    fVar5 = (float10)fpatan((float10)fVar2,(float10)fVar1);
                    /* MOVAPS writes four floats [X,Y,Z,Z]. Caller10980B00 exposes only firstthree.
                        */
    *angles4Out = (float)fVar3;
    angles4Out[1] = (float)fVar4;
    angles4Out[2] = (float)fVar5;
    angles4Out[3] = (float)fVar5;
    return;
  }
  fVar3 = (float10)fpatan((float10)(0.0 - matrixRows12[9]),(float10)matrixRows12[5]);
  fVar4 = (float10)fpatan((float10)(0.0 - matrixRows12[2]),(float10)fVar6);
  *angles4Out = (float)fVar3;
  angles4Out[1] = (float)fVar4;
  angles4Out[2] = 0.0;
  angles4Out[3] = 0.0;
  return;
}

