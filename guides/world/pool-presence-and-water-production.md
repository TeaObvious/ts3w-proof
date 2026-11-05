# PC 1.67 pool presence and packed water production

The selected14 complete original bodies are the resource, manager, presence and
water-production counterparts used for current preparation comparison. All names
are descriptive analyst roles, not recovered original symbols. Physical original
instructions govern register/stack widths, signedness and return meaning; actual
Ghidra C retains inferred types/warnings without repair.

| Entry and selected role | Original pair |
| --- | --- |
| B69350 — room/object map reader | [ASM](../../evidence/native/functions/00B69350_PoolManager_ReadRoomObjectMap.asm) ([C](../../evidence/native/functions/00B69350_PoolManager_ReadRoomObjectMap.c)) |
| B54380 — room/object row reader | [ASM](../../evidence/native/functions/00B54380_PoolManager_ReadRoomObjectRow.asm) ([C](../../evidence/native/functions/00B54380_PoolManager_ReadRoomObjectRow.c)) |
| B665F0 — geometry initialization | [ASM](../../evidence/native/functions/00B665F0_PoolGeometry_Construct.asm) ([C](../../evidence/native/functions/00B665F0_PoolGeometry_Construct.c)) |
| B6D910 — per-level geometry creation | [ASM](../../evidence/native/functions/00B6D910_PoolRenderManager_CreateLevelGeometry.asm) ([C](../../evidence/native/functions/00B6D910_PoolRenderManager_CreateLevelGeometry.c)) |
| B6DA10 — lot-event routing | [ASM](../../evidence/native/functions/00B6DA10_PoolRenderManager_HandleLotEvent.asm) ([C](../../evidence/native/functions/00B6DA10_PoolRenderManager_HandleLotEvent.c)) |
| B677A0 — lot/level setup | [ASM](../../evidence/native/functions/00B677A0_PoolGeometry_SetupLotLevel.asm) ([C](../../evidence/native/functions/00B677A0_PoolGeometry_SetupLotLevel.c)) |
| B668A0 — room-derived presence rebuilding | [ASM](../../evidence/native/functions/00B668A0_PoolGeometry_RebuildPresenceFromRooms.asm) ([C](../../evidence/native/functions/00B668A0_PoolGeometry_RebuildPresenceFromRooms.c)) |
| B66120 — rectangle presence update | [ASM](../../evidence/native/functions/00B66120_PoolGeometry_UpdatePresenceRectangle.asm) ([C](../../evidence/native/functions/00B66120_PoolGeometry_UpdatePresenceRectangle.c)) |
| B67EA0 — water group rebuilding | [ASM](../../evidence/native/functions/00B67EA0_PoolGeometry_RebuildWaterGroups.asm) ([C](../../evidence/native/functions/00B67EA0_PoolGeometry_RebuildWaterGroups.c)) |
| B67950 — packed water tile emission | [ASM](../../evidence/native/functions/00B67950_PoolGeometry_AppendPackedWaterTile.asm) ([C](../../evidence/native/functions/00B67950_PoolGeometry_AppendPackedWaterTile.c)) |
| ADC720 — signed location conversion | [ASM](../../evidence/native/functions/00ADC720_PackedLotLocation_WriteXZAndLevel.asm) ([C](../../evidence/native/functions/00ADC720_PackedLotLocation_WriteXZAndLevel.c)) |
| ADF360 — elevation sampling input/output | [ASM](../../evidence/native/functions/00ADF360_LotLocation_CopyXZAndSampleElevation.asm) ([C](../../evidence/native/functions/00ADF360_LotLocation_CopyXZAndSampleElevation.c)) |
| AA1020 — attribute-word lookup | [ASM](../../evidence/native/functions/00AA1020_LotAttributeGrid_ReadLocationWord.asm) ([C](../../evidence/native/functions/00AA1020_LotAttributeGrid_ReadLocationWord.c)) |
| AFC710 — two-word mixing and child forwarding | [ASM](../../evidence/native/functions/00AFC710_MixTwoWordsAndForwardHash.asm) ([C](../../evidence/native/functions/00AFC710_MixTwoWordsAndForwardHash.c)) |

The stored bodies own4587 original bytes and1458 Listing instructions. B67950 has
three ranges separated by1+11 unowned alignment bytes; those twelve bytes are
explicitly marked and never counted as instructions. Other selected bodies are
contiguous. [Necessary data](../../evidence/native/pool-presence-water-data.tsv)
retain five numeric words and five diagnostic strings. Runtime global011849E8
has pristine initializer1.0; its runtime value is not proved by static bytes.

## Persisted rows and runtime manager

B69350 takes an ECX receiver plus five stack words and ends with RET14. It opens
resource065B8B38, reads version/count and invokes B54380. Native count is used
unsigned. Failed sticky status stops row insertion; version6 additionally reads
one Boolean before close. Its meaningful result is AL; full upper return bits
are not certified. An existing child analyst label includes OpenWrite although
this path performs reads; that child label does not override the actual calls.

B54380 performs UInt16/UInt32/UInt64 reads in that order while accumulating
status; later reads are not skipped after earlier failure. Wire14-byte row is
room UInt16, X/Z/mask/level bytes, object UInt64. The observed internal16-byte
representation stores object at+0, X/Z/level/mask at+8/+9/+A/+B, room at+C.
ECX is the row destination and RET4 consumes the stream pointer. AL status
governs the caller's insertion. No complete recovered row type or object lifetime
follows from those fields.

