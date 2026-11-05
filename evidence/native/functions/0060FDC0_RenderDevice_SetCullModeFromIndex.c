/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX render-state owner, one physical 32-bit stack
   index, RET4. Loads DWORD table00FE89E8[index] and calls baseline-state writer0060EEB0 with
   state16hex. Original table entries0..2 are1,2,3 (NONE,CW,CCW); no range/sign/null validation.
   Index arithmetic is physical32-bit scaled addressing, not a validated enum API. EAX return
   meaning is not established. Existing inferred prototype is retained. */

void __thiscall RenderDevice_SetCullModeFromIndex(void *this,int param_1)

{
  RenderDevice_SetBaselineState(this,0x16,*(uint *)(&DAT_00fe89e8 + param_1 * 4));
  return;
}

