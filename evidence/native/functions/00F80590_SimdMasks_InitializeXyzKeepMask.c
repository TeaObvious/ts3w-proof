/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 mask initializer. Noargs RETvoid. Builds alignedDWORDvector
   FFFFFFFF/FFFFFFFF/FFFFFFFF/00000000 and MOVAPS stores at11B0670. Referenced by
   originalpointercellF96AE0. Ghidra static database memory11B0670 is allzero before initialization;
   that is NOTthe post-initialization mask. This selected writer proves producedbits, not
   fullruntimeconstructor ordering or absence of futurecomputed writes. Originalbytes unchanged. */

void __cdecl SimdMasks_InitializeXyzKeepMask(void)

{
  _DAT_011b0670 = 0xffffffff;
  uRam011b0674 = 0xffffffff;
  uRam011b0678 = 0xffffffff;
  uRam011b067c = 0;
  return;
}

