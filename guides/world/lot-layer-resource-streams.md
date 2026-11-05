# Lot Fence, Deck and compositor resource streams

The original PC 1.67 resource producers and consumers below were reviewed as
complete existing Ghidra function bodies. Their original bytes govern; stored
prototypes remain inferred projections. Analyst names describe behavior and are
not recovered class names or symbols. The raw exports preserve the reviewed
AT&T instruction listing, including original bytes, and explicitly identify
nonowned gap/alignment bytes in each envelope. Static review does not establish
runtime persistence, rendering or every subordinate decoder/comparator.

## Complete selected functions

| Entry / analyst description | Canonical pair |
| --- | --- |
| 00603B30 compositor envelope writer | [ASM](../../evidence/native/functions/00603B30_TextureCompositor_WriteEnvelopeWithKeyList.asm) ([pseudocode](../../evidence/native/functions/00603B30_TextureCompositor_WriteEnvelopeWithKeyList.c)) |
| 00605D40 nonnull writer adapter | [ASM](../../evidence/native/functions/00605D40_TextureCompositor_WriteObjectEnvelope.asm) ([pseudocode](../../evidence/native/functions/00605D40_TextureCompositor_WriteObjectEnvelope.c)) |
| 00607E10 compositor resource admission | [ASM](../../evidence/native/functions/00607E10_TextureCompositor_CreateFromResourceStream.asm) ([pseudocode](../../evidence/native/functions/00607E10_TextureCompositor_CreateFromResourceStream.c)) |
| 007D7470 context-width key resolution | [ASM](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.asm) ([pseudocode](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.c)) |
| 00A66420 Fence writer | [ASM](../../evidence/native/functions/00A66420_LotFence_WritePostResource.asm) ([pseudocode](../../evidence/native/functions/00A66420_LotFence_WritePostResource.c)) |
| 00A67420 design acquisition | [ASM](../../evidence/native/functions/00A67420_LotFence_AcquirePostDesign.asm) ([pseudocode](../../evidence/native/functions/00A67420_LotFence_AcquirePostDesign.c)) |
| 00A67690 post insertion | [ASM](../../evidence/native/functions/00A67690_LotFence_InsertPostIfAbsent.asm) ([pseudocode](../../evidence/native/functions/00A67690_LotFence_InsertPostIfAbsent.c)) |
| 00A67720 ordinary Fence reader | [ASM](../../evidence/native/functions/00A67720_LotFence_ReadPostResource.asm) ([pseudocode](../../evidence/native/functions/00A67720_LotFence_ReadPostResource.c)) |
| 00A67960 transformed Fence reader | [ASM](../../evidence/native/functions/00A67960_LotFence_ReadTransformedPostResource.asm) ([pseudocode](../../evidence/native/functions/00A67960_LotFence_ReadTransformedPostResource.c)) |
| 00ABBCE0 Deck storage constructor | [ASM](../../evidence/native/functions/00ABBCE0_FourWordGrid_InitializeStorage.asm) ([pseudocode](../../evidence/native/functions/00ABBCE0_FourWordGrid_InitializeStorage.c)) |
| 00AC3070 uniform Deck fill | [ASM](../../evidence/native/functions/00AC3070_FourWordGrid_FillUniformValue.asm) ([pseudocode](../../evidence/native/functions/00AC3070_FourWordGrid_FillUniformValue.c)) |
| 00AC3140 flat Deck ingestion | [ASM](../../evidence/native/functions/00AC3140_FourWordGrid_ImportLevelXZCells.asm) ([pseudocode](../../evidence/native/functions/00AC3140_FourWordGrid_ImportLevelXZCells.c)) |
| 00AC32C0 flat Deck serialization | [ASM](../../evidence/native/functions/00AC32C0_FourWordGrid_ExportLevelXZCells.asm) ([pseudocode](../../evidence/native/functions/00AC32C0_FourWordGrid_ExportLevelXZCells.c)) |
| 00AC3510 Deck resize | [ASM](../../evidence/native/functions/00AC3510_FourWordGrid_ResizeStorage.asm) ([pseudocode](../../evidence/native/functions/00AC3510_FourWordGrid_ResizeStorage.c)) |
| 00AC4FA0 enclosing lot save | [ASM](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.c)) |
| 00AC61F0 grid header reader | [ASM](../../evidence/native/functions/00AC61F0_LotGrid_ReadHeaderAndResize.asm) ([pseudocode](../../evidence/native/functions/00AC61F0_LotGrid_ReadHeaderAndResize.c)) |
| 00AC8C80 lot Deck creation/fill producer | [ASM](../../evidence/native/functions/00AC8C80_LotDataLayers_CreateMissingOwners.asm) ([pseudocode](../../evidence/native/functions/00AC8C80_LotDataLayers_CreateMissingOwners.c)) |
| 00AC91D0 enclosing lot load | [ASM](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c)) |
| 00AD2E10 lot compositor writer | [ASM](../../evidence/native/functions/00AD2E10_LotCompositors_WriteResource.asm) ([pseudocode](../../evidence/native/functions/00AD2E10_LotCompositors_WriteResource.c)) |
| 00AD3C30 lot compositor reader | [ASM](../../evidence/native/functions/00AD3C30_LotCompositors_ReadResource.asm) ([pseudocode](../../evidence/native/functions/00AD3C30_LotCompositors_ReadResource.c)) |
| 00C6D880 grid header writer | [ASM](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.asm) ([pseudocode](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.c)) |

