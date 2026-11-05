/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Actual borrowed world-matrix storage getter. Physical ECX render state, no stack
   input, plain RET; MOV EAX,[ECX+28] then RET returns the actual pointer without allocation,
   retain, validation or null guard.00573430 writes this field and actual006F5D50 reads it through
   this getter for model/part bounds. This joins the native pose-output/bounds-input identities; it
   does not establish current copied-vertex memo or GPU completion parity. */

undefined4 __fastcall AnimationRenderState_GetWorldMatrices(int param_1)

{
  return *(undefined4 *)(param_1 + 0x28);
}

