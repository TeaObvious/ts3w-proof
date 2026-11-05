# Save metadata, live construction state and reference maps

Static original PC 1.67 contracts. Names are analyst assignments; these findings
come from complete native instructions and actual callers, not game execution.
The reference identity is recorded centrally. No original bytes were changed.

## Metadata wire contract

Factory metadata is type `628A788F`, group0, instance1:
[read selection](../../evidence/native/functions/00AA9E50_LoadSaveMetadata_OpenReadDatabase.asm) ([pseudocode](../../evidence/native/functions/00AA9E50_LoadSaveMetadata_OpenReadDatabase.c)),
[write selection](../../evidence/native/functions/00AAD7F0_LoadSaveMetadata_WriteDatabase.asm) ([pseudocode](../../evidence/native/functions/00AAD7F0_LoadSaveMetadata_WriteDatabase.c)).
[Constructor](../../evidence/native/functions/0059DE90_SaveGameMetadata_Construct.asm) ([pseudocode](../../evidence/native/functions/0059DE90_SaveGameMetadata_Construct.c)) initializes version3.

[Complete writer](../../evidence/native/functions/0059E530_SaveGameMetadata_WriteResourcePayload.asm) ([pseudocode](../../evidence/native/functions/0059E530_SaveGameMetadata_WriteResourcePayload.c)):
UInt32 version, counted UTF16 world/name/biography, UInt64 household/lot, four
counted version strings, counted homeworld. **No ErrorFlags DWORD** precedes
homeworld. Homeworld is written even when empty. Factory callback takes four
stack arguments, first metadata and second context; `RET 10h` establishes stack
cleanup. The last two arguments are unused in this body. This previously
undefined body is `0059E530..0059E841` inclusive, not a two-argument cdecl leaf.

[Reader](../../evidence/native/functions/0059E220_SaveGameMetadata_ReadResourcePayload.asm) ([pseudocode](../../evidence/native/functions/0059E220_SaveGameMetadata_ReadResourcePayload.c)) uses unsigned version gates: below2,
code/content/EP-content become `OldVersionUnknown` and game becomes `1.0.0.0`;
from2, read four version strings; from3, read homeworld directly. Reader callback
also cleans four stack words, with context then metadata. No-stream paths return
success; sticky read/write failure closes the resource and returns failure.

Counted stream text is consumed before NUL-terminated setters store it:
[homeworld](../../evidence/native/functions/0059E0D0_SaveGameMetadata_SetHomeWorld.asm) ([pseudocode](../../evidence/native/functions/0059E0D0_SaveGameMetadata_SetHomeWorld.c)),
[name](../../evidence/native/functions/0059E100_SaveGameMetadata_SetHouseholdName.asm) ([pseudocode](../../evidence/native/functions/0059E100_SaveGameMetadata_SetHouseholdName.c)),
[biography](../../evidence/native/functions/0059E130_SaveGameMetadata_SetHouseholdBiography.asm) ([pseudocode](../../evidence/native/functions/0059E130_SaveGameMetadata_SetHouseholdBiography.c)).
An embedded NUL truncates stored text without moving the next field's position.

## Version producers

| Field | Actual source / rule |
| --- | --- |
| Code | App directory `code_version.txt`; release fallback `Unknown` |
| Content | Content-root1 `content_version.txt`; metadata fallback `Unknown` |
| EP content | Content-root4 `content_version.txt`; metadata fallback `None` |
| Game | Parsed runtime four-word version with compatibility revision merge |

[Code source](../../evidence/native/functions/007D9F90_Version_ReadCodeVersion.asm) ([pseudocode](../../evidence/native/functions/007D9F90_Version_ReadCodeVersion.c)),
[base wrapper](../../evidence/native/functions/007DA1E0_Version_ReadBaseContentVersion.asm) ([pseudocode](../../evidence/native/functions/007DA1E0_Version_ReadBaseContentVersion.c)),
[keyed content source](../../evidence/native/functions/007DA080_Version_ReadContentVersion.asm) ([pseudocode](../../evidence/native/functions/007DA080_Version_ReadContentVersion.c)).
The last function has **two cdecl parameters**, including the root key actually
pushed by the writer. The old one-parameter decompiler prototype hid that key.

