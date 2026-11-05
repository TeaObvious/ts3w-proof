/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. No stack arguments. If validity byte11EDEED is
   zero, query523DA0(global11CEDE0,8000), store AL at11EDEEC, then set validity byte1. Otherwise
   return cached AL. No reset/generation/atomic or initial file-backed-global claim. Literal mask
   only; descriptor producer and expansion/season semantics remain unresolved. */

undefined1 CachedGlobalMask8000_Query(void)

{
  if (DAT_011edeed == '\0') {
    DAT_011edeec = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
    DAT_011edeed = 1;
    return DAT_011edeec;
  }
  return DAT_011edeec;
}

