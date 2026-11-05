/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall pointer RET4. Retains new via
   virtual+4, releases old+8, storesowner+14. No index decoding or inferred base. */

void __thiscall RenderObject_SetIndexBuffer(void *this,void *indexBuffer)

{
  if (indexBuffer != (void *)0x0) {
    (**(code **)(*(int *)indexBuffer + 4))();
  }
  if (*(int **)((int)this + 0x14) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x14) + 8))();
  }
  *(void **)((int)this + 0x14) = indexBuffer;
  return;
}

