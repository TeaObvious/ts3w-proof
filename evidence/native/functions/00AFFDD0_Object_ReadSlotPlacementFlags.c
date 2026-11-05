/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cdecl object pointer one stack word, plain RET/full EAX. Lookup object typed key
   at+18, then tail jump C97780 returning catalog+A0 SLOT PLACEMENT flags; absent definition
   returns0. This is not the distinct catalog object-type flag word. CB1270 and CCDD60 consume
   bits08000000/0C000000 from this slot-placement word. */

uint __cdecl Object_ReadSlotPlacementFlags(int param_1)

{
  void *this;
  uint uVar1;
  
  this = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(param_1 + 0x18));
  if (this != (void *)0x0) {
    uVar1 = ObjectProduct_GetSlotPlacementFlags(this);
    return uVar1;
  }
  return 0;
}