[Lookup](../../evidence/native/functions/00595510_ContentRoots_FindByKey.asm) ([pseudocode](../../evidence/native/functions/00595510_ContentRoots_FindByKey.c)),
[path publication](../../evidence/native/functions/00596800_ContentRoots_PublishPath.asm) ([pseudocode](../../evidence/native/functions/00596800_ContentRoots_PublishPath.c)) and
[installation registration](../../evidence/native/functions/00596E10_Installation_RegisterContentRoots.asm) ([pseudocode](../../evidence/native/functions/00596E10_Installation_RegisterContentRoots.c)) establish installation `GameData` roots.
Descriptor triplets at1153A38 associate SKU1/content1 and SKU2/content4.
Content-root4 is EP1, **not product flag4 or the newest installed pack**.

[Token reader](../../evidence/native/functions/007D9CA0_Version_ReadFirstLineToken.asm) ([pseudocode](../../evidence/native/functions/007D9CA0_Version_ReadFirstLineToken.c)) reads the first line through
[three-argument line reader](../../evidence/native/functions/004DDD10_Stream_ReadByteLine.asm) ([pseudocode](../../evidence/native/functions/004DDD10_Stream_ReadByteLine.c)). Capacity4096 includes the NUL.
Find case-sensitive `Version:`, skip to a native digit, stop at native whitespace.
C-string search stops at NUL. The metadata writer converts through a128-code-unit
UTF16 temporary; do not attribute arbitrary full-file text to the metadata.

[Parse](../../evidence/native/functions/009AE9A0_GameVersion_ParseFourComponents.asm) ([pseudocode](../../evidence/native/functions/009AE9A0_GameVersion_ParseFourComponents.c)) and
[format](../../evidence/native/functions/009AE970_GameVersion_Format.asm) ([pseudocode](../../evidence/native/functions/009AE970_GameVersion_Format.c)) use four Int32 words and `%d.%d.%d.%06d`.
Revision text has more than four characters; five-character revisions use the
instruction-level unsigned normalization in the annotated body.
[Runtime merge](../../evidence/native/functions/009AF0E0_GameVersion_ReadRuntimeAndMergeCompatibility.asm) ([pseudocode](../../evidence/native/functions/009AF0E0_GameVersion_ReadRuntimeAndMergeCompatibility.c)) retains runtime revision modulo1000 and takes release
compatibility thousands from the [base installation version](../../evidence/native/functions/009AED70_GameVersion_ReadBaseInstallation.asm) ([pseudocode](../../evidence/native/functions/009AED70_GameVersion_ReadBaseInstallation.c)); development uses CompatVersion instead.

## Fresh save contexts and complete description state

[Ordinary lot save](../../evidence/native/functions/00ACAA10_Lot_SaveCurrentState.asm) ([pseudocode](../../evidence/native/functions/00ACAA10_Lot_SaveCurrentState.c)) creates a **fresh narrow** construction reference context,
serializes every manager, then its REFS; object state has a separate context.
[Export](../../evidence/native/functions/00ACAF70_Lot_ExportCurrentState.asm) ([pseudocode](../../evidence/native/functions/00ACAF70_Lot_ExportCurrentState.c)) supplies different description identity/export policy.
[Context constructor](../../evidence/native/functions/007D6BE0_ResourceReferences_ConstructContext.asm) ([pseudocode](../../evidence/native/functions/007D6BE0_ResourceReferences_ConstructContext.c)) starts empty maps, load1/growth2.
Copying opaque old manager bytes requires their old handles and cannot establish
this fresh-context contract without rewriting all dependent references.

