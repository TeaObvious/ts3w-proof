/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Frees event listeners before clearing the global registry
   pointer. Does not change instruction bytes. */

void __thiscall ObjectRegistry_Deactivate(void *this)

{
  ObjectEvents_ClearListeners();
  DAT_011dd350 = 0;
  return;
}

