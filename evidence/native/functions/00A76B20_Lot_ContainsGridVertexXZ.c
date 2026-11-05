/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot +signedintX/signedintZ, RET8, fullEAX0or1. Inclusive 0<=X<=lotWidth+174 and
   0<=Z<=lotDepth+178. This is VERTEX admission, distinct from strict tile bounds in floor queries.
    */

uint __thiscall Lot_ContainsGridVertexXZ(void *this,int x,int z)

{
  if ((((-1 < x) && (x <= *(int *)((int)this + 0x174))) && (-1 < z)) &&
     (z <= *(int *)((int)this + 0x178))) {
    return 1;
  }
  return 0;
}

