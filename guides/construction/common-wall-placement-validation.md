# Common wall placement validation and side effects

Reference: original PC1.67 TS3W.exe. Analyst names describe complete selected
native responsibilities. Full bodies and actual error-accumulator consumers
establish control flow; validation is not assumed to be a pure query.

## Canonical functions

| Responsibility | Original ASM (annotated Ghidra C) |
| --- | --- |
| Common validation then product branch dispatch | [0x00d49790](../../evidence/native/functions/00D49790_WallPlacement_ValidateProduct.asm) ([pseudocode](../../evidence/native/functions/00D49790_WallPlacement_ValidateProduct.c)) |
| Shared bounds, region, feature and support admission | [0x00d48420](../../evidence/native/functions/00D48420_WallPlacement_ValidateCommon.asm) ([pseudocode](../../evidence/native/functions/00D48420_WallPlacement_ValidateCommon.c)) |
| Endpoint, stair and side obstruction stages | [0x00d49480](../../evidence/native/functions/00D49480_WallPlacement_ValidateWallAndStairs.asm) ([pseudocode](../../evidence/native/functions/00D49480_WallPlacement_ValidateWallAndStairs.c)) |
| Ordinary wall inset | [0x00d46030](../../evidence/native/functions/00D46030_WallPlacement_ValidateBoundaryInset.asm) ([pseudocode](../../evidence/native/functions/00D46030_WallPlacement_ValidateBoundaryInset.c)) |
| Other product slope/region branch | [0x00d461f0](../../evidence/native/functions/00D461F0_WallPlacement_ValidateFenceSlopeAndRegions.asm) ([pseudocode](../../evidence/native/functions/00D461F0_WallPlacement_ValidateFenceSlopeAndRegions.c)) |
| Partition conflict collection | [0x00d46e60](../../evidence/native/functions/00D46E60_WallPlacement_TestPartitionConflicts.asm) ([pseudocode](../../evidence/native/functions/00D46E60_WallPlacement_TestPartitionConflicts.c)) |
| First matching incident partition | [0x00d465d0](../../evidence/native/functions/00D465D0_WallPlacement_FindIncidentPartitionType.asm) ([pseudocode](../../evidence/native/functions/00D465D0_WallPlacement_FindIncidentPartitionType.c)) |
| Basement perimeter caller | [0x00c9ed10](../../evidence/native/functions/00C9ED10_BasementWalls_ValidatePerimeter.asm) ([pseudocode](../../evidence/native/functions/00C9ED10_BasementWalls_ValidatePerimeter.c)) |
| Native feature edit and messages | [0x00abb5f0](../../evidence/native/functions/00ABB5F0_LotFloorFeatures_SetTile.asm) ([pseudocode](../../evidence/native/functions/00ABB5F0_LotFloorFeatures_SetTile.c)) |
| Any requested feature predicate | [0x00ab6550](../../evidence/native/functions/00AB6550_LotFloorFeatures_TestAny.asm) ([pseudocode](../../evidence/native/functions/00AB6550_LotFloorFeatures_TestAny.c)) |

## Dispatcher and physical ABI

D49790 receives ECX placement context plus locator6, product key, optional errors
and an option word; RET10hex, lowAL validation success. It first calls D48420.
Only on success does it select the C5B8C0 product branch D46A50, or run D49480
then choose D46030 versus D461F0 from C5B6F0. Product key/type/flags select distinct
rules; not every branch applies indiscriminately to every wall/fence.

D48420 has the same ECX/four-stack-word/RET10 contract. Its two compact adjacent
tiles are sign-extended and checked against live lot width/depth/signed levels;
the relevant product predicate can permit one off-lot side. Common admission also
uses edit zones, authored blocked/adjacent partition masks, diagonal permission,
optional flat-base/support checks, pool/fountain regions, support collections,
water and basement adjacency. Actual instructions retain each property gate.
The caller option mask01 can skip the selected flat-base check; it is not permission
to skip the whole common stage.

D49480/D46030/D461F0 and conflict/incident helpers each use ECX context plus three
stack words, RET0C. Their meaningful Booleans are lowAL; selected failure paths
leave unrelated upper EAX bits. D46E60's Boolean means CONFLICT, opposite the
success polarity of D49790. Return widths and polarity must not be collapsed.

## Error collection changes observable effects

With no error accumulator, many checks return at their first refusal. With an
accumulator, common validation records failures and continues through later
checks. At the feature stage it performs this exact sequence:

1. Clear Leaves8 on the first adjacent tile, then on the other tile.
2. Clear Puddle1 on the first adjacent tile, then on the other tile.
3. Test AnyFF with maskFFFF on both tiles.
4. A residual feature emits error81, whose original key is WallIntersectsPuddle.

These are real ABB5F0 state writes and message-producing operations, not edits
stored only in a candidate wall revision. They can occur after an earlier
collected refusal. Early bounds failures can return before reaching them.
Because bits8/1 were cleared first, the residualFF test can be triggered by other
feature bits; the text of error81 is not a predicate restricting it to puddles.
See the [cell/dispatch contract](../world/floor-feature-cells-and-bridge.md).

