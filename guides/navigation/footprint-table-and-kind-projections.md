# Footprint table and typed kind projections

Static PC 1.67 comparison through GhidrAssist explicitly on /TS3W.exe. Seven
complete canonical actual annotated C / original ASM pairs contain 3551 owned
instructions and 11569 owned bytes (11594 envelope bytes including explicit
nonowned gaps). All envelope/data bytes independently match the pristine original.
The database was saved clean without changing original bytes. No original game
was executed. Analyst names describe selected evidence, not recovered EA symbols.

## Indexed footprint table

62B950 writes current serializer subversion 11, a count placeholder, then indexed
entries whose virtual +98 supplies the tag and +9C writes each typed payload.
Its save list can grow through referenced footprints and is drained repeatedly;
the final map count is backpatched. The caller receives actual bytes consumed.
An absent map fails before zeroing output; a missing indexed row can fail after
partial writes. Child AL status and sticky stream status are distinct. Do not
interpret decompiler unaff/stack aliases as original parameter identities.

62D190 receives five physical stack slots: stream, relative-size pointer, restore
position byte, lot owner and lot-data version (RET 0x14). It reads subversion only
when lotDataVersion>=2; otherwise 1. Read count, then index/tag pairs. An unsigned
index above count fails; equality is not rejected by that guard. Tag 1..11 selects
Extension, Polygon, PolygonWithRoutingOverride, Object, Discourage, LotFloor,
Lot, PolygonWithWeakRouting, Terrain, LotWall or Private constructors. +A0 reads
the payload with the table subversion. Reserved references 1/2 and post-load +A4
resolution belong to native mutable state. Unknown tags/failed payloads stop;
there is no arbitrary bytewise lot-ID resynchronization or detached-array rollback.

Current frontend surface traversal instead treats two initial words as attempted
entry count/ignored secondary word, accepts a smaller datatype set and skips guessed
extra point pairs. Its strict header version 7, bounded counts and bytewise resync
remain current policies, not the general original grammar. The actual native
polygon reader preserves polygon/ring/vertex nesting, stored AABB and Boolean.

## Typed IDs and kind 21

829290 uses original binary32 scale 3.0, truncates scaled X/Z with the x87 helper,
packs their low 16-bit lanes and low level byte, then invokes the existing 7CFC30
packer with type 2 and the supplied kind. Result marker byte 5, kind byte 1 and
level byte 6 follow the shifts. This x87/truncation statement covers ordinary
finite in-range inputs; nonfinite, overflow and changed rounding modes are not
generalized by the existing conversion-helper proof. For X=1.25, Z=2.5, level=-2, kind=21 the scaled
integer lanes are 3 and 7, instance 0x000000FE00070003 and resulting identifier
0x00FE000700031505. This independent vector is specified, not executed in-game.

8077D0 stores kind +0x35, level byte +0x36 and a retained lot owner +0x40, using
the same concrete LotFloorFootprint class for kinds 3 and 21. Shared getter624C40
sign-extends the kind byte; multiple footprint vtables reference it.833230 creates
the two kinds with different typed owner IDs and passes 0 versus10 to virtual
+CC. +B4 receives the two-word owner ID; it is not a polygon-building call, even
where inferred C omits its arguments.809570's kind21 mask branch calls B97FD0
with vertical inputs 0.0 and2.0 and clears/preserves candidate bits according to
AL. Actual immediate/float data and branch direction establish this distinction.
The readonly complete caller80ACA0 uses MOVSX of level +0x36 and chooses808260
only for kind3 above the native ground level, otherwise809570.

These facts do not establish the current rendering label Foundation for kind21,
nor a level0..4 clamp, derived AABB/raster approximation or coverage cap. Keep
those frontend observations separate from original ID/persistence behavior.

## Canonical pairs

- [RoutingFootprintTable_Write ASM](../../evidence/native/functions/0062B950_RoutingFootprintTable_Write.asm) ([C](../../evidence/native/functions/0062B950_RoutingFootprintTable_Write.c))
- [RoutingFootprintTable_Read ASM](../../evidence/native/functions/0062D190_RoutingFootprintTable_Read.asm) ([C](../../evidence/native/functions/0062D190_RoutingFootprintTable_Read.c))
- [LotRouting_BuildTypedFootprintOwnerId ASM](../../evidence/native/functions/00829290_LotRouting_BuildTypedFootprintOwnerId.asm) ([C](../../evidence/native/functions/00829290_LotRouting_BuildTypedFootprintOwnerId.c))
- [LotFloorFootprint_Construct ASM](../../evidence/native/functions/008077D0_LotFloorFootprint_Construct.asm) ([C](../../evidence/native/functions/008077D0_LotFloorFootprint_Construct.c))
- [RoutingFootprint_GetSignedKind ASM](../../evidence/native/functions/00624C40_RoutingFootprint_GetSignedKind.asm) ([C](../../evidence/native/functions/00624C40_RoutingFootprint_GetSignedKind.c))
- [LotRouting_RefreshLevelFootprints ASM](../../evidence/native/functions/00833230_LotRouting_RefreshLevelFootprints.asm) ([C](../../evidence/native/functions/00833230_LotRouting_RefreshLevelFootprints.c))
- [LotFloorFootprint_BuildMaskPolygons ASM](../../evidence/native/functions/00809570_LotFloorFootprint_BuildMaskPolygons.asm) ([C](../../evidence/native/functions/00809570_LotFloorFootprint_BuildMaskPolygons.c))

## Necessary original data

- [Tag dispatch table](../../evidence/native/data/0x0062d70c-footprint-tag-dispatch.bin):
  eleven little-endian targets indexed by tag minus1, after unsigned range guard.
- [Position scale](../../evidence/native/data/0x00fa2b9c-typed-owner-position-scale.bin):
  binary32 bits0x40400000, exactly3.0.
- [Kind21 height input](../../evidence/native/data/0x0103fd88-kind21-upper-height.bin):
  binary32 bits0x40000000, exactly2.0.
- [Kind getter vtable slot](../../evidence/native/data/0x00fecda4-lot-floor-kind-accessor.bin):
  original LotFloorFootprint +0x0C slot contains00624C40.

No inferred tables, probe output, annotation sidecar or redundant checksum is part
of the canonical publication. Original final rendering semantics and unrelated
footprint subclasses remain outside these selected claims. No decoder research.
