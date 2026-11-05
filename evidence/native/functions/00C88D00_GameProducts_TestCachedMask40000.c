/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67. No stack arguments; boolean AL. First call tests mask0x40000 through the
   flag-word owner011CEDE0, stores result byte011EDEEE and valid byte011EDEEF; subsequent calls
   return the cached byte. No specific product name inferred. */

undefined1 GameProducts_TestCachedMask40000(void)

{
  if (DAT_011edeef == '\0') {
    DAT_011edeee = FlagWord_TestAnyMask(&DAT_011cede0,0x40000);
    DAT_011edeef = 1;
    return DAT_011edeee;
  }
  return DAT_011edeee;
}

