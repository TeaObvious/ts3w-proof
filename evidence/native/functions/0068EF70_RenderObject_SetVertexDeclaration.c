/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall pointer RET4. Retains new via
   virtual+4, releases old+8, storesowner+18. No explicit self-assignment branch; retains before
   release. */

void __thiscall RenderObject_SetVertexDeclaration(void *this,void *declaration)

{
  if (declaration != (void *)0x0) {
    (**(code **)(*(int *)declaration + 4))();
  }
  if (*(int **)((int)this + 0x18) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x18) + 8))();
  }
  *(void **)((int)this + 0x18) = declaration;
  return;
}