[LDES writer](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.asm) ([pseudocode](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.c)) always emits complete current45hex state, not a patched old header.
Ordinary save supplies stored identity0 and writes valuation0. It refreshes
the attached-object footprint resource hash, emits cached floor extrema and current
classification/text, boundary/sea, restricted/flags and disable state. No-sea
uses exact negativeFLT_MAX. [Reader](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([pseudocode](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c)) normalizes obsolete residential subtypes only **before3Ehex**;
later versions read restricted state and retain subtype. Old readers and current
writers therefore have different responsibilities.

## Resource-key and wall ordinal maps

[Unique key insertion](../../evidence/native/functions/00700890_ResourceKeyMap_InsertUnique.asm) ([pseudocode](../../evidence/native/functions/00700890_ResourceKeyMap_InsertUnique.c)),
[chain comparison](../../evidence/native/functions/008B2910_ResourceKeyMap_FindChain.asm) ([pseudocode](../../evidence/native/functions/008B2910_ResourceKeyMap_FindChain.c)) and
[rehash](../../evidence/native/functions/006FDDD0_ResourceKeyMap_Rehash.asm) ([pseudocode](../../evidence/native/functions/006FDDD0_ResourceKeyMap_Rehash.c)) establish `group XOR instanceLow`, full16-byte equality,
head insertion and old-bucket/head replay into new heads. Duplicate insertion
keeps an existing payload; a caller's later assignment can separately overwrite it.
The complete256-entry capacity domain is already recorded atFB9580 in
[original constant data](../../evidence/objects/render-pick-original-data.tsv).

Wall [allocation](../../evidence/native/functions/00B49CC0_WallPatternMap_FindFreeOrdinal.asm) ([pseudocode](../../evidence/native/functions/00B49CC0_WallPatternMap_FindFreeOrdinal.c)) finds the first free ordinal starting1, reusing gaps.
[Add reference](../../evidence/native/functions/00B4BA40_WallPatternMap_AddReference.asm) ([pseudocode](../../evidence/native/functions/00B4BA40_WallPatternMap_AddReference.c)) increments existing count or creates count1;
[release](../../evidence/native/functions/00B49BD0_WallPatternMap_ReleaseReference.asm) ([pseudocode](../../evidence/native/functions/00B49BD0_WallPatternMap_ReleaseReference.c)) erases both maps when count reaches zero.
[Key-to-ordinal](../../evidence/native/functions/00B49C60_WallPatternMap_OrdinalForKey.asm) ([pseudocode](../../evidence/native/functions/00B49C60_WallPatternMap_OrdinalForKey.c)) returns0 for the inline default key.
[Ordinal-to-key](../../evidence/native/functions/00B49F20_WallPatternSide_ResolveOrdinalKey.asm) ([pseudocode](../../evidence/native/functions/00B49F20_WallPatternSide_ResolveOrdinalKey.c)) resolves ordinal0 to that default; all nonzero UInt16 values,
includingFFFF, use the reverse map. Reference-table handle0 is a separate domain.
[Actual resource edit](../../evidence/native/functions/00B4BC60_WallPatternSide_UpdateResourcesAtPoint.asm) ([pseudocode](../../evidence/native/functions/00B4BC60_WallPatternSide_UpdateResourcesAtPoint.c)) joins release/add, current ordinal lookup and narrowed side publication.
Save-time recounting without that edit lifetime is not the native map contract.

Roof last-issued counter/defaults and stair/terrain constructor facts are in the
annotated canonical pairs linked by [construction layouts](construction-layer-save-contracts.md)
and the native lookup indexes. These static contracts do not certify original-game
interchange, allocator failure parity, runtime ordering or complete save coverage.

The LDES UInt64+310 is the attached-object footprint hash, with its actual
[producer and consumer](headers-lot-descriptions.md). The metadata household ID
in the separate628A788F record remains a different field.
