/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Byte copy to this+0xd9 only; no flush, replay,
   completion wait or reference-counted nesting. */

void __thiscall WorldManager_SetLotLODFrozen(void *this,uchar enable)

{
  *(uchar *)((int)this + 0xd9) = enable;
  return;
}

