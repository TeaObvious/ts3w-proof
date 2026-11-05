/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, stack nameWord/mask RET8, Boolean AL. Missing name
   false. Existing row returns (DWORDflagsAt8 & mask)==mask, ALL requested bits; zero mask true for
   an existing row and false when missing. Uses first duplicate name only. */

bool __thiscall SlotComponent_HasAllFlagBitsByName(void *this,uint nameWord,uint mask)

{
  byte *pbVar1;
  
  pbVar1 = SlotComponent_FindFirstNameWord(this,nameWord);
  if (pbVar1 != (byte *)0x0) {
    return (*(uint *)(pbVar1 + 8) & mask) == mask;
  }
  return false;
}

