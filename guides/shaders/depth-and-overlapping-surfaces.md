# Depth state and overlapping surfaces

This is the original PC 1.67 contract, using the executable and precompiled
shader file identified in the [reference](../../references/retained-proof-overview.md). Names assigned to
native functions are analyst names. All behavior below is **static evidence**;
no retail game, OpenTS3 scene or GPU experiment was executed for this guide.

Two surfaces competing for depth, vegetation geometry extending through a
floor, transparent layer ordering and camera clipping are different possible
problems. The reported doghouse floor versus grass has not yet been reduced to
an identified material, selected pass and reproducible pixel symptom. This
guide establishes the original state path and a complete rug layering path;
it does not identify the cause of that report.

## A pass supplies state in addition to shader bytecode

The [PASS reader](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.asm)
([pseudocode](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.c)) allocates static
eight-byte `(state ID, DWORD value)` pairs at pass `+0x34`, counted by `+0x38`,
and dynamic twelve-byte `(state ID, parameter hash, default DWORD)` triples at
`+0x40`, counted by `+0x3c`. The count word packs the static count in its low
16 bits and dynamic count in its high 16 bits. The
[resolver](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.asm)
([pseudocode](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.c)) replaces dynamic
hashes with parameter indices. Texture, sampler, vertex and pixel parameters
are separate arrays in the same pass.

The [draw consumer](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.asm)
([pseudocode](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.c)) binds the selected
stage objects and applies static pairs when the pass pointer changes. Dynamic
states are evaluated on every call. A parameter record is accepted for the
current generation, or for generation zero. A scalar float record with data
supplies its first value; absent data uses the stored default DWORD unchanged.

