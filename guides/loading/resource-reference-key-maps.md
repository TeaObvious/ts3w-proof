# Resource reference handles, lot ordinals and compositor identities

This is a static PC 1.67 original-code contract. Analyst names describe observed
instructions; they are not recovered original symbols. Stored Ghidra signatures
are inferred projections. Physical registers, widths, cleanup and output effects
below take precedence over decompiler types and stack aliases. Reference binary
identity is centralized in [the proof overview](../../references/retained-proof-overview.md).

## Selected complete owned bodies

| Entry / analyst name | Canonical pair |
| --- | --- |
| `007d6b50` — `ResourceReferences_ResolveWideHandle` | [ASM](../../evidence/native/functions/007D6B50_ResourceReferences_ResolveWideHandle.asm) ([pseudocode](../../evidence/native/functions/007D6B50_ResourceReferences_ResolveWideHandle.c)) |
| `007d7190` — `ResourceReferences_ResolveNarrowHandle` | [ASM](../../evidence/native/functions/007D7190_ResourceReferences_ResolveNarrowHandle.asm) ([pseudocode](../../evidence/native/functions/007D7190_ResourceReferences_ResolveNarrowHandle.c)) |
| `00ad33d0` — `LotCompositors_RetainProgramByResourceKey` | [ASM](../../evidence/native/functions/00AD33D0_LotCompositors_RetainProgramByResourceKey.asm) ([pseudocode](../../evidence/native/functions/00AD33D0_LotCompositors_RetainProgramByResourceKey.c)) |
| `00ad3620` — `LotCompositors_RetainPresetByResourceKey` | [ASM](../../evidence/native/functions/00AD3620_LotCompositors_RetainPresetByResourceKey.asm) ([pseudocode](../../evidence/native/functions/00AD3620_LotCompositors_RetainPresetByResourceKey.c)) |
| `00b49f80` — `WallDiffuseSide_ResolveOrdinalKey` | [ASM](../../evidence/native/functions/00B49F80_WallDiffuseSide_ResolveOrdinalKey.asm) ([pseudocode](../../evidence/native/functions/00B49F80_WallDiffuseSide_ResolveOrdinalKey.c)) |
| `00b49fe0` — `WallPresetSide_ResolveOrdinalKey` | [ASM](../../evidence/native/functions/00B49FE0_WallPresetSide_ResolveOrdinalKey.asm) ([pseudocode](../../evidence/native/functions/00B49FE0_WallPresetSide_ResolveOrdinalKey.c)) |
| `00b4a040` — `WallSpecularSide_ResolveOrdinalKey` | [ASM](../../evidence/native/functions/00B4A040_WallSpecularSide_ResolveOrdinalKey.asm) ([pseudocode](../../evidence/native/functions/00B4A040_WallSpecularSide_ResolveOrdinalKey.c)) |
| `00b4a6d0` — `WallSide_ReadResourceKeys` | [ASM](../../evidence/native/functions/00B4A6D0_WallSide_ReadResourceKeys.asm) ([pseudocode](../../evidence/native/functions/00B4A6D0_WallSide_ReadResourceKeys.c)) |
| `00b4a990` — `WallPatternSide_ReadResourceKey` | [ASM](../../evidence/native/functions/00B4A990_WallPatternSide_ReadResourceKey.asm) ([pseudocode](../../evidence/native/functions/00B4A990_WallPatternSide_ReadResourceKey.c)) |
| `00c0e440` — `LotSeaLife_ReadRows` | [ASM](../../evidence/native/functions/00C0E440_LotSeaLife_ReadRows.asm) ([pseudocode](../../evidence/native/functions/00C0E440_LotSeaLife_ReadRows.c)) |
| `00c45040` — `WallSideTable_GetOrdinal` | [ASM](../../evidence/native/functions/00C45040_WallSideTable_GetOrdinal.asm) ([pseudocode](../../evidence/native/functions/00C45040_WallSideTable_GetOrdinal.c)) |

The SeaLife body owns `00C0E440..00C0E4B8` and `00C0E4C0..00C0E615`:
463 owned bytes and 156 instructions. Its 470-byte bounding envelope contains
seven **nonowned, unexported** bytes at `00C0E4B9..00C0E4BF`. The listing makes no
claim about those bytes or a contiguous 470-byte instruction body. Other bodies
in this table are contiguous. All listed bodies together contain 2,264 owned
bytes and 766 instructions.

## Explicit handle lookup and unchanged output on a miss

Both resolvers receive the reference context in ECX, a handle pointer and a
16-byte output-key pointer on the stack, and use `RET 8`. `007D7190` zero-extends
UInt16; `007D6B50` consumes the full UInt32. Zero is admitted in either domain.
They query the handle-to-key map at context `+20`. A hit copies four DWORDs from
node `+8/+C/+10/+14` and sets AL to one, including an authored all-zero key. A
miss clears AL and leaves the output key unchanged. Higher EAX bits are residual
data, not a full-width Boolean. Neither body mutates a map or stream status.

