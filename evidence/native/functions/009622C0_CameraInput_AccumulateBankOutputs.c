/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Add one 0x100-byte input bank into rateOutput
   and impulseOutput, each 9 floats: translation4, angular4, zoom1. Rate uses paired source groups
   +40/+70 translation, +50/+80 angular, +60/+90 zoom. Impulse uses +A0/+D0, +B0/+E0, +C0/+F0.
   Translation gains are bank[0] for X/Z/W and[4] forY. Angular gains are [10]*[2C] forX/W,
   [14]*[30] forY, [18] forZ. Zoom selects [8] when sum>0 and[C] otherwise. No normalization, angle
   clamping or clearing occurs in this function. Source-group names and rate/impulse roles derive
   from main-frame consumption. */

void __thiscall CameraInput_AccumulateBankOutputs(void *this,float *rateOutput,float *impulseOutput)

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
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;

  fVar1 = *(float *)this;
  fVar2 = *(float *)((int)this + 4);
  fVar10 = *(float *)((int)this + 0x2c) * *(float *)((int)this + 0x10);
  fVar3 = *(float *)((int)this + 0x18);
  fVar13 = *(float *)((int)this + 0x30) * *(float *)((int)this + 0x14);
  fVar11 = *(float *)((int)this + 0x90) + *(float *)((int)this + 0x60);
  if (fVar11 <= 0.0) {
    fVar15 = *(float *)((int)this + 0xc);
  }
  else {
    fVar15 = *(float *)((int)this + 8);
  }
  fVar14 = *(float *)((int)this + 0xf0) + *(float *)((int)this + 0xc0);
  if (fVar14 <= 0.0) {
    fVar12 = *(float *)((int)this + 0xc);
  }
  else {
    fVar12 = *(float *)((int)this + 8);
  }
  fVar4 = *(float *)((int)this + 0x44);
  fVar5 = *(float *)((int)this + 0x48);
  fVar6 = *(float *)((int)this + 0x4c);
  fVar7 = *(float *)((int)this + 0x74);
  fVar8 = *(float *)((int)this + 0x78);
  fVar9 = *(float *)((int)this + 0x7c);
  *rateOutput = (*(float *)((int)this + 0x70) + *(float *)((int)this + 0x40)) * fVar1 + *rateOutput;
  rateOutput[1] = (fVar7 + fVar4) * fVar2 + rateOutput[1];
  rateOutput[2] = (fVar8 + fVar5) * fVar1 + rateOutput[2];
  rateOutput[3] = (fVar9 + fVar6) * fVar1 + rateOutput[3];
  fVar4 = *(float *)((int)this + 0x54);
  fVar5 = *(float *)((int)this + 0x58);
  fVar6 = *(float *)((int)this + 0x5c);
  fVar7 = *(float *)((int)this + 0x84);
  fVar8 = *(float *)((int)this + 0x88);
  fVar9 = *(float *)((int)this + 0x8c);
  rateOutput[4] =
       (*(float *)((int)this + 0x80) + *(float *)((int)this + 0x50)) * fVar10 + rateOutput[4];
  rateOutput[5] = (fVar7 + fVar4) * fVar13 + rateOutput[5];
  rateOutput[6] = (fVar8 + fVar5) * fVar3 + rateOutput[6];
  rateOutput[7] = (fVar9 + fVar6) * fVar10 + rateOutput[7];
  rateOutput[8] = fVar15 * fVar11 + rateOutput[8];
  fVar11 = *(float *)((int)this + 0xd4);
  fVar15 = *(float *)((int)this + 0xd8);
  fVar4 = *(float *)((int)this + 0xdc);
  fVar5 = *(float *)((int)this + 0xa4);
  fVar6 = *(float *)((int)this + 0xa8);
  fVar7 = *(float *)((int)this + 0xac);
  *impulseOutput =
       (*(float *)((int)this + 0xd0) + *(float *)((int)this + 0xa0)) * fVar1 + *impulseOutput;
  impulseOutput[1] = (fVar11 + fVar5) * fVar2 + impulseOutput[1];
  impulseOutput[2] = (fVar15 + fVar6) * fVar1 + impulseOutput[2];
  impulseOutput[3] = (fVar4 + fVar7) * fVar1 + impulseOutput[3];
  fVar1 = *(float *)((int)this + 0xb4);
  fVar2 = *(float *)((int)this + 0xb8);
  fVar11 = *(float *)((int)this + 0xbc);
  fVar15 = *(float *)((int)this + 0xe4);
  fVar4 = *(float *)((int)this + 0xe8);
  fVar5 = *(float *)((int)this + 0xec);
  impulseOutput[4] =
       (*(float *)((int)this + 0xe0) + *(float *)((int)this + 0xb0)) * fVar10 + impulseOutput[4];
  impulseOutput[5] = (fVar15 + fVar1) * fVar13 + impulseOutput[5];
  impulseOutput[6] = (fVar4 + fVar2) * fVar3 + impulseOutput[6];
  impulseOutput[7] = (fVar5 + fVar11) * fVar10 + impulseOutput[7];
  impulseOutput[8] = fVar12 * fVar14 + impulseOutput[8];
  return;
}

