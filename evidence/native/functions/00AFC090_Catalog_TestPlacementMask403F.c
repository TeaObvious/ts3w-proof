/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. cdecl nonnull catalog stack word RET; FULL EAX0/1 from
   AND403F then NEG/SBB/NEG. True iff DWORDA4&403F nonzero; no null guard, callback, mask mutation
   or other category read.
   
   PC1.67 placement capability closure: cdecl one catalog pointer, plainRET, fullEAX0/1. Tests
   rawDWORD+ A4 mask403F viaAND/NEG/SBB/NEG. This one original predicate is independent from the
   host supported renderer/footprint/category profile; no whole-binary flag nonusage inferred. */

uint __cdecl Catalog_TestPlacementMask403F(void *catalog)

{
  return (uint)((*(uint *)((int)catalog + 0xa4) & 0x403f) != 0);
}

