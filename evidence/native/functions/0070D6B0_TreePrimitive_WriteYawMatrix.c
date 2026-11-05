/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX primitive, one output pointer word, RET4.
   Rebuilds matrix from rawCos+40/Sin+44/translationXYZ, m20 = -0.0 minusSin, identityY/W, no
   scalar+48. Unsigned bitcopy lanes and floating sign zero must not be inferred from C short
   literals. */

void __thiscall TreePrimitive_WriteYawMatrix(void *this,undefined4 *param_1)

{
  float fVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  uVar3 = *(undefined4 *)this;
  uVar4 = *(undefined4 *)((int)this + 4);
  uVar5 = *(undefined4 *)((int)this + 8);
  fVar1 = *(float *)((int)this + 0x44);
  uVar2 = *(undefined4 *)((int)this + 0x40);
  *param_1 = uVar2;
  param_1[1] = 0;
  param_1[2] = fVar1;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 1.0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = -0.0 - fVar1;
  param_1[9] = 0;
  param_1[10] = uVar2;
  param_1[0xb] = 0;
  param_1[0xc] = uVar3;
  param_1[0xd] = uVar4;
  param_1[0xe] = uVar5;
  param_1[0xf] = 1.0;
  return;
}

