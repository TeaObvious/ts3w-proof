/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: converts a world X/Z point into a lot-local X/Z pair. It subtracts lot origin X/Z at
   +0x190/+0x198 and rotates using sin/cos of the angle at +0x1a0; writes two 32-bit float results
   through output pointers. The original x87/SSE instructions, not inferred matrix naming, establish
   operand order and signs. */

void __thiscall
Lot_WorldXZToLocalXZ(void *this,float param_1,float param_2,float *param_3,float *param_4)

{
  float10 fVar1;
  float10 fVar2;
  float fVar3;
  float fVar4;
  
  fVar1 = (float10)fsin((float10)*(float *)((int)this + 0x1a0));
  fVar3 = param_1 - *(float *)((int)this + 400);
  fVar4 = param_2 - *(float *)((int)this + 0x198);
  fVar2 = (float10)fcos((float10)*(float *)((int)this + 0x1a0));
  *param_3 = (DAT_00f998f0 - (float)fVar1) * fVar4 + (float)fVar2 * fVar3;
  *param_4 = (float)fVar1 * fVar3 + (float)fVar2 * fVar4;
  return;
}

