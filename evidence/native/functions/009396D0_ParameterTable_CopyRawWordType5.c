/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX table; hash+UInt32output RET8.
   First-hash/exact FINAL type5 lookup only; absence AL0 leaves output unchanged. Found copies one
   rawDWORD from payload base+offset, AL1. Does not normalize Boolean or search later matching-type
   duplicates. */

bool __thiscall ParameterTable_CopyRawWordType5(void *this,uint nameHash,uint *rawWordOut)

{
  uint *puVar1;
  
  puVar1 = ParameterTable_FindFirstHashExactType(this,nameHash,5);
  if (puVar1 == (uint *)0x0) {
    return false;
  }
  *rawWordOut = *(uint *)(puVar1[2] + *(int *)((int)this + 8));
  return true;
}

