# Basement tool and wall product metadata

## Reference and scope

Original shipped PC1.67 TS3W.exe. Analyst names and plate annotations describe
static instructions and actual callers; they are not recovered source symbols.
The canonical pairs contain complete owned instructions and explicit nonowned
envelope gaps. This is original-code evidence, not a gameplay execution result.
The [basement byte-layer contract](basement-byte-layer-and-queries.md) describes
storage and compact live-lot query admission separately.

## Tool input and validation

The tool admits ground and negative picks. Its nonshift excavation targets the
level below the pick; the shifted negative mode targets the selected negative
level. Bottom height is sampled before range expansion. The relevant lower
limit depends on lot+4BC: -1 for its restricted-ground case and -4 otherwise.
Modes0/1 reuse an admitted prior negative floor height when available; otherwise
the bottom is sampled height minus exact3.0. The other selected modes retain
the sampled current height.
Rectangles require matching levels and nonempty independent X/Z spans. The
original also has a distinct diamond iterator and parity/degeneracy rules.

C9F040 orders shape/level admission, vertex validation, floor admission,
region obstruction admission and perimeter validation. With an error accumulator
independent validation stages can continue after a refusal; absence of an
accumulator permits early return. The vertex walk rejects border vertices,
uses the mutable floor-rule mask initially001F97B7 with bit00020000 cleared,
and proceeds from the basement through min(maxLevel,basement+1). At ground it
stops when the requested height is no higher than existing ground; otherwise
it adds exact3.0 per level. Application can continue above a raised ground while
its vertex rule allows it. It does not replace the full floor-vertex validator.

C9D030 delegates painting admission to CB1270 with both selected Boolean flags
set during preview; C9F1F0 checks CB1270 again with both flags clear during actual
painting. Preview admission therefore does not establish that every requested
floor part will be painted. Clearing delegates to CB1F20. Those shared validators'
full dependencies remain separate analysis boundaries.

C9D2F0's excavation branch rejects support-region type1 (6B). Removal checks
building edit restrictions, actual queried objects including Sims, modular
stairs, pools/fountains and platforms. A Sim may emit both6C and6D. The region
walk stops at the first failing tile, while that tile can accumulate causes.
Error72 or an excavated-neighbor9C can be remapped by the tool to73/74/75
according to the failing level relative to the selected basement.

C9ED10 validates each perimeter wall through D49790 and examines its first error.
Only79 (WallExists) is ignored. The floating-looking decompiler value
1.69557e-43 represents DWORD79, not a numeric tolerance. All other first errors
refuse the perimeter. D49790's common and product-specific validators must not
be replaced by an unconditional existing-wall shortcut.

## Application, products and undo

Excavation orders elevation changes, requested quarter flags, interior wall
removal, exposed-perimeter closure and admitted floor patterns. Removal clears
admitted floor patterns, clears excavation parts, removes region walls and closes
the surviving exposed perimeter. It does not restore original terrain heights.
Native child undo operations own the mutations and their cleanup.

Wall closure compares excavation on opposite sides and does not blindly add a
rectangular mesh. Removed non-basement wall patterns can be retained for later
closure; reversing wall orientation also reverses its side designs. The floor
loop records changes only where the actual floor validator allows them.

The retained basement wall key is CWST9151E6BC, group0,
instanceF643B06170A064A6. The retained default floor is CWAL515CA4CD, group0,
instance3F021C63B16EE2F4. Their complete45byte startup initializers hash the
zero-terminated UTF16 names Basement and BasementFloor through7D00C0 and store
all four resource-key words. The alternate lot+4BC floor selection is a separate
catalog path, not justification for substituting arbitrary floor products.

Quarter excavation pricing passes through D1C840. The cost tunable is lazily
loaded from LotSettings.ini, ToolCosts/CostPerBasementTile, into tunables+10;
its file-initial binary32 value is100. C9E170 returns a preview total through ST0
and includes floor and wall terms; it is not simply tileCount*100. The
[formatted INI contract](ini-formatted-values-and-abi.md) establishes four fixed
arguments plus variadic outputs, three-word scan dispatch and the original
wcstod-to-binary32 store. Duplicate-key and exact imported CRT lexical policy
remain independent of the absence of any finite/nonnegative clamp in this path.

The shared stair visibility operation CB4560 extends selected regions according
to direction and level before masked floor writes. Merely taking the stair run's
tile set is not an established equivalent of its ground-to-negative branch.

## Wall catalog fields used by validation

