# Geometry state selection and vertex declaration construction

## Reference and scope

Selected original PC 1.67 instructions establish state selection, packet movement,
indexed submission and declaration translation. Names and structures are analyst
assignments. Actual annotated Ghidra exports retain the complete function bodies;
only the stated paths are interpreted here. No renderer, model or GPU test ran.

| Responsibility | Original evidence |
| --- | --- |
| State lookup | [0068EDE0 ASM](../../evidence/native/functions/0068EDE0_GeometryStates_FindRequestedOrFirst.asm) ([pseudocode](../../evidence/native/functions/0068EDE0_GeometryStates_FindRequestedOrFirst.c)) |
| Packet consumer and suppression | [00690260 ASM](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.asm) ([pseudocode](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.c)) |
| Packet state producer | [006F60B0 ASM](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.asm) ([pseudocode](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.c)) |
| Scene component initialization | [006F59A0 ASM](../../evidence/native/functions/006F59A0_RenderComponent_InitializeSceneModel.asm) ([pseudocode](../../evidence/native/functions/006F59A0_RenderComponent_InitializeSceneModel.c)) |
| Regular draw callback | [0068FA60 ASM](../../evidence/native/functions/0068FA60_RenderObject_SubmitSelectedGeometryRange.asm) ([pseudocode](../../evidence/native/functions/0068FA60_RenderObject_SubmitSelectedGeometryRange.c)) |
| Special draw callback | [0068FB40 ASM](../../evidence/native/functions/0068FB40_RenderObject_SubmitSpecialGeometry.asm) ([pseudocode](../../evidence/native/functions/0068FB40_RenderObject_SubmitSpecialGeometry.c)) |
| Indexed backend dispatch | [0060F7C0 ASM](../../evidence/native/functions/0060F7C0_RenderDevice_SubmitIndexedRange.asm) ([pseudocode](../../evidence/native/functions/0060F7C0_RenderDevice_SubmitIndexedRange.c)) |
| Native declaration construction | [0061A6F0 ASM](../../evidence/native/functions/0061A6F0_VertexDeclaration_CreateFromElements.asm) ([pseudocode](../../evidence/native/functions/0061A6F0_VertexDeclaration_CreateFromElements.c)) |

## Lookup, producers and suppression

The cdecl helper receives requested UInt32 hash, record pointer and signed count.
Records have five DWORDs, stride20: hash, start index, minimum vertex index, vertex
count, primitive count. Hash zero returns the first record iff the count WORD is
nonzero, even a malformed negative count. Nonzero hashes scan only signed count
above zero and return the first matching record; missing matches return null.
No input pointer/count validation is supplied by this leaf.

The scene component initializes word `+0x2A4` to zero and copies it unchanged to
packet `+0x30` in reviewed draw branches. This is separate from ordinal `+0x2B8`
and RugSort float `+0x3C`. Original MOVs establish hash-bit movement; the old
float-pointer decompiler argument incorrectly suggested a numeric conversion.
The packet consumer uses object record pointer/count `+0x50/+0x54`. A selected
record's zero primitive count (`+0x10`) suppresses work before technique/material
selection. A missing record falls back through null context to base ranges.
The later state setters and their managed callers remain open.

## Callback and backend range mapping

Technique context contains render object, selected-state pointer and packet.
The regular indexed callback takes state `+4/+8/+C/+10` as start index, minimum
vertex index, vertex count and primitive count. Without a state it uses object
`+0x40/+0x44/+0x48/+0x4C`. Primitive type `+0x38` and signed base-vertex offset
`+0x3C` remain object values. Two streams use declaration-derived strides.

The backend wrapper increments its draw counter, maps the internal primitive
through `00FE87FC` and calls native device slot `+0x148`, preserving the six-word
order. The [documented indexed API](https://learn.microsoft.com/en-us/windows/win32/api/d3d9/nf-d3d9-idirect3ddevice9-drawindexedprimitive)
identifies the base as signed INT, with unsigned minimum/count/start/primitive
words. Original pushes and `RET0x18` establish this forwarding ABI. No min/max
estimation or candidate rebasing occurs here; source buffer/base construction is
still separate. The regular callback ignores the returned HRESULT.

Nonindexed draws use base fields. The special callback has identical owner-based
commands on both sides of its selected-pointer test, without range substitution.
Earlier packet-level zero-count suppression still applies. Do not extrapolate
the indexed override into every path. Borrowed state/packet lifetime across
technique callbacks and full renderer retirement remain unproven.

## Native declaration and original tables

The declaration builder takes signed count and eight-byte native descriptors:
U16 stream, U16 offset, byte type, method, usage and usage index. It copies these
records and translates type/method/usage via original tables at
`00FEA570/00FEA5B4/00FEA5B8`, preserving usage index. Per-stream stride is the
maximum unsigned offset plus byte size from `00FEA5D4[type]`. The
[original adjacent table entries](vertex-element-tables.tsv) retain exact values;
their retained spans do not establish enum admission bounds.

The output terminator is stream `0xFF`, type `0x11`, other fields zero.
Device slot `+0x158` takes declaration elements and output-pointer address;
HRESULT failure releases native declaration and copied storage. The
[declaration structure](https://learn.microsoft.com/en-us/windows/win32/direct3d9/d3dvertexelement9)
and [creation ABI](https://learn.microsoft.com/en-us/windows/win32/api/d3d9/nf-d3d9-idirect3ddevice9-createvertexdeclaration)
provide the external boundary. Dynamic alloca retains stack-space aliases in
actual C; original MOVs, widths and pushes take priority over those artifacts.
The return is AL Boolean, not inferred high-register bits.

This function does not decode vertex values or construct a position scale/bias,
implicit bone weights or adjusted indices. Those require actual buffer/resource
producers and shader consumers. Complete VRTF/MLOD serialized admission,
malformed enum/count safety, material/MTST policy, glass/specular heuristics,
LOD selection and executed output equivalence remain open. Existing annotations
for other full-function pose/material paths are preserved, not expanded into
newly verified claims by this localized review.

The [resource producer contract](model-resource-wire-and-binding.md) now follows VRTF element projection and MLOD reference/buffer/base-range/state production. Packed vertex and shader decoding remain separate open contracts.

The [VisualState reader and command chain](visual-state-geometry-commands.md) follows a selected versioned input and event producer through full GUID/state command transport to SceneModel+2A4. This does not establish resident-versus-saved selection precedence or complete world-loading order.
