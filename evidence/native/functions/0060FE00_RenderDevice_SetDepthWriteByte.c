/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: MOVZX preserves entire supplied byte as DWORD for D3DRS_ZWRITEENABLE14. No
   normalization here. */

void __thiscall RenderDevice_SetDepthWriteByte(void *this,byte param_1)

{
  RenderDevice_SetBaselineState(this,0xe,(uint)param_1);
  return;
}

