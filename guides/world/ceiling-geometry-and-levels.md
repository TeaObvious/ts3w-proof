# Ceiling geometry and level selection

Original PC1.67 TS3W.exe, identified in the central reference. Analyst names
express the selected role; they are not recovered original symbols. Complete
original instructions and saved annotated Ghidra C establish these static facts.
No original gameplay, visual equivalence, GPU completion or full contour-child
algorithm execution is claimed.

| Entry | Analyst role | Complete code |
| --- | --- | --- |
| 00A49100 | CeilingManager_CollectRoomTileParts | [ASM](../../evidence/native/functions/00A49100_CeilingManager_CollectRoomTileParts.asm) ([C](../../evidence/native/functions/00A49100_CeilingManager_CollectRoomTileParts.c)) |
| 00A493C0 | CeilingManager_CollectExteriorPartsByElevation | [ASM](../../evidence/native/functions/00A493C0_CeilingManager_CollectExteriorPartsByElevation.asm) ([C](../../evidence/native/functions/00A493C0_CeilingManager_CollectExteriorPartsByElevation.c)) |
| 00A497F0 | CeilingManager_ProduceRoomDataMessage | [ASM](../../evidence/native/functions/00A497F0_CeilingManager_ProduceRoomDataMessage.asm) ([C](../../evidence/native/functions/00A497F0_CeilingManager_ProduceRoomDataMessage.c)) |
| 00A4A0C0 | LotElevation_ReadSignedGridHeight | [ASM](../../evidence/native/functions/00A4A0C0_LotElevation_ReadSignedGridHeight.asm) ([C](../../evidence/native/functions/00A4A0C0_LotElevation_ReadSignedGridHeight.c)) |
| 00A4ABE0 | LotRooms_TestHeightExtensionMembership | [ASM](../../evidence/native/functions/00A4ABE0_LotRooms_TestHeightExtensionMembership.asm) ([C](../../evidence/native/functions/00A4ABE0_LotRooms_TestHeightExtensionMembership.c)) |
| 00A4D1B0 | CeilingRenderer_BuildContoursAndHeight | [ASM](../../evidence/native/functions/00A4D1B0_CeilingRenderer_BuildContoursAndHeight.asm) ([C](../../evidence/native/functions/00A4D1B0_CeilingRenderer_BuildContoursAndHeight.c)) |
| 00A4D550 | CeilingRenderer_ComputeRoomInfo | [ASM](../../evidence/native/functions/00A4D550_CeilingRenderer_ComputeRoomInfo.asm) ([C](../../evidence/native/functions/00A4D550_CeilingRenderer_ComputeRoomInfo.c)) |
| 00A4E740 | CeilingRenderer_EmitRoomModel | [ASM](../../evidence/native/functions/00A4E740_CeilingRenderer_EmitRoomModel.asm) ([C](../../evidence/native/functions/00A4E740_CeilingRenderer_EmitRoomModel.c)) |
| 00A4EF30 | CeilingRenderManager_ApplyRoomData | [ASM](../../evidence/native/functions/00A4EF30_CeilingRenderManager_ApplyRoomData.asm) ([C](../../evidence/native/functions/00A4EF30_CeilingRenderManager_ApplyRoomData.c)) |
| 00AC2D10 | TileQuarter_WriteTriangle | [ASM](../../evidence/native/functions/00AC2D10_TileQuarter_WriteTriangle.asm) ([C](../../evidence/native/functions/00AC2D10_TileQuarter_WriteTriangle.c)) |
| 00B5B5B0 | Polygon_TriangulateContourSet | [ASM](../../evidence/native/functions/00B5B5B0_Polygon_TriangulateContourSet.asm) ([C](../../evidence/native/functions/00B5B5B0_Polygon_TriangulateContourSet.c)) |
| 00CD2DA0 | LotLevels_ExpandBounds | [ASM](../../evidence/native/functions/00CD2DA0_LotLevels_ExpandBounds.asm) ([C](../../evidence/native/functions/00CD2DA0_LotLevels_ExpandBounds.c)) |
| 00CD86F0 | LotConstructionCursor_UpdateHeightAndLevelBounds | [ASM](../../evidence/native/functions/00CD86F0_LotConstructionCursor_UpdateHeightAndLevelBounds.asm) ([C](../../evidence/native/functions/00CD86F0_LotConstructionCursor_UpdateHeightAndLevelBounds.c)) |

## Producer and physical records

A497F0 selects live min<=L<top rooms, can skip underside levels, calls A49100
with flag false and then A493C0. A49100 reads a low-Int16 room ID, enumerates
packed span locations and onehot quarter bits1/2/4/8, and filters floor/room/
selected ground states. A nonempty response row is20bytes: room word container,
vector and allocator label. Empty appended room rows are removed. This is not
an unconditional inclusion of every positive room quarter; span order is not
proved identical to a managed x-major cell scan.

