/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX binding owner, no stack args, RET, void. Prefers untagged
   nonzero slot+C; otherwise untagged nonzero slot+8 only when resource+30 is2 or3. Passes selected
   SLOT address to6DBE80; pending/empty slots leave dirty state for later acquisition. No geometry
   hash input or zero-state selection. */

void __thiscall ModelBinding_ApplyMaterialToAvailableLod(void *this)

{
  int *lodSlot;
  
  lodSlot = (int *)((int)this + 0xc);
  if ((((*(uint *)((int)this + 0xc) & 3) == 0) && (*lodSlot != 0)) ||
     (((lodSlot = (int *)((int)this + 8), (*(uint *)((int)this + 8) & 3) == 0 && (*lodSlot != 0)) &&
      ((*(int *)(*lodSlot + 0x30) == 2 || (*(int *)(*lodSlot + 0x30) == 3)))))) {
    ModelBinding_RebindMaterialOnLod(this,lodSlot);
  }
  return;
}