The [REFS reader/writer contract](reference-store.md) establishes versions,
configured width and last-row duplicate-handle replacement. Context-width
dispatch at `007D7470` reads according to context `+82`, accumulates physical
stream status, calls the selected resolver and ignores its Boolean. It therefore
does not turn a missing handle into a stream read failure. There is no row-index
fallback. These are distinct identities: a serialized reference handle resolves
through REFS, while a wall-pattern ordinal selects a row in a wall-owned map.

## Wall defaults, ordinals and directed side selection

The resource-key map reader `00B701E0` reads a UInt32 version, an inline default
key and a UInt32 row count. Before version two, row keys are inline; later rows
use the reference context. It initializes the working key once before the loop,
so a later unresolved handle retains the preceding key. UInt32 ordinals and
reference counts follow. Duplicate identities replace the selected map values;
this does not make REFS handles interchangeable with wall ordinals.

The pattern resolver `00B49F20` uses owner `+70`; the new diffuse, preset and
specular bodies use `+78`, `+80` and `+88`. Ordinal zero returns that associated
map's inline key at `+40`. Every nonzero UInt16 value, including `FFFF`, queries
the ordinal map at `+20`, returning node `+8` or null. There is no blanket FFFF
rejection. `00C45040` selects a UInt16 at node `+8` for selector zero or node `+6`
for selector one. Missing rows and other selectors return low word zero; higher
return bits do not belong to the ordinal.

`00B4A990` initializes the low ordinal to zero, optionally selects a section's
side ordinal, and calls the pattern resolver even for zero. Only a null returned
pointer selects global address `011ED1B8`. `00B4A6D0` obtains directed orientation
and separate lane ordinals, resolves pattern/diffuse/specular/preset independently,
and substitutes process-global pointers for missing keys. Absent sections fill
all four lanes from `011EC8D0`; present-section pattern failure uses `011ED1B8`
and other missing lanes use `011EC8D0`.

[The necessary default-data table](../../evidence/native/resource-reference-default-data.tsv)
records two 16-byte **PE virtual zero-fill** windows beyond physical raw extent.
There are no corresponding physical file bytes. Initial loader-image zeros do
not establish the runtime global keys, initialization order or semantic fallback
identity. No missing-pointer global is inferred to be a free/null resource key.

## Full resource identity and first retained object

`00AD3620` looks up all 16 identity bytes at preset `+8`. On a miss it inserts
count one and retains the pointer. On a hit it increments node `+10`, preserving
the first object pointer at node `+14`. `00AD33D0` applies the same rule to a
program. A nonzero byte flag additionally scans referenced resources through an
existing child; zero skips that scan. The child's full semantics remain open.
Original virtual retain/release calls govern temporary object ownership.

The version-five lot compositor reader `00AD3C30` clears both maps before opening,
reads shared trailing data by seeking, returns to S1/S2 rows, resolves leading
keys with the context width, and conditionally publishes successfully loaded
objects under their full identities. Temporary references are released and the
outer return reports sticky stream status. Versions one through four delegate
to a separate legacy path. See the [lot-layer stream contract](../world/lot-layer-resource-streams.md)
for writer positions and the program envelope.

The S2 preset envelope `005C0110` is cdecl with reader, key context and output
pointer. Status and non-null inputs gate entry. It allocates `0x60` bytes and
admits versions one/two by unsigned `(version - 1) < 2`. The next UInt32 is stored
at preset `+5C` as subsort, followed by the UInt32 body size. Size zero publishes
a valid empty preset retaining that subsort. Otherwise it seeks to the body end,
reads a UInt8 reference count, checks `2 * count` bytes, and resolves **UInt16**
handles through `007D7190`, independently of the outer context's configured width.
A failed suffix resolution fails this envelope. It restores the body start for
`005BF6C0` with the external resolved-key vector, then restores the suffix end.
Failed loads release the preset. Only AL is established as success. This does
not establish the complete inner instruction decoder or legacy compositor paths.

## SeaLife rows and caller-specific output state

`00C0E440` receives its owner in ECX, stream and reference contexts on the stack,
and returns with `RET 8`. It reads UInt32 version/count without comparing the
version or imposing a fixed row cap. Each row clears its complete key before
context-width resolution, reads spacing/variance DWORD bits and a seed, then a
UInt32 UTF16-unit count. A count above `3FF` fails sticky status immediately.
Declared rows may already mutate the owner before final status is returned;
trailing bytes are not required to be absent. This row-local key reset differs
from `00B701E0`'s retained key across rows.

