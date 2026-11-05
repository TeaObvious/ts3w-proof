# Object catalogs and world-template metadata

This is static evidence from the original 32-bit PC 1.67 TS3W.exe. Binary identity
and the native export conventions are recorded in the [native reference](README.md).
Names without recovered managed registration identities are analyst assigned.
All selected function bodies are complete; the generic-product bridge additionally
includes its referenced forty-entry switch table. Internal nonowned alignment is
explicit in the ASM. The C files are actual annotated Ghidra output.

## Object product contract

The product reader decodes the versioned OBJD fields and delegates common product
fields to C93100. Category zero values become the original sentinels; C97910 derives
legacy build categories only from zero/sentinel build masks. The common reader has
no finite/nonnegative price gate. Floor placement has separate reader, output-copy
and object predicate consumers; movement word bit 1 is independently consumed by
the stays-after-eviction bridge. Placement-tool bytes +1D9/+1DA govern continuation;
their keyboard input producers remain unresolved.

C8EBB0 resolves typed OBJD/OBJK exact keys before their alternate. C919E0 replaces
retained alias slots in installation order. C92220's group-bit-24 dependency gate
uses the exact authored key: the resource manager delegates to a provider's index
presence path with a null output stream. This is distinct from the alternate-key
helper. The [original vtable and constant bytes](data/catalog-template-original-data.txt)
establish ResourceMan +40/+44 and packed provider +34 dispatch.

Display price uses scalar single-precision multiplications, then x87 addition of
0.5 and imported MSVCR80 floor for rounded paths. The build-interface exception
returns the scaled value directly. This is catalog display price; no household
value/depreciation contract follows.

## Filter and preset contract

The filter combines active room/function/build/buy-room domains by AND. The two
functional subcategory include banks combine by OR when both are active; either
bank's exclusions still veto. A domain is inactive only for all-one includes and
zero exclusions. The managed adapter initializes unsupported exclusion domains to
zero. Query snapshots, current package stamps, portable cache limits and deferred
managed enumeration are outside this native filter contract.

Authored preset rows are eight bytes and preserve full UInt32 IDs. Existing extra
preset collections supplement authored count, ID enumeration and ordinal mapping;
object rows use selector 1, are 28 bytes, and store full ID at +10 hex. Full-ID lookup
requires bit 00800000 for the extra search. The acquire calls here pass create=false.
The [generic switch table](data/catalog-product-generic-switch.tsv) links decimal
operations 17, 19 and 20 to count, full-ID-to-ordinal and ordinal-to-full-ID consumers.
The current authored-only portable projection lacks these extra presets.

## World-template contract

The reader and writer use nine [exact resource keys](data/world-template-resource-keys.tsv),
all group 0 and instance 1. Missing localized-key hashes fall back to hashing their
UTF-16 key strings. Identity is UInt16 version 0/1 followed by two UInt32 words;
the writer emits version 1. Stored FFFFFFFF requests fallback independently per
word; stored zero is a real value. The UI native adapter calls these getters after
reading metadata. The portable first-of-type choice, largest SNAP thumbnail,
filename category heuristics and once-per-path identity cache are current behavior;
they are not established by this original contract.

## Decompiler and ownership limits

Physical calling conventions, argument slots, field widths, return AL bits and
branches were checked against instructions. B31830's corrected receiver plus three
stack arguments retain the extra-preset branches in actual caller C. Its own
indirect load call still mis-tracks locals; its annotation identifies the physical
create-byte and output-pointer instructions. C92220 has receiver tracking artifacts,
and CEF6B0 loses volatile SSE values across indirect calls. Their annotations state
these limits explicitly. Native null/failure paths and releases remain in the full
bodies. Imported floor is retained only as its original import thunk; CRT internals
and external image/codec implementations are outside this reference.

## Object product reading, aliases and placement

