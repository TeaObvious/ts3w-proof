/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Computes the four-lane midpoint of the stored box, sets W to 1, then applies stored matrix rows
   in Y+X, then Z, then W order. Stores the transformed interest at +140. ECX receiver; plain RET.
    */

void __fastcall LightInterest_TransformBoxCenter4(int param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  
  fVar1 = (*(float *)(param_1 + 0x160) + *(float *)(param_1 + 0x150)) * _DAT_00f9b5b4;
  fVar2 = (*(float *)(param_1 + 0x164) + *(float *)(param_1 + 0x154)) * _DAT_00f9b5b4;
  fVar3 = (*(float *)(param_1 + 0x168) + *(float *)(param_1 + 0x158)) * _DAT_00f9b5b4;
  fVar4 = FLOAT_00f998f8 * *(float *)(param_1 + 0x1a4);
  fVar5 = FLOAT_00f998f8 * *(float *)(param_1 + 0x1a8);
  fVar6 = FLOAT_00f998f8 * *(float *)(param_1 + 0x1ac);
  *(float *)(param_1 + 0x140) =
       fVar2 * *(float *)(param_1 + 0x180) + fVar1 * *(float *)(param_1 + 0x170) +
       fVar3 * *(float *)(param_1 + 400) + FLOAT_00f998f8 * *(float *)(param_1 + 0x1a0);
  *(float *)(param_1 + 0x144) =
       fVar2 * *(float *)(param_1 + 0x184) + fVar1 * *(float *)(param_1 + 0x174) +
       fVar3 * *(float *)(param_1 + 0x194) + fVar4;
  *(float *)(param_1 + 0x148) =
       fVar2 * *(float *)(param_1 + 0x188) + fVar1 * *(float *)(param_1 + 0x178) +
       fVar3 * *(float *)(param_1 + 0x198) + fVar5;
  *(float *)(param_1 + 0x14c) =
       fVar2 * *(float *)(param_1 + 0x18c) + fVar1 * *(float *)(param_1 + 0x17c) +
       fVar3 * *(float *)(param_1 + 0x19c) + fVar6;
  return;
}

