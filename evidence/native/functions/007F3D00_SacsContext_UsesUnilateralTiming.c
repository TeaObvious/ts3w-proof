/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX context,no stack words/plain RET,EAX0/1. True
   if machine properties+3C bit1 or driver mode+3C. This is a context predicate, not wall-clock time
   or a scheduler. */

undefined4 __fastcall SacsContext_UsesUnilateralTiming(int *param_1)

{
  if ((((byte)*(undefined4 *)(*(int *)(*param_1 + 0xc) + 0x3c) & 1) != 1) &&
     (*(char *)(*param_1 + 0x3c) == '\0')) {
    return 0;
  }
  return 1;
}

