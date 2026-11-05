/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. thiscall ECXhandle, no stack args, returns
   originalECX inEAX. Ifprocessglobal initializedbytefalse, callsReseedGlobal(-1);
   otherwiseleavesglobalstreamunchanged. Handle holdsno selectedRNGstate; do not infer per-instance
   originalstreams. */

void * __thiscall TreeRandom_ConstructHandle(void *this)

{
  if (DAT_011d9650 == '\0') {
    TreeRandom_ReseedGlobal(-1);
  }
  return this;
}

