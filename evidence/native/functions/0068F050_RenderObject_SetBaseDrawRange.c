/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall range24 pointer, RET4. Copies six
   DWORDs to owner+38..4C unchanged; type semantics from original indexed draw backend. No
   conversion, rebase or minmax inference. */

void __thiscall RenderObject_SetBaseDrawRange(void *this,NativeDrawRange24 *range)

{
  *(uint *)((int)this + 0x38) = range->primitiveType;
  *(int *)((int)this + 0x3c) = range->baseVertexIndex;
  *(uint *)((int)this + 0x40) = range->startIndex;
  *(uint *)((int)this + 0x44) = range->minVertexIndex;
  *(uint *)((int)this + 0x48) = range->vertexCount;
  *(uint *)((int)this + 0x4c) = range->primitiveCount;
  return;
}

