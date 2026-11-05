/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 mesh-state instruction contract. cdecl requestedHash,records,signedCount; RET no
   callee cleanup. Record stride20. Requested hash0 returns first record iff COUNT WORD NONZERO,
   including negative malformed counts; nonzero hash scans only signedCount>0 and returns first
   match, otherwiseNULL. No pointer/count containment. Record field names derived from indexed draw
   consumer, not serialized VRTF assumptions. */

GeometryState20 * __cdecl
GeometryStates_FindRequestedOrFirst(uint requestedHash,GeometryState20 *records,int signedCount)

{
  int iVar1;
  GeometryState20 *pGVar2;
  
  if (requestedHash == 0) {
    return (GeometryState20 *)(-(uint)(signedCount != 0) & (uint)records);
  }
  iVar1 = 0;
  pGVar2 = records;
  if (0 < signedCount) {
    do {
      if (pGVar2->nameHash == requestedHash) {
        return records + iVar1;
      }
      iVar1 = iVar1 + 1;
      pGVar2 = pGVar2 + 1;
    } while (iVar1 < signedCount);
  }
  return (GeometryState20 *)0x0;
}

