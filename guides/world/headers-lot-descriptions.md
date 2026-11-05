# Original world headers and lot descriptions

Reference: original PC The Sims 3 1.67 `TS3W.exe`; identity is recorded in the proof reference index. Names below are analyst assignments. Stream-helper prototypes, hidden constructor arguments and inferred object fields are not recovered C++ declarations.

TerrainSizeInfo reader: [00C65D30 ASM](../../evidence/native/functions/00C65D30_WorldManager_ReadTerrainSizeInfo.asm) ([annotated pseudocode](../../evidence/native/functions/00C65D30_WorldManager_ReadTerrainSizeInfo.c)). Writer: [00C614B0 ASM](../../evidence/native/functions/00C614B0_WorldManager_WriteTerrainSizeInfo.asm) ([annotated pseudocode](../../evidence/native/functions/00C614B0_WorldManager_WriteTerrainSizeInfo.c)). The writer selects key `90624C1B:0:1` and emits UInt16 version 14. Versions2..12 consume an additional legacy UInt32 after the version; version 13/14 use the same 39-byte layout: two float origins, two UInt32 tile counts, one UInt32 manager-count word, four UInt32 auxiliary words and one bool byte. Versions below7 may create legacy managers in the header reader. The modern-manager transition is version 7, not a native whitelist of 13/14.

Modern manager admission follows serialized descriptors. [00C66240 ASM](../../evidence/native/functions/00C66240_WorldManager_ReadManagerList.asm) ([annotated pseudocode](../../evidence/native/functions/00C66240_WorldManager_ReadManagerList.c)) reads `90620000:1:1`: UInt32 version0..2, a legacy word below2, UInt32 row count, then ID/type rows. IDs are UInt32 below2 and UInt64 at2. Separate global-layer identity is `0498DA7E:1:1`. [00AA8810 ASM](../../evidence/native/functions/00AA8810_LayerManager_ReadChildDescriptions.asm) ([annotated pseudocode](../../evidence/native/functions/00AA8810_LayerManager_ReadChildDescriptions.c)) reads `03D86EA4:0:layerId`: UInt16 version<5, UTF-16 name, UInt32 child count, then ID/type rows with UInt64 IDs at version>=2. These readers create descriptor-listed managers. They do not enumerate all package LDES entries or demand that orphan LDES entries acquire a manager.

LDES reader: [00AC5A40 ASM](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([annotated pseudocode](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c)). Writer: [00ACA430 ASM](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.asm) ([annotated pseudocode](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.c)). Resource type is `D063545B`, group 0, supplied lot identity. Reader accepts UInt16 versions`0x14..0x45`; writer emits`0x45`. For versions>=`0x20`, three localization UInt64s precede the length-prefixed UTF-16 name; a UInt64 identity, position, angle, dimensions, signed levels, two floor-height floats and two words form 56 fixed bytes after the name. The two cached local height extrema lie 40 bytes after the name, at native lot+188/+18C. Three strings precede the classification/value tail.

| Tail field | Native object offset | Version condition | Width |
| --- | --- | --- | --- |
| Lot type | +408 | Always | Int32 |
| Shared subtype | +40C | >=0x23; otherwise0 | UInt32 |
| Additional field | +418 | >=0x1D; otherwise0 | 4bytes |
| Additional property value | +420 | >=0x1A; otherwise0 | float32 |
| Valuation/skipped word | — | >=0x1B | UInt32 |
| Build/Buy enabled | +41C | >=0x22; otherwise true | One byte, !=0 |
| Attached-object footprint resource hash | +310 | >=0x2B; otherwise0 | UInt64 |

Consequently the mapped prefix lengths are 16 bytes for`0x20`,21 for`0x27`, and29 for`0x2B/0x2C/0x2D/0x39`. Later versions append further fields. Before`0x3E`, residential type 0 with unsigned subtype >4 sets restricted-ground+4BC and normalizes subtype to 0. At/after`0x3E`, the flag is read from the resource instead. This migration must not be applied unconditionally to later formats.

The +310 value is produced by [object hash lookup](../../evidence/native/functions/00B03360_Object_ComputeFootprintResourceHash.asm) ([pseudocode](../../evidence/native/functions/00B03360_Object_ComputeFootprintResourceHash.c)) and
[FootprintComponent serialization/hash](../../evidence/native/functions/00946890_FootprintComponent_ComputeResourceHash.asm) ([pseudocode](../../evidence/native/functions/00946890_FootprintComponent_ComputeResourceHash.c)).
It describes selected footprint polygons, not a household association. The writer
recomputes it from object+2E8; the [change consumer](../../evidence/native/functions/00ACD390_Lot_RefreshAttachedObjectFootprintHash.asm) ([pseudocode](../../evidence/native/functions/00ACD390_Lot_RefreshAttachedObjectFootprintHash.c)) compares both cached words and rebuilds
tile/floor dependencies on change. [Byte hashing](../../evidence/native/functions/007CFF10_Hash_Fnv1CaseFoldSignedByteSpan.asm) ([pseudocode](../../evidence/native/functions/007CFF10_Hash_Fnv1CaseFoldSignedByteSpan.c)) uses FNV1 multiplication before XOR, signed-byte input and
the native CRT tolower result sign-extended to64bits. Binary high-bit bytes and
locale behavior therefore require instruction-level preservation.

## Classification and modern admission

See [the versioned classification and tail contract](lot-classification-admission.md)
for all modern tail gates, subtype migration and getter limits.
