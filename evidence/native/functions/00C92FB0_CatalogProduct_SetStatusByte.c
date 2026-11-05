/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   one byte value in a stack slot RET4. Store AL value to product+64; no callbacks, validation or
   masking in this leaf. CallerC92220 computes the mode-dependent bit normalization before this
   assignment. */

void __thiscall CatalogProduct_SetStatusByte(void *this,undefined1 param_1)

{
  *(undefined1 *)((int)this + 100) = param_1;
  return;
}

