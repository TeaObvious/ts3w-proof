/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Queues zero-extended byte for D3DRS_ALPHATESTENABLE15. */

void __thiscall RenderDevice_SetAlphaTestByte(void *this,byte param_1)

{
  RenderDevice_SetBaselineState(this,0xf,(uint)param_1);
  return;
}

