/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. Nonnull ECX catalog; no stack arguments, RET, FULL EAX
   0/1. True iff DWORD98&00100000 OR DWORDD0&4000010A OR DWORDD0&4. Bit4 here is numeric mask4,
   distinct from source bit ordinal4. No field9C or unrelated flags implied. */

uint __thiscall Catalog_TestIntersectionCategoryOrD0Bit4(void *this)

{
  if ((((*(uint *)((int)this + 0x98) & 0x100000) == 0) &&
      ((*(uint *)((int)this + 0xd0) & 0x4000010a) == 0)) &&
     ((*(uint *)((int)this + 0xd0) >> 2 & 1) == 0)) {
    return 0;
  }
  return 1;
}

