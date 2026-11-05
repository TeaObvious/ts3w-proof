/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Copies full Int32 to lot+c4 without clamping,
   requesting resources or sending a notification. */

void __thiscall Lot_SetDetailPriority(void *this,int priority)

{
  *(int *)((int)this + 0xc4) = priority;
  return;
}

