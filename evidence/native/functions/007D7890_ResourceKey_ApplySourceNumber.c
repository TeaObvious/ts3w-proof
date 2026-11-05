/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl two words, void. Exact raw group rewrite:
   key[3]=((sourceNumber-1)<<27)|(key[3]&0x0FFFFFFF), modulo32. Preserve mask0FFFFFFF, including
   overlapping bit27; do not silently substitute07FFFFFF. No range clamp or independent validation
   in this body. */

void __cdecl ResourceKey_ApplySourceNumber(uint sourceNumber,uint *key)

{
  key[3] = (sourceNumber - 1) * 0x8000000 | key[3] & 0xfffffff;
  return;
}

