/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, original PC1.67 static; analyst-assigned name. Physical ECX product receiver, no
   stack arguments, plain RET; result is x87 ST0, modeled float10 to preserve extended precision,
   not a pointer or EAX. Loads aligned product100..10F then FLD binary32 lane104. FLD binary64
   F9E510 is exact encoded double0.001; FCOMIP threshold,height then JBE retains height when
   threshold<=height or unordered. Only ordered smaller height is replaced by binary32 constant3
   atFA2B9C. Thus NaN is retained. Producer C94C00 and93B800 populate lane104 from selected proxy
   bounds, post when successfully resolved otherwise rail; actual decoded mesh vertex bounds are not
   proven equivalent. Current float0.001 literal has different representation, though adjacent
   binary32 threshold outcomes coincide here. */

float10 __thiscall FenceProduct_GetPostBoundsHeight(void *this)

{
  float10 fVar1;
  
  fVar1 = (float10)*(float *)((int)this + 0x104);
  if (fVar1 < (float10)_DAT_00f9e510) {
    fVar1 = (float10)DAT_00fa2b9c;
  }
  return fVar1;
}