C9ED10 gives each perimeter locator a real error accumulator and option1. On
failure it inspects the FIRST collected error; only79 WallExists is ignored.
Common effects already happened before this decision. Skipping the entire common
call merely because a wall already exists loses those effects and can change
which first error is selected.

## Partition ordering and adjacent witness

D46E60 performs the selected product's earlier special check, then loops type0..4.
For each type it tests coincident blocked mask before adjacent blocked mask.
Type2 uses its separate partition graph; other types query the physical graph
and product partition type. With an accumulator multiple errors can be recorded
in that original order; without one the first conflict returns immediately.

Adjacent checks call D465D0 on the first endpoint, then the second only if needed.
It chooses graph+60 for type2, graph+64 otherwise, finds the vertex and follows
the original circular incident-edge list. The first edge matching the requested
partition type is the witness. Its six-byte locator is returned, not an arbitrary
edge from an unordered set. Floats round before low-byte locator encoding;
location level remains a signed integer input. Output is optional and written
only for an actual match.

Error choice distinguishes product partition type: normal0 next to type2 gives87;
type2 next to normal0 gives8A; the other selected combinations retain code0.
Coincident conflicts emit79. Collection ordering matters to the basement caller;
'WallExists anywhere' is not equivalent to 'first error is WallExists'.

## Geometry and support branches

D46030 requires both adjacent tiles in current bounds and both endpoints within
inclusive0.999f .. dimension-0.999f. The inset atFF0A34 is binary32 bits3F7FBE77
(0.9990000128746033). Bounds-derived subtraction uses scalar Float32 operations;
it is not an arbitrary integer one-tile exclusion. Failure uses7D.

D461F0 samples world endpoints, takes absolute vertical delta and divides by the
x87 square root of a separately stored Float32 horizontal squared distance.
The threshold at1089150 is binary32 bits3FDDB3D7 (1.7320507764816284).
FCOMIP/JBE skips the slope error on below/equal OR unordered ratio; there is no
extra zero-length/NaN refusal at this selected comparison. The remaining region
exemptions3/5/6, object condition at low levels, next-level pool and fountain tests
are independent gates in its complete body.

D49480 checks both original and reversed endpoints, midpoint stair admission,
positive-level segment stair crossings and side-specific obstruction queries.
Its side lookup uses level-1 when current level is positive. It cannot be replaced
by a generic 'any object in the rectangle' test.

## Selected original feedback keys

These names are read from the original char-pointer table1183F60, indexed by the
error code; they are not analyst inventions:

| Code | Original key |
| --- | --- |
|07 | OutsideOfCurrentLotEditZone |
|6A | PoolBlockedByBasement |
|7E | WallIntersectsPool |
|7F | WallIntersectsFountain |
|81 | WallIntersectsPuddle |
|87 | CantPlaceWallAdjacentToFenceArch |
|8A | CantPlaceFenceArchAdjacentToWall |

All conclusions here are static. Whole edit-zone producers, support collections,
full attachment/stair geometry and dispatcher lifetime retain their separate
contracts. Complete function export does not claim every transitive callee or
original gameplay interaction has been reconstructed or executed.


## Physical support caller and separate room notification owner

D48752 in the existing complete [common validator ASM](../../evidence/native/functions/00D48420_WallPlacement_ValidateCommon.asm)
([annotated C](../../evidence/native/functions/00D48420_WallPlacement_ValidateCommon.c)) tests context byte+C.
Nonzero skips this support branch. Otherwise C5BC30 receives the actual product
key and its AL is tested atD48764. Only nonzero reaches the two cdecl pushes at
D4876B/D4876C and direct callAFDB70 atD4876D, followed by caller cleanup8 and
TEST AL. A false result takes the no-errors early refusal or emits82 into the
actual error accumulator before continuing. The lot comes from context+8 and
the locator is the retained EBX pointer; no copied homogeneous float structure
is inferred. The selected branch does not resolve the complete producer of
context+C or all product flag semantics.

[AFDB70 ASM](../../evidence/native/functions/00AFDB70_Lot_HasWallSupport.asm)
([annotated C](../../evidence/native/functions/00AFDB70_Lot_HasWallSupport.c)) then owns the real
ordered alternatives described in [structural support](../world/lot-structural-support.md):
selected quarter AD28E0, roofB98530, floorA8E090 and positive-wall-level lower
partitionACEC50. AD0040's boundary-height witness, object/shell components and
concrete roof predicates remain essential child semantics. A positive room ID
alone is not this support contract; an empty quarter iterator also has its
actual early-success path.

The separate [partition flush ASM](../../evidence/native/functions/00B53330_LotPartition_FlushChangesAndRebuild.asm)
([annotated C](../../evidence/native/functions/00B53330_LotPartition_FlushChangesAndRebuild.c)) calls C413F0 on
owner+54/+58/+5C/+68 in literal order, then C06BA0 on four nonnull slots at+44..50,
before submitting047E869A and continuing additional partition work. These are
queue/list flush and later refresh boundaries, not a recovered local room
labeling BFS, graph split/merge allocator or global transaction around common
placement. No direct common-validation-to-flush call ordering is established
by comparing these two owners. The [room refresh guide](../world/ceiling-room-refresh.md)
retains actual notification, timer, request and delivery limits. Submission does
not prove receipt, geometry publication, GPU retirement or completed drawing.
