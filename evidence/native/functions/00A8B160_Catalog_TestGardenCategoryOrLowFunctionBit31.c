/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX catalog; no stack arguments, plain RET and full EAX0/1. True iff LOW
   function-subcategory DWORD B8 mask80000000 OR build-category DWORD D0 mask00000E00. Low bit31 is
   distinct from the default high subcategory bit63. No BC/high-word or unrelated catalog fields are
   implied. */

undefined4 __fastcall Catalog_TestGardenCategoryOrLowFunctionBit31(int param_1)

{
  if (((*(uint *)(param_1 + 0xb8) & 0x80000000) == 0) && ((*(uint *)(param_1 + 0xd0) & 0xe00) == 0))
  {
    return 0;
  }
  return 1;
}

