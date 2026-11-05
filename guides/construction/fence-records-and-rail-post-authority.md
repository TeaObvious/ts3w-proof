# Fence records and rail/post authority

Static PC 1.67 GhidrAssist inspection explicitly on `/TS3W.exe`. Eight complete
actual annotated C / original ASM pairs cover1153instructions and3389 contiguous
bytes. All instructions independently match pristine original bytes. Database saved
clean without original-byte modification. Names are analyst descriptions; no game
execution, product test or decoder-codec research is claimed.

## Design map and versioned posts

Existing A66420 writes design-map dependency before posts, version4 and each signed
Int32 level/binary32 X/Z/product key handle/design ID. A67720 reads the design map,
then post versions: inline keys below2; reference-context handles from2; three
additional design keys only at3; direct UInt16 design ID from4. Existing A67420
registers design triples and increments reference count when found. A67690 inserts
only absent post locations; current detached post lists retain duplicates instead.

New B14A20 clears both retained design indexes before opening089132E8 with the
supplied group/instance. It reads but does not compare the version word, then reads
three context keys, UInt32ID/refcount per row, rebuilds both indexes and passes
the existing default triple at+40 to B14910. That consumer uses its existing match
helper and, only when absent, appends the supplied48-byte triple to its retained
list. It does not update the default triple at+40. Current version1/exact-size/nonzero-unique-ID checks are
additional frontend policy. A66A90 returns this+40 for ID0, a found triple for
nonzero ID, or null for an absent nonzero ID. Current null design fields are not
a claim that native ID0 means no default object.

The current widened-reference parser still stores post handles as UInt16: it
clamps UInt32 post handles to65535 and flags design keys above65535 unresolved.
The native context helper's wide-handle behavior must not be described as that
clamp. Current version3 detached design reuse also does not reproduce the live
native reference-count increment or original hash-ID allocation order.

## Rails are wall-locator consumers; posts are locations

A6C310 resolves the product via C8E760(default flag1), selects straight versus
diagonal rail getter using actual six-byte WallLocator endpoint equality, reads
product height offset/flag and invokes A6B020. A6C3B0 resolves the product separately,
requires a nonzero post-model type lane, and invokes A6B510 with a LotXZLevel.
There is no requirement that a rail find two decoded posts within an epsilon.

A6B020 uses signed-byte level/locator endpoints, retained per-level/model groups,
scene asset/room services and optional compositor fixup, then registers rail
instances from the actual locator transform. A6B510 instead reads signed Int32
level at location+8 and binary32 X/Z. It converts coordinates through x87 FISTP
under ambient rounding and forms its retained post key from lowDWORDs as
100*roundedX+roundedZ. Both paths use supplied product height offset and retain
full virtual/lifetime paths. C register/stack/SIMD aliases do not override original
loads, signed extensions, caller pushes or RET sizes.

C8E760 returns the found product pointer, null for absent key with flag0, or
invokes the default product getter for absent key with flag1. Both native fence
dispatchers pass1. Current dense-row projection fails closed on missing/non-CFEN
product keys; that filtering must not be equated to the original product-default
behavior. Full default creation, catalog population and scene scheduling remain
separate existing dependencies, not invented here.

Current nonnull dense rows remain authoritative even when they contain no fences.
The post-derived fallback only runs when the caller has no dense authority. Its
quarter-cell floor quantization, last-post-per-cell replacement,3x3 candidate scan
and component-wise .05 tolerance are frontend fallback choices. It is not the
native rail producer above and does not prove why all native fences exist.

Independent static examples: ID0 design lookup returns owner+40; absent nonzero
ID returns null. Empty nonnull dense rows yield an authoritative empty rail set,
even if fallback has rails. A rail WallLocator with equal endpoint X takes the
straight getter; both X/Z differing take the diagonal getter. With missing product
and allowDefault0/1, lookup returns null/default-getter result respectively.
These are specifications, not executed tests.

## Canonical new pairs

- [FenceDesignMap_ReadResource ASM](../../evidence/native/functions/00B14A20_FenceDesignMap_ReadResource.asm) ([C](../../evidence/native/functions/00B14A20_FenceDesignMap_ReadResource.c))
- [FenceDesignMap_FindById ASM](../../evidence/native/functions/00A66A90_FenceDesignMap_FindById.asm) ([C](../../evidence/native/functions/00A66A90_FenceDesignMap_FindById.c))
- [FenceRenderer_AddFenceRail ASM](../../evidence/native/functions/00A6C310_FenceRenderer_AddFenceRail.asm) ([C](../../evidence/native/functions/00A6C310_FenceRenderer_AddFenceRail.c))
- [FenceRenderer_AddFencePost ASM](../../evidence/native/functions/00A6C3B0_FenceRenderer_AddFencePost.asm) ([C](../../evidence/native/functions/00A6C3B0_FenceRenderer_AddFencePost.c))
- [FenceRenderer_AddRailSceneModel ASM](../../evidence/native/functions/00A6B020_FenceRenderer_AddRailSceneModel.asm) ([C](../../evidence/native/functions/00A6B020_FenceRenderer_AddRailSceneModel.c))
- [FenceRenderer_AddPostSceneModel ASM](../../evidence/native/functions/00A6B510_FenceRenderer_AddPostSceneModel.asm) ([C](../../evidence/native/functions/00A6B510_FenceRenderer_AddPostSceneModel.c))
- [ProductCatalog_LookupFenceProduct ASM](../../evidence/native/functions/00C8E760_ProductCatalog_LookupFenceProduct.asm) ([C](../../evidence/native/functions/00C8E760_ProductCatalog_LookupFenceProduct.c))

- [FenceDesignMap_RegisterUniqueTriple ASM](../../evidence/native/functions/00B14910_FenceDesignMap_RegisterUniqueTriple.asm) ([C](../../evidence/native/functions/00B14910_FenceDesignMap_RegisterUniqueTriple.c))

The existing post/design writer, post reader/insertion and grid pairs remain their
canonical evidence; no duplicated raw export or probe output is added here.
