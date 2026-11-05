/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX table; hash+16-byte output pointer RET8.
   Calls first-hash/exact FINAL type3 lookup; absent returns AL0 without writing output. Found
   copies fourDWORDs from payload base+descriptor offset, returns AL1. No range/length/key-type
   validation in this body; first wrong-type duplicate can hide a later key. */

bool __thiscall ParameterTable_CopyResourceKey16(void *this,uint nameHash,uint *resourceKeyOut16)

{
  uint *puVar1;
  
  puVar1 = ParameterTable_FindFirstHashExactType(this,nameHash,3);
  if (puVar1 == (uint *)0x0) {
    return false;
  }
  puVar1 = (uint *)(puVar1[2] + *(int *)((int)this + 8));
  *resourceKeyOut16 = *puVar1;
  resourceKeyOut16[1] = puVar1[1];
  resourceKeyOut16[2] = puVar1[2];
  resourceKeyOut16[3] = puVar1[3];
  return true;
}