C5B660, C5B690 and C5B6B0 each take one resource-key pointer by cdecl, return a
full32bit EAX word and use plain RET. The listed offsets belong to the parsed
native catalog object, not fixed offsets in serialized CWST bytes.

| Field | Native access | Original unavailable-definition result | Consumer |
| --- | --- | --- | --- |
| Coincident partitions blocked | object+98, C5B660 | 7 | D46E60 tests bits0..4 against the existing partition type; matching conflict emits79 |
| Adjacent partitions blocked | object+9C, C5B690 | 0 | D46E60 tests partitions incident on either endpoint via D465D0 |
| Partition type | object+8C, C5B6B0 | Key type0418FE2A gives1; type9151E6BC gives0; other key types giveFFFFFFFF | Partition classification is distinct from wallType at+88 |

The last fallback is a full enum word produced by SUB/NEG/SBB, not a Boolean.
The original error-key table1183F60 independently identifies7B as
WallProhibitedByObject and85 as WallNextToPerson; the wall validation callers
supply those numeric codes. A descriptive analyst phrase must not replace the
actual localization key when exposing those errors to managed feedback.

## Physical calling contracts

CD1700 and CD17B0 use ECX for the tool and no explicit stack parameter. Their
selected helpers are called with nine and seven DWORDs respectively; the last
caller context is unused in each selected helper body. D1C840 has ECX undo state,
a compact tile/mask pointer and a DWORD whose low byte is the set/clear state.
Decompiler pointer and float overlays do not override those instructions.
AB0B60/AB0CA0 also have only ECX context; their lazy-load Boolean and ST0 float
roles are separate. Zero-argument retained-key getters do not by themselves
distinguish all source calling-convention spellings.

## Complete canonical functions

