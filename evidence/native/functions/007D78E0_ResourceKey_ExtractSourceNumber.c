/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl two pointers, void. *outNumber=(key[3]
   unsigned>>27)+1. No signed shift, product enum identity or validation inferred from this
   arithmetic alone. */

void __cdecl ResourceKey_ExtractSourceNumber(uint *key,uint *outNumber)

{
  *outNumber = (key[3] >> 0x1b) + 1;
  return;
}

