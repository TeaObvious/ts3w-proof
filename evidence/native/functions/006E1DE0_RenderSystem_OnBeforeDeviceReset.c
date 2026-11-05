/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX same registered render owner, no stack args.
   Calls6E15F0(true), then RET. Primary tableFF8DC8 slot0. Full target release callback, distinct
   from direct FSAALevel consumer release(false). */

void __fastcall RenderSystem_OnBeforeDeviceReset(void *param_1)

{
  RenderSystem_ReleaseRenderTargets(param_1,'\x01');
  return;
}

