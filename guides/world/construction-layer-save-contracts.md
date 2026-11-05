# Construction-layer saving — PC 1.67

Static original comparison. Names below are analyst descriptions. Each pair
contains the complete original instruction envelope and actual annotated Ghidra
decompilation; comments mark inferred ABI and decompiler artifacts.

## Manager and format contracts

- RoomManager B49180 owns wall graphs, four side-pattern lanes, four ordinal maps
  and room-definition grids. C3F910 is its actual wall graph writer. Vertices are
  serialized as ID, signed-byte-derived float X/Z and signed level. Sections are
  ID, vertex A, room A, vertex B, room B.
- FloorManager A95BB0 writes grid header version1, four-halfword pattern cells and
  byte rotations in level/X/Z order. AA4D60 writes floor key-map version4: inline
  default key, count, four registered UInt16 handles and UInt32 ordinal/refcount.
- Fence A66420 writes its design map first, then post version4. Roof B96130 writes
  version6, including optional manager flags and 34-byte rows under its lock.
  Pool B688E0 writes version7 and 14-byte rows. B68430 uses signed-byte
  shift/add packing; negative intermediate bytes can affect the next byte.
- Terrain AF0F20 first removes exactly-zero-usage paints by last-row replacement,
  alpha copying and index-map repair. It always writes paint version14.
  The cliff index exists also in version13. Version14 adds a count of coordinate
  pairs, each two words packed from signed bytes with shifts12/24. Below14 the
  reader derives those pairs from current lot/floor/sea state.
- AEC260 clears and rebuilds pairs only for a lot with its sea-boundary flag set.
  It scans X then Z and retains the first of eight in-bounds neighbors at/below
  local sea for each source point strictly above sea. AB76C0 derives that flag
  from the ground perimeter, excluding the separate disable flag and diving lot.
  Native COMISS branches reject unordered source heights; no approximate
  geometric shoreline is substituted.
- Alpha headers contain version1,width,depth,detailed byte count and UInt16
  references; caller writes uniform bytes, then detailed bytes. Compression tests
  all16 padded bytes. Water/pond headers are version1; successful header writers
  leave the resource open for their caller's payload and close.

Resource identity, stream byte-order selection, key registration, native hash
order, complete manager state and sticky failure status are part of the contract.
An older-version reader does not establish an older-version native writer.
This evidence does not establish current project parity, original-game execution
or byte identity of independent compressed-grid rebuilding.

## Canonical function pairs

