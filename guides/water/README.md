# PC 1.67 Sea resources and WaterGeometry

This guide follows the original global Sea reader, writer, regeneration path,
and shared WaterGeometry serializer. The reference is the shipped x86 PC 1.67
`TS3W.exe`, image base `0x00400000`, SHA-256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
All addresses below are virtual addresses. The findings are static observations
from that executable, supplemented by offline resource inspection and source
probes. They do not claim a comparative run of the retail game.

Return to the [proof index](../../references/retained-proof-overview.md), the
[native code index](../../evidence/native/code-index.tsv), or the separate
[CAW Sea and pond guide](../../caw-proof/guides/water/README.md).
The [camera water supplement](../camera/height-terrain-water-supplement.md#regional-water)
covers regional-water height selection and wet-cell lookup.

## Entry points and evidence

| Function VA | Reviewed role | Evidence |
| --- | --- | --- |
| `0x00C0A9D0` | Global Sea resource reader | [ASM](../../evidence/native/functions/00C0A9D0_FUN_00c0a9d0.asm) ([pseudocode](../../evidence/native/functions/00C0A9D0_FUN_00c0a9d0.c)) |
| `0x00C0AB10` | Global Sea resource writer | [ASM](../../evidence/native/functions/00C0AB10_FUN_00c0ab10.asm) ([pseudocode](../../evidence/native/functions/00C0AB10_FUN_00c0ab10.c)) |
| `0x00C0CB80` | One Sea object's geometry reader | [ASM](../../evidence/native/functions/00C0CB80_FUN_00c0cb80.asm) ([pseudocode](../../evidence/native/functions/00C0CB80_FUN_00c0cb80.c)) |
| `0x00C0CEE0` | One Sea object's writer and geometry generation | [ASM](../../evidence/native/functions/00C0CEE0_FUN_00c0cee0.asm) ([pseudocode](../../evidence/native/functions/00C0CEE0_FUN_00c0cee0.c)) |
| `0x00C0C680` | Sea object initialization/regeneration dispatch | [ASM](../../evidence/native/functions/00C0C680_FUN_00c0c680.asm) ([pseudocode](../../evidence/native/functions/00C0C680_FUN_00c0c680.c)) |
| `0x00C0D950` | Sea geometry initialization/regeneration | [ASM](../../evidence/native/functions/00C0D950_FUN_00c0d950.asm) ([pseudocode](../../evidence/native/functions/00C0D950_FUN_00c0d950.c)) |
| `0x00B611B0` | WaterGeometry generator setup, bounds and grid flags | [ASM](../../evidence/native/functions/00B611B0_FUN_00b611b0.asm) ([pseudocode](../../evidence/native/functions/00B611B0_FUN_00b611b0.c)) |
| `0x00B605A0` | Generate geometry, optionally upload and serialize | [ASM](../../evidence/native/functions/00B605A0_RE_WaterGeometry_GenerateAndSerialize.asm) ([pseudocode](../../evidence/native/functions/00B605A0_RE_WaterGeometry_GenerateAndSerialize.c)) |
| `0x00B60F00` | Shared WaterGeometry reader | [ASM](../../evidence/native/functions/00B60F00_RE_WaterGeometry_Read.asm) ([pseudocode](../../evidence/native/functions/00B60F00_RE_WaterGeometry_Read.c)) |
| `0x00B5CBA0` | Shared WaterGeometry writer | [ASM](../../evidence/native/functions/00B5CBA0_FUN_00b5cba0.asm) ([pseudocode](../../evidence/native/functions/00B5CBA0_FUN_00b5cba0.c)) |
| `0x00B60750` | Read, sort and bound packed triangle vertices | [ASM](../../evidence/native/functions/00B60750_FUN_00b60750.asm) ([pseudocode](../../evidence/native/functions/00B60750_FUN_00b60750.c)) |
| `0x00B5F0C0` | Generate one packed position/depth/normal vertex | [ASM](../../evidence/native/functions/00B5F0C0_FUN_00b5f0c0.asm) ([pseudocode](../../evidence/native/functions/00B5F0C0_FUN_00b5f0c0.c)) |

Disassembly controls branch, signedness, field width and conversion claims.
Decompiler argument names, inferred types and return values are supporting
interpretation. An export window can include padding or a following routine;
its stop address is not an asserted control-flow boundary.

The [reader pseudocode](../../evidence/native/functions/00B60F00_RE_WaterGeometry_Read.c) and
[generation/serialization pseudocode](../../evidence/native/functions/00B605A0_RE_WaterGeometry_GenerateAndSerialize.c)
contain function labels, variable names and instruction comments exported
from Ghidra. The annotation texts are embedded in the `.c` exports. Names
prefixed `RE_` are analyst labels, not recovered original symbols. The reader
comments identify the decompiler's reuse of argument storage for geometry
version and root-row count; its pointer casts must not be interpreted as the
on-disk types. Success is established in AL, not all of EAX. The generator
comments distinguish generation, optional vertex publication, serialization
of an empty list, and allocation cleanup. The direct Sea callers use the same
analyst labels.

## Two separate version fields

The outer Sea resource and its embedded WaterGeometry have different version
fields. Treating both as one versioned triangle blob misses the current reader
and writer contract.

`0x00C0A9D0` selects global Sea resource type `0xB074ACE6`, reads a 16-bit
outer version and a 32-bit float Sea level. For outer versions at most 3, it
does **not** consume the remaining authored WaterGeometry. It marks the
existing Sea objects for regeneration. For outer versions at least 4, it reads
a 16-bit Sea-object count and dispatches to `0x00C0CB80` over the existing
Sea-object collection. The count is therefore not a vertex count and this
path is not a general allocation of arbitrary new Sea objects from the file.
The current branch also marks each dispatched object dirty after its read;
the observed outer reader does not establish permanent retention of loaded
geometry without subsequent regeneration.

The current writer `0x00C0AB10` emits outer version **4**, the Sea level, a
16-bit object count, then one `0x00C0CEE0` record for each object. The object
reader/writer exchanges four 32-bit bounds components, three further 32-bit
fields and one byte before the shared WaterGeometry: **29 bytes per object
before its geometry header**. Do not invent semantic names for every field
from a decompiler's temporary-variable labels.

The resulting framing is:

| Layer | Persisted fields |
| --- | --- |
| Outer Sea version 4 | `u16 version`, `f32 SeaLevel`, `u16 objectCount` |
| Each object | 16 bytes of bounds, three 32-bit fields, one byte |
| Each object's WaterGeometry | `i32 geometryVersion`, `i32 vertexCount`, vertices, optional query grid |

For outer version 4 and later, `0x00C0CB80` reads the object fields before
calling `0x00B60F00` at `0x00C0CC1F`. The shared reader is also reusable
outside this outer Sea wrapper. A direct call to the shared reader does not
prove that the global reader consumes a legacy outer-version-3 payload.

The regeneration path is visible separately: `0x00C0C680` iterates Sea
objects and invokes `0x00C0D950`, which prepares the generator through
`0x00B611B0`. `0x00B605A0` generates the vertex list and can upload and/or
serialize it. Thus compatibility with legacy worlds in PC 1.67 is not proof
that PC 1.67 renders their stored legacy triangle list unchanged.

## Shared WaterGeometry grammar

`0x00B60F00` reads a signed 32-bit geometry version and rejects versions below
2. The observed reader has no separate upper-version rejection: versions at
least 3 take the query-grid branch. This establishes this executable's branch
behavior, not an assurance that every hypothetical future format is compatible.

The next field is a 32-bit vertex count. Zero bypasses the vertex reader and
can succeed; a positive count is checked for divisibility by three by
`0x00B60750`. No claim that negative counts are valid is made here.
The vertex stream is an unindexed triangle list. Each vertex exchanges four
16-bit values and three bytes: **11 persisted bytes**, versus the 12-byte
in-memory stride. The last in-memory padding byte is not serialized.

For geometry version 2, no query-grid fields follow. For version 3 or later,
the fields following vertices are:

1. A 32-bit cell count, followed by that many 39-byte cells.
2. A 32-bit root-row count, followed by that many root rows.
3. Each root row contains a 32-bit element count and that many signed 32-bit
   cell indices.

A cell has four float bounds, three byte flags, one 32-bit value and four
signed 32-bit child indices. The independent
[cell reader instructions](../camera/height-terrain-water/native-asm/00b5c120.asm.txt) ([pseudocode](../camera/height-terrain-water/pseudocode/00b5c120.c.txt))
and [cell writer instructions](../camera/height-terrain-water/native-asm/00b5c050.asm.txt) ([pseudocode](../camera/height-terrain-water/pseudocode/00b5c050.c.txt))
show the **39-byte serialized size** despite the 40-byte in-memory stride.

`0x00B5CBA0` always writes geometry version **3**. Its grid-disabled branch
writes `cellCount=0` and `rootRowCount=0`: the eight zero bytes after vertices
are these two fields, not unexplained padding. Its grid-enabled branch writes
the complete cell and root-row arrays. `0x00B611B0` stores the persistence
choice at generator `+0xA1`; this is separate from constructing a temporary
spatial subdivision for geometry generation.

The ordinary global Sea writer path disables persistence of the query grid.
Consequently eight zero bytes are expected on that path. Nonzero cells and
root rows are supported by the **shared** grammar; they are not established
as an ordinary shipped global Sea requirement. Regional pond water uses this
shared machinery and has its own resource ownership and outer framing.

`0x00B605A0` stores the generated vertex count even when it is zero and can
call the writer for an empty list. The shared reader and writer therefore
support empty geometry; a blanket positive-count requirement is an additional
restriction imposed by a replacement implementation.

## Packed position, depth and normal lanes

The four position shorts are signed when interpreted by the native vertex
consumer. `0x00B60750` bins triangle vertices using signed integer `X/W` and
`Z/W` at `0x00B608AD..0x00B608CB`. It computes their spatial bounds using
signed-to-float conversion and binary32 division at
`0x00B60955..0x00B6098B`. **W is a homogeneous denominator**, not the whole
number part of a terrain height.

The generator at `0x00B5F0C0` writes W=4 at `0x00B5F283`. In this producer,
the coordinate conversion uses a half-unit bias, floor-like integer selection,
then multiplication by four. Relevant constants are `0x00F9B5B4 = 0.5` and
`0x00FB3F7C = 4`. This one generator path must not be generalized to every
historical vertex: authored legacy geometry can include midpoint coordinates
not explained by that quantization step alone.

The **third short** is produced from water depth. The generator calls the
world-ground query `0x00C6A090` at `0x00B5F1BE`, subtracts its returned ground
height from the plane level, multiplies by 1000, clamps to
`[-32700,32700]`, truncates with `CVTTSS2SI`, and writes the short at
`0x00B5F27E`. The constants are `0x00F99974 = 1000`,
`0x0106F0DC = -32700`, and `0x0106F0D8 = 32700`. This establishes the
packed-depth producer; it does not reconstruct a complete shader or prove
that this lane is a world-Y coordinate.

The generator obtains a normal through `0x00C6A9D0` and quantizes each
component as `truncate(n * 127 + 128)` at `0x00B5F28F..0x00B5F2F2`.
Constants `0x00FE47F0 = 127` and `0x00FCD2C0 = 128` are visible in that
instruction stream. The normal sampler's complete neighborhood rules and the
shader's subsequent normal expansion are outside this guide. Comparing the
quantizer for the same supplied normal does not assume those other rules.
The [constant manifest](constants.json) records the original little-endian
bytes and binary32 values used for these arithmetic claims.

## Offline resource observations

The global Sea resources inspected from the installed original worlds have
outer version 3, with these directly observed legacy geometry values:

| World | Embedded geometry version | Vertex count | Observed W values |
| --- | --- | --- |
| Sunset Valley | 2 | 21,612 | 4 for every vertex |
| Twinbrook | 3 | 59,892 | 4 for every vertex |
| Bridgeport | 3 | 32,514 | 4 for every vertex |

Their first packed vertex is `(-14942,-14942,32700,4)` with normal bytes
`(128,255,128)`. Homogeneous X/Z expansion yields `(-3735.5,-3735.5)`.
These are offline data and arithmetic observations. They do not imply that
PC 1.67's global reader loads those outer-version-3 triangles: that reader's
legacy branch regenerates geometry as described above. Full packages and
full extracted resource payloads are not included in this proof.
The [observation manifest](sea-observations.json) records resource keys,
payload hashes and sizes, headers, counts, W histograms and the first vertex.

## Coverage limits

This guide establishes selected reader/writer branches, framing, packed-lane
producers and consumer divisions. It does not claim complete shoreline
tessellation parity, every malformed-input outcome, complete normal sampling
or shader reconstruction, arbitrary future-version compatibility, an editor
save/load test in EA CAW, or gameplay execution in the retail EXE. The CAW
1.22.10 DLL has its own addresses and evidence; TS3W function addresses must
not be transplanted into that DLL's contract. 


## Sea INI WaterDepthFactor admission

The selected [original instruction/data words](../../evidence/native/data/sea-ini-selected-words.json)
join explicit /TS3W.exe reads to the independently checked original PE. Complete
read-only owned Listings contain320 instructions in C0AC00 and41 in C0A890;
no complete canonical C/ASM pair for these two entries is supplied here.

C0AC19 supplies the UTF16 name Sea.ini at106EDC8 to7D0370. A failed AL result
branches to C0B035 and skips the settings-read block. On the successful-open
path, C0AFCC loads binary32 from FB3F7C, whose bytes00008040 represent exactly4.
C0AFD8 supplies owner+29C as the output pointer and C0AFE3 supplies the UTF16 key
WaterDepthFactor at106EB34 to C0A890. This is the fallback value for that read,
not evidence that a missing whole Sea.ini initializes every owner to4.

C0A890 calls the supplied query interface's+2C slot with the UTF16 section
MiscSeaParams at106EB18 and the supplied key. A signed negative result selects
the supplied fallback and stores it through the output pointer. A nonnegative
result supplies the returned text and a zero argument to the conversion import
at F964E0, then stores the x87 result as binary32. It then releases its temporary
text buffer when its stored length/ownership condition requires it. There is no
separate explicit finite-value or positive-value guard in this inspected helper.
That does not decode the conversion import's own acceptance/error contract.

Remaining questions are concrete: which constructor/prior writer initializes or
retains owner+29C if Sea.ini cannot open; which provider/precedence plan supplies
the named file; what does the text conversion accept for malformed, suffix or
nonfinite inputs; and which actual depth producer consumes+29C? Full answers need
the original constructor/callers,7D0370 provider, query/conversion target and field
readers. The successful key-read default alone does not establish a host's
missing-file fallback, strict numeric parser or complete water tessellation and
shader behavior. No game or pixel comparison is asserted.
