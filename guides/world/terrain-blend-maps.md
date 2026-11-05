# Sparse terrain blend-map decoding

## Scope and entry points

Static original PC 1.67 instructions establish these selected readers, memory
representations and the TerrainData caller. Names are analyst names and C exports
are actual annotated Ghidra output. No terrain, editor, renderer or malformed-input
test was executed. The stored tile decoder is not a writer.

| Responsibility | Original evidence |
| --- | --- |
| Version and byte order | [00C20390 ASM](../../evidence/native/functions/00C20390_TerrainBlend_ReadVersionAndByteOrder.asm) ([pseudocode](../../evidence/native/functions/00C20390_TerrainBlend_ReadVersionAndByteOrder.c)) |
| Dimension initialization | [00C22250 ASM](../../evidence/native/functions/00C22250_TerrainBlend_InitializeDimensions.asm) ([pseudocode](../../evidence/native/functions/00C22250_TerrainBlend_InitializeDimensions.c)) |
| Layer append semantics | [00C21E20 ASM](../../evidence/native/functions/00C21E20_TerrainBlend_AppendLayersThroughIndex.asm) ([pseudocode](../../evidence/native/functions/00C21E20_TerrainBlend_AppendLayersThroughIndex.c)) |
| Tagged tile materialization | [00C20530 ASM](../../evidence/native/functions/00C20530_TerrainBlendLayer_GetOrMaterializeTile.asm) ([pseudocode](../../evidence/native/functions/00C20530_TerrainBlendLayer_GetOrMaterializeTile.c)) |
| Encoded tile replacement | [00C20590 ASM](../../evidence/native/functions/00C20590_TerrainBlendLayer_ReplaceEncodedTile.asm) ([pseudocode](../../evidence/native/functions/00C20590_TerrainBlendLayer_ReplaceEncodedTile.c)) |
| Stored tile decoder | [00C205E0 ASM](../../evidence/native/functions/00C205E0_TerrainBlend_DecodeStoredTile.asm) ([pseudocode](../../evidence/native/functions/00C205E0_TerrainBlend_DecodeStoredTile.c)) |
| Layer chunk reader | [00C222B0 ASM](../../evidence/native/functions/00C222B0_TerrainBlend_ReadLayerChunks.asm) ([pseudocode](../../evidence/native/functions/00C222B0_TerrainBlend_ReadLayerChunks.c)) |
| Terrain resource producer | [00C28810 ASM](../../evidence/native/functions/00C28810_TerrainData_LoadBlendMap.asm) ([pseudocode](../../evidence/native/functions/00C28810_TerrainData_LoadBlendMap.c)) |
| Reader UInt32 wrapper | [005684B0 ASM](../../evidence/native/functions/005684B0_StreamReader_ReadUInt32Into.asm) ([pseudocode](../../evidence/native/functions/005684B0_StreamReader_ReadUInt32Into.c)) |
| Reader byte wrapper | [0057EAF0 ASM](../../evidence/native/functions/0057EAF0_StreamReader_ReadByteInto.asm) ([pseudocode](../../evidence/native/functions/0057EAF0_StreamReader_ReadByteInto.c)) |
| Reader raw-bytes wrapper | [005BD2C0 ASM](../../evidence/native/functions/005BD2C0_StreamReader_ReadBytesInto.asm) ([pseudocode](../../evidence/native/functions/005BD2C0_StreamReader_ReadBytesInto.c)) |
| Exact raw-byte stream read | [004DD8B0 ASM](../../evidence/native/functions/004DD8B0_Stream_ReadExactBytes.asm) ([pseudocode](../../evidence/native/functions/004DD8B0_Stream_ReadExactBytes.c)) |

## Version, endian and header

The version helper has **three stdcall stack arguments**, stream, version output
and byte-order output, with `RET 0xC`. Its stream virtual call receives ECX plus
two stack arguments. Earlier two-argument/call-cleanup inference falsely rendered
a vtable overwrite; the actual stores target the third output pointer.

