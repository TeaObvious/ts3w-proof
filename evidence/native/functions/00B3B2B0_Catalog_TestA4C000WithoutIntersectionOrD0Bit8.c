/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. Nonnull ECX catalog, no stack args RET; FULL EAX0/1.
   C97790 predicate must be false, DWORDD0&8 must be zero and (DWORDA4&C000)==C000. This predicate
   alone has no location/elevation argument and does not establish semantic wall/fence names. */

uint __thiscall Catalog_TestA4C000WithoutIntersectionOrD0Bit8(void *this)

{
  uint uVar1;
  
  uVar1 = Catalog_TestIntersectionCategoryMask(this);
  if ((((char)uVar1 == '\0') && ((*(uint *)((int)this + 0xd0) >> 3 & 1) == 0)) &&
     ((*(uint *)((int)this + 0xa4) & 0xc000) == 0xc000)) {
    return 1;
  }
  return 0;
}

