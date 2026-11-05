/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. Nonnull ECX catalog; no stack arguments, RET, FULL EAX
   0/1. Predicate is !(DWORD98&00100000) && (DWORDD0&4000010A)!=0. This differs from C97790 which
   ORs the type bit; do not merge the two. No high9C test or recovered category names claimed. */

uint __thiscall Catalog_TestIntersectionMaskWithoutType100000(void *this)

{
  if (((*(uint *)((int)this + 0x98) & 0x100000) == 0) &&
     ((*(uint *)((int)this + 0xd0) & 0x4000010a) != 0)) {
    return 1;
  }
  return 0;
}

