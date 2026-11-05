/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Writes GUID low/high into+0x78/+0x7c. No truncation.
    */

void __thiscall RoutePortalContext_SetPreferredObject(void *this,ulonglong objectId)

{
  *(ulonglong *)((int)this + 0x78) = objectId;
  return;
}

