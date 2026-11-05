# Rendered pick tile, priority and result publication

## Evidence and scope

Static original PC1.67 instruction, caller and helper analysis. The
[central reference](../../references/retained-proof-overview.md) identifies the binary. Names are analyst
labels. No GPU pick, input action, readback, driver failure or original gameplay
was executed. The exported selected bodies are complete; full transitive renderer
and GPU encoding coverage is not claimed.

| Entry / selected responsibility | Complete original evidence |
| --- | --- |
| 6DFDE0, consume mapped pick tile | [ASM](../../evidence/native/functions/006DFDE0_RenderPick_ConsumeMappedTile.asm) ([pseudocode](../../evidence/native/functions/006DFDE0_RenderPick_ConsumeMappedTile.c)) |
| 6DEEF0, copy result | [ASM](../../evidence/native/functions/006DEEF0_RenderPick_CopyResult.asm) ([pseudocode](../../evidence/native/functions/006DEEF0_RenderPick_CopyResult.c)) |
| 6E3C40, borrowed scene-index lookup | [ASM](../../evidence/native/functions/006E3C40_RenderScene_GetBorrowedAtIndex.asm) ([pseudocode](../../evidence/native/functions/006E3C40_RenderScene_GetBorrowedAtIndex.c)) |
| 617C90, surface tag lookup | [ASM](../../evidence/native/functions/00617C90_SurfaceRegistry_FindValueByTag.asm) ([pseudocode](../../evidence/native/functions/00617C90_SurfaceRegistry_FindValueByTag.c)) |
| 617A10, tag-map iterator | [ASM](../../evidence/native/functions/00617A10_SurfaceTagMap_FindIterator.asm) ([pseudocode](../../evidence/native/functions/00617A10_SurfaceTagMap_FindIterator.c)) |
| 619530, texture-level map | [ASM](../../evidence/native/functions/00619530_Surface_MapTextureLevel.asm) ([pseudocode](../../evidence/native/functions/00619530_Surface_MapTextureLevel.c)) |
| 6198A0, unmap | [ASM](../../evidence/native/functions/006198A0_Surface_UnmapIfMapped.asm) ([pseudocode](../../evidence/native/functions/006198A0_Surface_UnmapIfMapped.c)) |
| 6194F0, mip dimensions | [ASM](../../evidence/native/functions/006194F0_MipDimensions_ShiftAndClampOne.asm) ([pseudocode](../../evidence/native/functions/006194F0_MipDimensions_ShiftAndClampOne.c)) |
| 549820, candidate-map construction | [ASM](../../evidence/native/functions/00549820_PickCandidateMap_Construct.asm) ([pseudocode](../../evidence/native/functions/00549820_PickCandidateMap_Construct.c)) |
| 816210, candidate lookup | [ASM](../../evidence/native/functions/00816210_PickCandidateMap_FindIterator.asm) ([pseudocode](../../evidence/native/functions/00816210_PickCandidateMap_FindIterator.c)) |
| C4E160, first insertion | [ASM](../../evidence/native/functions/00C4E160_PickCandidateMap_InsertFirst.asm) ([pseudocode](../../evidence/native/functions/00C4E160_PickCandidateMap_InsertFirst.c)) |
| 8157C0, rehash by prepend | [ASM](../../evidence/native/functions/008157C0_PickCandidateMap_RehashPrepend.asm) ([pseudocode](../../evidence/native/functions/008157C0_PickCandidateMap_RehashPrepend.c)) |
| 93AD70, first iterator | [ASM](../../evidence/native/functions/0093AD70_PickCandidateMap_Begin.asm) ([pseudocode](../../evidence/native/functions/0093AD70_PickCandidateMap_Begin.c)) |
| 4E0EC0, prime capacity policy | [ASM](../../evidence/native/functions/004E0EC0_HashGrowth_SelectPrimeCapacity.asm) ([pseudocode](../../evidence/native/functions/004E0EC0_HashGrowth_SelectPrimeCapacity.c)) |
| B09680, UInt32 lower bound | [ASM](../../evidence/native/functions/00B09680_UInt32Range_LowerBound.asm) ([pseudocode](../../evidence/native/functions/00B09680_UInt32Range_LowerBound.c)) |

## Pending state and surface mapping

The consumer takes ECX manager and no stack arguments. It acts only when pending
X at `+0x40` is signed nonnegative and ready byte `+0x15` is nonzero. Before any
surface/map failure it clears ready, copies pending coordinates to `+0x48/+0x4C`,
resets packed result `+0x60` to0 and indices `+0x58/+0x5C` to-1, copies64 saved
matrix bytes `+0x80` to `+0xC0`, and invalidates pending coordinates to-1.
The previous point at `+0x70` is not cleared on this early failure path.

It requests surface tag `0x6EE45453`, mip0, flags2. Tag lookup compares UInt32
keys in a hash map and returns a borrowed node-value pointer or NULL. Its
physical ABI has a stack tag argument and RET4; the map iterator has RET8.
The tag-map chain uses node+`0x28`; it is a different node layout from the
candidate map described below.

