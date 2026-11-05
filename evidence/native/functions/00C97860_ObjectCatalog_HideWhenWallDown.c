/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Analyst name for catalog+98 bit6 reader.
   MOV/SHR6/AND1 yields normalized uint0/1. Hiding path requires nonzero result. Reader establishes
   mask and field offset; catalog file parser/producer is not established here. */

uint __thiscall ObjectCatalog_HideWhenWallDown(void *this)

{
  return *(uint *)((int)this + 0x98) >> 6 & 1;
}

