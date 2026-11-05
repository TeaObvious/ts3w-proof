/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Returns AL=lot+c1, the requested detail byte written
   before remote work is submitted; this is not a completed-residency predicate. */

uchar __thiscall Lot_GetDetailRequested(void *this)

{
  return *(uchar *)((int)this + 0xc1);
}

