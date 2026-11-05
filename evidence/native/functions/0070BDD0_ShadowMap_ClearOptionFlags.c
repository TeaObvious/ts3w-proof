/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner; write byte+8,+9,+A zero, AL true. Called before
   re-enabling shadow state in6E2380. This is a real option-input writer on FSAA target-refresh
   path. */

bool __fastcall ShadowMap_ClearOptionFlags(int param_1)

{
  *(undefined1 *)(param_1 + 8) = 0;
  *(undefined1 *)(param_1 + 9) = 0;
  *(undefined1 *)(param_1 + 10) = 0;
  return true;
}

