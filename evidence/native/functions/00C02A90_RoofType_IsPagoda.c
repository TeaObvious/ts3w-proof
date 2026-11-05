/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. cdecl signed Int32 roof-type stack word RET.
   Boolean AL true exactly for signed 0x12..0x1D inclusive; upper EAX bits incidental. Used by
   collar emitter to choose9 rather than7. No general enum validity or other roof-type mapping
   established. */

bool __cdecl RoofType_IsPagoda(int roofType)

{
  if ((0x11 < roofType) && (roofType < 0x1e)) {
    return true;
  }
  return false;
}