| Entry | Ghidra name | Complete evidence |
| --- | --- | --- |
| `00c98660` | `ObjectProduct_ReadCatalog` | [ASM](functions/00C98660_ObjectProduct_ReadCatalog.asm) ([pseudocode](functions/00C98660_ObjectProduct_ReadCatalog.c)) |
| `00c8ebb0` | `ObjectCatalog_FindByTypedKey` | [ASM](functions/00C8EBB0_ObjectCatalog_FindByTypedKey.asm) ([pseudocode](functions/00C8EBB0_ObjectCatalog_FindByTypedKey.c)) |
| `00c919e0` | `ObjectCatalog_IndexProductAliases` | [ASM](functions/00C919E0_ObjectCatalog_IndexProductAliases.asm) ([pseudocode](functions/00C919E0_ObjectCatalog_IndexProductAliases.c)) |
| `00c92220` | `ObjectCatalog_LoadObjectProducts` | [ASM](functions/00C92220_ObjectCatalog_LoadObjectProducts.asm) ([pseudocode](functions/00C92220_ObjectCatalog_LoadObjectProducts.c)) |
| `00c97910` | `ObjectProduct_DeriveLegacyBuildCategories` | [ASM](functions/00C97910_ObjectProduct_DeriveLegacyBuildCategories.asm) ([pseudocode](functions/00C97910_ObjectProduct_DeriveLegacyBuildCategories.c)) |
| `00c93100` | `CatalogProduct_ReadCommonFields` | [ASM](functions/00C93100_CatalogProduct_ReadCommonFields.asm) ([pseudocode](functions/00C93100_CatalogProduct_ReadCommonFields.c)) |
| `00cef6b0` | `CatalogProduct_ComputeDisplayPrice` | [ASM](functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.asm) ([pseudocode](functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.c)) |
| `00b009f0` | `Object_IsSpiralStaircaseWithoutFloorCutout` | [ASM](functions/00B009F0_Object_IsSpiralStaircaseWithoutFloorCutout.asm) ([pseudocode](functions/00B009F0_Object_IsSpiralStaircaseWithoutFloorCutout.c)) |
| `00b00880` | `Object_IsLevelAboveFloorCutout` | [ASM](functions/00B00880_Object_IsLevelAboveFloorCutout.asm) ([pseudocode](functions/00B00880_Object_IsLevelAboveFloorCutout.c)) |
| `00c977f0` | `ObjectProduct_CopyFloorPlacementFields` | [ASM](functions/00C977F0_ObjectProduct_CopyFloorPlacementFields.asm) ([pseudocode](functions/00C977F0_ObjectProduct_CopyFloorPlacementFields.c)) |
| `007d77b0` | `ResourceKey_MakeAlternate` | [ASM](functions/007D77B0_ResourceKey_MakeAlternate.asm) ([pseudocode](functions/007D77B0_ResourceKey_MakeAlternate.c)) |
| `004afef0` | `ResourceManager_FindProviderForExactKey` | [ASM](functions/004AFEF0_ResourceManager_FindProviderForExactKey.asm) ([pseudocode](functions/004AFEF0_ResourceManager_FindProviderForExactKey.c)) |
| `004b0110` | `ResourceManager_FindProviderForExactKeyWithTag` | [ASM](functions/004B0110_ResourceManager_FindProviderForExactKeyWithTag.asm) ([pseudocode](functions/004B0110_ResourceManager_FindProviderForExactKeyWithTag.c)) |
| `004a97e0` | `PackedFile_AccessResourceOrTestPresence` | [ASM](functions/004A97E0_PackedFile_AccessResourceOrTestPresence.asm) ([pseudocode](functions/004A97E0_PackedFile_AccessResourceOrTestPresence.c)) |
| `00d02160` | `ObjectPlacementTool_CompletePlacement` | [ASM](functions/00D02160_ObjectPlacementTool_CompletePlacement.asm) ([pseudocode](functions/00D02160_ObjectPlacementTool_CompletePlacement.c)) |

## Catalog queries and presets

| Entry | Ghidra name | Complete evidence |
| --- | --- | --- |
| `00c90060` | `ObjectCatalog_CollectFilteredProducts` | [ASM](functions/00C90060_ObjectCatalog_CollectFilteredProducts.asm) ([pseudocode](functions/00C90060_ObjectCatalog_CollectFilteredProducts.c)) |
| `00ceac20` | `ScriptCore.UserToolUtils::UserToolUtils_GetObjectProductListFilteredImpl` | [ASM](functions/00CEAC20_ScriptCore_UserToolUtils_UserToolUtils_GetObjectProductListFilteredImpl.asm) ([pseudocode](functions/00CEAC20_ScriptCore_UserToolUtils_UserToolUtils_GetObjectProductListFilteredImpl.c)) |
| `00c97d70` | `ObjectProduct_FindPresetOrdinalByFullId` | [ASM](functions/00C97D70_ObjectProduct_FindPresetOrdinalByFullId.asm) ([pseudocode](functions/00C97D70_ObjectProduct_FindPresetOrdinalByFullId.c)) |
| `00c97c60` | `ObjectProduct_AcquirePresetByOrdinal` | [ASM](functions/00C97C60_ObjectProduct_AcquirePresetByOrdinal.asm) ([pseudocode](functions/00C97C60_ObjectProduct_AcquirePresetByOrdinal.c)) |
| `00c983e0` | `ObjectProduct_CountAuthoredAndExtraPresets` | [ASM](functions/00C983E0_ObjectProduct_CountAuthoredAndExtraPresets.asm) ([pseudocode](functions/00C983E0_ObjectProduct_CountAuthoredAndExtraPresets.c)) |
| `00c97e10` | `ObjectProduct_GetPresetFullIdByOrdinal` | [ASM](functions/00C97E10_ObjectProduct_GetPresetFullIdByOrdinal.asm) ([pseudocode](functions/00C97E10_ObjectProduct_GetPresetFullIdByOrdinal.c)) |
| `00b31830` | `ProductPresets_AcquireCollection` | [ASM](functions/00B31830_ProductPresets_AcquireCollection.asm) ([pseudocode](functions/00B31830_ProductPresets_AcquireCollection.c)) |
| `0060a260` | `ProductPresetCollection_CountRows` | [ASM](functions/0060A260_ProductPresetCollection_CountRows.asm) ([pseudocode](functions/0060A260_ProductPresetCollection_CountRows.c)) |
| `0060a290` | `ProductPresetCollection_FindFullIdRow` | [ASM](functions/0060A290_ProductPresetCollection_FindFullIdRow.asm) ([pseudocode](functions/0060A290_ProductPresetCollection_FindFullIdRow.c)) |
| `0060a2f0` | `ProductPresetCollection_GetRowByOrdinal` | [ASM](functions/0060A2F0_ProductPresetCollection_GetRowByOrdinal.asm) ([pseudocode](functions/0060A2F0_ProductPresetCollection_GetRowByOrdinal.c)) |
| `00ce6350` | `UserToolUtils_GetObjectProductPresetIdListImpl` | [ASM](functions/00CE6350_ScriptCore_UserToolUtils_UserToolUtils_GetObjectProductPresetIdListImpl.asm) ([pseudocode](functions/00CE6350_ScriptCore_UserToolUtils_UserToolUtils_GetObjectProductPresetIdListImpl.c)) |

