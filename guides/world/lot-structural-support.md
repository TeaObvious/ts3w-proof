# Lot structural support and packed-cell sampling

## Reference and ABI

Original PC1.67 TS3W.exe. Analyst names describe instruction-backed roles; they
are not recovered symbols. All support predicates below consume AL, not a defined
full-width EAX Boolean. Inclusive vertex bounds use full EAX0/1; incident count is
full unsigned EAX. Cdecl routines use plain RET; the listed ECX owners clean their
stack arguments with RET4/RET8. Canonical pairs contain complete owned Listing,
explicit bytes for nonowned envelope gaps and actual annotated Ghidra pseudocode.

| Entry | Analyst name | Original pair |
| --- | --- | --- |
| 00AD2930 | Lot_TestChimneyCellSupport | [ASM](../../evidence/native/functions/00AD2930_Lot_TestChimneyCellSupport.asm) ([annotated C](../../evidence/native/functions/00AD2930_Lot_TestChimneyCellSupport.c)) |
| 00AD22C0 | Lot_HasObjectSupport | [ASM](../../evidence/native/functions/00AD22C0_Lot_HasObjectSupport.asm) ([annotated C](../../evidence/native/functions/00AD22C0_Lot_HasObjectSupport.c)) |
| 00AD28E0 | Lot_HasCellFloorOrObjectSupport | [ASM](../../evidence/native/functions/00AD28E0_Lot_HasCellFloorOrObjectSupport.asm) ([annotated C](../../evidence/native/functions/00AD28E0_Lot_HasCellFloorOrObjectSupport.c)) |
| 00AD0040 | Lot_HasLoadBearingRoomFloorSupport | [ASM](../../evidence/native/functions/00AD0040_Lot_HasLoadBearingRoomFloorSupport.asm) ([annotated C](../../evidence/native/functions/00AD0040_Lot_HasLoadBearingRoomFloorSupport.c)) |
| 00ACEC50 | Lot_HasLowerPartitionSupport | [ASM](../../evidence/native/functions/00ACEC50_Lot_HasLowerPartitionSupport.asm) ([annotated C](../../evidence/native/functions/00ACEC50_Lot_HasLowerPartitionSupport.c)) |
| 00B98530 | RoofManager_HasCellSupportBelow | [ASM](../../evidence/native/functions/00B98530_RoofManager_HasCellSupportBelow.asm) ([annotated C](../../evidence/native/functions/00B98530_RoofManager_HasCellSupportBelow.c)) |
| 00AFDB70 | Lot_HasWallSupport | [ASM](../../evidence/native/functions/00AFDB70_Lot_HasWallSupport.asm) ([annotated C](../../evidence/native/functions/00AFDB70_Lot_HasWallSupport.c)) |
| 00C5BF40 | WallProduct_BearsLoadOrMissing | [ASM](../../evidence/native/functions/00C5BF40_WallProduct_BearsLoadOrMissing.asm) ([annotated C](../../evidence/native/functions/00C5BF40_WallProduct_BearsLoadOrMissing.c)) |
| 00B47F00 | PartitionManager_CountIncidentEdges | [ASM](../../evidence/native/functions/00B47F00_PartitionManager_CountIncidentEdges.asm) ([annotated C](../../evidence/native/functions/00B47F00_PartitionManager_CountIncidentEdges.c)) |
| 00A76B20 | Lot_ContainsGridVertexXZ | [ASM](../../evidence/native/functions/00A76B20_Lot_ContainsGridVertexXZ.asm) ([annotated C](../../evidence/native/functions/00A76B20_Lot_ContainsGridVertexXZ.c)) |
| 00A8CF20 | FloorManager_HasShellSupportAtCell | [ASM](../../evidence/native/functions/00A8CF20_FloorManager_HasShellSupportAtCell.asm) ([annotated C](../../evidence/native/functions/00A8CF20_FloorManager_HasShellSupportAtCell.c)) |
| 00AF81A0 | TilePart_GetLocalSamplePoint | [ASM](../../evidence/native/functions/00AF81A0_TilePart_GetLocalSamplePoint.asm) ([annotated C](../../evidence/native/functions/00AF81A0_TilePart_GetLocalSamplePoint.c)) |
| 00CE1FA0 | FireplaceTool_TryPlaceChimney | [ASM](../../evidence/native/functions/00CE1FA0_FireplaceTool_TryPlaceChimney.asm) ([annotated C](../../evidence/native/functions/00CE1FA0_FireplaceTool_TryPlaceChimney.c)) |

