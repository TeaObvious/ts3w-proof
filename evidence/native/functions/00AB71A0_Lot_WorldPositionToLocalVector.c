/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: converts a four-float world position/vector to the lot-local frame, subtracting lot
   origin fields at +0x190/+0x194/+0x198/+0x19c and rotating horizontal components by the angle at
   +0x1a0. Writes four 32-bit floats. The Ghidra expression for the fourth component is noisy;
   inspect original x87/SSE instructions before assigning a geometric meaning to W. Called by both
   registered world-to-lot location paths through 0x00adc860 and 0x00adc980. */

void __thiscall Lot_WorldPositionToLocalVector(void *this,float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float10 fVar4;
  float10 fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  fVar2 = *(float *)((int)this + 0x19c);
  fVar4 = (float10)fsin((float10)*(float *)((int)this + 0x1a0));
  fVar3 = param_1[3];
  fVar6 = *param_1 - *(float *)((int)this + 400);
  fVar7 = param_1[1] - *(float *)((int)this + 0x194);
  fVar8 = param_1[2] - *(float *)((int)this + 0x198);
  fVar5 = (float10)fcos((float10)*(float *)((int)this + 0x1a0));
  fVar9 = DAT_00f998f0 - (float)fVar4;
  fVar1 = (float)fVar5;
  fVar10 = DAT_00f998f8 * fVar7;
  *param_2 = fVar8 * fVar9 + fVar1 * fVar6;
  param_2[1] = fVar7 * 0.0 + fVar10;
  param_2[2] = fVar6 * (float)fVar4 + fVar1 * fVar8;
  param_2[3] = fVar6 * fVar9 + fVar1 * (fVar3 - fVar2);
  return;
}

