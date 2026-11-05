/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: returns zero when distance is greater than maximum; otherwise computes
   x=1-clamp((maximum-distance)/(maximum-minimum),0,1) and calls curve evaluator 008A9B70. The
   rolloff argument is passed but not read by this concrete implementation. Raw instruction proof:
   008A1970_AudioEmitter_EvaluateDistanceCurve.asm.
   original PC 1.67 TS3W.exe. */

float10 __thiscall
AudioEmitter_EvaluateDistanceCurve
          (int param_1,float param_2,undefined4 param_3,float param_4,float param_5)

{
  uint uVar1;
  float10 fVar2;
  float fVar3;
  
  if (param_5 < param_2) {
    return (float10)0;
  }
  fVar3 = (param_5 - param_2) / (param_5 - param_4);
  fVar3 = (float)((uint)fVar3 & (int)(DAT_00f998f0 - fVar3) >> 0x1f);
  uVar1 = (int)(DAT_00f998f8 - fVar3) >> 0x1f;
  fVar2 = AudioCurve_EvaluateLinear
                    ((void *)(param_1 + 0x10),
                     DAT_00f998f8 - (float)(~uVar1 & (uint)fVar3 | (uint)DAT_00f998f8 & uVar1));
  return fVar2;
}