## Ordered alternatives and object exclusion

AD2930 admits signed packed-cell level<=0 immediately. Higher cells try AD0040
room/floor support, AD22C0 object support, ACEC50 lower partitions, then B98530
roof support. Short-circuit order matters. Its third DWORD is an **excluded native
Object pointer**, not flags: AD22C0 compares it with the lot's shell object at+2E8
and inserts its address in the sorted visited-pointer set. Chimney placement
CE1FA0 supplies PUSH0 atCE21CF before callCE21D7.

AD28E0 is narrower: level<1, then AD0040, then AD22C0 only when its fourth byte
argument enables object support. It has no partition/roof alternatives. AFDB70
walks both wall-adjacent tiles in native order, admits only live-bounded tiles,
and accepts when all selected quarter parts pass AD28E0(ignoredObject0,true).
Otherwise roof support or A8E090 floor support may admit the side; a positive
original wall level also permits ACEC50 with full quarter maskF. Either side
suffices. This is not an any-wall or any-room heuristic.

## Room, object, partition and roof mechanisms

| Owner | Established decision | Separate producer/remaining semantic boundary |
| --- | --- | --- |
| AD0040 | Selected quarter one signed level below resolves LoadBearing room definition1/mode0. For a nonzero room and C40490 boundary reference, compare the current-level raw reference vertex to sampled current-cell floor height. Strict abs difference<.05f; x87 FCOMIP/JA rejects unordered. | C40490's actual boundary-chain reference is required; an arbitrary positive room cell is not a substitute. Full boundary topology remains its own mechanism. |
| AD22C0 | Positive levels only. Shell shortcut excludes ignoredObject and requires inclusive grid-vertex bounds plus selected shell/floor support. Other objects come from a 5x5 tile neighborhood one level below, collection arguments0/0/0/F/0/5. Sorted pointer visitation excludes duplicates and the ignored pointer. Retained candidates follow component-specific location/height paths; distance2.1 and inclusive .05f height comparison occur in those paths. | B04580/B04B90 branch meanings, support-height producer and special-object component policy are not assigned speculative gameplay names. This guide establishes exclusion, query scope and measured branches, not every component's complete admission semantics. |
| ACEC50 | At signed-byte level-1 test both diagonals, then selected-quarter orthogonal edges. An existing partition's product BearsLoad bit200 suffices. Independently, any of four corner incident counts>1 in graph slot1 suffices. | Graph slot construction and native incident topology are separate owners. Mask0 still allows the unconditional diagonal/corner tests. |
| C5BF40 | Full-key catalog lookup with default-enabled argument1. Missing record admits. Present record extracts bit9 of raw DWORD+90. | Do not replace with collision, visibility or native object slot flags. |
| B98530 | Collect roof IDs at signed cell.level-1, retain each resolved actual roof and invoke virtual+64hex with packed cell. First true admits; references and temporary buffer released. | Current-level point/eave coverage is a different API. Each concrete roof's support predicate remains separate. |
| A8CF20 | Requires shell object and strict tile bounds. With support-mask grid+D4, test stored byte & selected mask &F. Otherwise delegate AD1100. | Mask-cache construction and AD1100 fallback are separate producers. |

A76B20 permits vertices at width/depth exactly. A8CF20 and AFDB70's adjacent-tile
admission use strict X<width/Z<depth. B47F00 selects graph+54+slot*4; missing graph
or vertex yields0, otherwise vertex DWORD+C is the unsigned count. ACEC50 selects
slot1 and compares count>1, not a low-byte truth value.

## Exact packed-cell point

