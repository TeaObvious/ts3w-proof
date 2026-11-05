/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. No stack arguments. If validity byte11EDEF1 is
   zero, query523DA0(global11CEDE0,100000hex), store AL at11EDEF0, then set validity byte1.
   Otherwise return cached AL. No reset/generation/atomic or initial file-backed-global claim.
   Literal mask only; descriptor producer and expansion/season semantics remain unresolved. */

undefined1 CachedGlobalMask100000_Query(void)

{
  if (DAT_011edef1 == '\0') {
    DAT_011edef0 = FlagWord_TestAnyMask(&DAT_011cede0,0x100000);
    DAT_011edef1 = 1;
    return DAT_011edef0;
  }
  return DAT_011edef0;
}

