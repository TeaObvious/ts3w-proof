# Terrain layer texture keys and material publication

Original PC1.67 static contract. Names below are analyst descriptions. The selected
native code separates diffuse resource keys, generated blend masks, material
texture entries and draw-time sampler state. It establishes neither a live scene
trace nor one universal terrain texture format or sampled shader equation.

## Selected complete native owners

| Responsibility | Paired original evidence |
| --- | --- |
| Cached native texture-slot bind | [0060F3B0 ASM](../../evidence/native/functions/0060F3B0_RenderDevice_BindTextureSlotCached.asm) ([pseudocode](../../evidence/native/functions/0060F3B0_RenderDevice_BindTextureSlotCached.c)) |
| Shader parameter registration | [006C97D0 ASM](../../evidence/native/functions/006C97D0_MaterialShaderBinding_RegisterEntryParameters.asm) ([pseudocode](../../evidence/native/functions/006C97D0_MaterialShaderBinding_RegisterEntryParameters.c)) |
| Current texture publication | [006C9A10 ASM](../../evidence/native/functions/006C9A10_MaterialShaderBinding_PublishTextureEntry.asm) ([pseudocode](../../evidence/native/functions/006C9A10_MaterialShaderBinding_PublishTextureEntry.c)) |
| Keyed texture-entry request | [006C9E50 ASM](../../evidence/native/functions/006C9E50_MaterialShaderBinding_RequestKeyTextureEntry.asm) ([pseudocode](../../evidence/native/functions/006C9E50_MaterialShaderBinding_RequestKeyTextureEntry.c)) |
| Texture-entry admission | [006CA0D0 ASM](../../evidence/native/functions/006CA0D0_MaterialShaderBinding_BeginTextureEntries.asm) ([pseudocode](../../evidence/native/functions/006CA0D0_MaterialShaderBinding_BeginTextureEntries.c)) |
| Typed material entries | [006CA430 ASM](../../evidence/native/functions/006CA430_MaterialShaderBinding_BuildTypedEntries.asm) ([pseudocode](../../evidence/native/functions/006CA430_MaterialShaderBinding_BuildTypedEntries.c)) |
| Material payload copy | [006CA560 ASM](../../evidence/native/functions/006CA560_MaterialShaderBinding_CopyMaterialPayload.asm) ([pseudocode](../../evidence/native/functions/006CA560_MaterialShaderBinding_CopyMaterialPayload.c)) |
| Ready texture completion | [006CEF50 ASM](../../evidence/native/functions/006CEF50_MaterialTextureEntry_CompleteReady.asm) ([pseudocode](../../evidence/native/functions/006CEF50_MaterialTextureEntry_CompleteReady.c)) |
| Entry state dispatcher | [006CF2F0 ASM](../../evidence/native/functions/006CF2F0_MaterialTextureEntry_DispatchState.asm) ([pseudocode](../../evidence/native/functions/006CF2F0_MaterialTextureEntry_DispatchState.c)) |
| Failed texture completion | [006CF3C0 ASM](../../evidence/native/functions/006CF3C0_MaterialTextureEntry_CompleteFailed.asm) ([pseudocode](../../evidence/native/functions/006CF3C0_MaterialTextureEntry_CompleteFailed.c)) |
| Parameter record/payload append | [00799910 ASM](../../evidence/native/functions/00799910_MaterialParams_AppendEntryPayload.asm) ([pseudocode](../../evidence/native/functions/00799910_MaterialParams_AppendEntryPayload.c)) |
| Texture-key record append | [00799A30 ASM](../../evidence/native/functions/00799A30_MaterialParams_AppendTextureKey.asm) ([pseudocode](../../evidence/native/functions/00799A30_MaterialParams_AppendTextureKey.c)) |
| Signed mask texture write | [00C23220 ASM](../../evidence/native/functions/00C23220_Terrain_WriteBlendMaskTexture.asm) ([pseudocode](../../evidence/native/functions/00C23220_Terrain_WriteBlendMaskTexture.c)) |
| Layer/mask texture parameters | [00C23460 ASM](../../evidence/native/functions/00C23460_Terrain_AppendLayerTextureParameters.asm) ([pseudocode](../../evidence/native/functions/00C23460_Terrain_AppendLayerTextureParameters.c)) |
| Mapping/detail inputs | [00C23E90 ASM](../../evidence/native/functions/00C23E90_Terrain_AppendMappingDetailParameters.asm) ([pseudocode](../../evidence/native/functions/00C23E90_Terrain_AppendMappingDetailParameters.c)) |
| Source layer-key lookup | [00C28BD0 ASM](../../evidence/native/functions/00C28BD0_TerrainData_CopyLayerTextureKey.asm) ([pseudocode](../../evidence/native/functions/00C28BD0_TerrainData_CopyLayerTextureKey.c)) |
| Blend-mask regional key | [00C30CD0 ASM](../../evidence/native/functions/00C30CD0_TerrainKey_MakeBlendMask.asm) ([pseudocode](../../evidence/native/functions/00C30CD0_TerrainKey_MakeBlendMask.c)) |
| Auxiliary regional key | [00C30D20 ASM](../../evidence/native/functions/00C30D20_TerrainKey_MakeAuxiliary.asm) ([pseudocode](../../evidence/native/functions/00C30D20_TerrainKey_MakeAuxiliary.c)) |
| Selected layer/fallback key | [00C30D70 ASM](../../evidence/native/functions/00C30D70_TerrainKey_SelectLayerFallback.asm) ([pseudocode](../../evidence/native/functions/00C30D70_TerrainKey_SelectLayerFallback.c)) |
| Mask group texture publication | [00C806A0 ASM](../../evidence/native/functions/00C806A0_Terrain_UpdateBlendMaskTextures.asm) ([pseudocode](../../evidence/native/functions/00C806A0_Terrain_UpdateBlendMaskTextures.c)) |