Other retained readers demonstrate why caller state matters: floor `00AA5490`
keeps four independent preceding-key lanes; terrain `00AF12F0` uses context keys
from version three; roof `00B995E0` and fence `00A67720` retain their own version
and context admission. None establishes a universal missing-key substitution.

## Caller coverage and limits

[Incoming references](../../evidence/native/resource-reference-incoming.tsv)
list the captured call-instruction addresses targeting these eleven functions.
`paired_direct_call` means an exact instruction/target joins the selected
[direct-call index](../../evidence/native/direct-calls.tsv); `reference_only`
does not claim a reviewed containing body. Computed calls are not resolved by
inventing targets. These references are selected static coverage, not all
reachable runtime callers or a complete virtual-call graph.

Native hash allocation, reverse/remap behavior, runtime global initialization,
legacy codecs, subordinate program/preset semantics, concurrency and successful
save/reload remain separate coverage boundaries. Decompiler aliases and wider
return labels do not prove native object layouts or change the physical ABI.

## Existing producer and consumer pairs

| Entry / responsibility | Canonical pair |
| --- | --- |
| `007d6c90` REFS payload reader | [ASM](../../evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.asm) ([pseudocode](../../evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.c)) |
| `007d6940` REFS writer | [ASM](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.asm) ([pseudocode](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.c)) |
| `007d7470` context-width dispatch | [ASM](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.asm) ([pseudocode](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.c)) |
| `00b701e0` wall resource-key map reader | [ASM](../../evidence/native/functions/00B701E0_WallPatternMap_ReadResource.asm) ([pseudocode](../../evidence/native/functions/00B701E0_WallPatternMap_ReadResource.c)) |
| `00b6ff20` wall resource-key map writer | [ASM](../../evidence/native/functions/00B6FF20_WallPatternMap_WriteResource.asm) ([pseudocode](../../evidence/native/functions/00B6FF20_WallPatternMap_WriteResource.c)) |
| `00b49f20` pattern ordinal lookup | [ASM](../../evidence/native/functions/00B49F20_WallPatternSide_ResolveOrdinalKey.asm) ([pseudocode](../../evidence/native/functions/00B49F20_WallPatternSide_ResolveOrdinalKey.c)) |
| `00ad3c30` lot compositor reader | [ASM](../../evidence/native/functions/00AD3C30_LotCompositors_ReadResource.asm) ([pseudocode](../../evidence/native/functions/00AD3C30_LotCompositors_ReadResource.c)) |
| `00ad2e10` lot compositor writer | [ASM](../../evidence/native/functions/00AD2E10_LotCompositors_WriteResource.asm) ([pseudocode](../../evidence/native/functions/00AD2E10_LotCompositors_WriteResource.c)) |
| `005c0110` preset context envelope | [ASM](../../evidence/native/functions/005C0110_Preset_ReadContextEnvelope.asm) ([pseudocode](../../evidence/native/functions/005C0110_Preset_ReadContextEnvelope.c)) |
| `005bf6c0` preset body reader | [ASM](../../evidence/native/functions/005BF6C0_Preset_ReadBinaryBlock.asm) ([pseudocode](../../evidence/native/functions/005BF6C0_Preset_ReadBinaryBlock.c)) |
| `00607e10` program resource admission | [ASM](../../evidence/native/functions/00607E10_TextureCompositor_CreateFromResourceStream.asm) ([pseudocode](../../evidence/native/functions/00607E10_TextureCompositor_CreateFromResourceStream.c)) |
| `00603b30` program envelope writer | [ASM](../../evidence/native/functions/00603B30_TextureCompositor_WriteEnvelopeWithKeyList.asm) ([pseudocode](../../evidence/native/functions/00603B30_TextureCompositor_WriteEnvelopeWithKeyList.c)) |
| `00605d40` nonnull program writer adapter | [ASM](../../evidence/native/functions/00605D40_TextureCompositor_WriteObjectEnvelope.asm) ([pseudocode](../../evidence/native/functions/00605D40_TextureCompositor_WriteObjectEnvelope.c)) |
| `00aa5490` floor row reader | [ASM](../../evidence/native/functions/00AA5490_FloorPatternMap_ReadResourceRows.asm) ([pseudocode](../../evidence/native/functions/00AA5490_FloorPatternMap_ReadResourceRows.c)) |
| `00af12f0` terrain row reader | [ASM](../../evidence/native/functions/00AF12F0_LotTerrain_ReadResources.asm) ([pseudocode](../../evidence/native/functions/00AF12F0_LotTerrain_ReadResources.c)) |
| `00b995e0` roof reader | [ASM](../../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.asm) ([pseudocode](../../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.c)) |
| `00a67720` fence reader | [ASM](../../evidence/native/functions/00A67720_LotFence_ReadPostResource.asm) ([pseudocode](../../evidence/native/functions/00A67720_LotFence_ReadPostResource.c)) |
