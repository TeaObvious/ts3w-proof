# VRTF and MLOD resource admission and binding

## Reference and scope

Static original PC 1.67 instructions, actual annotated Ghidra C and original
bytes establish these selected resource readers, callback adapters and ownership
setters. Names are analyst assignments. No loader, decoder, game, fixture or GPU
was executed. The [declaration and draw contract](geometry-state-and-vertex-declaration.md)
continues this resource path to native declaration creation and indexed submission.
This guide does not establish full model LOD admission, vertex shader arithmetic,
position scale/bias application, implicit weights or rendered output.

## VRTF header and record projection

The [load callback](../../evidence/native/functions/006D94A0_VertexFormatResource_LoadCallback.asm) ([annotated pseudocode](../../evidence/native/functions/006D94A0_VertexFormatResource_LoadCallback.c)) is a 27-byte stdcall adapter with four
stack slots: owner, resource view, context and swap flag. It moves owner into ECX
and calls the [element reader](../../evidence/native/functions/006D8A10_VertexFormatResource_ReadElements.asm) ([annotated pseudocode](../../evidence/native/functions/006D8A10_VertexFormatResource_ReadElements.c)), a thiscall method consuming three
stack arguments. Success is AL alone. Only the incoming swap flag's low byte is
tested; the slot is later reused for an allocation-name pointer. That scratch
reuse is not a write to an external flag/global.

The reader obtains unsigned byte length through resource-view virtual `+0x1c`
and the backing payload through view `+4` then owner `+8`. It requires at least
20 bytes before version dispatch. A requested endian conversion swaps every
complete DWORD, leaving any final fractional word unprocessed.

| Header byte offset | Actual use in this reader |
| --- | --- |
| 0 | Not compared with a VRTF magic value here |
| 4 | Unsigned version; less than 2 selects the older layout |
| 8 | Serialized stride is not consumed |
| 12 | Unsigned element count; values at least 65,536 reject |
| 16 | Version at least 2: bit 0 chooses expanded records |

Older records begin at byte 16; newer records begin at 20. Compact record
preflight is `header + count * 4`, without overflow at the admitted count limit.
The same four-byte multiplier is used even for the expanded twelve-byte path.
There is no highest-version rejection, exact EOF requirement, enum-bound proof or
complete expanded-payload containment in this leaf. Initial 20-byte admission
still applies to version zero/one, including empty records. Safe managed input
validation must be specified separately from these unsafe original limits.

Every output is a native eight-byte element with stream zero and method zero:

| Wire form | Output offset | Type | Usage | Usage index |
| --- | --- | --- | --- | --- |
| Compact DWORD | bits 24..31, zero-extended to UInt16 | bits 16..23 | bits 0..7 | bits 8..15 |
| Expanded three DWORDs | word 0 low 16 bits | word 1 low byte | word 2 low byte | word 2 bits 16..23 |

The [declaration cache wrapper](../../evidence/native/functions/0061B090_VertexFormatCache_GetOrCreate.asm) ([annotated pseudocode](../../evidence/native/functions/0061B090_VertexFormatCache_GetOrCreate.c)) receives that projected array
and count. Cache hits retain and return an existing declaration. A miss allocates
and invokes the separately reviewed native declaration builder, which derives
stride from maximum element offset plus type size. The resource's serialized
stride is not substituted. The complete hash/comparator, cache retirement and
thread guarantees are not established by this wrapper.

The reader releases its previous declaration before attempting the new lookup or
creation. Failure has no original-state rollback guarantee. The decompiler's
apparent byte masking of input parameter slots in the cache wrapper is compiler
scratch reuse after the actual pointer/count were copied to locals; the pointer
passed to creation is not masked.

## MLOD admission, record ends and reference lookup

The [MLOD callback](../../evidence/native/functions/006DA8D0_ModelLodResource_LoadCallback.asm) ([annotated pseudocode](../../evidence/native/functions/006DA8D0_ModelLodResource_LoadCallback.c)) is the corresponding 27-byte stdcall-four
adapter. The [MLOD reader](../../evidence/native/functions/006D9F30_ModelLodResource_ReadDrawables.asm) ([annotated pseudocode](../../evidence/native/functions/006D9F30_ModelLodResource_ReadDrawables.c)) requires at least 12 bytes, optionally
swaps complete DWORDs, checks magic `0x444f4c4d`, and admits unsigned versions
1 through `0x2ff`. The [drawable allocator](../../evidence/native/functions/006DA990_ModelLodResource_AllocateDrawables.asm) ([annotated pseudocode](../../evidence/native/functions/006DA990_ModelLodResource_AllocateDrawables.c)) destroys previous
drawables before allocating the requested table and render objects. Its count
multiplication saturates overflow to `0xffffffff`; this is not a practical count
cap or transactional allocation contract.

For version at least `0x200`, a mesh begins with byte length; its endpoint is
`address immediately after length + length`. The unsigned remaining-length test
rejects an endpoint beyond the resource, but does not individually admit every
fixed, state or palette field. End-relative metadata is the final DWORD before
`0x203`, and the fifth-last DWORD from `0x203`. Parsing eventually adopts the
record endpoint, without requiring exact resource EOF. A short/overlapping record
can still reach unchecked reads. Existing owner state may be partially changed.