B665F0 initializes the observed geometry/container fields and level sentinelBAD.
PoolPresenceArray, GeomPartInfos and ScenePartInfos diagnostic labels identify
those selected containers. B6D910 visits the lot's signed min/max levels,
allocates0x280 bytes, constructs/setup/rebuilds presence and stores accepted
level geometry plus dirty-level bookkeeping. Allocation size and virtual
retain/release-shaped child calls do not establish a complete C++ class or
reference-count contract.

B6DA10 routes matching lot events. Event044D8D32 gets a signed level byte from
payload12, creates/setup missing geometry, calls B66120 with endpoint data and
the low-byte flag at payload34, then marks that level dirty. Event03FABF1D uses
its optional reset service and visits nonnegative-level geometry.
Events5251D88C/9251D9D2/B126940A reset selected fields. RET8 consumes event/payload;
AL is meaningful. These runtime event/child responsibilities differ from current
batch preparation; no new event dispatch is implemented by the extraction.

## Presence bitset and selected room source

B677A0 stores lot, parent, level, position and width/depth fields; it allocates
and zeroes ceil(width*depth/8) bytes using the observed signed arithmetic.
Three stack words are consumed by RET0C; success uses AL. Resource/bounds children
remain unexpanded. No new dimension or allocation-safety rule is inferred.

B668A0 requests the room service at selectedLevel-1 with mode2. The retained
original room enum identifies mode2 as PlacementBlocking. It visits room
locations/shapes and sets presence bit signedX*depth+signedZ for admitted tiles.
Room predicates and shape iterator internals remain their own boundaries; this
does not prove current saved-grid/DeckFoundation cross-join parity.

B66120 iterates signed-byte rectangle endpoints, subtracts1 from high ends and
sets or clears that same bit index according to flag lowbyte. It consumes three
stack words with RET0C. No new bounds validation is supplied.

B67EA0 resets work-vector ends, scans Z outer/X inner across stored dimensions,
tests the presence bit and calls B67950 for each occupied tile. Nonempty groups
reach retained format/allocation/upload/scene/bounds children. These selected
calls do not establish full GPU formats, resource cleanup or material/atlas policy.

## Grouping, height and packed corners

AA1020 returns an attribute UInt16 from signed-byte X/Z and level-minus-minimum
when its storage exists; otherwise AX0. The selected code does not establish
that word as a room ID, pattern ID or the current proxy material identity.

ADC720 converts signed-byte X/Z to floats. Its third output slot receives the
sign-extended level as a raw Int32, with no float conversion. The stored
float-pointer display does not change that physical representation. It uses two
caller-cleaned stack pointers.

ADF360 copies X/Z, preserves output lane4 and samples the existing level grid
through AA0B90 when the lot service exists, otherwise writes Y0. ECX lot and two
pointers are followed by RET8. The existing sampler's
[ASM](../../evidence/native/functions/00AA0B90_WallFloor_SampleLevelGridHeight.asm) ([C](../../evidence/native/functions/00AA0B90_WallFloor_SampleLevelGridHeight.c))
retains its own signed-level, interpolation and outside-domain limits. No current
lot-origin/angle-only transformation or arbitrary proxy-height equivalence is
established by this copy/sample helper.

B67950 uses AA1020's word to find/create an attribute group. It samples elevation
once at the tile origin and uses sampledY-0.25 for all four corners. Corner X/Z
are generated over2x2 offsets; AFC710 receives their raw binary32 bit words.
AFC710 mixes both32-bit inputs and tail-forwards to AFC670. B67950 observes EAX32
and compares that value as its map key, without a second coordinate equality
comparison. The child hash combine/EDX meaning and collision-free identity are
not established; the stored undefined8 return remains unchanged.

For each new group corner, quantization truncates (Y+200)*32 to low16 and X/Z*4
to low8. Four packed bytes are [Ylow,Zquarter,Xquarter,Yhigh]. Group-local
ushort indices emit00/01/11 then00/11/10. The tile helper consumes two stack
pointers with RET8. Original group/container children and full vertex/normal/
shader/lifetime transport remain separate responsibilities.

## Current comparison and limits

Current geometry uses a parent-selected proxy, exact integer tuple corner keys,
uint indices, expanded world positions, UnitY normals and inspection UVs, with a
single proxy water plane. Matching two-triangle order does not prove complete
native hash, group, height, packed representation or rendered equivalence.
Native per-tile grid sampling also does not establish current basin rectangle/
outward/inward atlas/material policy. Parent CWAL/baking, Floor/native-wall
suppression, source selection and Floor/Wall/Pool lane authority remain explicit.

The complete reader/caller contract is described in the
[room/object map guide](pool-room-object-map-reader.md): unsigned count,
whole-manager failure after truncation, required version6 Boolean, permitted
unread trailing bytes and signed16 duplicate-room replacement. Saved-grid
candidate selection and PlacementBlocking room-derived presence remain separate
producer contracts; the map reader alone does not establish their ranking.

No native child lifetime, full room traversal, malformed-domain, runtime manager,
GPU/pixel, concurrent mutation or save/reload acceptance is inferred. This
reference records static original observations; no target execution was performed
for the geometry migration.
