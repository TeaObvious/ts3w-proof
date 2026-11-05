# Basement byte layer and compact tile queries

Original PC1.67, static instructions and actual annotated Ghidra output. Names are
analyst assigned. The selected evidence closes the basement lanes of the complete
lot resource parents, not every other layer those parents also call.

## Header, body and resource lifetime

The basement resource has typeB125533A, group002E2C5C and the lot's GUID. The parent
reader opens that exact record; absence skips creation. A97260 reads four DWORDs:
version into a discarded local, then width, depth and relative-level count. It
does not compare the version, dimensions with the lot, cap levels at8 or require
exact stream exhaustion. A95850 installs the retained dimensions and allocates
compressed4x4 byte-grid storage. Native allocation/overflow outside usable
coordinates is not a safe malformed-resource specification.

The parent then reads width*depth*levels bytes and A94F40 imports every raw byte
in relative-level, X, Z order. Uniform4x4 blocks and detail blocks are runtime
compression; the persisted body is flat. Relative slot0 represents level-1,
slot1 represents-2, and so on. The body is not restricted to low-nibble values.

C6D880 opens the supplied resource identity and writes DWORDversion1, width, depth
and level count. AC4FA0's basement lane then flattens raw bytes with A95080 and
writes the body. A95080's previously assigned FloorRotations name does not limit
it to rotations: the basement writer demonstrably shares this byte-grid helper.
Zero-cell grids still have their header. Reader permissiveness is independent of
the canonical writer's version1.

Each scalar/body operation contributes to the context's sticky status. Failed
header input closes and destroys the candidate; later reader/writer lanes test
status. 7D7A70 closes/releases the owned context, clears stream/context references
and its cached flag, but preserves status at+14. It neither adds an EOF test nor
establishes transactionality of a whole restored lot. Provider internals and
arbitrary malformed stream failure remain separate contracts.

## Queries, ABI and edits

World_HasBasementImpl is physically cdecl with FIVE DWORD inputs: GUIDlow/high,
32-bit tileX/tileZ/level. It returns AL and does not purge its arguments. The
86-byte body packs each coordinate's LOW byte plus mask0F before calling AB6D10.
The semantic managed LotLocation declaration is not this native stack layout.

868970 sign-extends compact X/Z/level bytes. X/Z must be nonnegative and strictly
below live lot width/depth; level must be inside the live inclusive minimum and
maximum. The basement predicates additionally require a negative level and
relative slot=-1-level below the layer's depth. The raw cell helper A8B3B0 has no
independent outer safety: arithmetic coordinate shifts select a4x4 block, then
uniform or detail byte addressing.

AB6D10 tests whether ANY requested bit of the full raw byte is present. Zero mask
is false. AB6D70 checks bounds BEFORE its comparison: it sign-extends the requested
mask, zero-extends the cell, and tests (cell&signedMask)==signedMask. Thus masks80..FF
cannot match, valid zero-mask queries are true, and invalid zero-mask queries are
false. A low-nibble-only representation loses these distinctions.

AC46B0 edits only requested bits1,2,4,8 while retaining all other stored bits, then
notifies the floor manager. ACDA80 inserts/removes levels among multiple layers;
its selected basement branch grows zero rows at the end for positive count with
mode low-byte0, and shrinks by a clamped count for negative count/mode0. Its four
selected virtual calls physically carry ECX plus count/mode/zero, with12-byte
callee cleanup. Local call overrides retain those physical words in pseudocode.
Complete room, terrain-height and callback topology is not established by this
selected byte-layer contract.

## Complete original functions

- ScriptCore.World::World_HasBasementImpl: [ASM](../../evidence/native/functions/00785C70_ScriptCore_World_World_HasBasementImpl.asm) ([pseudocode](../../evidence/native/functions/00785C70_ScriptCore_World_World_HasBasementImpl.c)).
- ResourceStreamContext_Close: [ASM](../../evidence/native/functions/007D7A70_ResourceStreamContext_Close.asm) ([pseudocode](../../evidence/native/functions/007D7A70_ResourceStreamContext_Close.c)).
- Lot_IsSignedTileInBounds: [ASM](../../evidence/native/functions/00868970_Lot_IsSignedTileInBounds.asm) ([pseudocode](../../evidence/native/functions/00868970_Lot_IsSignedTileInBounds.c)).
- ByteTileGrid_CellPointer: [ASM](../../evidence/native/functions/00A8B3B0_ByteTileGrid_CellPointer.asm) ([pseudocode](../../evidence/native/functions/00A8B3B0_ByteTileGrid_CellPointer.c)).
- ByteTileGrid_ImportFlatBytes: [ASM](../../evidence/native/functions/00A94F40_ByteTileGrid_ImportFlatBytes.asm) ([pseudocode](../../evidence/native/functions/00A94F40_ByteTileGrid_ImportFlatBytes.c)).
- FloorRotations_FlattenBytes: [ASM](../../evidence/native/functions/00A95080_FloorRotations_FlattenBytes.asm) ([pseudocode](../../evidence/native/functions/00A95080_FloorRotations_FlattenBytes.c)).
- ByteTileGrid_SetDimensions: [ASM](../../evidence/native/functions/00A95850_ByteTileGrid_SetDimensions.asm) ([pseudocode](../../evidence/native/functions/00A95850_ByteTileGrid_SetDimensions.c)).
- ByteTileGrid_ReadResourceHeader: [ASM](../../evidence/native/functions/00A97260_ByteTileGrid_ReadResourceHeader.asm) ([pseudocode](../../evidence/native/functions/00A97260_ByteTileGrid_ReadResourceHeader.c)).
- LotBasement_TestAnyRequestedPart: [ASM](../../evidence/native/functions/00AB6D10_LotBasement_TestAnyRequestedPart.asm) ([pseudocode](../../evidence/native/functions/00AB6D10_LotBasement_TestAnyRequestedPart.c)).
- LotBasement_TestAllRequestedParts: [ASM](../../evidence/native/functions/00AB6D70_LotBasement_TestAllRequestedParts.asm) ([pseudocode](../../evidence/native/functions/00AB6D70_LotBasement_TestAllRequestedParts.c)).
- LotBasement_SetRequestedQuarterParts: [ASM](../../evidence/native/functions/00AC46B0_LotBasement_SetRequestedQuarterParts.asm) ([pseudocode](../../evidence/native/functions/00AC46B0_LotBasement_SetRequestedQuarterParts.c)).
- LotDataLayers_WriteSavedResources: [ASM](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.c)).
- LotDataLayers_ReadSavedResources: [ASM](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c)).
- Lot_InsertFloorLevelsAndBasementRows: [ASM](../../evidence/native/functions/00ACDA80_Lot_InsertFloorLevelsAndBasementRows.asm) ([pseudocode](../../evidence/native/functions/00ACDA80_Lot_InsertFloorLevelsAndBasementRows.c)).
- LotGrid_WriteHeaderResource: [ASM](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.asm) ([pseudocode](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.c)).
