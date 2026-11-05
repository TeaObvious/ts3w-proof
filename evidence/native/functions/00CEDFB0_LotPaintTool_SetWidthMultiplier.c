/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 thiscall oneFloat32multiplier RET4void. Stores global118A008. WithnonnullproductE0, MULSS
   authoredwidth+1C*multiplier, write toolD4, compareupper20 thenlower.25
   (rawbits41A00000/3E800000), conditionalreplacement. NaN comparisonsunordered
   skipbothreplacements, soNaNpropagates. Missingproduct preservesexistingD4;
   purewidthcomputationonlyapplieswhenactualbrushavailable. CursorrefreshCEDB30 follows independent
   ofproductpresence. Gamecalleralreadyownsnonnullbrush; no guessedwidthonabsence. */

void __thiscall LotPaintTool_SetWidthMultiplier(void *this,float value)

{
  float fVar1;
  
  _DAT_0118a008 = value;
  if (*(int *)((int)this + 0xe0) != 0) {
    fVar1 = *(float *)(*(int *)((int)this + 0xe0) + 0x1c) * value;
    *(float *)((int)this + 0xd4) = fVar1;
    if (20.0 < fVar1) {
      *(undefined4 *)((int)this + 0xd4) = 0x41a00000;
    }
    if (*(float *)((int)this + 0xd4) <= 0.25 && *(float *)((int)this + 0xd4) != 0.25) {
      *(undefined4 *)((int)this + 0xd4) = 0x3e800000;
    }
  }
  FUN_00cedb30((void *)((int)this + 0x28),*(float *)((int)this + 0xd4),DAT_0118a00c * 0.1);
  return;
}

