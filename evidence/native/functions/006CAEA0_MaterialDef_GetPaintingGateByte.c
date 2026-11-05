/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=material definition, RET; raw BYTE in AL from +3D, not a
   normalized Boolean. Painting tests nonzero. The flag producer and its general meaning for other
   consumers are unexpanded; this leaf does not compare shader hashes. */

byte __thiscall MaterialDef_GetPaintingGateByte(void *this)

{
  return *(byte *)((int)this + 0x3d);
}

