/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall SIGNEDindex,state20 RET8. Checks
   only pointer nonnull and signed index<count; NO index>=0 check, then copies fiveDWORDs. Do not
   reproduce unsafe negative indexing in a managed implementation. Native serialized loop supplies
   sequential indices; fields remain raw32. */

void __thiscall RenderObject_CopyGeometryState(void *this,int index,GeometryState20 *state)

{
  uint *puVar1;
  
  if ((*(int *)((int)this + 0x50) != 0) && (index < *(int *)((int)this + 0x54))) {
    puVar1 = (uint *)(*(int *)((int)this + 0x50) + index * 0x14);
    *puVar1 = state->nameHash;
    puVar1[1] = state->startIndex;
    puVar1[2] = state->minVertexIndex;
    puVar1[3] = state->vertexCount;
    puVar1[4] = state->primitiveCount;
  }
  return;
}

