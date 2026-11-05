/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 held footprint gate. ECX nonnull catalog, no stack args RET; EAX FULL0 or1. True
   iff DWORD98&00100000 OR DWORDD0&4000010A. No ObjectTypeFlags2 test and no inferred expanded
   semantic categories beyond this mask. Previous fastcall spelling did not establish an EDX
   argument. */

uint __thiscall Catalog_TestIntersectionCategoryMask(void *this)

{
  if (((*(uint *)((int)this + 0x98) & 0x100000) == 0) &&
     ((*(uint *)((int)this + 0xd0) & 0x4000010a) == 0)) {
    return 0;
  }
  return 1;
}

