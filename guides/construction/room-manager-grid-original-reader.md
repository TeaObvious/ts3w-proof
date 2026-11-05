# RoomManager grid wire, provenance and queries

Original shipped PC1.67, static complete actual Ghidra C/fullASM and pristine-byte
comparison. Original instruction widths, registers, stack cleanup and status take
precedence over inferred C types. No original-target or managed runtime execution
is established by this evidence.

## Three independent versions and exact lanes

The [ASM](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([LOT reader](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c)) retains the source UInt16 at
lot+78 and admits14..45hex. The fivebyte [ASM](../../evidence/native/functions/00C6DCC0_Lot_GetSourceFormatVersion.asm) ([version getter](../../evidence/native/functions/00C6DCC0_Lot_GetSourceFormatVersion.c)) returns that WORD inAX fromECX.
[ASM](../../evidence/native/functions/00B52050_PartitionManager_ReadSavedResources.asm) ([PartitionManager](../../evidence/native/functions/00B52050_PartitionManager_ReadSavedResources.c)) retains it atB52074 and pushes it
as the fifth physical stackDWORD for RoomManager atB52354..6F. Its separate room-index
UInt16 gates lane availability/legacy Platform behavior. Neither that index version
nor the grid's own UInt32 header word chooses cell width.

Ordinary room lane IDs beginF12E7BFF, incrementing per room-definition lane; group
is(id>>24) XOR(id&FFFFFF). LightBlocking0, LoadBearing1, PlacementBlocking2, Platform3
map to002E7B0E,002E7CF1,002E7CF0,002E7CF3. The grid resource type isB125533A; the instance
belongs to the enclosing lot. Older index gates and missing-resource behavior stay
distinct from payload decoding; no all-group/ranked/pool-anchor acquisition follows.

## Header and two body widths

[ASM](../../evidence/native/functions/00C06900_RoomGrid_ReadHeaderResource.asm) ([Header reader](../../evidence/native/functions/00C06900_RoomGrid_ReadHeaderResource.c)) reads four UInt32s:
word0,width,depth,layers through the [ASM](../../evidence/native/functions/004DD980_Stream_ReadUInt32.asm) ([scalar block](../../evidence/native/functions/004DD980_Stream_ReadUInt32.c)). Word0 is consumed without comparison to1; persistent native object storage of
that word is not established. The existing host Version property retains it for
reporting. Each read accumulates the low-byte result with the [ASM](../../evidence/native/functions/007D79F0_StreamReader_AccumulateStatus.asm) ([sticky status helper](../../evidence/native/functions/007D79F0_StreamReader_AccumulateStatus.c)).
[ASM](../../evidence/native/functions/00C05E40_RoomGrid_ResizeStorage.asm) ([Storage resize](../../evidence/native/functions/00C05E40_RoomGrid_ResizeStorage.c)) stores the three dimensions and
establishes compressed4x4 internal storage; no4096/64, LOT equality or nonzero-grid
format admission occurs in these selected bodies. Raw native allocation arithmetic
is not a managed safe-input contract.

[ASM](../../evidence/native/functions/00C07AC0_RoomManager_ReadSavedGridResource.asm) ([RoomManager reader](../../evidence/native/functions/00C07AC0_RoomManager_ReadSavedGridResource.c)) physically uses ECX receiver plus
five stackDWORDs/RET14. Existing six-formal metadata includes autoThis and a UInt16
fifth input in the lowWORD of stack+14; no additional register/formal is invented.
C07B2C compares that enclosingLOT word to12hex; unsigned JNC atC07B35 selects:

| Enclosing LOT | Serialized cell fields | Actual primitive join |
| --- | --- | --- |
| below12hex | Four UInt32s; retain lowUInt16 from each, yielding the same eightbyte logical cell | C07BA2→[ASM](../../evidence/native/functions/004DDA40_Stream_ReadUInt32ArrayByByteOrder.asm) ([4DDA40 thunk C](../../evidence/native/functions/004DDA40_Stream_ReadUInt32ArrayByByteOrder.c))→[ASM](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.asm) ([4DD9D0 target C](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.c)) |
| at/above12hex | Four UInt16 fields per cell | C07C3B→[ASM](../../evidence/native/functions/004DD970_Stream_ReadUtf16UnitsEndian.asm) ([4DD970 thunk C](../../evidence/native/functions/004DD970_Stream_ReadUtf16UnitsEndian.c))→[ASM](../../evidence/native/functions/004DD920_Stream_ReadUtf16UnitsEndian.asm) ([4DD920 target C](../../evidence/native/functions/004DD920_Stream_ReadUtf16UnitsEndian.c)) |

Both primitive readers physically receive FOUR caller-clean cdecl DWORDs:
stream,destination,UInt32unitCount,endianFlag. Endian1 preserves little-endian units;
other values swap each unit. Array reads demand their requested byte count, not EOF.
4DD9D0 now records the fourth formal and unsigned count, preserving first two
pointer types/storage and undefined4 return. OnlyAL is Boolean authority. The sole
local4DD9ED __thiscall read override records ECX+output/countDWORDs/pop8, proven by
no caller stackADD and three saved-register pops then plainRET. Its current target
C correctly tests endianFlag!=1. No global stream/vtable/callee type is inferred.
The UInt16 target's independently established local4DD939 pop8 rule is retained.

Both real fivebyte thunks keep their genuine inherited aliases and target joins.
Actual Ghidra C for a thunk expands target logic without inheriting the target-local
indirect-call override. Thus both actual thunk C files still display a pointer/endian
inference artifact, explicitly annotated in their PLATEs. Their physical body is
only one JMP; target C/ASM and four pushed caller words govern the real byte order.
No fabricated replacement C or extra override outside either thunk body is used.

Logical order is layer→X→Z, four aligned room fields0..3. The old branch's
C07BC0..E0 copies lowWORDs at DWORD offsets0/4/8/C to logical WORD offsets0/2/4/6.
[ASM](../../evidence/native/functions/00AA3770_RoomGrid_ImportFourHalfwords.asm) ([AA3770 import](../../evidence/native/functions/00AA3770_RoomGrid_ImportFourHalfwords.c)) receives the same logical vector
and compresses internal storage. C07C53 imports, closes the context, C07C5F tests
sticky status, C07C67 rebuilds room locations only on success. Native false may
follow private partial mutation; managed publication of partial grids is not implied.
Unread trailing bytes neither reject a complete body nor select another stride.
Ordinary admitted LOT versions14..45 already select the modern branch; the explicit
older body grammar does not widen LOT admission.

## Writer, origin and queries

The [ASM](../../evidence/native/functions/00C06070_RoomGrid_WriteSavedResource.asm) ([ordinary grid writer](../../evidence/native/functions/00C06070_RoomGrid_WriteSavedResource.c)) calls the [ASM](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.asm) ([header writer](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.c)) for1/W/D/L and
[ASM](../../evidence/native/functions/00AA3510_RoomGrid_FlattenFourHalfwords.asm) ([AA3510 flatten](../../evidence/native/functions/00AA3510_RoomGrid_FlattenFourHalfwords.c)) for the same layer/X/Z eightbyte
logical cells. The selected array writer call atC060DF is4DDF60, a thunk to4DDEA0;
its four-word caller passes cellCount*4 UInt16 units. [ASM](../../evidence/native/functions/00B49180_RoomManager_WriteResources.asm) ([Partition writer](../../evidence/native/functions/00B49180_RoomManager_WriteResources.c)) owns lane resource selection;
[ASM](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.asm) ([LOT writer](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.c)) emits current45hex. This does not
establish an old-LOT-version writer or repair unsupported LOT offsets.

[ASM](../../evidence/native/functions/00C078E0_RoomManager_RebuildRoomLocations.asm) ([Room-location rebuild](../../evidence/native/functions/00C078E0_RoomManager_RebuildRoomLocations.c)) copies lot+17C into manager+10.
[ASM](../../evidence/native/functions/00C03FC0_LotRoomGrid_ReadRoomForCell.asm) ([C03FC0 query](../../evidence/native/functions/00C03FC0_LotRoomGrid_ReadRoomForCell.c)) sign-extends packed X/Z/level,
subtracts that origin, subtracts one extra level for mask10hex, checks bounds and
calls [ASM](../../evidence/native/functions/00A8B410_RoomGrid_GetLogicalCell.asm) ([logical cell lookup](../../evidence/native/functions/00A8B410_RoomGrid_GetLogicalCell.c)). First enabled low-four bit selects
its field; no enabled low bit givesFFFF. Out-of-grid return0 versusFFFFFFFF follows
the outsideflag; callers consumeAX. UInt16 room bits8000..FFFE are not all outside
because a host public short representation is negative.

## Managed projection and remaining boundary

One shared RoomGrid decoder preserves source-version provenance in description
producers/clones, uses explicit LE reads, validates complete body extent and managed
Int32 indexed/origin bounds, then publishes a complete grid. Missing provenance,
truncation or unsupported host representation cannot become empty success. A true
zero product has no cells; wall reconstruction retains its owner, and room-info
outer loops skip zero-width/depth domains. Above/below growth also skips outer X
traversal when Depth0, retaining new-level metadata and positive-domain cell order. No guessed stride, Max/room-ID fallback,
4096/64 cap or partial-body success is established.

The current public Int32 typed storage query is not the native packed room-location
iterator. Full room-map traversal, Pool room/first-seed/support projection, geometry,
nonempty UInt16 ID allocation, LDES14..1F/variable-name admission and library-format
parity remain separate. Existing room-dependent floor/opening/imposter/isolated-lot
artifacts need semantic stage invalidation through WorldCompilerStageVersions;
this decoder introduces no cache store/schema. No runtime/save/reload acceptance
follows from these static pairs.


## Fractional room point during object membership refresh

The [selected original instruction/data windows](../../evidence/objects/location-room-point-selection.tsv)
connect room refresh to the full lot-local point, rather than to an integer-cell
API. C04380 retains its manager receiver, traverses the supplied object-pointer
vector and obtains the object's lot-local location with B01DE0. It compares the
returned full lot GUID with the expected lot. AtC04523 it calls AF7DB0 on the
local position, thenC04534 calls C03FC0 with outsideflag0. AF7DB0 packs the signed
cell/level and invokes AF7BC0 to choose a containing quarter from fractional X/Z.
[Point encoding ASM](../../evidence/native/functions/00AF7DB0_LotLocation_EncodeCellAndQuadrant.asm)
([qualified pseudocode](../../evidence/native/functions/00AF7DB0_LotLocation_EncodeCellAndQuadrant.c));
[quarter selector ASM](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.asm)
([qualified pseudocode](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.c)).
For local(.75,.25), the selected bit is2. C03FC0's first-selected-quarter rule
therefore differs from unconditionally selecting bit8 of the floored cell.
[Room query ASM](../../evidence/native/functions/00C03FC0_LotRoomGrid_ReadRoomForCell.asm)
([qualified pseudocode](../../evidence/native/functions/00C03FC0_LotRoomGrid_ReadRoomForCell.c)).

B01DE0 obtains a composed position through957A30 and passes the actual local
conversion/output path throughADC860 atB01F11; the selected lot GUID returns in
EAX/EDX. Its complete height/provider/special-Location decisions remain open.
C6DC50 is the four-byte LEA EAX,[ECX+14]; RET member-vector accessor. Returning
that address does not establish vector lifetime, a snapshot, containment-depth
order or safe concurrent traversal. C06BA0 selects manager vectors and calls
C04380 with mode1 or0, retaining distinct refresh policies.
[Manager refresh ASM](../../evidence/native/functions/00C06BA0_LotRoomSeeds_FlushChangedRooms.asm)
([qualified pseudocode](../../evidence/native/functions/00C06BA0_LotRoomSeeds_FlushChangedRooms.c)).

The inspected C04380 path throughC045B1/RET8 compares normalized level and signed
room in mode0, resolves Location with mask11EDF08 and callsC8AD00 when needed;
mode1 requests event10 directly. The supplied-vector producer and native
containing-root C8A550 rules need separate investigation. No roots-first/depth64/
unsigned-ID-sort contract is established here. C04380/B01DE0 had undefined
function metadata during explicit GhidrAssist `/TS3W.exe` review. These are
qualified instruction windows through their observed returns, excluding adjacent
padding/neighbors, not invented owned functions or full indirect/exception CFGs.
The selected82 original bytes independently match the pristine PC1.67 PE. No
analysis, function definition, export, annotation mutation or database save was
performed for these observations. Location/event consumers are described in the
existing [object-handling guide](../objects/object-handling.md#location-room-state-and-event-order).
