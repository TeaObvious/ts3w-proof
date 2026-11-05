# Road source mesh and material pass production

The original PC 1.67 executable SHA256 is
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Analyst names describe the observed operations; they are not recovered symbols.
Stored signatures remain inferred. The entry PLATEs distinguish physical ABI,
complete observed bodies and unexpanded children.

| Entry | Complete original evidence | Physical boundary |
| --- | --- | --- |
| `00B7D200` — `RoadNetwork_DrawQuadClippedMeshTriangles` | [ASM](../../evidence/native/functions/00B7D200_RoadNetwork_DrawQuadClippedMeshTriangles.asm) ([C](../../evidence/native/functions/00B7D200_RoadNetwork_DrawQuadClippedMeshTriangles.c)) | 799 saved Listing instructions, 3,140 bytes; ECX owner, thirteen stack words, RET0x34. |
| `00B86800` — `RoadNetwork_DrawMaterialPassSets` | [ASM](../../evidence/native/functions/00B86800_RoadNetwork_DrawMaterialPassSets.asm) ([C](../../evidence/native/functions/00B86800_RoadNetwork_DrawMaterialPassSets.c)) | 441 saved Listing instructions, 1,502 owned bytes in a 1,509-byte envelope; ECX owner, four stack words, RET0x10. |

All 1,240 actual saved Instruction starts, lengths, bytes and flow tuples were
retained, compared with actual exported Listing text and authenticated against
4,642 owned pristine PE bytes. The second body excludes seven alignment bytes
at `00B86C89..00B86C8F`, retained explicitly as unowned bytes. The combined
function envelopes contain 4,649 bytes. This is saved Ghidra Listing evidence;
no independent decoder output or repaired function definition is claimed.
Actual annotated Ghidra C is retained verbatim, including its warning/comment
framing. [Necessary original data](../../evidence/native/road-source-mesh-material-data.tsv)
retains nineteen PE-backed ranges totaling 205 bytes.

## Quad-clipped source mesh

`00B7D200` saves physical ECX as the owner. Its stored return does not establish
a Boolean success result. C28910(owner+0xC, context index) selects descriptor
source pointer+0x30 or+0x34 by a byte argument. A null selected source omits
output. Four supplied SIMD vectors use DIVPS by the sum of squared first-two
components; that operation is not unit-length normalization.

Bounds from the supplied quad, adjusted by descriptor+0x10/+0x14, feed 680D90.
Returned UInt16 triples select vertices through 67DF10. Descriptor+0x20 is
added, XZ coordinates feed B76940 classification and a byte-selected B76AC0
height/normal child may replace vertex data. Otherwise the normal is
(0,1,0,0). These child algorithms and the provider schema remain unexpanded.

The cross product uses RSQRTPS and two refinement steps. Comparing its absolute
selected component with binary32(0.1) skips when the threshold exceeds that
component. An all-zero classification OR takes the fast route; a nonzero
three-way AND rejects. Mixed classification invokes B7CCF0 on three 0x40-byte
records and requires at least three output records before fan processing.

A UInt16 hash translation and B78710 vertex child provide word-sized indices.
The sentinel comparison tests raw DWORD0xFFFFFFFF, not floating NaN equality.
Fans retain first/previous/current order. Nonempty output submits zero-extended
UInt16 triplets through 6D48C0. Hash/vector/polygon cleanup is visible. Source
query, classifier, height, clipper, vertex/UV packing, allocator and rendering
completion/lifetime internals remain child boundaries.

## Material preparation and ordered pass sets

`00B86800` resolves normalMap and terrainLightMap through descriptor/key/provider
lookups. Each independently uses a nonzero-handle branch when the byte argument
is zero, or passes four key words plus literal zero through 799A30. posScale
uses binary32(1/64) and owner+0x18 multiplied by binary32(2^-16). The roads,
layerOffset and hash0x209B1C8E bindings also occur; the latter vector is
(1,0,0,0).

The first loop selects0,1,2, maps4,2,3 through B75750, then dispatches
B84350/B849E0/B84C80. Its 0x250-byte sets use signed division and a full32-bit
index bound. The second loop maps1,0,5 through B75910 and dispatches
B844E0/B84B20/B84DC0. Its set count truncates to16 bits with an unsigned word
bound. The first loop physically pushes32 bits; an inferred ushort child
formal does not establish truncation in that loop.

B86CC3 compares the selector byte itself against5, not the mapped1/0/5 value.
The shown loop selects0..2. The conditional .01 operand therefore does not
establish a third-pass lift. Material init/clone/setup/draw/cleanup order is
visible; lower providers, pass builders, render services and ownership remain
unexpanded. No native average-color fallback is established.

## Reused producer and consumer boundaries

The existing [799A30 payload append ASM](../../evidence/native/functions/00799A30_MaterialParams_AppendTextureKey.asm) ([C](../../evidence/native/functions/00799A30_MaterialParams_AppendTextureKey.c))
contains20 instructions/67 original bytes. It appends five supplied words with
kind4/count5 and RET0x18; this establishes record construction, not texture
decoding. The existing [A9D7A0 floor production ASM](../../evidence/native/functions/00A9D7A0_FloorRenderer_DrawThicknessEdges.asm) ([C](../../evidence/native/functions/00A9D7A0_FloorRenderer_DrawThicknessEdges.c))
calls6D48C0 at A9DF26/A9DF70. It corroborates a shared submission child,
without establishing that child's internal rendering or lifetime contract.
No direct Road caller was established by the selected retained catalogue
lookup; that result is bounded to this evidence, not global absence.

## Current proxy comparison

Current failed-primary/environment admission, curve/intersection snapshots,
fixed offset ribbons, junction frames, terrain sampling, UnitY normals,
category widths/lifts, UV repetition, average-color sorting and sampling clamps
remain current project policies. Original source-triangle query/clip/fan and
material passes do not establish equivalent Bézier sampling, fallback mode,
category topology or visual output. Current ordered list mutation and positive
submesh publication also do not inherit native atomicity or rendering success.
