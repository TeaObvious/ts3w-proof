# PC1.67 PoolRoomObjectMap reader and signed room keys

Original executable SHA256
694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
Names are evidence-supported analyst roles, not recovered original symbols.

| Entry | Complete actual annotated pair | Observed role |
| --- | --- | --- |
| B69280 | [ASM](../../evidence/native/functions/00B69280_PoolRoomObjectMap_FindOrInsertSignedRoom.asm) ([annotated C](../../evidence/native/functions/00B69280_PoolRoomObjectMap_FindOrInsertSignedRoom.c)) | ECX container, signed16 key pointer, RET4. Existing key returns payload+8. Absent-key paths pass the selected position to insertion children. |
| B54A60 | [ASM](../../evidence/native/functions/00B54A60_PoolRoomObjectMap_LowerBoundSignedRoom.asm) ([annotated C](../../evidence/native/functions/00B54A60_PoolRoomObjectMap_LowerBoundSignedRoom.c)) | Caller-cleaned signed16 lower-bound over24-byte records; B69280 supplies an unused fourth widened byte argument. Stored three-parameter prototype remains untouched. |

B69280 uses signed JGE atB692AB. B54A60 uses signed JGE atB54A96 and computes
record count by signed end-minus-begin division by24. B69350 writes the returned
16-byte payload after each successful row, so repeated room keys replace prior
payloads. B688E0 traverses24-byte entries in the existing container. The selected
insertion/allocation children B690C0/B69050 and complete container lifetime are
not expanded by these two bodies.

The retained [pool reader/production guide](pool-presence-and-water-production.md)
contains complete B69350/B54380 and presence counterparts. B69350 count uses
unsigned JBE/JC; B54380 performs2/4/8-byte reads with sticky status; version6
requires its Boolean byte.7D7A70 does not explicitly check EOF or modify status.
Actual caller AC91D0 atAC99ED..AC9A40 tests AL, marks outer failure, frees the
entire partial manager and returns. No successful row prefix is admitted after
truncation. The current7 writer B688E0/B68430 retains room16/packed32/object64.

These original map-key rules do not establish saved-grid count/group ranking,
full PlacementBlocking room traversal, native event completion or GPU/resource
lifetime. No original game execution or new complete C++ layout is claimed.


## Live room compatibility and helper-map producer

**ACF820** [ASM](../../evidence/native/functions/00ACF820_Lot_TestCellSupportRegionType.asm) ([C](../../evidence/native/functions/00ACF820_Lot_TestCellSupportRegionType.c)) — cdecl lot/packedcell/allowtype6/optionaloutbyte, ALBool/plainRET. Signedbounds check; fullmask0F AB67D0strict, type3 first then optionaltype6, successful out0/1 only. Failure leaves out untouched; upperEAX not certified by stored undefined4.

**ACF8E0** [ASM](../../evidence/native/functions/00ACF8E0_FUN_00acf8e0.asm) ([C](../../evidence/native/functions/00ACF8E0_FUN_00acf8e0.c)) — cdecl lot/packedcell, ALBool/plainRET. Signedbounds/fullmask0F AB67D0strict, then exact kind6. Not a general water-height or room-partition producer.

**B6C4D0** [ASM](../../evidence/native/functions/00B6C4D0_PoolManager_ReconcileRoomHelpers.asm) ([C](../../evidence/native/functions/00B6C4D0_PoolManager_ReconcileRoomHelpers.c)) — ECX PoolManager plus lowbyte flag, void RET4. Two owned ranges, three nonowned alignment bytes excluded. Actual mode2 rooms excludeUInt16 0/FFFF, firstshape location->ACF820/ACF8E0, oldhelper match by location/object/kind, retained refcount or create, AF8290 point times lottransform, B69280 map publication, footprint/slot resource changes and leftover destruction. Full geometry, pointproducer, virtual resource/error/reentry/thread lifetime not recovered.

Full room admission forces mask0F, strict AB67D0 resolution, then catalog kind3 or optionally6. It accepts distinct product IDs of one kind through B02820; this is separate from actual mode2 room partitioning. B6C4D0 obtains the first room shape location, resolves it, then uses the existing room/object map writer B69280. B688E0/B68430 and B54380/B69350 remain the paired saved-map writer/reader evidence, not substitutes for live helper reconciliation.

The actual original position is produced through AF8290 and multiplied by the lot transform from AB1540 before958760 consumes it. The selected caller alone does not establish local tile-centre arithmetic, orientation, helper routing lanes, footprints or retained resource lifetime. The complete producer, reader, event/error, object-manager and teardown contracts remain open. Native actual-room/first-shape order and exclusion of0/FFFF must not be replaced in the specification by a BFS/first-tile/room0 fallback inference. Water geometry remains separately bounded in the existing presence/water guide.

The13 newly needed owned bodies across this and the deck-query guide contain5354 owned bytes; the helper reconciler has three excluded alignment bytes. All instruction starts/owned bytes were compared against the authoritative PE; existing canonical iterator, wire, catalog and pool pairs are reused. No original game execution, full recovered class layout or safe parallel schedule is claimed.
