/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX state owner, three physical stack index words,
   RET0C. Sequential table00FE8AB8 lookups feed baseline states35/36/37hex (fail/depth-fail/pass).
   Original0..7 entries1..8; index0 KEEP and2 REPLACE. No range checks. Basin caller00690260
   uses0/0/2; first mirror stamp uses2/0/2 under ALWAYS comparison, later mirror preparation0/0/0.
   Keep the order; no normalized Boolean interpretation. */

void __thiscall
RenderDevice_SetStencilOpsFromIndices(void *this,int param_1,int param_2,int param_3)

{
  RenderDevice_SetBaselineState(this,0x35,*(uint *)(&DAT_00fe8ab8 + param_1 * 4));
  RenderDevice_SetBaselineState(this,0x36,*(uint *)(&DAT_00fe8ab8 + param_2 * 4));
  RenderDevice_SetBaselineState(this,0x37,*(uint *)(&DAT_00fe8ab8 + param_3 * 4));
  return;
}