AF81A0 reads signed bytes X/Z/level and an unsigned quarter-mask byte. Output is
12bytes: Float32 X at0, Float32 Z at4, **Int32 signed level at8**. MOVSX plus integer
MOV atAF81A4/AF81B4 proves the last lane is not a Float32 conversion.

Store each Float32 centre X+.5f/Z+.5f first. Starting dx=dz=0:

1. Bit1 assigns dz=-oneThird.
2. Bit2 assigns dx=oneThird.
3. Bit4 adds oneThird to dz.
4. Bit8 subtracts oneThird from dx.
5. Separate ADDSS adds dx/dz to their centres.

oneThird is raw Float32 bits3EAAAAAB; negative isBEAAAAAB. Mask0 andF both give
the centre; opposite bits cancel. The point is not an average of selected quarters.
For X=0/mask8, the stored Float32 result is3E2AAAAA, whereas independently rounded
Float32 oneSixth is3E2AAAAB. Higher mask bits do not alter the point. Native input
coordinates are signed bytes; broader host integer domains require their own bounds.

## Fireplace climb and the separate low-top placement branch

The complete existing [CE1FA0 ASM](../../evidence/native/functions/00CE1FA0_FireplaceTool_TryPlaceChimney.asm) ([annotated C](../../evidence/native/functions/00CE1FA0_FireplaceTool_TryPlaceChimney.c))
contains both support-climb and a distinct later low-top path. AtCE21CF it pushes
literal0 for the excluded-object input, prepares packed-cell/lot words and calls
AD2930 atCE21D7. TEST AL atCE21DF branches to decrement EBX atCE21F0 on failure;
success increments atCE21E3 and compares signed against lot+180 atCE21E6 before
repeating. CE21DC's ADD ESP,14hex also cleans earlier pending caller words; it
does not turn the cdecl three-word AD2930 into a five-argument function.

Later CE25A5 has signed JLE toCE2A01. This is not an immediate failure return.
CE2A01 prepares current/next-level location records and CE2A5B callsCDF1C0;
CE2A60 tests AL and CE2A62 rejects on false. On success, branchesCE2AA3 and
CE2AE7 jump to sharedCE29A9, which obtains the product's F0 role key and calls
CDFD00 atCE29B8. Another branch obtains that same role atCE2B1E and calls
CDFD00 atCE2B27. Placement AL is consumed before association/continuation.
The route throughCE2ABA callsACE0E0 with actual lot min+17C and max+180+1.
It is therefore incorrect to describe every low selected top as unconditional
original refusal, or to replace this path with a validation-free cap spawn.

CDF1C0's complete physical arguments, height/vertex validation/edit producers,
CB0710/D228E0 and level handling throughACE0E0 remain separate instruction/data
questions. Its inferred pointer/float pseudocode is not an ABI or numerical
specification. The caller proves a real tested continuation to placement, not
that every such location must succeed. Full CDFD00 callbacks, errors, terrain
side effects and SubmitChanges/removal/undo/resource retirement remain open.

Zone-query caller arms are also separate: CE24EF callsACF4F0 in the offset
preparation, CE2D0E callsACF3D0 and CE2D44 callsACF4F0 in lower-piece selection.
The complete [type2 ASM](../../evidence/native/functions/00ACF3D0_Lot_TestSelectedFloorZone2.asm) ([annotated C](../../evidence/native/functions/00ACF3D0_Lot_TestSelectedFloorZone2.c))
and [type4 ASM](../../evidence/native/functions/00ACF4F0_Lot_TestSelectedFloorZone4.asm) ([annotated C](../../evidence/native/functions/00ACF4F0_Lot_TestSelectedFloorZone4.c))
resolve selected-quarter compatible regions and test their type. Their inputs
are actual zone state, not arbitrary room-positive or roof coverage results.
Exact offset/role arithmetic, floor-zone region producers, live ghost/move/refit
and malformed/nonfinite behavior still require their own closure.

## Evidence limits

These are static instruction/caller findings; no original process, gameplay,
compiler or fixture test was executed for this proof. Full support parity also
requires the actual room boundary, object component, roof and mask producers.
Neither zero object exclusion nor a positive room ID proves every missing owner.
