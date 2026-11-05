/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Returns AL=this+c2. The selected WorldManager reader
   passes a lot and treats zero as pending when detail is requested. This tiny offset getter has
   other class/virtual consumers too; its name describes the reviewed lot context, not a universal
   type identity or full residency proof. */

uchar __thiscall Lot_ReadDetailReadinessByte(void *this)

{
  return *(uchar *)((int)this + 0xc2);
}

