/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Any nonzero input byte becomes DWORD1 for D3DRS_ZENABLE7, queued through
   SetBaselineState. */

void __thiscall RenderDevice_SetDepthEnabled(void *this,char param_1)

{
  RenderDevice_SetBaselineState(this,7,(uint)(param_1 != '\0'));
  return;
}

