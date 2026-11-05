/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX half-edge pointer, plain RET, EAX pointer. Low two bits at node+0 select
   node+28 when value<2, otherwise node-18. Physical unsigned mask values0..3 make signed JGE
   equivalent in this branch. No search, allocation or mutation. */

undefined4 __fastcall WallHalfEdge_ReadOppositeVertex(byte *param_1)

{
  if ((*param_1 & 3) < 2) {
    return *(undefined4 *)(param_1 + 0x28);
  }
  return *(undefined4 *)(param_1 + -0x18);
}