The [RCOL block resolver](../../evidence/native/functions/00726630_RcolContext_ResolveOneBasedBlock.asm) ([annotated pseudocode](../../evidence/native/functions/00726630_RcolContext_ResolveOneBasedBlock.c)) uses a four-bit family and a
one-based 28-bit ordinal. Families above three reject. Unsigned `ordinal - 1`
comparison rejects ordinal zero and out-of-range entries. An odd cached word
triggers lazy resolution; family one adds the family-zero count. Failure returns
null and success rereads the cached pointer. This leaf supplies neither
same-package group fallback nor universal typed-block validation.

MLOD's VRTF reference at fixed mesh byte offset `+8` has two distinct cases:

- A nonzero reference that resolves to null fails the reader.
- Only an authored zero reference selects two preinitialized declaration/buffer
  variants, chosen by mesh flag `0x800`. Their complete declaration producer and
  shader semantics remain unexpanded.

Thus a default exists, but treating every unresolved/wrong-type declaration as
an authored absent reference is not established original behavior.

## Buffer binding and base ranges

The ordinary resource path retains a declaration through
[declaration assignment](../../evidence/native/functions/0068EF70_RenderObject_SetVertexDeclaration.asm) ([annotated pseudocode](../../evidence/native/functions/0068EF70_RenderObject_SetVertexDeclaration.c)), vertex buffers and authored byte
offsets through [stream assignment](../../evidence/native/functions/0068EFD0_RenderObject_SetVertexStream.asm) ([annotated pseudocode](../../evidence/native/functions/0068EFD0_RenderObject_SetVertexStream.c)), and an index buffer
through [index assignment](../../evidence/native/functions/0068F020_RenderObject_SetIndexBuffer.asm) ([annotated pseudocode](../../evidence/native/functions/0068F020_RenderObject_SetIndexBuffer.c)). These retain the incoming reference
before releasing the previous one. They do not establish thread safety, ordinal
bounds or immutable payload lifetime. Stream byte offset and signed base vertex
are distinct inputs.

The [base-range setter](../../evidence/native/functions/0068F050_RenderObject_SetBaseDrawRange.asm) ([annotated pseudocode](../../evidence/native/functions/0068F050_RenderObject_SetBaseDrawRange.c)) copies the following six original
words unchanged into the render object:

| Fixed mesh offset | Meaning / width | Render-object offset |
| --- | --- | --- |
| 0x14 low byte | Primitive enum, zero-extended | 0x38 |
| 0x1c | Signed base vertex, original bit pattern | 0x3c |
| 0x20 | UInt32 start index | 0x40 |
| 0x24 | UInt32 minimum vertex index | 0x44 |
| 0x28 | UInt32 vertex count | 0x48 |
| 0x2c | UInt32 primitive count | 0x4c |

No candidate index rebasing, actual-position min/max remapping or inferred range
repair occurs in this reviewed ordinary binding path. This does not establish
original vertex payload decoding. The software-buffer fallback also has its own
upload count behavior; the original instruction passes the saved vertex-buffer
byte count to the index upload call. Its consequences are not tested or silently
corrected here.

## State records and scale/offset material

From version `0x202`, the reader consumes a count and five raw DWORDs per state.
The [state allocator](../../evidence/native/functions/0068F080_RenderObject_AllocateGeometryStates.asm) ([annotated pseudocode](../../evidence/native/functions/0068F080_RenderObject_AllocateGeometryStates.c)) frees the old allocation before replacing
it and saturates count-times-20 overflow. The MLOD caller ignores its success
result. The [state copy setter](../../evidence/native/functions/0068F0F0_RenderObject_CopyGeometryState.asm) ([annotated pseudocode](../../evidence/native/functions/0068F0F0_RenderObject_CopyGeometryState.c)) checks a nonnull table and a
signed upper bound, without rejecting negative indices. Original sequential
serialized-loop calls are distinct from claiming safe arbitrary public indexing.
The earlier draw guide defines the five-field state layout and selection.

Before version `0x100`, the reader builds an offset/scale material containing
`posScale` and `uvScale` as exact binary32 float4 ones, and `posOffset` and
`uvOffset` as zeros. Their original [constant bytes](model-resource-constants.tsv)
are retained. Newer versions instead consume an explicit trailing material
reference and pass the result through the
[offset/scale material setter](../../evidence/native/functions/0068F140_RenderObject_SetOffsetScaleMaterial.asm) ([annotated pseudocode](../../evidence/native/functions/0068F140_RenderObject_SetOffsetScaleMaterial.c)). The setter has parameter-owner
callbacks whose complete behavior remains open; its detach-helper argument is
actually derived from the incoming pointer, as preserved in the annotated C.

The [context ordinal setter](../../evidence/native/functions/006DAC00_ModelLodResource_SetContextOrdinal.asm) ([annotated pseudocode](../../evidence/native/functions/006DAC00_ModelLodResource_SetContextOrdinal.c)) stores only UInt16 at owner
`+0x74`. Its caller zero-extends the context word then subtracts one in DX,
wrapping zero to `0xffff`. Other material-context calls load a separate DWORD;
these cannot be described as one signed-32 conversion.

Local `GStack_140` in the actual C overlays state-copy storage and a material
dictionary in different lifetimes. That decompiler type propagation does not
make the dictionary a geometry-state record. Packed positions, UV scale consumers,
palette ordinal meaning, missing weights, material precedence, LOD policy and
visible rendering still need their actual producers and shader consumers.
