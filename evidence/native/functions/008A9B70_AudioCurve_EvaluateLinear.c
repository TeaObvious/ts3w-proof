/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: binary-searches 0x14-byte knot records by x and returns an endpoint y or the
   precomputed linear segment y. This evaluator performs no decibel conversion or exponentiation.
   Raw instruction proof:
   008A9B70_AudioCurve_EvaluateLinear.asm.
   original PC 1.67 TS3W.exe. */

float10 __thiscall AudioCurve_EvaluateLinear(void *param_1,float param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar1 = *(int *)((int)param_1 + 0x35c);
  iVar4 = 0;
  if (0 < iVar1 + -1) {
    iVar2 = *(int *)param_1;
    iVar5 = iVar1 + -1;
    do {
      iVar3 = iVar5 + iVar4 >> 1;
      if (*(float *)(iVar2 + iVar3 * 0x14) <= param_2) {
        iVar4 = iVar3 + 1;
        iVar3 = iVar5;
      }
      iVar5 = iVar3;
    } while (iVar4 < iVar3);
    if (0 < iVar4) {
      if ((iVar1 + -1 <= iVar4) && (*(float *)(iVar2 + -0x14 + iVar1 * 0x14) <= param_2)) {
        return (float10)*(float *)(iVar2 + iVar1 * 0x14 + -0x10);
      }
      iVar1 = iVar2 + iVar4 * 0x14;
      return ((float10)param_2 - (float10)*(float *)(iVar2 + 8 + iVar4 * 0x14)) *
             (float10)*(float *)(iVar1 + 0x10) + (float10)*(float *)(iVar1 + 0xc);
    }
  }
  return (float10)*(float *)(*(int *)param_1 + 4);
}