At `0x0079e923`, states **36, 37, 38, 175 and 195** pass the float's original
32 bits. For other valid scalar float states, `0x0079e92b..0x0079e94f` sets
x87 rounding control to truncate toward zero, converts with `FISTP`, uses the
low DWORD and restores the control word. The decompiler's `ROUND` expression
and float/integer casts are artifacts where they contradict these instructions.
The [original case table](../../evidence/shaders/dynamic-state-dispatch.json)
retains both jump targets and all 160 case bytes. State 175 is slope scale
depth bias; 195 is constant depth bias. State 194 is
sRGB write enable. Their numeric API identities come from
[Microsoft's D3D9 enumeration](https://learn.microsoft.com/en-us/windows/win32/direct3d9/d3drenderstatetype).

The [technique dispatcher](../../evidence/native/functions/007A0FB0_ShaderTechnique_ApplyPassesAndDraw.asm)
([pseudocode](../../evidence/native/functions/007A0FB0_ShaderTechnique_ApplyPassesAndDraw.c)) visits passes at
stride `0x18c` and invokes the draw callback for each successful ordinary pass.
A nonzero pass key triggers the
[optional hook](../../evidence/native/functions/0079D610_ShaderPass_InvokeOptionalHook.asm)
([pseudocode](../../evidence/native/functions/0079D610_ShaderPass_InvokeOptionalHook.c)), which suppresses
that pass's ordinary callback. The
[definition wrapper](../../evidence/native/functions/0079A6D0_ShaderDefinition_DrawSelectedTechnique.asm)
([pseudocode](../../evidence/native/functions/0079A6D0_ShaderDefinition_DrawSelectedTechnique.c)) uses the selected
technique, or its first technique if no selection exists. Shader family alone
therefore does not specify all state or draw calls.

## Cached states, overrides and restoration

The [single-state updater](../../evidence/native/functions/0060EFE0_RenderDevice_ApplyPassState.asm)
([pseudocode](../../evidence/native/functions/0060EFE0_RenderDevice_ApplyPassState.c)) and
[pair updater](../../evidence/native/functions/0060F030_RenderDevice_ApplyPassStatePairs.asm)
([pseudocode](../../evidence/native/functions/0060F030_RenderDevice_ApplyPassStatePairs.c)) compare DWORDs
with the cached state, call device vtable `+0xe4` with `(device, state, bits)`
when different, and mark the state as a pass override even when unchanged.
The original call is D3D9 `SetRenderState`; its HRESULT is ignored in these
wrappers and the cache is updated before the call. No state-ID bounds check
is visible here.

| Device-context field | Meaning established by producer and consumer |
| --- | --- |
| `+0x160 + 4*(state-7)` | Baseline DWORD |
| `+0x48c + 4*(state-7)` | Current cached DWORD |
| `+0x7b8`, seven DWORDs | Pending baseline masks |
| `+0x7d4`, seven DWORDs | Active pass override masks |

The [scope transition](../../evidence/native/functions/00610280_RenderDevice_BeginTechniqueStateScope.asm)
([pseudocode](../../evidence/native/functions/00610280_RenderDevice_BeginTechniqueStateScope.c)) ORs previous
overrides into the pending masks and clears overrides. It is called when the
next technique's first pass differs from the current pass. The
[pending-state consumer](../../evidence/native/functions/0060F120_RenderDevice_ApplyPendingBaselines.asm)
([pseudocode](../../evidence/native/functions/0060F120_RenderDevice_ApplyPendingBaselines.c)) applies
`pending & ~overrides`. Thus a state omitted by a new technique can be restored
from the baseline, while an active override survives. Later passes of one
technique can retain previous overrides; absence from a pass is not a claim
that the state is zero. The sampler path has corresponding masks for 16 slots.

The [baseline capture](../../evidence/native/functions/0060FB00_RenderDevice_CaptureBaselineStates.asm)
([pseudocode](../../evidence/native/functions/0060FB00_RenderDevice_CaptureBaselineStates.c)) queries 102 state
IDs from original table `0x00fe8850` through device `GetRenderState` and stores
both baseline and current values. It does not establish a universal numeric
default for the game. The
[baseline setter](../../evidence/native/functions/0060EEB0_RenderDevice_SetBaselineState.asm)
([pseudocode](../../evidence/native/functions/0060EEB0_RenderDevice_SetBaselineState.c)) queues changes
and retains previous values for a state scope. The
[forced refresh](../../evidence/native/functions/006100F0_RenderDevice_InvalidateAndApplyBaselineStates.asm)
([pseudocode](../../evidence/native/functions/006100F0_RenderDevice_InvalidateAndApplyBaselineStates.c)) invalidates cached
values and applies pending baselines.

Small wrappers independently verify
[depth enable](../../evidence/native/functions/0060FDE0_RenderDevice_SetDepthEnabled.asm)
([pseudocode](../../evidence/native/functions/0060FDE0_RenderDevice_SetDepthEnabled.c)),
[depth write](../../evidence/native/functions/0060FE00_RenderDevice_SetDepthWriteByte.asm)
([pseudocode](../../evidence/native/functions/0060FE00_RenderDevice_SetDepthWriteByte.c)),
[depth compare](../../evidence/native/functions/0060FE10_RenderDevice_SetDepthCompareIndex.asm)
([pseudocode](../../evidence/native/functions/0060FE10_RenderDevice_SetDepthCompareIndex.c)),
[alpha test](../../evidence/native/functions/0060FEF0_RenderDevice_SetAlphaTestByte.asm)
([pseudocode](../../evidence/native/functions/0060FEF0_RenderDevice_SetAlphaTestByte.c)) and
[alpha blend](../../evidence/native/functions/0060FF90_RenderDevice_SetAlphaBlendByte.asm)
([pseudocode](../../evidence/native/functions/0060FF90_RenderDevice_SetAlphaBlendByte.c)). Depth enable
normalizes any nonzero byte to one. The write/test/blend wrappers preserve
the zero-extended input byte. Compare indices map to original table values
1 through 8 without a visible bounds check. These wrappers queue baseline
changes; they do not immediately apply authored pass overrides.

## Terrain, object floors and foliage use distinct authored passes

[Selected original pass records](../../evidence/shaders/overlap-pass-states.json)
retain 25 samples with exact file offsets, capability masks, variant indices,
technique keys and every stored state in each selected pass. They are samples
of authored data, not captures of a particular running object. Original
[SSET string reading](../../evidence/native/functions/007D9700_ShaderStream_ReadAlignedString.asm)
([pseudocode](../../evidence/native/functions/007D9700_ShaderStream_ReadAlignedString.c)) and
[KNM name reading](../../evidence/native/functions/0072F480_ShaderNameTable_ReadKNM.asm)
([pseudocode](../../evidence/native/functions/0072F480_ShaderNameTable_ReadKNM.c)) establish the
name layouts. KNM identifies `RugSort` and `AlphaMaskThreshold`; parameter
hashes for `useAlphaBlending` and `useZWrite` are verified by the original
case-folded FNV-1 path.

| Authored sample | Selected stored contract |
| --- | --- |
| `LargeObjectFloor / Phong` | Some passes contain no static or dynamic states; another sample dynamically supplies alpha reference from `AlphaMaskThreshold`, default 128. This does not identify the doghouse shader. |
| `phong / Phong` | Blend sample enables blending with source/destination values 5/6; another uses dynamic alpha reference. A `SkinnedShadow` sample enables alpha test with reference 128 and comparison 5. |
| `staticterrain / TerrainHigh` | Dynamic states 27/14 read `useAlphaBlending`/`useZWrite`; additional samples explicitly blend and disable writes. A selected two-pass sample supplies different blend factors in its consecutive passes. |
| `LotTerrain / TerrainHigh`, `TerrainIndoor` | Selected samples author blend factors 2/6, without a blanket depth-bias override. |
| `tree / branchMain`, `leafCard` | Distinct variants author blending or alpha test/reference/comparison states. The test sample stores reference 1 and comparison 2; its visual meaning also requires the selected pixel shader's alpha output. |
| `foliage / AlphaTestShadows` | Slope bias is exact binary32 `0x40a00000` (5). It belongs to this shadow technique, not all foliage draws. |
| `roads / Road` | Constant bias `0xb60637bd`, slope bias `0xbf028f5c`, depth comparison 4; some variants also disable depth writes. |
| `RoadGrateDrain` | Constant bias `0xb68637bd`, slope bias `0xbf028f5c`. |
| `rug / Rug` | Dynamic constant bias from `RugSort`, default DWORD zero; selected variants explicitly enable depth writes. |

The [lot layer producer](../../evidence/native/functions/00C81790_Terrain_BuildLotMaterialLayers.asm)
([pseudocode](../../evidence/native/functions/00C81790_Terrain_BuildLotMaterialLayers.c)) sets opposite
binary32 zero/one values for `useAlphaBlending` and `useZWrite` according to
the subset byte. It also publishes `bIsLotTerrain` or `bIsLotTerrainBB` and,
when the native diving-lot predicate is true, `bIsDivingLot`. The
[world layer producer](../../evidence/native/functions/00C825A0_Terrain_BuildWorldMaterialLayers.asm)
([pseudocode](../../evidence/native/functions/00C825A0_Terrain_BuildWorldMaterialLayers.c)) performs the
corresponding assignment for `staticTerrain` and has a separate visualization
material path. The
[lot technique selector](../../evidence/native/functions/00A841A0_LotTerrain_DrawWithSelectedTechnique.asm)
([pseudocode](../../evidence/native/functions/00A841A0_LotTerrain_DrawWithSelectedTechnique.c)) additionally
selects indoor, snow-elevation and greenhouse technique names from original
flags. A grass paint layer therefore cannot be assigned one universal depth
mode merely from its texture name.

## Rugs have an explicit overlap layer and bias producer

The [add operation](../../evidence/native/functions/00C09650_RugManager_AddRugRecord.asm)
([pseudocode](../../evidence/native/functions/00C09650_RugManager_AddRugRecord.c)) rejects zero and
duplicate GUIDs, allocates a 40-byte record, stores the full GUID, compact
location and low 16 bits of the incremented insertion serial. The
[overlap calculation](../../evidence/native/functions/00C08F20_RugManager_RecomputeOverlapLayer.asm)
([pseudocode](../../evidence/native/functions/00C08F20_RugManager_RecomputeOverlapLayer.c)) visits objects
whose footprints intersect. For earlier insertion ranks, it takes the maximum
of the other rug's layer plus one, with original 16-bit wrap semantics. The
[remove operation](../../evidence/native/functions/00C097A0_RugManager_RemoveAndRelayer.asm)
([pseudocode](../../evidence/native/functions/00C097A0_RugManager_RemoveAndRelayer.c)) can recompute
following affected records of the same category.

```mermaid
flowchart LR
  A[Footprint overlap and insertion rank] --> B[16 bit rug layer]
  B --> C[Object notification 0x063bd2a3]
  C --> D[Render ordinal = layer + 1]
  D --> E[Exact coefficient times ordinal]
  E --> F[Draw packet RugSort float]
  F --> G[Dynamic PASS state 195]
  G --> H[D3D9 constant depth bias DWORD]
```

The [rug component](../../evidence/native/functions/0095E170_RugComponent_NotifyLayerChanged.asm)
([pseudocode](../../evidence/native/functions/0095E170_RugComponent_NotifyLayerChanged.c)) sends event
`0x063bd2a3` with owner GUID and layer. The
[notification dispatcher](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm)
([pseudocode](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)) forwards all
three stack arguments to the
[render notification consumer](../../evidence/native/functions/006FFB10_RenderObject_ApplyRugSortNotification.asm)
([pseudocode](../../evidence/native/functions/006FFB10_RenderObject_ApplyRugSortNotification.c)). Its original
`RET 0xc` proves the third argument; the former two-argument decompiler
signature confused the layer with the GUID's high word. It resolves the
render component and supplies `layer+1` to the
[ordinal setter](../../evidence/native/functions/006F57D0_RenderComponent_SetRugLayerOrdinal.asm)
([pseudocode](../../evidence/native/functions/006F57D0_RenderComponent_SetRugLayerOrdinal.c)), which stores
the DWORD at component `+0x2b8` and invalidates the first part. The
[component constructor](../../evidence/native/functions/006F59A0_RenderComponent_InitializeSceneModel.asm)
([pseudocode](../../evidence/native/functions/006F59A0_RenderComponent_InitializeSceneModel.c)) initializes it
to zero.

At `0x006f6927..0x006f6949`, the
[packet producer](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.asm)
([pseudocode](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.c)) converts the
unsigned ordinal with signed `FILD` plus a `2^32` correction when required,
multiplies in x87 by the original binary32 coefficient **`0xb3800001`**, then
stores the result as binary32 at packet `+0x3c`. The coefficient is
`-5.960465188081798e-8`; rounding it to `-2^-24` changes its stored bits.
The [parameter initialization](../../evidence/native/functions/0068FF30_RenderObject_InitializeParameterSlots.asm)
([pseudocode](../../evidence/native/functions/0068FF30_RenderObject_InitializeParameterSlots.c)) registers
`RugSort` as a scalar float. The
[packet draw path](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.asm)
([pseudocode](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.c)) publishes the
packet's float pointer unless `UCOMISS` reports equal zero. Its `LAHF`,
`TEST AH,0x44`, `JNP` sequence also publishes an unordered NaN. The
selected rug pass uses that parameter for dynamic state 195. This is an
original mechanism for admitted rug layers, not evidence that every object
floor receives the same bias.

## Verification and open questions

Executed offline checks decoded all 604 SBLK blocks and 196,645 PASS records,
validated each declared block boundary and the terminal KNM/END boundary,
and independently reread the selected state records from their original file
offsets. The [native constants](../../evidence/shaders/overlap-native-constants.tsv)
preserve original words and types. Export verification compared Ghidra memory
and the complete ASM envelopes with the original executable; function bounds
and actual annotated pseudocode are retained in the canonical pairs.

Still unresolved: the reported doghouse's resource/material and selected
variant, whether the visible symptom is depth competition or geometry
protrusion, grass coverage/removal geometry, camera near/far contribution,
and GPU output under equal scene conditions. No rendering implementation was
changed and no visual regression was reproduced or fixed by this proof.
