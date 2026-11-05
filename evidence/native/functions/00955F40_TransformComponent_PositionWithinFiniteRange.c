/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC 1.67 original contract. cdecl vectorpointer, ECX unused. CMPLEPS and shuffle/AND
   reduction requires inclusive min<=XYZ<=max; Wignored. Initial limits are±FLT_MAX; NaN or
   infinities fail orderedcomparisons. Returns EAX0/1. */

bool __cdecl TransformComponent_PositionWithinFiniteRange(float *position)

{
  undefined1 auVar1 [16];
  undefined4 in_ECX;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  
  uVar3 = -(uint)(*position <= _DAT_011ea280 && _DAT_011ea270 <= *position);
  uVar4 = -(uint)(position[1] <= fRam011ea284 && fRam011ea274 <= position[1]);
  uVar5 = -(uint)(position[2] <= fRam011ea288 && fRam011ea278 <= position[2]);
  uVar6 = uVar5 & uVar3;
  uVar5 = uVar5 & uVar3;
  auVar1._4_4_ = -(uint)((float)(uVar4 & uVar6) == 0.0);
  auVar1._0_4_ = -(uint)((float)(uVar4 & uVar6) == 0.0);
  auVar1._8_4_ = -(uint)((float)(uVar4 & uVar5) == 0.0);
  auVar1._12_4_ = -(uint)((float)(uVar4 & uVar5) == 0.0);
  iVar2 = movmskps(in_ECX,auVar1);
  return iVar2 != 0xf;
}

