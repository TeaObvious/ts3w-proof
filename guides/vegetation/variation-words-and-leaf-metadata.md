# Stable variation words and seasonal leaf metadata

## Evidence and scope

Original PC 1.67 instructions, original constant/table bytes and actual annotated
Ghidra C establish this static subset. All names are analyst assignments. No
game, tree generator, fixture or rendering path was executed. Complete template
loading, random-stream internals, packed position/normal conversion, shader
consumption and roof effect execution are outside this subset.

## Word lookup and original data

The [word lookup](../../evidence/native/functions/007D2340_VariationWords_Lookup1999.asm) ([annotated pseudocode](../../evidence/native/functions/007D2340_VariationWords_Lookup1999.c)) is cdecl with one UInt32 stack
identity and a UInt32 EAX result. Unsigned MUL with `0x06466f6b`, subtraction,
SHR1, addition and SHR10 compute the unsigned quotient by 1999. It returns:

```text
words[identity - (identity / 1999) * 1999]
```

There is no extra hash, random draw or mutable generator state in this helper.
The 1999 original little-endian UInt32 [words](tree-variation-words.tsv) occupy
`0x01019250..0x0101b18b` in `.rdata`, file offset `0x00c19250`. All 1999 words
are distinct in the reference bytes. Distinctness and PE timestamp are byte
observations; this native helper does not validate either before indexing.
The table is shared by tree and roof consumers, so its name does not imply a
format or policy restricted to vegetation.

## Tree primitive producer and two load consumers

The [template reload and primitive initializer](../../evidence/native/functions/0095A9A0_TreeComponent_ReloadTemplateAndInitializePrimitives.asm) ([annotated pseudocode](../../evidence/native/functions/0095A9A0_TreeComponent_ReloadTemplateAndInitializePrimitives.c)) uses ECX as owner, no stack
arguments, and RET. It releases the previous template, requests resource type
`0x021d7e8c`, and constructs `SpeedTree/TreeTemplateData` after a failed lookup.
The selected loop advances through 0x50-byte primitives. Its binary32 sample
starts at 0.5 and a conditionally enabled draw replaces it with an explicitly
stored binary32 value. Separate SSE operations calculate:

```text
scale = ((sample * 2 - 1) * templateVariance + templateSize) / templateSize
```

Scale is stored at primitive `+0x48`. With variance outside inclusive
`[-2^-23,+2^-23]`, variation at `+0x4c` is that sample. Otherwise the word lookup
uses owner `+4 -> DWORD +8`. The next DWORD is copied to a local in some callers
but is not an input to the lookup. No full object-GUID hashing is performed here.
The initializer dereferences the template before its later null test; this body
does not establish a safe null/OOM fallback.

The [binary primitive reader](../../evidence/native/functions/0095C160_TreeComponent_ReadBinaryPrimitives.asm) ([annotated pseudocode](../../evidence/native/functions/0095C160_TreeComponent_ReadBinaryPrimitives.c)) has ECX owner, two stack words
(reader/context), RET8 and AL equal to the reader's status byte `+0x14` on return.
The context UInt16 at `+6` selects context reference lookup from version 14 and
primitive payload from version 5. The count preflight requests **0x44 bytes per
item**, then storage is resized to 0x50 bytes per primitive. Each transform and
scale is read. Its selected scale-to-variation path is:

```text
((storedScale * templateSize - templateSize) / templateVariance + 1) * 0.5
```

MULSS, SUBSS, DIVSS, ADDSS and MULSS are separate binary32 operations. Missing
template or variance within the inclusive epsilon interval selects the word
path instead. COMISS unordered/NaN takes the arithmetic path, not the table path.
The threshold bytes and arithmetic constants are retained in the
[constant data](tree-variation-constants.tsv).

The [property primitive reader](../../evidence/native/functions/0095C480_TreeComponent_ReadPropertyPrimitives.asm) ([annotated pseudocode](../../evidence/native/functions/0095C480_TreeComponent_ReadPropertyPrimitives.c)) has ECX owner and **three** stack
words, RET0x0c. Only its first stack argument is used in the retained body; the
other two remain unknown unused ABI slots. Collection `0xaf289042`, transform
`0x54cb7ebb` and scale `0x70e47545` feed the same variation reconstruction.
Failure to find the collection still reaches its final helper and AL=1; this
return does not prove complete property validation or rollback.