## Stream keys and Fence records

007D7470 selects a UInt32 handle when the resource-table context byte at +0x82
is nonzero, otherwise UInt16, then invokes the corresponding existing resolver.
Scalar readers receive the existing endianness input at context +0x10. These
consumers do not establish every initializer of that mode. The independently
reviewed [reference-table contract](../loading/reference-store.md) retains the
inline key's four-word order and the distinct version/handle/ordinal rules.

00A66420 saves the design map first using group 0x00913C61, then opens
type 0x913381F2/group 0 with the lot instance. It writes UInt32 version 4 and
count, followed by retained vector order: 32-bit level, binary32 X/Z, UInt16
registered-key handle and UInt16 design ID. The in-memory stride is 40 bytes.
This writer emits a narrow handle even though the shared context reader has a
wide branch. Every write contributes to sticky stream status; close precedes the
AL result. x87 expression points do not establish arbitrary NaN payload retention.

00A67720 loads the design map before the same post key, reads version, resets the
post vector, reads/reserves count and processes all records despite sticky read
failure. Versions below 2 use inline keys; later versions use context handles.
Version 3 reads three context keys and acquires a design, version 4 and above
read UInt16 design IDs, while version 2 has no extra design-ID field. The selected
body supplies no upper version or exact EOF rule. Existing-entry insertion
returns false without replacement. Design lookup increments an existing count or
registers a new ID/count 1 and copies 48 bytes. Exact comparator/hash/nonfinite
coordinate behavior and full design retirement remain separate. 00A67960 uses
an import transform and context keys and is not the ordinary untransformed reader.

## Deck header, block storage and flat transport

00C6D880 writes type 0xB125533A using the supplied group/lot key: UInt32 version 1,
then retained 32-bit width, depth and levels. Deck callers supply group 0x0093D6D6.
00AC61F0 opens if needed, reads those fields and resizes. It does not impose the
current project's dimension caps or reject other version words. Failure closes;
success leaves the body stream open.

00ABBCE0 initializes dimensions/storage. 00AC3510 calculates width/depth block
counts with signed (dimension+3)>>2 operations and stores UInt16 tags plus 16-byte
uniform block values. Fresh tags are 0x8000. 00AC3070 sets all tags to that value,
copies the four supplied words to each uniform cell and compacts dense storage.
00AC8C80 creates the 0x58-byte owner only when absent, sizes it from the lot and
supplies four 0xFFFFFFFF words. Original resize arithmetic provides no independent
overflow/allocation safety promise.

00AC32C0 and 00AC3140 independently establish flat order: level outermost, X next,
Z innermost. Positive admitted dimensions use ((level*width)+x)*depth+z, with four
32-bit words per element. A high tag bit selects uniform storage; otherwise low
coordinate bits choose the dense 4x4 cell. Ingestion resets dense storage, seeds
leading block cells, then delegates remaining cells to the existing setter.

00AC4FA0 writes the header, flattens, writes all four words per element and closes.
00AC91D0 reconstructs only after prior floor status passes and the Deck owner is
absent. Header failure closes/deletes/clears. Body status accumulates, then close
precedes ingestion even if body reading failed. This is not transactional recovery.
Earlier lot-version conversion remains a separate path. Alternate cell orderings
in diagnostic tools are not evidenced native wire alternatives.

## Compositor envelope and map publication

00AD2E10 opens type 0x0563919E/group 0/lot instance, writes version 5, an offset
placeholder and first-map count. Rows register a UInt16 key and call 00605D40 on
the borrowed compositor with an actual key-list adapter. 00603B30 writes UInt32
marker 8, a size placeholder and the existing fields/body, then backpatches
endPosition-sizeFieldPosition-4. A byte-counted trailing key list follows outside
that size-delimited body. The supplied adapter contributes referenced resources;
one empty trailer byte is not the general compositor contract.

The lot writer emits its second key/preset map, backpatches the saved resource
stream position and emits shared trailing data. These positions are not package
file offsets. Only AL is established for success despite wider decompiler result
labels. Its resource-open failure branch returns AL 1, an original quirk rather
than evidence that a resource was created.

00AD3C30 clears both maps before open, accepts versions 1 through 5 and delegates
1 through 4 to legacy code. Version 5 reads shared trailing data first by seeking,
returns to the rows, resolves context-width keys and invokes 00607E10. That helper
admits types 0x033A1435 and 0x0341ACC9, publishes output only after successful inner
load and releases temporary ownership on failure. The outer reader publishes maps
conditionally and releases temporary references, then closes/returns sticky status.
The [resource identity and preset contract](../loading/resource-reference-key-maps.md)
adds both retain-by-key bodies and the second-map 005C0110 preset envelope,
including first-object identity, saved subsort and UInt16 suffix references.
The inner 00607610 decoder and legacy versions remain separate coverage boundaries. Fixed UInt16/version-5/one-trailer-byte diagnostic
walks are bounded observations and cannot supply full parser authority.

The [four-word grid growth/copy contract](four-word-grid-growth-and-copying.md)
now establishes the selected resize, repeated fill, insertion and copy helpers
behind retained AC3140/AC32C0/AC2ED0. This closes raw16-byte slot operations and
uniform expansion without changing their level/X/Z wire order. It does not
establish allocator failure, grid retirement or atomic resource publication.