## Layer keys and material inputs

The world producer00C825A0 and lot producer00C81790 provide selected subset IDs.
Their existing full pairs and separate depth-write/blend/technique rules are in
[depth and overlapping surfaces](../shaders/depth-and-overlapping-surfaces.md).
00C23460 uses ECX plus seven stack words, RET0x1C. For every unsigned layer
index below count it selects the actual four-DWORD source key through00C30D70,
then appends that key plus zero via00799A30 as kind4/count5. 00799910 appends the
hash/kind/count/byte-offset metadata before payload copy or zero-extension;
it does not replace equal hash entries.

00C30D70 clears its output and queries the requested source layer, retrying0
on ALfalse. Null source leaves the cleared key. The source lookup00C28BD0 uses
an arithmetic-shifted32-byte record count and unsigned bounds, copying only the
first four DWORDs. The selected caller pushes an additional unused zero and
cleans16stack bytes; the complete leaf reads only output/source/layer arguments.

Mask group count is wrapping(count+3)>>2. Supplied mask pointers use direct
texture parameters; otherwise a regional DDS key is formed. 00C30CD0 combines
low32-bit(y*65536+x) with a low64-bit product equivalent to
(maskIndex+0x100000)*2^32; CDQ precedes ADD/ADC, so an unsigned decompiler type
is not proof of source signedness. 00C30D20 instead wraps selector+2, CDQs and
multiplies by2^48. Both store type0x00B2D882/group0x1.

00C23E90 publishes blendTexMapping as reciprocal unsigned region width/height
plus half offsets; x87 negative signed readings receive the exact2^32 correction.
colorTexMapping uses the existing extent query reciprocal twice, then zeroes;
posScale uses the actual scale words, zero and the second vector Y word. A
terrain_detail DDS key is appended only on successful name parsing. These are
material inputs, not decoded color storage.

## Resource request, completion and native bind

The existing material initializer006CADA0 (see shader guide) calls006CA560 to
retire old payload, allocate/copy material bytes and build typed entries, then
begin texture requests. Entries have32-byte stride. A kind4 entry borrows a key
pointer inside the copied payload; texture admission creates a texture entry and
006C9E50 converts the material entry to kind6/current-null before requesting the
actual resource. Special resources, fallback requests and failure notification
are distinct branches. Allocation/request return does not imply residency.

006CF2F0 claims state0 to1 using LOCK CMPXCHG; observed2 tail-dispatches the ready
consumer,3 the failed consumer; other states return. Ready and failure paths
XCHG their matching state to4. In the ordinary DDS ready branch, selected
resource loaded+0x60 controls embedded texture+0x28 or null publication. Failure
can claim an existing fallback latch, reset state0, request again and re-enter
dispatch; otherwise it publishes null. Callback producer/scheduling/thread
identity is outside these selected consumers.

006C9A10 locates the material hash, writes currenttexture+0x14/kind6+0x1E, then
decrements outstanding+0x48 and signals at zero. The missing-hash path has no
local guard before store; these leaves do not establish safe malformed input.
006C97D0 registers kinds4/5/6 as shader parameter kind5. Pass resolver0079EBD0
selects texture parameter indices separately from sampler preset references.
Pass consumer0079E7E0 visits16enabled texture slots, using current-generation or
generation-zero values. 0060F3B0 chooses handle at texture+0x30, or0 for null;
on change it updates the cache before device virtual+0x104 and ignores HRESULT.
The sampler preset is separately applied when the pass changes.

## Separate masks and conditional compressed copy

00C806A0 groups IDs in chunks of at most4 and recreates mask textures only when
forced or absent. Replacement retains new before releasing old. It invokes
00C23220 but does not branch on its AL result before continuing.

00C23220 uses ECX plus five stack words, RET0x14. Signed count>4 fails; count<=2
selects native format0x28 with2-byte pixels,3/4 select0x22 with4-byte pixels.
Changed dimensions/format reset and recreate one mip, usage2. Map failure is
checked via mapped bits. Underfilled channels are zeroed. Each selector low byte
is passed to existing00C20CD0 with destination component, native row pitch and
2/4-byte pixel stride. The helper's full sampling equation is not established
here, and selector ID is not itself proved to be the stored texel value. Rows
are XORed with0x8080/0x80808080 and unmapped before ALtrue.

The [DDS native copy contract](../shaders/dds-texture-loading.md) separately
establishes resource reset/load publication and ordinary source block-row copy.
Admitted compressed DDS retains compressed blocks through that selected upload;
usage without bit2 creates matching native staging, which is copied to target
and released. This is a real native transfer. The ordinary caller ignores the
individual row-copy Boolean. There is no universal compressed terrain, zero-copy,
no-other-CPU-storage, completed upload, sampler equation or pixel parity claim.

[Required original mapping/type data](../../evidence/native/terrain-texture-binding-data.tsv)
retains only the used switch targets, hash prefix, exact float words and mapping
name strings. It does not expose unrelated neighboring string envelopes.
