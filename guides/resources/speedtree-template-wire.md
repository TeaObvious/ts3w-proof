# SpeedTree TREE templates and typed resource loading

Reference: original PC 1.67 `/TS3W.exe`, identified in the native evidence index.
Names are analyst assignments. This is static instruction/data evidence; no
original-game runtime execution or malformed-input acceptance is claimed.

## Resource and owner lifecycle

The SPT geometry resource type is `0x00B552EA`; its template sibling is
`0x021D7E8C`. Preserve group and all 64 instance bits. The registered factory
constructs the typed owner and publishes ordinal zero before initialization:
[factory constructor ASM](../../evidence/native/functions/00715AE0_TreeTemplate_AllocateDefaultResourceOwner.asm)
([pseudocode](../../evidence/native/functions/00715AE0_TreeTemplate_AllocateDefaultResourceOwner.c)),
[factory initialization ASM](../../evidence/native/functions/00715B20_TreeTemplate_InitializeOwnerFromChunk.asm)
([pseudocode](../../evidence/native/functions/00715B20_TreeTemplate_InitializeOwnerFromChunk.c)),
[type dispatch ASM](../../evidence/native/functions/00715B60_TreeTemplate_GetResourceType.asm)
([pseudocode](../../evidence/native/functions/00715B60_TreeTemplate_GetResourceType.c)).

The resource loader's full closure is indexed under `speedTreeTemplateWire` in
[the annotation index](../../evidence/native/annotation-index.json). RCOL framing
has five header DWORDs, a key table covering all three key groups and 16-byte
keys, followed by internal offset/length pairs. Public owners initialize in
reverse ordinal order; root zero initializes last. Root selection is not a
unique-TREE-type scan. A zero-public envelope can retain constructor values.
Shared/dependency owners and cache publication belong to the native resource
manager; a stateless decoder does not establish their warm-cache behavior.

## Defaults and TREE payload

[Constructor ASM](../../evidence/native/functions/007B76A0_TreeTemplate_ConstructDefault.asm)
([pseudocode](../../evidence/native/functions/007B76A0_TreeTemplate_ConstructDefault.c)) establishes duplicated
float4 bounds `(-1,-1,-1,-1)` / `(1,1,1,1)`, size 1, variation and offset 0,
radius 1, collision 0 and an empty 16-byte point vector. The necessary original
constant/interface table bytes are retained in
[template tables](../../evidence/native/data/speedtree-template-tables.tsv).

[Initializer ASM](../../evidence/native/functions/007B7D90_TreeTemplate_InitializeTreeChunk.asm)
([annotated pseudocode](../../evidence/native/functions/007B7D90_TreeTemplate_InitializeTreeChunk.c)) consumes
ECX owner and three stack words, returning success in AL with `RET 0xC`.
The inferred C return does not establish upper EAX bits. Magic is `0x45455254`
(`TREE`), and supported versions are exactly `0x201` and `0x202`.

| Payload | Original behavior |
| --- | --- |
| Both versions | Two float3 bounds become X/Y/Z/X lanes; words 8–11 populate size, variation, offset and radius |
| `0x201` | Collision reads byte 48 only; point vector becomes empty |
| `0x202` | Collision reads full DWORD 12; words 13/14 are unused here |
| Point metadata | DWORD 15 is N; DWORD 16 must equal uint32-wrapped `3*N` |
| Count mismatch | Initialization succeeds with empty points |
| Count match | Copy N ordered float3 values starting at DWORD 17 into X/Y/Z/X records |

Scalar words 8–11 cross x87 `FLD/FSTP`; exceptional/signaling-NaN bit identity is
not established by the integer-looking decompiler expressions. Bounds/point
moves, collision widths and count multiplication were checked in the listing.
The native routine does not supply managed buffer/array safety guarantees.

[DWORD normalization ASM](../../evidence/native/functions/007D3070_ResourceBytes_SwapDwordsInPlace.asm)
([pseudocode](../../evidence/native/functions/007D3070_ResourceBytes_SwapDwordsInPlace.c)) swaps complete words
in the shared payload backing. Trailing bytes remain untouched. Overlapping
public payloads observe earlier reverse-order writes; per-chunk copies would
change behavior. The helper returns no Boolean or byte count.

## Vector and consumers

[Resize ASM](../../evidence/native/functions/007B7D40_Vector16_ResizeCount.asm)
([pseudocode](../../evidence/native/functions/007B7D40_Vector16_ResizeCount.c)),
[insertion ASM](../../evidence/native/functions/005CFCF0_Vector16_InsertRepeated.asm)
([pseudocode](../../evidence/native/functions/005CFCF0_Vector16_InsertRepeated.c)),
[copy ASM](../../evidence/native/functions/005CA970_Vector16_CopyRangeAndReturnEnd.asm)
([pseudocode](../../evidence/native/functions/005CA970_Vector16_CopyRangeAndReturnEnd.c)) and
[erase ASM](../../evidence/native/functions/0073E750_Vector16_EraseRange.asm)
([pseudocode](../../evidence/native/functions/0073E750_Vector16_EraseRange.c)) close actual begin/end
updates, including cold growth and an empty copy range. Allocation does not imply
a graceful native failure return. Inferred formal counts remain distinct from
physical pushed words; the copy helper writes an output iterator.

[Collision predicate ASM](../../evidence/native/functions/0095A650_TreeComponent_HasCollisionShape.asm)
([pseudocode](../../evidence/native/functions/0095A650_TreeComponent_HasCollisionShape.c)) tests uint32 collision
against 3 and sets AL. It has no null-template guard.
[Leaf-point predicate ASM](../../evidence/native/functions/0095A880_TreeComponent_HasLeafDropPoints.asm)
([pseudocode](../../evidence/native/functions/0095A880_TreeComponent_HasLeafDropPoints.c)) returns EAX **1 or 0**
after checking nonnull template and nonzero `(end-begin) SAR 4`. It does not return
the point count. The [lot leaf-drop caller ASM](../../evidence/native/functions/00ABFBC0_FUN_00abfbc0.asm)
([pseudocode](../../evidence/native/functions/00ABFBC0_FUN_00abfbc0.c)) uses eligible primitive
translations/world boxes; this path does not consume the authored point coordinates.

[Template reload ASM](../../evidence/native/functions/0095A9A0_TreeComponent_ReloadTemplateAndInitializePrimitives.asm)
([pseudocode](../../evidence/native/functions/0095A9A0_TreeComponent_ReloadTemplateAndInitializePrimitives.c)) retains the component's
resource/primitive transition. This evidence does not establish complete wind,
geometry, shader, leaf simulation, collision or seasonal rendering equivalence.

All paired exports contain full Ghidra-owned instructions; explicit `.byte` rows
retain nonowned gaps inside body envelopes. Boundary, ABI, field-width and
original-byte checks are static. Foreign typed factories, shared-owner resolution,
warm-cache aliasing and original allocator exceptional behavior need their own
contracts before a broader implementation claim.
