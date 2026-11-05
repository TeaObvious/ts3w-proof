# Snow placement cover and object conditions

Original PC1.67 TS3W.exe, identified centrally. Names are analyst-assigned roles.
Actual saved annotated Ghidra C and full original owned ASM form canonical pairs;
nonowned envelope gaps are explicit. Static original evidence only, not gameplay,
fixture, weather simulation or performance acceptance.

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 00ACF100 | LotQuarter_IsCoveredByRoofOrHigherFloor | [ASM](../../evidence/native/functions/00ACF100_LotQuarter_IsCoveredByRoofOrHigherFloor.asm) ([C](../../evidence/native/functions/00ACF100_LotQuarter_IsCoveredByRoofOrHigherFloor.c)) |
| 00AD0C00 | Seasons_TileHasSnowBlockingObjects | [ASM](../../evidence/native/functions/00AD0C00_Seasons_TileHasSnowBlockingObjects.asm) ([C](../../evidence/native/functions/00AD0C00_Seasons_TileHasSnowBlockingObjects.c)) |
| 00B3B8E0 | PlacementArea_TestSurfaceKinds | [ASM](../../evidence/native/functions/00B3B8E0_PlacementArea_TestSurfaceKinds.asm) ([C](../../evidence/native/functions/00B3B8E0_PlacementArea_TestSurfaceKinds.c)) |
| 00AC7480 | LotQuery_CollectObjectsOnTile | [ASM](../../evidence/native/functions/00AC7480_LotQuery_CollectObjectsOnTile.asm) ([C](../../evidence/native/functions/00AC7480_LotQuery_CollectObjectsOnTile.c)) |

## Extra conditions after base surface admission

B3B8E0 evaluates area surface bits1000hex and2000hex after the underlying terrain/
floor/air surface admits a quarter.1000 requires ACF100 false, with countEave1.
2000 requires AD0C00 false, passing the held fullGUID as ignore. Both conditions
are required when both bits are set. The parent retains last tile coordinate and
level so repeated quarters of the same tile need not rescan objects. These bits
are conditions, not complete surface kinds or a generic original environment flag.

## Cover query is geometry, not frost

ACF100 uses three cdecl stackDWORDs lot/packedquarter/countEave, lowALBoolean.
It sign-loads the level byte: below-1 always covered; a failed signedtile/live-range
check returns(level<0). AF81A0 produces a point one third toward the selected
quarter edge, carrying integer level. The current-level roof query uses eavefalse.
For successive levels through the live lot top, it checks floor part mask in
mode1, then roof sample with the caller's countEave choice. No season/temperature
or frost state is tested in this helper. Greenhouse/weather policy elsewhere is
not silently folded into this geometric result.

## Actual members and physical call

AD0C00 takes four cdecl DWORDs: lot, compact tile, ignoredGUIDlow/high. Its call
atAD0C40 supplies ECXlot plus EIGHT stackDWORDs to AC7480; RET20hex consumes them:
tile, outputvector,0,0,polygon-test1,part mask0F,0,area mask4. PUSH0F atAD0C0E is a
scalar mask, not a pointer to address0F. The callee parameter type was corrected
from inferredvoid* toUInt32 in the saved database; actual C reflects that value.

AC7480 clears output, checks signed x/z/level against physical/live lot bounds,
then obtains registered tile members. When requested, selected quarter polygons
and B0E870 footprint/area tests filter candidates before append. The selected snow
call uses all four tile parts and area mask4. Pivot membership alone does not
establish this query. The compact tile pointer represents bytes, not a C string.
Underlying member lifecycle/duplicates/filter options remain actual query owners.

## Component and catalog gating

For each nonnull candidate, AD0C00 excludes an exact ignored fullGUID when the
ignore value is nonzero. It then requires componentmask011EA2A8 and component
byte+8 bit0, followed by actual catalog information. Primary product+98 bits3/5
or secondary+9C bit12 qualify: door8,gate20,extension1000hex. Missing component,
clear state bit or missing catalog skips the candidate. Catalog fields alone do
not suffice. First match returnsAL1, no matchAL0; temporary vector is released.
UpperEAX bits in CONCAT decompiler expressions are not Boolean contract data.

An object with a qualifying intersecting footprint may block a tile even if its
pivot is outside. Conversely a door/gate at the tile is not a blocker through
this path when the required component state gate fails. Comparing only a cached
product Boolean cannot certify native member/visibility/footprint behavior.
The selected bodies do not establish an unbounded process-wide catalog Boolean
cache, exact resource-edit freshness, managed interaction policy or CLR exception
semantics. Full original catalog decoding remains its separate format contract.

## Verification boundaries

Four complete envelopes3911bytes1273instructions match pristine original bytes;
selected physical widths/masks/branches and actual saved Ghidra annotations checked.
No original FileBytes changed. Canonical pairs, relative links and lookup indexes
are maintained; no handwritten pseudocode, sidecars or temporary logs are retained.
Current host implementations, cache policy, full native downstream footprint/roof
geometry and live game placement acceptance remain separate evidence questions.
