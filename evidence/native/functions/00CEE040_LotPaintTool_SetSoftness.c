/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 paintsoftness physical thiscall oneFloat32stackword RET4void. Stores global118A00C,
   computes scalarSSE response attoolE4. Equality5 returns1; below5 does SUBSS(5-s),
   MULSS(.2bits3E4CCCCD), MULSS(3bits40400000), ADDSS1. Above OR UNORDERED does SUBSS(s-5), MULSS.2,
   MULSS.75bits3F400000, SUBSS(1-scaled). Do NOT precompute .2*.75/.2*3 then multiply delta:
   eachinstructionroundsFloat32. UCOMISS/LAHF/TEST AH44/JP makesNaNtakeunordered/abovebranch, not
   equality1. This scalar profile does not reproduceMXCSRexceptionflags/NaNpayload control. Also
   refreshes cursor throughCEDB30(width,softness*.1); host input/controller sideeffects remain
   separatelyowned. */

void __thiscall LotPaintTool_SetSoftness(void *this,float value)

{
  float fVar1;
  
  DAT_0118a00c = value;
  if (value == 5.0) {
    fVar1 = 1.0;
  }
  else if (5.0 <= value) {
    fVar1 = 1.0 - (value - 5.0) * 0.2 * 0.75;
  }
  else {
    fVar1 = (5.0 - value) * 0.2 * 3.0 + 1.0;
  }
  *(float *)((int)this + 0xe4) = fVar1;
  FUN_00cedb30((void *)((int)this + 0x28),*(float *)((int)this + 0xd4),DAT_0118a00c * 0.1);
  return;
}