| Address | Analyst name | Original evidence |
| --- | --- | --- |
| 00CD0E80 | BasementTool_BeginAtLotPick | [ASM](../../evidence/native/functions/00CD0E80_BasementTool_BeginAtLotPick.asm) ([annotated C](../../evidence/native/functions/00CD0E80_BasementTool_BeginAtLotPick.c)) |
| 00CD0D10 | BasementTool_SelectBottomHeight | [ASM](../../evidence/native/functions/00CD0D10_BasementTool_SelectBottomHeight.asm) ([annotated C](../../evidence/native/functions/00CD0D10_BasementTool_SelectBottomHeight.c)) |
| 00CD1080 | BasementTool_ValidateDraggedRegion | [ASM](../../evidence/native/functions/00CD1080_BasementTool_ValidateDraggedRegion.asm) ([annotated C](../../evidence/native/functions/00CD1080_BasementTool_ValidateDraggedRegion.c)) |
| 00CD1850 | BasementTool_ReleaseRegion | [ASM](../../evidence/native/functions/00CD1850_BasementTool_ReleaseRegion.asm) ([annotated C](../../evidence/native/functions/00CD1850_BasementTool_ReleaseRegion.c)) |
| 00CD1700 | BasementTool_CommitExcavation | [ASM](../../evidence/native/functions/00CD1700_BasementTool_CommitExcavation.asm) ([annotated C](../../evidence/native/functions/00CD1700_BasementTool_CommitExcavation.c)) |
| 00CD17B0 | BasementTool_CommitRemoval | [ASM](../../evidence/native/functions/00CD17B0_BasementTool_CommitRemoval.asm) ([annotated C](../../evidence/native/functions/00CD17B0_BasementTool_CommitRemoval.c)) |
| 00C9F690 | BasementExcavation_ApplyRegion | [ASM](../../evidence/native/functions/00C9F690_BasementExcavation_ApplyRegion.asm) ([annotated C](../../evidence/native/functions/00C9F690_BasementExcavation_ApplyRegion.c)) |
| 00C9F7C0 | BasementRemoval_ApplyRegion | [ASM](../../evidence/native/functions/00C9F7C0_BasementRemoval_ApplyRegion.asm) ([annotated C](../../evidence/native/functions/00C9F7C0_BasementRemoval_ApplyRegion.c)) |
| 00C9E170 | BasementRegion_ComputePreviewCost | [ASM](../../evidence/native/functions/00C9E170_BasementRegion_ComputePreviewCost.asm) ([annotated C](../../evidence/native/functions/00C9E170_BasementRegion_ComputePreviewCost.c)) |
| 00C9DD50 | BasementExcavation_ApplyVertexHeights | [ASM](../../evidence/native/functions/00C9DD50_BasementExcavation_ApplyVertexHeights.asm) ([annotated C](../../evidence/native/functions/00C9DD50_BasementExcavation_ApplyVertexHeights.c)) |
| 00C9DC40 | BasementExcavation_ValidateVertexHeights | [ASM](../../evidence/native/functions/00C9DC40_BasementExcavation_ValidateVertexHeights.asm) ([annotated C](../../evidence/native/functions/00C9DC40_BasementExcavation_ValidateVertexHeights.c)) |
| 00C9D780 | BasementExcavation_ValidateOneVertex | [ASM](../../evidence/native/functions/00C9D780_BasementExcavation_ValidateOneVertex.asm) ([annotated C](../../evidence/native/functions/00C9D780_BasementExcavation_ValidateOneVertex.c)) |
| 00C9D1B0 | BasementRegion_ApplyQuarterFlags | [ASM](../../evidence/native/functions/00C9D1B0_BasementRegion_ApplyQuarterFlags.asm) ([annotated C](../../evidence/native/functions/00C9D1B0_BasementRegion_ApplyQuarterFlags.c)) |
| 00C9E780 | BasementWalls_RemoveInterior | [ASM](../../evidence/native/functions/00C9E780_BasementWalls_RemoveInterior.asm) ([annotated C](../../evidence/native/functions/00C9E780_BasementWalls_RemoveInterior.c)) |
| 00C9E310 | BasementWalls_CloseExposedPerimeter | [ASM](../../evidence/native/functions/00C9E310_BasementWalls_CloseExposedPerimeter.asm) ([annotated C](../../evidence/native/functions/00C9E310_BasementWalls_CloseExposedPerimeter.c)) |
| 00C9F1F0 | BasementFloors_ApplyRegionPattern | [ASM](../../evidence/native/functions/00C9F1F0_BasementFloors_ApplyRegionPattern.asm) ([annotated C](../../evidence/native/functions/00C9F1F0_BasementFloors_ApplyRegionPattern.c)) |
| 00C9ED10 | BasementWalls_ValidatePerimeter | [ASM](../../evidence/native/functions/00C9ED10_BasementWalls_ValidatePerimeter.asm) ([annotated C](../../evidence/native/functions/00C9ED10_BasementWalls_ValidatePerimeter.c)) |
| 00C9D620 | BasementRegion_ValidateTileObstructions | [ASM](../../evidence/native/functions/00C9D620_BasementRegion_ValidateTileObstructions.asm) ([annotated C](../../evidence/native/functions/00C9D620_BasementRegion_ValidateTileObstructions.c)) |
| 00AB0B60 | LotSettings_LoadToolTunables | [ASM](../../evidence/native/functions/00AB0B60_LotSettings_LoadToolTunables.asm) ([annotated C](../../evidence/native/functions/00AB0B60_LotSettings_LoadToolTunables.c)) |
| 00AB0CA0 | LotSettings_GetBasementTileCost | [ASM](../../evidence/native/functions/00AB0CA0_LotSettings_GetBasementTileCost.asm) ([annotated C](../../evidence/native/functions/00AB0CA0_LotSettings_GetBasementTileCost.c)) |
| 00CB4560 | StairPlacement_QueueFloorVisibilityRegions | [ASM](../../evidence/native/functions/00CB4560_StairPlacement_QueueFloorVisibilityRegions.asm) ([annotated C](../../evidence/native/functions/00CB4560_StairPlacement_QueueFloorVisibilityRegions.c)) |
| 00C5CB40 | BasementRegion_EnumeratePerimeterLocators | [ASM](../../evidence/native/functions/00C5CB40_BasementRegion_EnumeratePerimeterLocators.asm) ([annotated C](../../evidence/native/functions/00C5CB40_BasementRegion_EnumeratePerimeterLocators.c)) |
| 00C45F20 | WallLocator_QueryFirstAdjacentTile | [ASM](../../evidence/native/functions/00C45F20_WallLocator_QueryFirstAdjacentTile.asm) ([annotated C](../../evidence/native/functions/00C45F20_WallLocator_QueryFirstAdjacentTile.c)) |
| 00C45FB0 | WallLocator_QueryOtherAdjacentTile | [ASM](../../evidence/native/functions/00C45FB0_WallLocator_QueryOtherAdjacentTile.asm) ([annotated C](../../evidence/native/functions/00C45FB0_WallLocator_QueryOtherAdjacentTile.c)) |
| 00C9C690 | BasementRegion_TestInvalidShape | [ASM](../../evidence/native/functions/00C9C690_BasementRegion_TestInvalidShape.asm) ([annotated C](../../evidence/native/functions/00C9C690_BasementRegion_TestInvalidShape.c)) |
| 00C9F040 | BasementExcavation_ValidateRegion | [ASM](../../evidence/native/functions/00C9F040_BasementExcavation_ValidateRegion.asm) ([annotated C](../../evidence/native/functions/00C9F040_BasementExcavation_ValidateRegion.c)) |
| 00C9DB50 | BasementRemoval_ValidateRegion | [ASM](../../evidence/native/functions/00C9DB50_BasementRemoval_ValidateRegion.asm) ([annotated C](../../evidence/native/functions/00C9DB50_BasementRemoval_ValidateRegion.c)) |
| 00D1C840 | BasementUndo_ApplyRequestedPartsAndPrice | [ASM](../../evidence/native/functions/00D1C840_BasementUndo_ApplyRequestedPartsAndPrice.asm) ([annotated C](../../evidence/native/functions/00D1C840_BasementUndo_ApplyRequestedPartsAndPrice.c)) |
| 00C9D8C0 | BasementExcavation_ApplyOneVertex | [ASM](../../evidence/native/functions/00C9D8C0_BasementExcavation_ApplyOneVertex.asm) ([annotated C](../../evidence/native/functions/00C9D8C0_BasementExcavation_ApplyOneVertex.c)) |
| 00C9D2F0 | BasementTile_ValidateObstructions | [ASM](../../evidence/native/functions/00C9D2F0_BasementTile_ValidateObstructions.asm) ([annotated C](../../evidence/native/functions/00C9D2F0_BasementTile_ValidateObstructions.c)) |
| 00C9C810 | BasementRegion_ComputeFloorAndDigCost | [ASM](../../evidence/native/functions/00C9C810_BasementRegion_ComputeFloorAndDigCost.asm) ([annotated C](../../evidence/native/functions/00C9C810_BasementRegion_ComputeFloorAndDigCost.c)) |
| 00C8B320 | BasementProducts_GetWallKey | [ASM](../../evidence/native/functions/00C8B320_BasementProducts_GetWallKey.asm) ([annotated C](../../evidence/native/functions/00C8B320_BasementProducts_GetWallKey.c)) |
| 00C8B3B0 | BasementProducts_GetFloorKey | [ASM](../../evidence/native/functions/00C8B3B0_BasementProducts_GetFloorKey.asm) ([annotated C](../../evidence/native/functions/00C8B3B0_BasementProducts_GetFloorKey.c)) |
| 004EF7F0 | Ini_ReadSectionFormattedValue | [ASM](../../evidence/native/functions/004EF7F0_Ini_ReadSectionFormattedValue.asm) ([annotated C](../../evidence/native/functions/004EF7F0_Ini_ReadSectionFormattedValue.c)) |
| 00F8ED30 | BasementProducts_InitializeWallKey | [ASM](../../evidence/native/functions/00F8ED30_BasementProducts_InitializeWallKey.asm) ([annotated C](../../evidence/native/functions/00F8ED30_BasementProducts_InitializeWallKey.c)) |
| 00F8EAB0 | BasementProducts_InitializeFloorKey | [ASM](../../evidence/native/functions/00F8EAB0_BasementProducts_InitializeFloorKey.asm) ([annotated C](../../evidence/native/functions/00F8EAB0_BasementProducts_InitializeFloorKey.c)) |
| 00C5B660 | WallProduct_GetBlockedPartitionMask | [ASM](../../evidence/native/functions/00C5B660_WallProduct_GetBlockedPartitionMask.asm) ([annotated C](../../evidence/native/functions/00C5B660_WallProduct_GetBlockedPartitionMask.c)) |
| 00C5B690 | WallProduct_GetAdjacentBlockedPartitionMask | [ASM](../../evidence/native/functions/00C5B690_WallProduct_GetAdjacentBlockedPartitionMask.asm) ([annotated C](../../evidence/native/functions/00C5B690_WallProduct_GetAdjacentBlockedPartitionMask.c)) |
| 00C5B6B0 | WallProduct_GetPartitionType | [ASM](../../evidence/native/functions/00C5B6B0_WallProduct_GetPartitionType.asm) ([annotated C](../../evidence/native/functions/00C5B6B0_WallProduct_GetPartitionType.c)) |
