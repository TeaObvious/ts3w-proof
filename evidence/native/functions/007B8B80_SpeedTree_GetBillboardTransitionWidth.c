/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX SPT wrapper, RET, returns ST0 extended-precision sum of the
   same binary32 field+20 twice. Caller70D9A0 stores binary32 width before SSE division. No clamp
   here. */

float10 __fastcall SpeedTree_GetBillboardTransitionWidth(int param_1)

{
  return (float10)*(float *)(param_1 + 0x20) + (float10)*(float *)(param_1 + 0x20);
}

