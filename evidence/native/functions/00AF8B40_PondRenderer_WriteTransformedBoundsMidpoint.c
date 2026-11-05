/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 pond representative-point writer. Physical ECX renderer plus aligned output
   pointer, RET04; EAX incidentally equals output despite stored undefined/void decompiler return.
   Load four lanes from renderer+50 and+60, add, multiply by original binary32 half. Child6FACD0
   supplies four transform rows. Output=(midpoint.X*row0+row3)+midpoint.Y*row1+midpoint.Z*row2,
   using SSE lane operations and original order; aligned MOVAPS writes16bytes. This is not an
   index-reference centroid. XYZ uses bounds midpoint; source W and complete transform
   producer/lifetime remain unresolved. Stored types/ABI, original bytes, body and flow preserved.
    */

void __thiscall PondRenderer_WriteTransformedBoundsMidpoint(void *this,float *param_1)

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
  float *pfVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float local_50 [19];
  
  fVar1 = *(float *)((int)this + 0x60);
  fVar2 = *(float *)((int)this + 100);
  fVar3 = *(float *)((int)this + 0x68);
  fVar4 = *(float *)((int)this + 0x50);
  fVar5 = *(float *)((int)this + 0x54);
  fVar6 = *(float *)((int)this + 0x58);
  pfVar13 = (float *)FUN_006facd0(this,local_50);
  fVar7 = pfVar13[1];
  fVar8 = pfVar13[2];
  fVar9 = pfVar13[3];
  fVar10 = pfVar13[5];
  fVar11 = pfVar13[6];
  fVar12 = pfVar13[7];
  fVar14 = _DAT_00f9b5b4 * (fVar1 + fVar4);
  fVar15 = _DAT_00f9b5b4 * (fVar2 + fVar5);
  fVar16 = _DAT_00f9b5b4 * (fVar3 + fVar6);
  fVar1 = pfVar13[0xd];
  fVar2 = pfVar13[0xe];
  fVar3 = pfVar13[0xf];
  fVar4 = pfVar13[9];
  fVar5 = pfVar13[10];
  fVar6 = pfVar13[0xb];
  *param_1 = fVar14 * *pfVar13 + pfVar13[0xc] + fVar15 * pfVar13[4] + fVar16 * pfVar13[8];
  param_1[1] = fVar14 * fVar7 + fVar1 + fVar15 * fVar10 + fVar16 * fVar4;
  param_1[2] = fVar14 * fVar8 + fVar2 + fVar15 * fVar11 + fVar16 * fVar5;
  param_1[3] = fVar14 * fVar9 + fVar3 + fVar15 * fVar12 + fVar16 * fVar6;
  return;
}