| Entry | Analyst role | Original code |
| --- | --- | --- |
| 00C3F910 | WallGraph_WriteResource | [ASM](../../evidence/native/functions/00C3F910_WallGraph_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00C3F910_WallGraph_WriteResource.c)) |\n| 00C44CD0 | WallSidePatterns_WriteResource | [ASM](../../evidence/native/functions/00C44CD0_WallSidePatterns_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00C44CD0_WallSidePatterns_WriteResource.c)) |\n| 00C453A0 | WallSidePatterns_ReadResource | [ASM](../../evidence/native/functions/00C453A0_WallSidePatterns_ReadResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00C453A0_WallSidePatterns_ReadResource.c)) |\n| 00B49180 | RoomManager_WriteResources | [ASM](../../evidence/native/functions/00B49180_RoomManager_WriteResources.asm) ([annotated Ghidra C](../../evidence/native/functions/00B49180_RoomManager_WriteResources.c)) |\n| 00C06070 | RoomGrid_WriteSavedResource | [ASM](../../evidence/native/functions/00C06070_RoomGrid_WriteSavedResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00C06070_RoomGrid_WriteSavedResource.c)) |\n| 00C06110 | RoomGrid_WriteExportResource | [ASM](../../evidence/native/functions/00C06110_RoomGrid_WriteExportResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00C06110_RoomGrid_WriteExportResource.c)) |\n| 00AA3510 | RoomGrid_FlattenFourHalfwords | [ASM](../../evidence/native/functions/00AA3510_RoomGrid_FlattenFourHalfwords.asm) ([annotated Ghidra C](../../evidence/native/functions/00AA3510_RoomGrid_FlattenFourHalfwords.c)) |\n| 00A95BB0 | FloorManager_WriteResources | [ASM](../../evidence/native/functions/00A95BB0_FloorManager_WriteResources.asm) ([annotated Ghidra C](../../evidence/native/functions/00A95BB0_FloorManager_WriteResources.c)) |\n| 00A92A00 | FloorPatterns_FlattenFourHalfwords | [ASM](../../evidence/native/functions/00A92A00_FloorPatterns_FlattenFourHalfwords.asm) ([annotated Ghidra C](../../evidence/native/functions/00A92A00_FloorPatterns_FlattenFourHalfwords.c)) |\n| 00A95080 | FloorRotations_FlattenBytes | [ASM](../../evidence/native/functions/00A95080_FloorRotations_FlattenBytes.asm) ([annotated Ghidra C](../../evidence/native/functions/00A95080_FloorRotations_FlattenBytes.c)) |\n| 00AA4D60 | FloorPatternMap_WriteResource | [ASM](../../evidence/native/functions/00AA4D60_FloorPatternMap_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00AA4D60_FloorPatternMap_WriteResource.c)) |\n| 00A66420 | LotFence_WritePostResource | [ASM](../../evidence/native/functions/00A66420_LotFence_WritePostResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00A66420_LotFence_WritePostResource.c)) |\n| 00B146F0 | FenceDesignMap_WriteResource | [ASM](../../evidence/native/functions/00B146F0_FenceDesignMap_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00B146F0_FenceDesignMap_WriteResource.c)) |\n| 00B96130 | RoofManager_WriteResource | [ASM](../../evidence/native/functions/00B96130_RoofManager_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00B96130_RoofManager_WriteResource.c)) |\n| 00B688E0 | PoolManager_WriteResource | [ASM](../../evidence/native/functions/00B688E0_PoolManager_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00B688E0_PoolManager_WriteResource.c)) |\n| 00B68430 | PoolManager_WriteRoomObjectRow | [ASM](../../evidence/native/functions/00B68430_PoolManager_WriteRoomObjectRow.asm) ([annotated Ghidra C](../../evidence/native/functions/00B68430_PoolManager_WriteRoomObjectRow.c)) |\n| 00AF0F20 | LotTerrain_WriteResources | [ASM](../../evidence/native/functions/00AF0F20_LotTerrain_WriteResources.asm) ([annotated Ghidra C](../../evidence/native/functions/00AF0F20_LotTerrain_WriteResources.c)) |\n| 00AF12F0 | LotTerrain_ReadResources | [ASM](../../evidence/native/functions/00AF12F0_LotTerrain_ReadResources.asm) ([annotated Ghidra C](../../evidence/native/functions/00AF12F0_LotTerrain_ReadResources.c)) |\n| 00AEEE60 | ByteBlockGrid_WriteResourceHeader | [ASM](../../evidence/native/functions/00AEEE60_ByteBlockGrid_WriteResourceHeader.asm) ([annotated Ghidra C](../../evidence/native/functions/00AEEE60_ByteBlockGrid_WriteResourceHeader.c)) |\n| 00AEEF60 | ByteBlockGrid_ReadResourceHeader | [ASM](../../evidence/native/functions/00AEEF60_ByteBlockGrid_ReadResourceHeader.asm) ([annotated Ghidra C](../../evidence/native/functions/00AEEF60_ByteBlockGrid_ReadResourceHeader.c)) |\n| 00AEE3C0 | ByteBlockGrid_CompressUniformBlocks | [ASM](../../evidence/native/functions/00AEE3C0_ByteBlockGrid_CompressUniformBlocks.asm) ([annotated Ghidra C](../../evidence/native/functions/00AEE3C0_ByteBlockGrid_CompressUniformBlocks.c)) |\n| 00AEA100 | LotFloatGrid_WriteResourceHeader | [ASM](../../evidence/native/functions/00AEA100_LotFloatGrid_WriteResourceHeader.asm) ([annotated Ghidra C](../../evidence/native/functions/00AEA100_LotFloatGrid_WriteResourceHeader.c)) |\n| 00AE9A60 | PondFlags_WriteResourceHeader | [ASM](../../evidence/native/functions/00AE9A60_PondFlags_WriteResourceHeader.asm) ([annotated Ghidra C](../../evidence/native/functions/00AE9A60_PondFlags_WriteResourceHeader.c)) |\n| 00AEC260 | LotTerrain_RebuildSeaBoundaryPairs | [ASM](../../evidence/native/functions/00AEC260_LotTerrain_RebuildSeaBoundaryPairs.asm) ([annotated Ghidra C](../../evidence/native/functions/00AEC260_LotTerrain_RebuildSeaBoundaryPairs.c)) |\n| 00AF0D50 | LotTerrain_RemoveUnusedPaintLayers | [ASM](../../evidence/native/functions/00AF0D50_LotTerrain_RemoveUnusedPaintLayers.asm) ([annotated Ghidra C](../../evidence/native/functions/00AF0D50_LotTerrain_RemoveUnusedPaintLayers.c)) |\n| 00AF0930 | LotTerrain_RemovePaintLayer | [ASM](../../evidence/native/functions/00AF0930_LotTerrain_RemovePaintLayer.asm) ([annotated Ghidra C](../../evidence/native/functions/00AF0930_LotTerrain_RemovePaintLayer.c)) |\n| 00AB76C0 | Lot_RefreshSeaBoundaryFlag | [ASM](../../evidence/native/functions/00AB76C0_Lot_RefreshSeaBoundaryFlag.asm) ([annotated Ghidra C](../../evidence/native/functions/00AB76C0_Lot_RefreshSeaBoundaryFlag.c)) |\n| 00AB1A90 | Lot_GetLocalSeaLevel | [ASM](../../evidence/native/functions/00AB1A90_Lot_GetLocalSeaLevel.asm) ([annotated Ghidra C](../../evidence/native/functions/00AB1A90_Lot_GetLocalSeaLevel.c)) |\n
[Metadata, fresh contexts and live state](save-metadata-state-and-reference-maps.md)
expands the current-state producer and consumer contracts.
