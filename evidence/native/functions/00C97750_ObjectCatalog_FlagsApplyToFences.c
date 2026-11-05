/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Analyst name for catalog+A4 bit12
   reader. MOV/SHR12/AND1 yields normalized uint0/1. Hiding path rejects nonzero result. Semantic
   field labels are analyst interpretation of this catalog gate, not recovered original function
   symbols. */

uint __thiscall ObjectCatalog_FlagsApplyToFences(void *this)

{
  return *(uint *)((int)this + 0xa4) >> 0xc & 1;
}

