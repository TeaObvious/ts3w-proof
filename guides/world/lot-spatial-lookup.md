# World position to lot and room lookup

This is a static path through the original PC 1.67 `TS3W.exe`, beginning with
the original ScriptCore wrappers. Names assigned to internal functions are
analyst names. The [managed/native reuse table](../../evidence/bindings/managed-native-reuse.tsv)
joins original ScriptCore IL callsites to registration records and selected
direct native calls. It is a lookup aid, not a runtime trace or a complete
native call graph.

## Managed entry and first native consumer

The original [ScriptCore.World declaration](../../evidence/managed/types/ScriptCore.World.cs)
offers `GetLotLocation` and `GetLotLocationAtFloor`. Their complete original
[caller IL bodies](../../evidence/managed/callers.il.txt) call registered
`World_GetLotLocationImpl` and `World_GetLotLocationAtFloorImpl` respectively.
The former's [original ASM](../../evidence/native/functions/00785370_ScriptCore_World_World_GetLotLocationImpl.asm)
([annotated pseudocode](../../evidence/native/functions/00785370_ScriptCore_World_World_GetLotLocationImpl.c))
and the latter's [original ASM](../../evidence/native/functions/007854D0_ScriptCore_World_World_GetLotLocationAtFloorImpl.asm)
([annotated pseudocode](../../evidence/native/functions/007854D0_ScriptCore_World_World_GetLotLocationAtFloorImpl.c))
both read the global lot index at `0x011edbc4`. If it is present, they pass
world X and Z to the shared lot finder. A missing index or no containing lot
leaves the 64-bit lot ID zero and derives the local output from initialized
`-1.0` coordinate sentinels. The wrappers then write the local location and return the
lot ID in the EDX:EAX pair. The two paths differ in their local level selector.

The same finder is called directly by registered routing, world-query and UI
functions. The reuse table records their exact ScriptCore IL offsets and native
call instructions, including `Route_IsPointObstructedBySim`,
`Route_PlanFromPoint`, `RouteManager_RoutingBlockerCheck2d` and
`UIManager_GetPickInfoImpl`. A listed call edge establishes possible static
reuse; a branch may prevent it in a particular game state.

## Candidate production and exact lot choice

The [bucket rebuilder](../../evidence/native/functions/00C684C0_LotSpatialIndex_RebuildBuckets.asm)
([annotated pseudocode](../../evidence/native/functions/00C684C0_LotSpatialIndex_RebuildBuckets.c))
refreshes a map of candidate lots from their stored integer X/Z extents,
using a 16-unit spacing, then clears its dirty byte. The
[get-or-create helper](../../evidence/native/functions/00C67EC0_LotSpatialIndex_GetOrCreateBucket.asm)
([annotated pseudocode](../../evidence/native/functions/00C67EC0_LotSpatialIndex_GetOrCreateBucket.c))
supplies each destination bucket. The
[bucket reader](../../evidence/native/functions/00C686E0_LotSpatialIndex_FindBucketAtWorldXZ.asm)
([annotated pseudocode](../../evidence/native/functions/00C686E0_LotSpatialIndex_FindBucketAtWorldXZ.c))
rebuilds on demand when dirty, subtracts the index origin, divides by the
stored spacing, packs Z/X into a 32-bit key and returns a candidate vector
or null. At `0x00c68714` and `0x00c68753`, the original x87 control word and
`FISTP` establish truncation toward zero. The decompiler's `ROUND` expression
does not explain those instruction-level semantics.

The [containing-lot finder](../../evidence/native/functions/00C687D0_LotSpatialIndex_FindContainingLotAtWorldXZ.asm)
([annotated pseudocode](../../evidence/native/functions/00C687D0_LotSpatialIndex_FindContainingLotAtWorldXZ.c))
checks each bucket candidate. Its
[world-X/Z to local-X/Z transform](../../evidence/native/functions/00AB6E40_Lot_WorldXZToLocalXZ.asm)
([annotated pseudocode](../../evidence/native/functions/00AB6E40_Lot_WorldXZToLocalXZ.c))
subtracts the lot origin and applies the lot angle. Both local components
must be in inclusive zero-to-dimension bounds. The first passing candidate
is returned; otherwise EAX is zero. Bucket membership alone does not imply
that the point lies inside a lot.

## Local location and room

The [four-float local transform](../../evidence/native/functions/00AB71A0_Lot_WorldPositionToLocalVector.asm)
([annotated pseudocode](../../evidence/native/functions/00AB71A0_Lot_WorldPositionToLocalVector.c))
is shared by the two local-location wrappers. The
[ordinary converter](../../evidence/native/functions/00ADC860_Lot_WorldPositionToLocalLocation.asm)
([annotated pseudocode](../../evidence/native/functions/00ADC860_Lot_WorldPositionToLocalLocation.c))
calls the midpoint level selector at `0x00ab5dc0` with flag zero; the
[at-floor converter](../../evidence/native/functions/00ADC980_Lot_WorldPositionToLocalLocationAtFloor.asm)
([annotated pseudocode](../../evidence/native/functions/00ADC980_Lot_WorldPositionToLocalLocationAtFloor.c))
calls a distinct selector at `0x00ab61b0` with flag one. Both store local
X/Z floats and a signed integer level into the output. The wrapper's
`MOV [ECX+8],EAX` and selector exits establish that ABI; Ghidra's former
float selector signature and output pointer were corrected. The
[level-selection guide](lot-level-selection.md) follows the differing height
thresholds, triangle sampling and surface checks.

The [room wrapper](../../evidence/native/functions/00B482C0_LotRoom_ResolveForLocalLocation.asm)
([annotated pseudocode](../../evidence/native/functions/00B482C0_LotRoom_ResolveForLocalLocation.c))
indexes a room-query object by the caller's room-definition argument. Its
[cell encoder](../../evidence/native/functions/00AF7DB0_LotLocation_EncodeCellAndQuadrant.asm)
([annotated pseudocode](../../evidence/native/functions/00AF7DB0_LotLocation_EncodeCellAndQuadrant.c))
produces a four-byte local X/Z/level/quadrant key; the
[quadrant selector](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.asm)
([annotated pseudocode](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.c))
returns one of bits `1`, `2`, `4` and `8`. The
[room-grid reader](../../evidence/native/functions/00C03FC0_LotRoomGrid_ReadRoomForCell.asm)
([annotated pseudocode](../../evidence/native/functions/00C03FC0_LotRoomGrid_ReadRoomForCell.c))
sign-extends all three coordinate bytes, checks X/Z/level bounds, and picks
one 16-bit room value from an eight-byte cell. A key flag can lower the level
by one. Invalid or empty selection can produce `0xffff`; the invalid-path
flag can instead yield zero. The room wrapper leaves the reader's EAX intact,
and the registered callers consume AX. The canonical annotated Ghidra
wrapper now has the verified signed16 return type. Its index into the room-query object array has no visible bound
check in this function.

No retail game run was performed for this guide. The index producer's broader
update lifetime, selector property flags, room-query array bound and overlapping
lot order under live changes remain open.

The [visitor and greeting contract](../travel/visitors-and-door-greeting.md)
traces the signed room lookup into the original inside/outside predicates and
the Sim.RoomChanged auto-greeting gate.
