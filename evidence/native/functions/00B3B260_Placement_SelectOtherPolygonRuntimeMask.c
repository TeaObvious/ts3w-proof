/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. cdecl two pointer words, RET caller cleanup; FULL
   UInt32 EAX. First if context byte2D nonzero AND otherCatalog nonnull AND C977C0 predicate true,
   return FFFFFFFF immediately. Else context byte2C zero returns5. Else otherCatalog nonnull and
   C977C0 true returns5; all remaining cases return6. Context must be nonnull. At reviewed caller
   B42E94 the result is carried as the required runtime mask into945080 atB42F08 with requireAll=1.
   Existing iterator compares (flags&mask)==mask; FFFFFFFF is not proven wildcard/all-polygons and
   has no special case in that iterator. Producer meanings of context2C/2D remain separate. */

uint __cdecl
Placement_SelectOtherPolygonRuntimeMask(void *candidateContext,void *optionalOtherCatalog)

{
  uint uVar1;
  
  if (((*(char *)((int)candidateContext + 0x2d) != '\0') && (optionalOtherCatalog != (void *)0x0))
     && (uVar1 = Catalog_TestIntersectionMaskWithoutType100000(optionalOtherCatalog),
        (char)uVar1 != '\0')) {
                    /* Exact selector FFFFFFFF, not locally normalized to5/6; downstream requireAll
                       iterator is ordinary all-bit equality. */
    return 0xffffffff;
  }
  if (*(char *)((int)candidateContext + 0x2c) == '\0') {
    return 5;
  }
  if ((optionalOtherCatalog != (void *)0x0) &&
     (uVar1 = Catalog_TestIntersectionMaskWithoutType100000(optionalOtherCatalog),
     (char)uVar1 != '\0')) {
    return 5;
  }
  return 6;
}

