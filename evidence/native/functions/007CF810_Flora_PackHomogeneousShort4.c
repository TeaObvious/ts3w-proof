/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. cdecl aligned float4 input and UInt16 output pointers, RET.
   Maximum absolute XYZ -> ceil -> signed16 exponent. Zero exponent yields(0,0,0,1). Otherwise
   signed scale=32765/exponent (0x7FFD, not32767); each XYZ uses original half-offset floor
   sequence, final SHORT stores. W is scale. NaN/overflow and exact ties require original
   instruction semantics; this annotation does not replace them with a generic unchecked cast. */

void __cdecl Flora_PackHomogeneousShort4(undefined1 (*param_1) [16],undefined2 *param_2)

{
  short sVar1;
  uint uVar2;
  uint uVar3;
  float fVar4;
  float fVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  float fVar8;
  float fVar9;
  float fVar10;
  double dVar11;
  float local_50;
  float fStack_3c;
  float fStack_28;
  
  auVar7 = *param_1;
  auVar6._0_4_ = FLOAT_00fab218 * auVar7._0_4_;
  auVar6._4_4_ = FLOAT_00fab218 * auVar7._4_4_;
  auVar6._8_4_ = FLOAT_00fab218 * auVar7._8_4_;
  auVar6._12_4_ = FLOAT_00fab218 * auVar7._12_4_;
  auVar7 = maxps(auVar6,auVar7);
  fStack_3c = auVar7._4_4_;
  local_50 = auVar7._0_4_;
  uVar3 = (int)(local_50 - fStack_3c) >> 0x1f;
  fStack_28 = auVar7._8_4_;
  fVar4 = (float)(~uVar3 & (uint)local_50 | (uint)fStack_3c & uVar3);
  uVar3 = (int)(fVar4 - fStack_28) >> 0x1f;
  dVar11 = ceil((double)(float)(~uVar3 & (uint)fVar4 | (uint)fStack_28 & uVar3));
  uVar2 = DAT_00fe457c;
  uVar3 = DAT_00fe4578;
  fVar8 = _DAT_00f9b5b4;
  fVar4 = FLOAT_00f998f8;
  if ((short)(int)dVar11 == 0) {
    param_2[2] = 0;
    param_2[1] = 0;
    *param_2 = 0;
    param_2[3] = 1;
    return;
  }
  sVar1 = (short)(0x7ffd / (longlong)(int)(short)(int)dVar11);
  fVar10 = (float)(int)sVar1;
  fVar5 = _DAT_00f9b5b4 + *(float *)*param_1 * fVar10;
  fVar9 = (float)(DAT_00fe4578 & -(uint)(fVar5 < 0.0) | ~-(uint)(fVar5 < 0.0) & DAT_00fe457c);
  fVar9 = (fVar5 - fVar9) + fVar9;
  *param_2 = (short)(int)(fVar9 - (float)(-(uint)(fVar5 < fVar9) & (uint)FLOAT_00f998f8));
  fVar5 = fVar8 + *(float *)(*param_1 + 4) * fVar10;
  fVar9 = (float)(uVar3 & -(uint)(fVar5 < 0.0) | ~-(uint)(fVar5 < 0.0) & uVar2);
  fVar9 = (fVar5 - fVar9) + fVar9;
  param_2[1] = (short)(int)(fVar9 - (float)(-(uint)(fVar5 < fVar9) & (uint)fVar4));
  fVar8 = fVar8 + *(float *)(*param_1 + 8) * fVar10;
  fVar5 = (float)(~-(uint)(fVar8 < 0.0) & uVar2 | uVar3 & -(uint)(fVar8 < 0.0));
  fVar5 = (fVar8 - fVar5) + fVar5;
  param_2[2] = (short)(int)(fVar5 - (float)(-(uint)(fVar8 < fVar5) & (uint)fVar4));
  param_2[3] = sVar1;
  return;
}

