/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX SpeedTree wrapper; float fraction RET4. Clamps finite
   fraction to0..1 by original bit-mask arithmetic; stores tree-engine+14 or alternate+38 owner+10.
   No alpha-byte scaling or sample-count test. */

void __thiscall SpeedTree_SetLodFraction(void *this,float lodFraction)

{
  uint uVar1;
  float fVar2;
  
  fVar2 = (float)((uint)lodFraction & (int)(FLOAT_00f998f0 - lodFraction) >> 0x1f);
  uVar1 = (int)(FLOAT_00f998f8 - fVar2) >> 0x1f;
  uVar1 = ~uVar1 & (uint)fVar2 | (uint)FLOAT_00f998f8 & uVar1;
  if (*(int *)((int)this + 0x38) == 0) {
    *(uint *)(*(int *)this + 0x14) = uVar1;
    return;
  }
  *(uint *)(*(int *)((int)this + 0x38) + 0x10) = uVar1;
  return;
}

