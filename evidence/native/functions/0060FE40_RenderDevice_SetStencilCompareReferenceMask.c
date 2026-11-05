/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX state owner, three physical stack words, RET0C.
   In order: baseline state38hex uses00FE89F4[firstIndex], state39 receives raw reference word,
   state3A receives raw comparison-mask word. Original comparison table0..7 is1..8; index2 maps
   EQUAL, index7 ALWAYS. Reference/mask retain all32bits. No bounds validation or failure-return
   contract is inferred; do not treat inferred signed C parameters as checked masks. */

void __thiscall
RenderDevice_SetStencilCompareReferenceMask(void *this,int param_1,int param_2,int param_3)

{
  RenderDevice_SetBaselineState(this,0x38,*(uint *)(&DAT_00fe89f4 + param_1 * 4));
  RenderDevice_SetBaselineState(this,0x39,param_2);
  RenderDevice_SetBaselineState(this,0x3a,param_3);
  return;
}