Mapping returns the same40-byte output pointer and initially zeroes all ten
DWORDs. Only kind `+0x2C == 0` with a nonnull backing `+0x30` proceeds. Input
flag bit0 maps to `0x2000`, bit1 to `0x10`. Virtual `+0x4C` receives **five
stdcall stack words**, including the explicit backing receiver, mip, pointer to
`{pitch,bits}`, NULL rectangle and flags. Signed HRESULT below0 or bits pointer
unsigned below `0x8000` leaves output zero; this leaf has no compensating unlock
on that rejection. It does not validate tile size or row pitch.

Successful mapping records bits, pitch, flags, face0, mip and dimensions. The
dimension helper shifts logically by the CPU's low-five-bit shift count, then
replaces each zero with1; each output is independently nullable. Unmap ignores
its virtual result, clears only mapping.bits, and has kind0/2 level and kind1
face/level forms. Other kinds also clear bits without an unlock call.

## Per-index sample reduction

The consumer reads exactly16 rows and16 columns at
`bits + y*pitchBytes + x*4`. It does not use width/height as loop bounds.
Each packed UInt32 supplies:

- key = `(packed & 0xFFFF) - 1`, including `0xFFFFFFFF` for background;
- squared distance `(8-x)^2 + (8-y)^2`;
- the complete packed word as a secondary comparison value.

For an existing key, strictly smaller unsigned distance replaces its payload;
on equal distance, smaller **complete UInt32 packed word** replaces it. An update
does not change node position. Thus this reduction is not a depth-only sort.
The center fallback is the actual sample at `bits + 8*pitch + 32`.

## Priority, growth and equal distances

If more than one distinct key exists, the consumer traverses candidate buckets
ascending and each chain from its head. Scene lookup checks an unsigned index
against vector length and returns a borrowed pointer; background therefore
misses in an ordinary valid scene vector. A candidate qualifies only when its
node's raw flags at `+0x44` contain `0x800`. The best distance begins at
`0xFFFFFFFF`; only strict unsigned improvement replaces it. Equal priority
distances keep the first encountered node. If none qualifies, center remains;
there is no general nearest-object fallback.

Node layout is four DWORDs: key, distance, packed, next. New entries prepend.
Rehash visits old buckets ascending, removes heads in chain order and prepends
each to its new `UInt32(key) % bucketCount` bucket. This order is observable
through equal-distance priority selection. Duplicate insertion leaves the
existing node/payload unchanged. Its ABI includes an unused third stack word
and RET12; the caller's separate update owns duplicate reduction.

Initial buckets are borrowed static `{0,0xFFFFFFFF}` storage, count1, node
count0, load1, growth2 and threshold0. With at most256 distinct samples, the
reachable bucket counts are `2,5,11,23,47,97,199,409`. This follows the original
prime lower-bound table and mixed x87/SSE policy in this exact small integer
domain. General large-count/NaN/overflow behavior is not established by that
sequence. Growth uses wrapping integer addition, float temporaries, temporary
x87 truncation control and ceil of the load threshold. Lower bound can return
end and its caller has no local end guard. New allocation is not gracefully
contained: the insertion path can store through a NULL node pointer.

Necessary [original data](../../evidence/objects/render-pick-original-data.tsv)
retains the complete256-entry search range, map storage, allocation label and
point-reconstruction constants. Existing float1/2 words remain in the
[shared transform constants](../../evidence/objects/transform-constants.tsv).

## Published selection and point

The consumer stores the selected word, low16-minus1 index and zero float4 point.
A valid index with byte `+0x101` set stores the packed high byte as auxiliary
index. Otherwise it uses high16 as a numeric coordinate for reconstruction.
Scale fields `+0x30/+0x34`, camera `+0x0C/+0x10` and saved matrix rows are
binary32 memory. Integer pixel coordinates alone are converted with CVTSI2SS.

Using distinct original SSE rounding steps, the row result is
`(((yScale*row1 + xScale*row0) - row2) * depthFactor) + row3`, with
`depthFactor = c1 / (float(high16)*c2 - c0)` and the three stored constants.
No normalization, finite check or extra homogeneous divide occurs in this body.
Full matrix/packed-depth producers and GPU interpretation remain open.

The result getter returns AL false without output writes when completed X is
negative. Otherwise it writes coordinates, selected word, default index-1,
auxiliary index, NULL object and16 point bytes at output+`0x20`. It requires
16-byte alignment for MOVAPS; words `+0x18/+0x1C` remain unwritten. A true result
can have no object. It resolves the scene index and may delegate optional
point-object or GUID-object remapping through queried interfaces. Complete
child ownership and generation lifetime are unexpanded.

## ABI and decompiler limits

Typed map output and locked rectangle restore the explicit COM stack cleanup;
an unbound EBP in old output was not the mapped pointer's real source. Point
stores are MOVAPS float bits, not numeric float-to-int conversions. Generic
int-pointer receiver aliases still render some float-field accesses/writes as
C numeric casts; annotations identify those artifacts against instructions.
Growth reuses integer argument slots for float bits and control words, so its
rendered uint/float casts must not be implemented as literal numeric conversions.

Open: GPU tile/ID/depth production, coherent generation-to-GUID mapping, full
frame/drain ownership, optional result remapping, resource replacement/unmap
failure, exceptional inputs and executed visible acceptance.
