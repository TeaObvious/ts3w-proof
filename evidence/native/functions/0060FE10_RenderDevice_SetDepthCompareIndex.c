/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Table0x00fe89f4 maps eight zero-based indices to D3DCMPFUNC1..8; queues
   D3DRS_ZFUNC23. No visible index bound check. */

void __thiscall RenderDevice_SetDepthCompareIndex(void *this,int param_1)

{
  RenderDevice_SetBaselineState(this,0x17,*(uint *)(&DAT_00fe89f4 + param_1 * 4));
  return;
}

