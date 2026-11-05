/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX device plus two stack index words, RET0x08. Index DWORD table00FE8A28
   directly with scale4 and forward selected values to baseline state IDs0x13/0x14. Authenticated
   prefix indices0..10 maps1..11; no local bounds check or normalization. Selected blit supplies
   low/high nibbles independently of its enable bit and write mask. Wider table extent and producer
   restrictions remain open; no unknown-factor/default Vulkan policy follows. Descriptive analyst
   role, not a recovered symbol. */

void __thiscall RenderDevice_SetBlendFactorTableEntries(void *this,int param_1,int param_2)

{
  RenderDevice_SetBaselineState(this,0x13,*(uint *)(&DAT_00fe8a28 + param_1 * 4));
  RenderDevice_SetBaselineState(this,0x14,*(uint *)(&DAT_00fe8a28 + param_2 * 4));
  return;
}

