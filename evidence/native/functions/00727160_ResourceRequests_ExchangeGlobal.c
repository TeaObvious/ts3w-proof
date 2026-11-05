/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl one pointer, returns previous11D4C84 and
   replaces with next; ordinary MOV, no atomic exchange/refcount/validation. Address-based xrefs
   include initialization738FE9 and teardown7371B1; function-only xrefs previously omitted undefined
   initialization caller. */

void * __cdecl ResourceRequests_ExchangeGlobal(void *next)

{
  void *pvVar1;
  
  pvVar1 = DAT_011d4c84;
  DAT_011d4c84 = next;
  return pvVar1;
}

