/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Returns full lot+c4; consumers order this as signed
   Int32 priority, not individual bit tests. */

int __thiscall Lot_GetDetailPriority(void *this)

{
  return *(int *)((int)this + 0xc4);
}

