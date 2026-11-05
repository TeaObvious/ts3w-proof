/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. thiscall spline,position(float), RET4,
   returnST0. SSE: MULSS position*float499(word43F98000), CVTTSS2SI truncsignedindex. index==499
   takescachevalue+F9C; otherwise two cacheYvalues at4+index*8/0C+index*8,
   fraction=(position-float(index)*stored01017C14)*499, separateMULSS/SUBSS/ADDSS stores. Then x87
   (max+1490 - min+148C)*normalized+min returnswithoutfloatstore. No
   positionclamp/finite/rangecheck. Exactconstants/SSEroundingdistinctfromambientx87precision, not
   genericdoubleexactness. */

float10 __thiscall TreeSpline_EvaluateWithoutVariance(void *this,float position)

{
  int iVar1;
  float fVar2;
  
  iVar1 = (int)(position * FLOAT_01017c18);
  if (iVar1 == 499) {
    fVar2 = *(float *)((int)this + 0xf9c);
  }
  else {
    fVar2 = *(float *)((int)this + iVar1 * 8 + 4);
    fVar2 = (position - (float)iVar1 * FLOAT_01017c14) * FLOAT_01017c18 *
            (*(float *)((int)this + iVar1 * 8 + 0xc) - fVar2) + fVar2;
  }
  return ((float10)*(float *)((int)this + 0x1490) - (float10)*(float *)((int)this + 0x148c)) *
         (float10)fVar2 + (float10)*(float *)((int)this + 0x148c);
}