### Unsigned normalization and decompiler artifact

All three selected producers normalize the raw lookup word using these actual
instructions:

1. Store the word bits in a DWORD stack slot and FILD as **signed Int32**.
2. If its signed bits are negative, FADD exact binary64 `2^32`.
3. FMUL stored binary64 word **`0x3df0000000100000`**.
4. FSTP binary32 at primitive `+0x4c`.

The multiplier is `0x1.0000000100000p-32`, the rounded binary64 reciprocal of
**4294967295**, not exact 2^-32. There is no early binary32 store between the
signed load, correction and multiply. Ambient x87 precision/control remains
unresolved. Reused integer/float stack slots cause the actual Ghidra C to show
float/int cast chains; those are explicitly annotated artifacts, not evidence
for extra native float stores. Current portable early float rounding and exact
binary32 2^-32 therefore cannot be accepted as instruction-identical from this C.

## Leaf count, seed and packed producers

Both [card vertex writer](../../evidence/native/functions/00716570_TreeLeaves_WriteCardVertices.asm) ([annotated pseudocode](../../evidence/native/functions/00716570_TreeLeaves_WriteCardVertices.c)) and [mesh vertex writer](../../evidence/native/functions/00716940_TreeLeaves_WriteMeshVertices.asm) ([annotated pseudocode](../../evidence/native/functions/00716940_TreeLeaves_WriteMeshVertices.c)) are cdecl with three stack
pointers and return the advanced output pointer in EAX. Source DWORD `+8` is the
leaf count. Their group calculation preserves a mixed signedness boundary:

```text
if UInt32(count) < 5: groupWord = 0
else: groupWord = low16(UInt32(signExtend16(low16(count))) / 5)
groupWord = unsignedMin(groupWord, 10)
```

MOVSX from CX is followed by **unsigned** MUL `0xcccccccd` and SHR2. Simplifying
this to signed `(short)count / 5` changes behavior outside the ordinary small
count domain. Complete producer admission for large counts remains open.

The renderer pointer at `0x0115c488` must be nonnull and either feature byte
`+0x1d8` or `+0x1d9` nonzero. With that gate and signed-positive group word,
the leaf ordinal supplies `Lookup1999`, truncated to low 16 seed bits. The seed
is initialized to zero when the gate is absent. These CPU producers alone do
not establish the final meaning of those feature bytes or shader behavior.

| Representation | Admission in this loop | Vertex stride | Group UInt16 offset | Seed UInt16 offset | Output advance |
| --- | --- | --- | --- | --- | --- |
| Card | Selected per-leaf `+0x20` is null | 40 | 36 | 38 | Four vertices, 160 bytes per card leaf |
| Mesh | Selected per-leaf `+0x20` is nonnull | 52 | 48 | 50 | Authored mesh vertex count * 52 |

No buffer-size, count or divisor containment is established by these selected
leaves. Other packed attributes and original caller admission remain open.

## Shared roof caller

The [roof water-drip body](../../evidence/native/functions/00BED100_RoofRenderManager_AddWaterDripsForRoof.asm) ([annotated pseudocode](../../evidence/native/functions/00BED100_RoofRenderManager_AddWaterDripsForRoof.c)) is named from its embedded
`Scratch/RoofRenderManager/AddWaterDripsForRoof` strings. At `0x00bed14c` it
loads roof DWORD `+0x0c`, calls Lookup1999 at `0x00bed150`, then passes the raw
returned word to local generator initialization at `0x00bed15d`. Earlier local
generator construction used sentinel -1. This proves a second consumer domain,
not complete roof particle placement, rate, weather/culling or failure semantics.

The canonical direct-call index contains all six static calls to Lookup1999
from these complete retained functions. Indirect or dynamically chosen consumers
are not ruled out by that inventory.