Exactly four bytes must be read. Low 16 bits `0xFFA5` select a DWORD swap and
byte-order value zero. Otherwise high 16 bits must be `0xA5FF` and order is one.
Unsigned normalized versions `0xA5FF0100..0xA5FF03FF` are admitted: the upper
comparison masks the low byte. This is not an exact-version-0300 gate.
Order one leaves UInt32 words little-endian; other values swap them. Byte reads
remain raw. The sticky reader status is ANDed with physical read success.

The layer reader then consumes five UInt32 words: width, height, stored block
width, stored block height and an extra word not subsequently used in this leaf.
Blocks must be 16-by-16 or equal dimensions at least 16. There is no explicit
multiple-of-16 or power-of-two test. This reader has no further version dispatch;
the alternate caller at `00C22680` has separate version-dependent behavior and
is outside this contract.

Internal tile columns/rows are `((dimension-1) >> 4)+1` using unsigned 32-bit
operations; total is the low 32-bit product. Zero dimensions and overflow do not
have local rejection. The original arithmetic must not be silently widened into
an admission guarantee. Larger stored blocks allocate `side*side` scratch bytes
and use `internalColumns / (side >> 4)` coarse columns.

## Chunks, layers and tile inputs

An endian-aware UInt32 chunk count follows. Each chunk begins with UInt32 length.
The stream position immediately **after that length** plus `(length+3)&~3` is its
absolute end. Then come UInt32 tile count and one layer byte. Each tile has two
raw index bytes, high first, followed by one kind byte and its payload. Index
byte order is independent of multibyte header order.

Layer admission always appends at least one map. It continues until its newly
appended zero-based index reaches the originally requested byte, rewriting that
byte with the actual new index. An already-existing requested index still adds
a map; it is not a dictionary lookup or replacement. Entry count above 255 is
rejected, while count 255 can append its last byte-addressable index. Each map
uses the owner's internal tile dimensions.

Kind 0 contains byte intensities; kind 1 contains a single uniform byte. Other
kinds fail the tile helper. For ordinary 16-by-16 stored blocks, kind 0 reads
256 raw bytes into materialized storage and kind 1 replaces the encoded tile.
Admitted sides 17..31 also take this fixed-256-byte branch. No bitplane
expansion, layer-name ranking, grass inference or blur occurs here.

For stored side `S` with `S>>4 > 1`, let `N=S>>4`. Coarse index quotient/remainder locate
the coarse row/column. Subtile `(x,y)` maps to:

```text
fineX = coarseColumn*N + x
fineY = coarseRow*N + y
slot  = fineY*internalColumns + fineX
```

Kind 0 reads `S*S` bytes and copies each 16-by-16 subtile in row order, advancing
source rows by S. A uniform subtile is compacted to its byte; others retain 256
allocated bytes. Kind 1 fills all `N*N` subtile slots with its one byte. Complete
geometric axis mapping, blend normalization and shader sampling are separate
consumers; row/column indexing alone does not establish them.

## Memory, errors and resource ownership

Each native tile slot is a DWORD. Values 0..255 represent a uniform byte,
including zero. Larger values are treated as pointers to allocated 256-byte
tiles. Materialization expands a tag into repeated bytes. Replacement frees an
old allocation before storing the new encoded value. This original compact
representation is not a requirement to reproduce tagged pointers in managed code.

Allocation and dimension/offset overflow containment are incomplete in these
leaves. Chunk lengths do not create bounded substreams. An invalid tile index,
unsupported kind or rejected layer jumps to the aligned chunk end. Those semantic
rejections can leave sticky read status true, allowing final success after
skipping the remainder. Physical read failure returns false; seek success is
not checked here. Exact EOF and transactional rollback are not established.

TerrainData selects type `0x3D8632D0`, instance one, group zero, allocates an
`0x88` owner and invokes the layer reader for a present resource. Missing input
initializes dimensions from TerrainData's width/height fields. It does not infer
colors or paint from textures/objects at this point. Owner lifetime is separate
from the [heightmap allocation](heightmap-data-lifecycle.md).

## Remaining consumers

The writer, alternate versioned reader, complete malformed/allocation safety,
layer list identity, regional/lot paint variants, sampled filtering, color-map
scale and final shader weight/UV interpretation remain open. Successful static
reader recovery is not executed world-load or visual equivalence.
