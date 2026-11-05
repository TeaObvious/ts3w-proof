/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Reviewed native envelope evaluation. The ECX value is an envelope pointer, despite the
   decompiler's float parameter artifact. Stage 1 interpolates from 0 to 1 using elapsed +0x20
   divided by stage duration +0x04; stages 0 and 2 return 1. Other authored transition stages retain
   previous/held values. Analyst labels do not change the recovered calling convention. */

float10 __fastcall TS3W_AudioEnvelopeValue(float envelopeAddress)

{
  float fVar1;
  float fVar2;
  float fVar3;

  fVar1 = *(float *)((int)envelopeAddress + *(int *)((int)envelopeAddress + 0x18) * 4);
  fVar2 = envelopeAddress;
  fVar3 = envelopeAddress;
  switch(*(int *)((int)envelopeAddress + 0x18)) {
  case 0:
  case 2:
    return (float10)1;
  case 1:
    fVar2 = 1.0;
    fVar3 = 0.0;
    goto LAB_008aaa99;
  case 3:
    if (*(float *)((int)envelopeAddress + 0x2c) == 0.0) {
      *(undefined4 *)((int)envelopeAddress + 0x2c) = *(undefined4 *)((int)envelopeAddress + 0x28);
    }
    fVar2 = *(float *)((int)envelopeAddress + 0x24);
    fVar3 = *(float *)((int)envelopeAddress + 0x2c);
    break;
  case 4:
    return (float10)*(float *)((int)envelopeAddress + 0x24);
  case 5:
    if (*(float *)((int)envelopeAddress + 0x30) == 0.0) {
      *(undefined4 *)((int)envelopeAddress + 0x30) = *(undefined4 *)((int)envelopeAddress + 0x28);
    }
    fVar3 = *(float *)((int)envelopeAddress + 0x30);
    fVar2 = 0.0;
    goto LAB_008aaa89;
  case 6:
    return (float10)0;
  }
  if (fVar2 == 0.0) {
LAB_008aaa89:
    if (fVar3 < 1e-12) {
      fVar3 = fVar2;
    }
  }
LAB_008aaa99:
  if (fVar1 != 0.0) {
    fVar2 = ((fVar2 - fVar3) * *(float *)((int)envelopeAddress + 0x20)) / fVar1 + fVar3;
  }
  *(float *)((int)envelopeAddress + 0x28) = fVar2;
  return (float10)fVar2;
}

