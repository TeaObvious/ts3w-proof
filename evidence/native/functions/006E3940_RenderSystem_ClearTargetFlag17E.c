/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner; conditionally clear byte+17E; no stack args.
   Complete17-byte body. This field is neither global shader-option vector238, per-pixel-fogF1, nor
   flora manager RenderTreeAlphaEdges+14. */

void __fastcall RenderSystem_ClearTargetFlag17E(int param_1)

{
  if (*(char *)(param_1 + 0x17e) != '\0') {
    *(undefined1 *)(param_1 + 0x17e) = 0;
  }
  return;
}

