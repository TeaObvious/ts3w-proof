# CAS material parameter production and authored sampler examples

Reference: original PC 1.67 TS3W.exe and matching Shaders_Win32.precomp,
identified centrally in the proof README. Names are analyst assignments.
The complete selected functions were checked against pristine mapped bytes;
these are static facts, not observed game execution.

## Record traversal and complete material producer

[Dispatcher ASM](../../evidence/native/functions/005D30D0_CasModelBuilder_BuildMissingMaterials.asm)
([pseudocode](../../evidence/native/functions/005D30D0_CasModelBuilder_BuildMissingMaterials.c)) uses ECX as builder
and two stack DWORDs, RET 08. It captures begin/end from +134/+138, visits
0xD0-byte records, builds a material only for null record+70, and sets byte +74
for every visited record afterward, including a preexisting material.

[Material producer ASM](../../evidence/native/functions/005D05B0_CasModelBuilder_BuildMaterial.asm)
([pseudocode](../../evidence/native/functions/005D05B0_CasModelBuilder_BuildMaterial.c)) consumes ECX builder
plus record, signed selector and acquisition argument, RET 0C. Allocation uses
`CAS/ModelBuilder/MaterialDef`; record+2C supplies the source parameter view.
Authored shader and flags select genuinely different paths. Selected branches
substitute DiffuseMap 6CC0FD85, SpecularMap AD528A60 and AlphaMap C3FAAC4F with
the existing default DDS key; the hair path preserves the authored SpecularMap.
The NormalMap 6E56548A substitution gate uses signed selector > 1 (CMP / SETLE).
It must not be widened into an unsigned comparison or applied to every family.
Selected key appends supply resource type 00B2D882.

The common tail copies numeric parameter kinds 1/2, expression state, optional
24 CurlDeltas floats, four MorphWeights, and CAS selection parameters. A selected
overlay path appends hash 4DC0C8BC with all four DWORDs FFFFFFFF; the optional
specular-composite path appends D652FADE with first DWORD FFFFFFFE and the other
three FFFFFFFF. These temporary structured keys are resolved after serialization
and before copying the parameter blob into the material definition. The old
record+70 reference is cleared before its virtual +4 release, then the replacement
is acquired. Temporary blob, parameter builder and local material references are
cleaned up in the original order. Failure/rollback safety is not invented.

The producer has two owned ranges, 005D05B0..005D158C and 005D1590..005D1998.
Its complete 5,097-byte envelope explicitly includes three non-owned alignment
bytes at 005D158D..005D158F. Neither ownership nor instruction boundaries were
expanded to absorb them.

## Sentinel consumer and concrete tag binding

[Sentinel consumer ASM](../../evidence/native/functions/005CF740_CasModelBuilder_ResolveMaterialTextureTags.asm)
([pseudocode](../../evidence/native/functions/005CF740_CasModelBuilder_ResolveMaterialTextureTags.c)) uses ECX builder
and one stack view pointer, RET 04. It enumerates texture entries, tests DWORD 2
of the four-word key for FFFFFFFF, then DWORD 0 for FFFFFFFF or FFFFFFFE. It does
not test DWORD 1 or DWORD 3, so this is neither full-key equality nor an asserted
64-bit resource-ID comparison. The two forms select tag pairs (1F,4) and (1F,8).
Ordinary keys remain untouched in this body.

[Tag-binding ASM](../../evidence/native/functions/005CF690_CasModelBuilder_BindTextureTag.asm)
([pseudocode](../../evidence/native/functions/005CF690_CasModelBuilder_BindTextureTag.c)) consumes ECX plus
four stack DWORDs, RET 10. It forms `(high << 16) | low` without masking low,
looks in builder+8C, and passes an existing nonnull node+8 value to entry writer
00799380. Otherwise it obtains a four-DWORD key through 005CF4B0 and copies all
four words before passing them to key writer 00799320. The selected caller forms
0004001F and 0008001F. Map population, composition algorithms, returned-reference
lifecycle and unreviewed consumers are separate questions; none is guessed here.

## Authored parameters select textures independently from samplers

[PASS reader ASM](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.asm)
([pseudocode](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.c)) reads per-enabled-slot
sampler preset first, then parameter hash. Its optional flags & F8 header consumes
five DWORDs, not two: four array words followed by one additional word. Flags & 7
consume three DWORDs. Two PARM groups, state counts, up to 16 texture slots and
trailing dynamic-state triples retain separate storage. It assembles metadata;
it is not an HLSL compiler.

[Pass parameter resolver ASM](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.asm)
([pseudocode](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.c)) resolves texture
parameters separately from the sampler table. [Pass application ASM](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.asm)
([pseudocode](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.c)) then selects the
current/generation-zero parameter value and applies the selected sampler at draw.

[Exact authored examples](../../evidence/shaders/material-role-sampler-examples.tsv)
retain 15 selected PASS pairs with SBLK/capability/variant/technique/pass/slot and
file offsets, plus their exact SMPS state lists. They demonstrate branch-specific
roles, not every variant's policy. Examples include SimHair NormalMap preset 9
(wrap U/V, linear min/mag, point mip), SpecularMap and HaloRamp preset 3 (same,
sRGB enabled), SimPetFur FurMap preset 9, SimEyes overlay preset 3, and CASRoom
diffuse preset 3. Some absent states inherit prior/default native state: omission
must not be converted into an explicit zero. D3DSAMP indices used here are
1/2/3 address U/V/W, 5/6 mag/min, 7 mip, 9 maximum mip, 11 sRGB; values are
preserved as original integers. This data does not prove a universal CAS atlas
format, ORM convention, Vulkan sampler choice or complete shader pixel equation.

## Related sim-head modifier

[Sim-head isolation material parameters](../rendering/sim-head-isolation-material-parameters.md) records a separate original counted modifier and its CPU-produced FadeY/FadeZ/HeadRadius values. Those four bodies establish parameter submission and LOD ownership, not a complete shader clipping equation or visual isolation guarantee.

## Phong sampler preset and dynamic-state join

The existing [pass/memo guide](shader-pass-and-queue-memos.md#phong-specstyle-authored-default-numeric-conversion-and-state-ownership) now joins actual Phong SpecStyle records to raw sampler conversion, preset application and pending baselines. It separates authored3 from API0, original hash from host text parsing and rawstate transport from texture/probe/GPU lifetime.

[79B000 SMPS reader ASM](../../evidence/native/functions/0079B000_ShaderSamplerDatabase_ReadSMPS.asm) ([C](../../evidence/native/functions/0079B000_ShaderSamplerDatabase_ReadSMPS.c)) retains one-based preset ordinals. The concrete [79A5B0 state-pair reader ASM](../../evidence/native/functions/0079A5B0_FUN_0079a5b0.asm) ([C](../../evidence/native/functions/0079A5B0_FUN_0079a5b0.c)) reads byteLength, stores count=byteLength>>3 **before** its reader-byte check, allocates and reads count×2DWORDs. It does not itself reject byteLength remainder bits; successful selected lengths48 are not a generic malformed-input policy. [79ABD0 lookup ASM](../../evidence/native/functions/0079ABD0_FUN_0079abd0.asm) ([C](../../evidence/native/functions/0079ABD0_FUN_0079abd0.c)) rejects ordinal0 and unsigned ordinal-1 outside the vector, otherwise returns that pointer. [4DD9D0 word-reader ASM](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.asm) ([C](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.c)) receives UInt32unitcount, not bytes, and honors the separate fourth byte-order word. The exact selected preset remains a state list, not a preset-number heuristic.
