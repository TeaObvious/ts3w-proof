/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 tree numeric instruction contract. thiscall spline,floatposition,scaleFlagWord
   RET8; onlyflagLOWBYTEtested. SameSSEcacheinterpolation, additionally
   base=(max-min)*normalized+min inSSEbinary32 stored.
   Lazyhandleconstructionifbit0global011D987Cunset. amplitude+1488; lowerboundSSE(-0 - amplitude),
   upperamplitude; callsUniformGlobal. If flaglowbytenonzero x87 multipliesreturnedvariance
   bynormalized; addsstoredbase inx87 andreturnsST0. No inputclamp/finitecheck;
   flagstackslotreusedforamplitudestore gives decompileraliases. No
   absolute/relativevarianceinferencebeyondthisformula; globalprecisioncontrolnotestablished. */

float10 __thiscall TreeSpline_EvaluateWithVariance(void *this,float position,uint scaleVarianceFlag)

{
  float maximum;
  int iVar1;
  float10 fVar2;
  float fVar3;
  float fVar4;
  
  iVar1 = (int)(position * FLOAT_01017c18);
  if (iVar1 == 499) {
    fVar3 = *(float *)((int)this + 0xf9c);
  }
  else {
    fVar3 = *(float *)((int)this + iVar1 * 8 + 4);
    fVar3 = (position - (float)iVar1 * FLOAT_01017c14) * FLOAT_01017c18 *
            (*(float *)((int)this + iVar1 * 8 + 0xc) - fVar3) + fVar3;
  }
  fVar4 = (*(float *)((int)this + 0x1490) - *(float *)((int)this + 0x148c)) * fVar3 +
          *(float *)((int)this + 0x148c);
  if ((_DAT_011d987c & 1) == 0) {
    _DAT_011d987c = _DAT_011d987c | 1;
    TreeRandom_ConstructHandle(&DAT_011d9878);
    FUN_00f7f381((_onexit_t)&LAB_00f93660);
  }
  maximum = *(float *)((int)this + 0x1488);
  if ((char)scaleVarianceFlag != '\0') {
    fVar2 = TreeRandom_UniformGlobal(DAT_00f998f0 - maximum,maximum);
    return fVar2 * (float10)fVar3 + (float10)fVar4;
  }
  fVar2 = TreeRandom_UniformGlobal(DAT_00f998f0 - maximum,maximum);
  return fVar2 + (float10)fVar4;
}

