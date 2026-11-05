/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. ORsobject+28 with requested update flags; if low23bits
   remainzero, appends to activevector. This state is separate from object+2c component mask. */

void __thiscall Object_MarkUpdateFlags(void *this,uint updateFlags)

{
  void *this_00;
  
  *(uint *)((int)this + 0x28) = *(uint *)((int)this + 0x28) | updateFlags;
  if ((*(uint *)((int)this + 0x28) & 0x7fffff) == 0) {
    this_00 = ObjectRegistry_GetGlobal();
    if (this_00 != (void *)0x0) {
      ObjectRegistry_AppendActiveObject(this_00,this);
    }
  }
  return;
}

