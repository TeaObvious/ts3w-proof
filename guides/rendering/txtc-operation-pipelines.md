# Texture composite quad, submission and blend state

## Reference and evidence boundary

Original PC 1.67 TS3W.exe SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
The five paired functions below have complete stored bodies: 1,034 actual Listing
instructions, 4,003 owned bytes and 4,014 bytes in their linear envelopes. The quad
builder excludes eleven alignment bytes at `005F9015..005F901F`; those bytes remain
visible in raw disassembly. No body, prototype, type, instruction, flow or byte
repair is implied. Names and entry PLATEs are descriptive analyst annotations.
Stored C prototypes remain inferred; physical register/stack and result-width
facts below govern their interpretation. Decompiler indirect-jump warnings remain.

| Entry | Role | Physical boundary |
| --- | --- | --- |
| [005F7AB0](../../evidence/native/functions/005F7AB0_RenderDevice_SubmitGlobalQuad.c) | Global indexed quad submission | Plain RET; no explicit stack input read |
| [005F84F0](../../evidence/native/functions/005F84F0_TextureBuilder_SubmitGeometryOrGlobalQuad.c) | Selected geometry or global quad | One cdecl object word; plain RET |
| [005F87C0](../../evidence/native/functions/005F87C0_TextureBuilder_BuildQuadVertices.c) | Quad vertices and parameter publication | ECX builder, eight stack words, RET20; Boolean authority is AL |
| [005F94E0](../../evidence/native/functions/005F94E0_TextureBuilder_DrawTextureComposite.c) | Texture composite draw | ECX operation, builder pointer, RET04; full EAX status |
| [0060FFA0](../../evidence/native/functions/0060FFA0_RenderDevice_SetBlendFactorTableEntries.c) | Blend factor table lookup | ECX device, two stack words, RET08 |

The existing [0060FF90](../../evidence/native/functions/0060FF90_RenderDevice_SetAlphaBlendByte.c) alpha-enable byte setter remains
unchanged. It supplies five instructions/sixteen bytes of the six-function
comparison. Parameter/quad producers and dispatch below establish selected
original boundaries, without proving complete texture-composite rendering parity.

## Quad producer and dispatch

`005F87C0` registers `TB_QuadData`, selects a builder target record through
`builder+60 + word32(builder+70)*60`, and writes four 48-byte vertex records through
the retained global `011CF980` buffer. The index word's signed interpretation is
not inferred. The first and second rectangle pointers remain distinct; their
serialized field names and the eight flag/rotation slots are not recovered types.

The initial position endpoints and min/max rectangle corners follow their actual
branches. Original x87 sine/cosine results are stored to binary32. Full-rectangle,
fixed clip-corner, ordinary `2*x-1` / `-(2*y-1)`, target scale/offset, midpoint/origin
rotation and ratio branches remain distinct. SSE min/max, comparison and movemask
operand order is retained; a finite-input geometric description is not an
unordered/NaN equivalence proof. The final position bias subtracts `1/width` in X
and adds that same width reciprocal in Y. Width is read as signed Int32 at
`builder+8`, converted by CVTSI2SS. The comparison epsilon is binary32 `37800000`.

Each vertex includes `(x,y,0,1)`, packed-channel extraction in shifts16/8/0/24
scaled by exact binary32 `3B808081`, and four coordinates. Parameter registry
publication precedes buffer writes: UInt32 counter increment, UInt16 generation
and retained global buffer pointer. This does not establish immutable uniforms,
std140 layout, concurrent publication safety or Vulkan pixel equivalence.

`005F84F0` falls back to `005F7AB0` if object+58 is null or byte+5D is zero.
Otherwise it binds the chosen format and index/vertex buffers. Vertex count uses
UInt32 buffer+18 divided by format stride; primitive count uses UInt32 buffer+18
and unsigned division by3. No local zero-stride recovery is present. Temporary
virtual+08 calls, including the final tail jump, retain unresolved child effects.

`005F7AB0` uses retained global device/format/index/vertex buffers and submits an
indexed quad: primitive3, base/minimum0, four vertices, start0, two primitives.
The selected caller pushes/cleans one unused stack word despite this callee's
plain RET and absence of an explicit stack read. These facts do not establish
the current Vulkan six-vertex nonindexed draw or all original dispatch targets.

## Texture draw, status and state

`005F94E0` recognizes surface tags `021E9CD3` and `021E9CD5` as builder+14/+18.
The prior +3C object's virtual+08 and the selected surface's virtual+04 occur
before pointer publication. Child effects and reference-count meanings remain
unestablished. Missing source, missing `tbops` or quad AL0 returns full EAX1 before
draw. The successful path flushes and conditionally calls tagged-source virtual+08
and clears the pointer before returning EAX0. Failure paths do not promise that
same cleanup.

It publishes `DiffuseMap`, `BlitOp_MultiplyScale`, `MaskMap`, `Mask_Select` and
`Mask_Bias`. Signed Int16 values use MOVSX and exact binary32 scale `3B808081`.
Quad alias admission precedes virtual+54, state application and virtual+58 draw.
The enable bit5, source/destination low/high nibbles and low four write bits are
separate original state inputs. Unknown operation virtual targets, full original
shader equations, target/resource lifetime and eventual device admission remain
outside these complete parent bodies.

`0060FFA0` indexes DWORD table `00FE8A28` directly and forwards values to state
IDs13/14. The authenticated prefix maps indices0..10 to1..11. No local bounds or
normalization is present. Wider table extent and producer constraints remain
open. The current Vulkan default factors, enable derivation, target fallback,
resource budgets, cache capacities and snapshot policy do not follow from it.

[Necessary original data](../../evidence/native/data/txtc-operation-pipelines.tsv) retains 138 bytes:
channel scale, epsilon, the parameter-name block, eleven factor entries and the
`tbops` string. These are supporting data, not additional function pairs.

## Current reconstruction comparison

The current shared Engine pipeline family consumes canonical shader metadata,
manifest/stage admission, Vulkan modules/layouts and decoded inputs. Its ten
resource owners preserve input/target/product residency, arenas, operation and
blend variant lifetime. A selected graph and the permanent composition contract
record actual production callers and serialization/retirement order.

The original selected parameter rows and indexed quad do not prove the current
Vulkan equations, descriptor/std140 layout, six-vertex submission, same-target
snapshot behavior, normalized/default blend policy or timeline retirement.
Parent virtual callees remain unresolved. No new original class layout or type
has been created. All evidence is static; no build, target, graphics backend,
GPU/OS probe or executed rendering acceptance accompanies this publication.