A493C0 selects outside room0, source signed level>=0 and above<=live top. It
rejects two selected floor zones and underside levels, then requires two floor
predicates per quarter. Exact binary32 ABOVE elevation groups parts. Response
records have roomID0 and packed ABOVE locations; the grouping float is not
copied as the room ID. Predicate children remain separate format/policy contracts.
A4EF30 clears/rebuilds through its child sequence, visits20byte rows, calls
A4D550, and conditionally calls A4E740. The existing
[refresh contract](ceiling-room-refresh.md) describes message/timer ownership.

## Height and contour construction

A4D550 copies the room ID and selects source parts into bounds/connected sets.
Signed packed x,z,level bytes are real MOVSX operands. For nonempty enclosed
fallback geometry, the first packed part selects height. Below live top:
positive L samples L+1; negative L samples L then adds3; ground L0 normally
samples1, but membership in the selected room set chooses sample0 plus6.
A4ABE0 tests that low-Int16 key against the native hash sentinel. Its actual
ECX receiver, one DWORD stack argument and RET4 replace an incomplete stored
fastcall prototype. Low AL is Boolean; upper EAX is not a success value.

A4A0C0 indexes `((signedLevel-min)*dimX+signedX)*dimZ+signedZ` and returns
FLD binary32 through x87 ST0; it supplies no bounds/null fallback itself.
A4D550's sampled path keeps x87 additions/subtraction until the final float
store. Its top fallback instead uses ADDSS/SUBSS, rounding each binary32
operation. Uniformly rewriting both paths to float or double can change results.

A4D1B0 can replace fallback height/level with the first actual contour. Exterior
room0 samples the packed above level minus offset and stores source level=above-1.
Its enclosed lane selects next level, negative/top plus3 or special ground plus6;
this actual contour lane uses SSE binary32 arithmetic. CVTTSS2SI then low signed
bytes select XY. The helper constructs boundaries and calls further contour/hole
helpers. Their complete inset/topology algorithms are not reconstructed here.

Original binary32 offset is bits3E19999A (9A99193E in file order), not exact
real-number0.15; special height6 is40C00000. These two necessary ranges are in
[original height data](../../evidence/native/data/ceiling-height-constants.txt).
Binary32 stride3 is already retained in the
[refresh data](../../evidence/native/data/ceiling-room-refresh.txt).

## Quarter geometry versus contour triangulation

AC2D10 accepts onehot1/2/4/8 and signed-byte x/z. It writes the two quarter
corners then centre(x+.5,z+.5), in -Z,+X,+Z,-X order. Other selectors clear the
output end pointer, rather than throwing a managed index exception. A managed
zero-based0..3 API needs an explicit adapter and failure contract.

A4E740 feeds contour counts and XY to B5B5B0, including holes. That parent
triangulator uses seeded duplicate-point jitter, up to5 retries and final
near-coincident endpoint filtering, then writes indices into the original
vertex array. It returns Boolean in AL only; empty inputs do not promise output
reset. Some inferred C float index temporaries are integer bit-pattern artifacts:
B5B96B..B5B99C uses integer MOV/SUB for indices, not numeric float conversions.
The nested tessellation children and all exceptional allocator paths remain
independent. Merely emitting one triangle per quarter is not original contour
triangulation, even if a simple flat room covers the same area.

## Material and displayed level

A4E740 rejects its selected underside level, chooses ceiling/exteriorceiling
from low-Int16 roomID, binds LightMap and ceilingLightmapScale, emits record-height
vertices and reverses each triangle to0,2,1. Usually display level is
min(sourceLevel+1, owner liveTop). Manager byte60 selects sourceLevel instead.
The model and resource reference operations are native lifetime context, not
proof of GPU readiness or driver-specific execution requirements.

CD2DA0 is cdecl with two DWORD arguments and AL-only result. It expands existing
signed min/max to admit the requested level, returning false when null,
unchanged, or an attempted expansion exceeds its limits. Lower bound is -4 when
opaque lot byte4BC is zero, -1 otherwise; upper expansion permits<=5. Existing
higher bounds are not reduced. It does not add1 or scan walls itself. The selected
cursor caller CD86F0 passes adjusted cursor level+1 on one lane, level-1 on another;
its full upstream tool identity remains outside this slice. A highest-wall scan
is a host projection, not this original routine's entire state transition.

## Evidence limits

Body ranges, all selected memory/envelope bytes, saved annotations and canonical
links/indexes are checked against the pristine executable. FileBytes are
unchanged. Decompiler metadata is reconciled with physical ABI and instructions;
remaining child prototypes can omit arguments, so their inferred C alone is not
an ABI specification. Full floor admission, room-set producers, underside-set
writers, contour children, message delivery and resource/GPU retirement need
separate closure before claiming complete original ceiling behavior.