## World template metadata and consumers

| Entry | Ghidra name | Complete evidence |
| --- | --- | --- |
| `005a2be0` | `WorldTemplate_ReadMetadata` | [ASM](functions/005A2BE0_WorldTemplate_ReadMetadata.asm) ([pseudocode](functions/005A2BE0_WorldTemplate_ReadMetadata.c)) |
| `005a24e0` | `WorldTemplate_WriteMetadata` | [ASM](functions/005A24E0_WorldTemplate_WriteMetadata.asm) ([pseudocode](functions/005A24E0_WorldTemplate_WriteMetadata.c)) |
| `005a2a00` | `WorldTemplate_GetEffectiveWorldName` | [ASM](functions/005A2A00_WorldTemplate_GetEffectiveWorldName.asm) ([pseudocode](functions/005A2A00_WorldTemplate_GetEffectiveWorldName.c)) |
| `005a2b90` | `WorldTemplate_GetEffectiveWorldType` | [ASM](functions/005A2B90_WorldTemplate_GetEffectiveWorldType.asm) ([pseudocode](functions/005A2B90_WorldTemplate_GetEffectiveWorldType.c)) |
| `007801b0` | `ScriptCore.UIManager::UIManager_GetWorldMetadataImpl` | [ASM](functions/007801B0_ScriptCore_UIManager_UIManager_GetWorldMetadataImpl.asm) ([pseudocode](functions/007801B0_ScriptCore_UIManager_UIManager_GetWorldMetadataImpl.c)) |
| `00ce9890` | `ScriptCore.UserToolUtils::UserToolUtils_ProductGenericImpl` | [ASM](functions/00CE9890_ScriptCore_UserToolUtils_UserToolUtils_ProductGenericImpl.asm) ([pseudocode](functions/00CE9890_ScriptCore_UserToolUtils_UserToolUtils_ProductGenericImpl.c)) |
| `00786010` | `ScriptCore.World::World_StaysAfterEvictImpl` | [ASM](functions/00786010_ScriptCore_World_World_StaysAfterEvictImpl.asm) ([pseudocode](functions/00786010_ScriptCore_World_World_StaysAfterEvictImpl.c)) |

## Small ownership/status/import boundaries

| Entry | Ghidra name | Complete evidence |
| --- | --- | --- |
| `00b302a0` | `ProductPresets_GetGlobalOwner` | [ASM](functions/00B302A0_ProductPresets_GetGlobalOwner.asm) ([pseudocode](functions/00B302A0_ProductPresets_GetGlobalOwner.c)) |
| `00c92fb0` | `CatalogProduct_SetStatusByte` | [ASM](functions/00C92FB0_CatalogProduct_SetStatusByte.asm) ([pseudocode](functions/00C92FB0_CatalogProduct_SetStatusByte.c)) |
| `00f7f7d0` | `floor` | [ASM](functions/00F7F7D0_MSVCR80_DLL_floor.asm) ([pseudocode](functions/00F7F7D0_MSVCR80_DLL_floor.c)) |

## Existing complete helper evidence

The mounted-key helper [ASM](functions/007D8310_ResourceKey_CopyWithMountedCandidate.asm) ([pseudocode](functions/007D8310_ResourceKey_CopyWithMountedCandidate.c))
and name-hash helper [ASM](functions/007D00C0_NameHash64_Utf16Z.asm) ([pseudocode](functions/007D00C0_NameHash64_Utf16Z.c))
are reused at their existing canonical paths. Neither is duplicated here.
