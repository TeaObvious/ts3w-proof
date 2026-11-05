/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX state owner, one raw32-bit stack mask, RET4.
   Forwards it unchanged to baseline state3Bhex (stencil write mask) through0060EEB0. No clamp
   to3F/FF, signed comparison or validation. Callers use bothFFFFFFFF and0 as distinct bit patterns.
   EAX status is not established by this wrapper. */

void __thiscall RenderDevice_SetStencilWriteMask(void *this,int param_1)

{
  RenderDevice_SetBaselineState(this,0x3b,param_1);
  return;
}

