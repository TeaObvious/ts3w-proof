# Near-tree alpha, LOD and FSAA boundaries

Reference: pristine PC1.67 TS3W.exe and matching Shaders_Win32.precomp, identified
in the [central reference](../../references/retained-proof-overview.md). Analyst names describe original
instructions; shader translations below are complete instruction pseudocode,
not Ghidra native C or executed retail rendering.

## Concrete categories and selected techniques

[cluster draw ASM](../../evidence/native/functions/00710BD0_Flora_DrawNearCategoriesAndBillboards.asm) ([pseudocode](../../evidence/native/functions/00710BD0_Flora_DrawNearCategoriesAndBillboards.c)) is the complete 5067-byte owned category
owner (two stack arguments, ECX cluster, RET8). It chooses category techniques
from the four UInt32 tables at115C414/424/434/444, then binds per-instance arrays
and submits through the following physical batch wrappers:

| Category | Normal technique ordinal/key | Batch consumer | Index-buffer array |
| --- | --- | --- | --- |
| Branch | 0 / A5AFDFEA (`branchMain`) | [00715ea0 ASM](../../evidence/native/functions/00715EA0_Flora_DrawBranchBatch.asm) ([pseudocode](../../evidence/native/functions/00715EA0_Flora_DrawBranchBatch.c)) | renderer+0 |
| Frond | 1 / 4B21A022 | [00715f10 ASM](../../evidence/native/functions/00715F10_Flora_DrawFrondBatch.asm) ([pseudocode](../../evidence/native/functions/00715F10_Flora_DrawFrondBatch.c)) | renderer+10 |
| LeafCard | 2 / 2BAAAC3F (`leafCard`) | [00715f80 ASM](../../evidence/native/functions/00715F80_Flora_DrawLeafCardBatch.asm) ([pseudocode](../../evidence/native/functions/00715F80_Flora_DrawLeafCardBatch.c)) | renderer+20 |
| LeafMesh | 3 / 4986978A (`leafMesh`) | [00716000 ASM](../../evidence/native/functions/00716000_Flora_DrawLeafMeshBatch.asm) ([pseudocode](../../evidence/native/functions/00716000_Flora_DrawLeafMeshBatch.c)) | renderer+30 |

The table's offsets are hexadecimal. Branch/frond share declaration/VB+2F8/+2FC
and topology5; card and mesh use separate declarations/VBs+300/+304 and+308/+30C
with topology3. Shadow/pick contexts select different technique ordinals from
the same original tables; the function also contains view/LOD and seasonal gates.
The opaque Frond technique key is kept exact rather than inventing a name.

[near-definition producer ASM](../../evidence/native/functions/007170A0_Flora_SelectNearShaderDefinitions.asm) ([pseudocode](../../evidence/native/functions/007170A0_Flora_SelectNearShaderDefinitions.c)) selects shader name `tree`
with the actual vertex declaration, category-type flags, global option vector
and additional option words for four definition slots at+2A0..2AC. The draw owner
chooses the slot before selecting its technique. The
[technique selector ASM](../../evidence/native/functions/0079A6A0_ShaderDefinition_SelectTechniqueOrdinal.asm) ([pseudocode](../../evidence/native/functions/0079A6A0_ShaderDefinition_SelectTechniqueOrdinal.c)) uses ordinal zero when the requested
ordinal is out of bounds; it stores the selected16-byte technique row.

The [selected original PASS records](../../evidence/shaders/flora/selected-pass-records.tsv)
retain all four normal category records for capability104, variants0/211/226,
and four billboard technique rows for variant0. Offsets, program IDs, all static
states and dynamic states are original file data. These are identified **stored
variants**, not a captured runtime claim that every machine selects variant0 or
211. Native capability/SSET option evaluation remains the actual selector.

| Stored capability104 variant | Category PASS state override |
| --- | --- |
| tree0 and211, all four categories | alpha test1, ref1, comparison2=LESS, blending0, color-write mask15; Frond/LeafCard/LeafMesh additionally cull1 |
| tree226, Branch/Frond/LeafMesh | blending1, source5=SRCALPHA, destination6=INVSRCALPHA, color-write mask7; Frond/LeafMesh cull1 |
| tree226, LeafCard | cull1 only; vertex/pixel program IDs both0, so no independently complete shader pair |
| treebillboard0, technique0 | blending0, alpha test1, comparisonLESS, ref1, color-write mask7 |

No selected record above authors depth-enable, depth-write or depth-comparison
states. Their effective values are inherited/restored baseline state; these
records do not prove universal depth defaults. They also contain no dynamic
state triples or sample-count/coverage-state override. This is a bounded census
of the listed records, not absence from every flora variant or device setup.

The [shared PASS owner](../shaders/depth-and-overlapping-surfaces.md) applies
static states on changed pass identity and dynamic triples each invocation.
Scope transitions merge override masks into pending baseline masks; application
uses pending AND NOT overrides. Therefore an omitted state is not automatically
zero, and a later pass can inherit an earlier override. The category wrappers
supply draw packets; they do not synthesize alpha thresholds or depth defaults.

## Per-instance alpha production and units

[LOD/fade preparation ASM](../../evidence/native/functions/00710210_Flora_BuildPerInstanceLodAndFade.asm) ([pseudocode](../../evidence/native/functions/00710210_Flora_BuildPerInstanceLodAndFade.c)) derives camera/distance/size
LOD values and dispatches the original SpeedTree functions. The ordinary finite
LOD fraction is clamped to0..1 by [fraction setter ASM](../../evidence/native/functions/007B98D0_SpeedTree_SetLodFraction.asm) ([pseudocode](../../evidence/native/functions/007B98D0_SpeedTree_SetLodFraction.c)).
[LOD/index/alpha producer ASM](../../evidence/native/functions/007B8BE0_SpeedTree_ComputeLodIndicesAndAlpha.asm) ([pseudocode](../../evidence/native/functions/007B8BE0_SpeedTree_ComputeLodIndicesAndAlpha.c)) writes nine DWORDs containing
separate signed branch/frond/leaf indices, raw alpha values and a billboard
factor. Fraction1 selects Branch/Frond LOD0 and uses wrapper+48 as the raw alpha;
intermediate LODs can use two leaf indices and two crossfade alpha values.
The low-LOD paths depend on mode and global11D962C; original x87 `pow` shapes
some transitions. Pointer/float aliases in C do not turn signed LOD indices into
floating-point indices.

[wrapper constructor ASM](../../evidence/native/functions/007BB980_SpeedTree_ConstructDefaultWrapper.asm) ([pseudocode](../../evidence/native/functions/007BB980_SpeedTree_ConstructDefaultWrapper.c)) initializes wrapper+48 from
01017878, exact binary32 `42A80000`=84.0. This establishes the constructor default;
authored-data/setter overrides outside this selected chain are not ruled out.
It is not evidence for a global128 reference or a normalized0.5 cutoff.

The cluster instance stride is80hex bytes. The draw owner selects raw alpha from
record+50 (Branch),+58 (Frond), or+64/+68 (the selected leaf LOD), then evaluates
with **separate SSE multiply and add**:

```
targetAlpha = rawAlpha * float32(0x3B808081) + float32(0x3B008081)
```

The constants are the nearest binary32 representations of1/255 and0.5/255.
The target is placed in third-row Y of the three-float4 TreeLocations instance
record; record+74 supplies a distinct fade value in third-row W. The last-LOD
alpha-edge branch can replace target with `3EA8A8A9` (84/255) and computes a
complementary factor separately. The [physical constants and ordinal tables](near-alpha-original-data.tsv)
retain exact original words and addresses.
[array binder ASM](../../evidence/native/functions/0070D320_Flora_BindPerInstanceShaderArrays.asm) ([pseudocode](../../evidence/native/functions/0070D320_Flora_BindPerInstanceShaderArrays.c)) publishes three float4 rows per instance
from11D3130, plus separate light/color/normal/seasonal arrays. It does not convert
raw alpha by a numeric byte cast or replace mesh/index ranges.

## Vertex output, pixel output and fixed-function comparison

These are complete selected original programs; LINK IDs are one-based. The
[existing shader loader/resolver](../shaders/README.md) establishes ID0 as absent
and IDn as array slotn-1. No new binary payload is duplicated in Git.

| Stored variant0 category | CPU/vertex producer to pixel output |
| --- | --- |
| Branch/Frond | [program 9171 shader ASM](../../evidence/shaders/flora/program-9171.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9171.c)) moves relative `c2.y` (the third TreeLocations row) to `oD0.a`; Branch [program 9172 shader ASM](../../evidence/shaders/flora/program-9172.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9172.c)) computes output alpha = interpolated color alpha minus diffuse alpha. Frond uses [program9173 shader ASM](../../evidence/shaders/flora/program-9173.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9173.c)) with the same alpha subtraction. |
| LeafCard | [program 9231 shader ASM](../../evidence/shaders/flora/program-9231.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9231.c)) at042C moves relative `c2.y` to `oT1.w`; [program 9250 shader ASM](../../evidence/shaders/flora/program-9250.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9250.c)) at007C computes output alpha = `t1.w - diffuse.a`. |
| LeafMesh | [program 9233 shader ASM](../../evidence/shaders/flora/program-9233.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9233.c)) at0364 moves relative `c2.y` to `oT1.w`; its PASS shares pixel program9250 with LeafCard. |
| Billboard | [program 9279 shader ASM](../../evidence/shaders/flora/program-9279.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9279.c)) supplies its own varyings; [program 9284 shader ASM](../../evidence/shaders/flora/program-9284.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9284.c)) blends two samples using `t2.z`, then writes alpha = `1 - 2 * blendedSampleAlpha`. This is a different shader equation from the near-tree subtraction. |

The pixel bodies contain no `texkill`/discard; rejection is the authored fixed-
function ALPHATESTENABLE/LESS/ALPHAREF1. Shader `_pp` modifiers request partial
precision and must not be silently treated as an exact host binary32 certificate.
For the near subtraction, a fully transparent sample A=0 yields positive output
T for the positive default threshold; a sample A>T yields negative output and
A=T yields zero before fixed-function clamping/conversion. Consequently this
subtraction reverses how one should read the LESS comparison: LESS is not an
instruction to keep transparent diffuse texels.

The CPU half-step bias, shader arithmetic precision, interpolation and native
D3D alpha comparison/conversion are distinct steps. The instructions alone do
not establish the hardware quantization/tie rule at exact normalized1/255 or
half-step boundaries. Replacing this chain by one binary32 `T-A < 1/255` predicate
is a continuous approximation whose exact boundary equivalence is **not** proved
here. No guessed fixed0.5 cutoff or sample-dependent discard adjustment follows.

## Billboard ownership and AA-setting boundary

[billboard-definition producer ASM](../../evidence/native/functions/007100C0_Flora_SelectBillboardShaderDefinitions.asm) ([pseudocode](../../evidence/native/functions/007100C0_Flora_SelectBillboardShaderDefinitions.c)) selects `treebillboard`
with global options, an optional template flag and another option for the second
billboard variant. The existing [billboard draw and binding contract](billboard-light-and-wind-binding.md)
shows its own texture/normal/fade/lighting inputs and shared PASS dispatcher.
Near and billboard draws share the PASS/state machinery, not a universal alpha
formula or the same threshold producer.

[flora configuration reader ASM](../../evidence/native/functions/00713440_Flora_ReadLodDistanceAndAlphaEdgeConfig.asm) ([pseudocode](../../evidence/native/functions/00713440_Flora_ReadLodDistanceAndAlphaEdgeConfig.c)) reads the independent
`RenderTreeAlphaEdges` key, defaulttrue, into manager+14. This changes the
billboard/last-LOD edge path. That key is not `FSAALevel`.
[FSAA setting consumer ASM](../../evidence/native/functions/006E2E00_SceneRenderer_ApplyFsaaConfig.asm) ([pseudocode](../../evidence/native/functions/006E2E00_SceneRenderer_ApplyFsaaConfig.c)) reads `Config/FSAALevel`, default0,
selects a supported level through [0060ec40 ASM](../../evidence/native/functions/0060EC40_Graphics_SelectSupportedFsaaLevel.asm) ([pseudocode](../../evidence/native/functions/0060EC40_Graphics_SelectSupportedFsaaLevel.c)), applies the guarded
[level setter ASM](../../evidence/native/functions/0060ECA0_Graphics_SetFsaaLevel.asm) ([pseudocode](../../evidence/native/functions/0060ECA0_Graphics_SetFsaaLevel.c)) and calls device reset when necessary.
The setter's [capability check ASM](../../evidence/native/functions/0060EBE0_Graphics_IsFsaaLevelSupported.asm) ([pseudocode](../../evidence/native/functions/0060EBE0_Graphics_IsFsaaLevelSupported.c)) rejects an absent device
or level>16 and tests the original API sample-type table. Level0 is the explicit
no-sampling level in the table. The setting consumer also refreshes render targets.

The upstream producer-to-selector connection and its precise AA boundary are
established below. Hardware alpha conversion/tie behavior remains the separate
limit described above; these data do not diagnose Metal compiler behavior or
validate a Vulkan sample-mask workaround.

## Global options and the actual selected variant

Native addresses, offsets, option hashes and capability masks below are hexadecimal;
variant indices and selector weights are decimal.

The complete original selector words and named SSET field metadata are retained
in [flora selector words](../../evidence/shaders/flora/selector-data.tsv) and
[field metadata](../../evidence/shaders/flora/selector-fields.tsv).
Both `tree` records (file02276FCD/0228E6CC) have the same 64-word selector;
all three `treebillboard` records (0226E538/022772C6/0228E9C5) have the same 47-word
selector. These records contain no opcode 7 packed-vertex-option membership test.
Thus the concrete vertex declaration still passes through the native selector,
but cannot change these two selectors' result. The second argument of0070BB50 /
007A0060 is a declaration pointer in the flora calls, not an integer rendering
mode. The context reader packs declaration records before SSET evaluation.

The [global-owner publisher ASM](../../evidence/native/functions/006E1060_RenderSystem_InitializeAndPublishGlobal.asm) ([pseudocode](../../evidence/native/functions/006E1060_RenderSystem_InitializeAndPublishGlobal.c)) initializes the embedded render
owner and stores that pointer in 11D2530. Its [constructor ASM](../../evidence/native/functions/006E2E70_RenderSystem_Construct.asm) ([pseudocode](../../evidence/native/functions/006E2E70_RenderSystem_Construct.c))
initializes the UInt32 option vector at +238/+23C/+240 and revision +248.
[global-option append ASM](../../evidence/native/functions/006E3710_RenderSystem_AppendGlobalShaderOptions.asm) ([pseudocode](../../evidence/native/functions/006E3710_RenderSystem_AppendGlobalShaderOptions.c)) copies its entries and conditionally
appends AB86D5C8 from byte +F1. The [configuration initializer ASM](../../evidence/native/functions/006E01C0_RenderSystem_InitializeConfigurationAndBindings.asm) ([pseudocode](../../evidence/native/functions/006E01C0_RenderSystem_InitializeConfigurationAndBindings.c))
sets +F1 from `DisablePerPixelFog` (default0); that extra hash occurs in neither
flora selector. The [option insertion ASM](../../evidence/native/functions/006E37A0_RenderSystem_AddGlobalShaderOption.asm) ([pseudocode](../../evidence/native/functions/006E37A0_RenderSystem_AddGlobalShaderOption.c)) and
[option removal ASM](../../evidence/native/functions/006E3110_RenderSystem_RemoveGlobalShaderOption.asm) ([pseudocode](../../evidence/native/functions/006E3110_RenderSystem_RemoveGlobalShaderOption.c)) change the vector and increment +248 only
on an actual membership change; [presence query ASM](../../evidence/native/functions/006E15C0_RenderSystem_HasGlobalShaderOption.asm) ([pseudocode](../../evidence/native/functions/006E15C0_RenderSystem_HasGlobalShaderOption.c)) gates these
changes in the seasonal producer.

The [weather producer ASM](../../evidence/native/functions/00D6E450_WeatherManager_Update.asm) ([pseudocode](../../evidence/native/functions/00D6E450_WeatherManager_Update.c)) writes the relevant global options:
ordinary-world updates compare the prepared/override weather snapshot's
`snowThickness`, `treeLeafLoss` and `treeFallColor` with the original SIMD near-zero
predicate (absolute-value construction using -1.0 and tolerance bits 34000000).
Snow and fall enable 5B4ECBF5/0BB5EA4E respectively. Nonzero leaf loss selects
1FD020A8 when `useFallSet` is true, BB9EE5E0 otherwise; zero leaf loss removes
both. Its special view-state branch can also change the fall/twig membership;
no universal assertion that every frame is an ordinary-world update follows.
Neither the reviewed vector mutators nor these weather decisions read the
AA level. The [weather release ASM](../../evidence/native/functions/00D6D870_WeatherManager_ReleaseResourcesAndGlobalOptions.asm) ([pseudocode](../../evidence/native/functions/00D6D870_WeatherManager_ReleaseResourcesAndGlobalOptions.c)) removes seasonal hashes separately.

The [name/declaration selector ASM](../../evidence/native/functions/0070BB50_ShaderSystem_SelectByNameAndDeclaration.asm) ([pseudocode](../../evidence/native/functions/0070BB50_ShaderSystem_SelectByNameAndDeclaration.c)) first appends the shadow owner's
options through [shadow option append ASM](../../evidence/native/functions/0070C2F0_ShadowMap_AppendShaderOptions.asm) ([pseudocode](../../evidence/native/functions/0070C2F0_ShadowMap_AppendShaderOptions.c)), then the caller's vector.
The actual flora route is 0070BB50 ->007A0060 ->0079FD20/0079FFB0 ->0079FE00.
The shared material route 006CA830/007A0030 reaches the same stored-program
interpreter, but is not an intervening call in the flora route.
[declaration-context evaluation ASM](../../evidence/native/functions/007A0060_ShaderSet_SelectVariantForDeclaration.asm) ([pseudocode](../../evidence/native/functions/007A0060_ShaderSet_SelectVariantForDeclaration.c)) packs the declaration's options;
[presence-mask builder ASM](../../evidence/native/functions/0079FFB0_ShaderSet_BuildOptionPresenceMask.asm) ([pseudocode](../../evidence/native/functions/0079FFB0_ShaderSet_BuildOptionPresenceMask.c)) matches the supplied hash list;
[stored-program evaluator ASM](../../evidence/native/functions/0079FE00_ShaderSet_EvaluateVariantProgram.asm) ([pseudocode](../../evidence/native/functions/0079FE00_ShaderSet_EvaluateVariantProgram.c)) computes the variant index. Field names below come from the SSET's
own metadata, joined by counter ordinal and weight. Hashes remain exact even
where the native producer's semantic name is not established.

| Option hash | Original producer/condition | Selector field and contribution: tree / billboard |
| --- | --- | --- |
| A6895B0B | near template+17C equals2 | OPT_TREETYPE:1 / ignored |
| B29CF736 | near template+17C equals3 | OPT_TREETYPE:2 / ignored; overwrites the previous type counter if both hashes are supplied by another caller |
| 8D8B43A1 | near definition slot+2A4 only | OPT_TREEALPHABLEND:3 / ignored |
| B5758B8C | near definition slot+2A8 only | OPT_RENDERING_LOT_THUMBNAIL:6 / ignored |
| C036773A | near definition slot+2AC only | OPT_CUSTOM_LIGHT_RIG:12 / ignored |
| 9507A8D4 | shadow owner+0A enabled and+08 nonzero | OPT_SWITCH_SHADOWMAP_TYPE:288 /1, only if8315A094 absent |
| 8315A094 | shadow owner+0A enabled,+08 zero,+09 nonzero | OPT_SWITCH_SHADOWMAP_TYPE:576 /2, only if9507A8D4 absent |
| 0BB5EA4E | render-system global vector, seasonal writer | OPT_FALL_COLORS:144 /48 |
| 5B4ECBF5 | render-system global vector, seasonal writer | OPT_SNOW:72 /24 |
| 1FD020A8 | render-system global vector, transition writer | OPT_LEAF_TWIG_TRANSITION:24 /12 |
| BB9EE5E0 | render-system global vector, transition writer | OPT_LEAF_TWIG_TRANSITION:48 /12; near overwrites24, billboard uses OR |
| 03E5D0F9 | billboard template+172 nonzero | ignored / OPT_NORMAL_MAPPED:3 |
| 53D5FB15 | second billboard definition+504 only | ignored / OPT_HORIZONTAL:6 |
| AB86D5C8 | render-system+F1 nonzero | absent from both selectors; contributes0 |

For near definitions the four local choices contribute **0,3,6,12 separately**.
007170A0 changes the last vector word between the final three lookups; it does
not accumulate the flags. With a template type other than 2/3, no seasonal options and shadow contribution 0,
the four definition slots therefore select **0,3,6,12**. Template type 2 selects
**1,4,7,13**; type 3 selects **2,5,8,14**. With the same bounded context, billboard
slots select **0,6**, or **3,9** when template+172 is nonzero.
These are static evaluations under the stated context, not captured draws.

More generally, `nearVariant = type + localChoice + shadow + 144*fall + 72*snow
+ transition`, with transition 0/24/48 and shadow 0/288/576 as above.
`billboardVariant = shadowType + 3*normalFlag + 6*secondSlot + 48*fall + 24*snow
+ 12*(transitionA OR transitionB)`, shadowType 0/1/2.
All 2048 near and 256 billboard presence masks were replayed against their complete
stored programs, including conflicting bits; the formulas match every mask.

The previously retained **211/226** PASS rows are stored combinations, not evidence
that the normal flora producer selects them. 211 requires local 6+12; 226 requires
local 3+6. Those combinations are not authored by 007170A0, and the reviewed global
vector writers add none of those three local hashes. Actual local alpha-blend
slot+2A4 selects variant 3 in the base context, whose Branch/Frond/LeafMesh PASS
rows author blending1/SRCALPHA/INVSRCALPHA; its LeafCard row has absent program
IDs. Main slot+2A0 selects variant 0 with alpha-test/ref1/LESS and blending0.
The selected-variant PASS table includes the concrete reachable examples.

### Bounded FSAA relationship

[FSAA setting consumer ASM](../../evidence/native/functions/006E2E00_SceneRenderer_ApplyFsaaConfig.asm) ([pseudocode](../../evidence/native/functions/006E2E00_SceneRenderer_ApplyFsaaConfig.c)) changes graphics manager+38 through
the supported-level setter, then [presentation/reset entry ASM](../../evidence/native/functions/00611CE0_Graphics_ApplyPresentationSettingsAndReset.asm) ([pseudocode](../../evidence/native/functions/00611CE0_Graphics_ApplyPresentationSettingsAndReset.c))
copies the selected sample type into D3D presentation parameters and invokes
[device reset ASM](../../evidence/native/functions/006111D0_Graphics_ResetDeviceAndNotifyOwners.asm) ([pseudocode](../../evidence/native/functions/006111D0_Graphics_ResetDeviceAndNotifyOwners.c)). Reset notifications are a concrete additional
route to render-target refresh: [reset-owner registration ASM](../../evidence/native/functions/00610BB0_Graphics_RegisterResetOwner.asm) ([pseudocode](../../evidence/native/functions/00610BB0_Graphics_RegisterResetOwner.c))
links the render owner registered by 6E01C0 into graphics manager +E4;
[before-reset dispatch ASM](../../evidence/native/functions/00610C40_Graphics_NotifyResetOwnersBeforeReset.asm) ([pseudocode](../../evidence/native/functions/00610C40_Graphics_NotifyResetOwnersBeforeReset.c)) invokes primary callback slot 0.
The constructor's original primary table at00FF8DC8 resolves that slot to
[before-reset callback ASM](../../evidence/native/functions/006E1DE0_RenderSystem_OnBeforeDeviceReset.asm) ([pseudocode](../../evidence/native/functions/006E1DE0_RenderSystem_OnBeforeDeviceReset.c)), which releases targets with true.
After successful reset, slot 4 resolves to [after-reset callback ASM](../../evidence/native/functions/006E2E60_RenderSystem_OnAfterDeviceReset.asm) ([pseudocode](../../evidence/native/functions/006E2E60_RenderSystem_OnAfterDeviceReset.c)),
which rebuilds targets with true. The FSAALevel consumer additionally calls the
same release/rebuild owners with false. This joins the relevant callback path;
it does not treat every resource callback in the separate+D8 list as a flora
selection-input writer.

[target release ASM](../../evidence/native/functions/006E15F0_RenderSystem_ReleaseRenderTargets.asm) ([pseudocode](../../evidence/native/functions/006E15F0_RenderSystem_ReleaseRenderTargets.c)) releases registry surfaces/textures and the
render owner's texture proxies; it does not reset the seasonal vector or the
configuration inputs. [target rebuild ASM](../../evidence/native/functions/006E2380_RenderSystem_RebuildRenderTargets.asm) ([pseudocode](../../evidence/native/functions/006E2380_RenderSystem_RebuildRenderTargets.c)) first calls
[clear byte 17E ASM](../../evidence/native/functions/006E3940_RenderSystem_ClearTargetFlag17E.asm) ([pseudocode](../../evidence/native/functions/006E3940_RenderSystem_ClearTargetFlag17E.c)); that separate target flag is not flora
manager+14 (`RenderTreeAlphaEdges`). It then rebuilds the shadow owner at115C3C4:
render-owner+178 false clears enabled byte+A; true calls
[clear shadow flags ASM](../../evidence/native/functions/0070BDD0_ShadowMap_ClearOptionFlags.asm) ([pseudocode](../../evidence/native/functions/0070BDD0_ShadowMap_ClearOptionFlags.c)), enables+A and invokes
[shadow capability/target producer ASM](../../evidence/native/functions/0070BE10_ShadowMap_CreateTargetsAndChooseOptions.asm) ([pseudocode](../../evidence/native/functions/0070BE10_ShadowMap_CreateTargetsAndChooseOptions.c)).
The producer writes 8/9=0/1 for shader-library capability 400,1/0 for 200,
and leaves the cleared 0/0 when neither bit exists. It reads `ShadowMapSize`,
`ShadowMapAllowNullColor` and `ShadowMapForceDF16Available`; no FSAALevel read
feeds this choice. Allocation/capability failure remains a separate result;
these option bytes can already have been written before failure.

Therefore **FSAA refresh can rewrite selection-input state**, but its refreshed
shadow-type choice is derived from the existing shader-library capability and
shadow enablement, not the sample level. After the bounded refresh has run with the same
loaded world/weather snapshot, template, draw context, configuration and shader
capability 104, both shadow-option bytes remain 0 (104 has neither 200 nor 400), so
its contribution stays 0 and changing only FSAALevel leaves the two selector
results unchanged. The seasonal options still derive from weather; local
alpha/thumbnail/custom-light choices remain the flora definition/draw context.
This is the bounded static independence result. It does not assert unchanged
render-target allocation, inherited PASS state, arbitrary reset listeners,
concurrent observation during reset, device-loss recovery after failure, a
capability/context switch, or every hardware alpha-conversion outcome.
The separate `RenderTreeAlphaEdges` key remains the already documented
last-LOD/billboard edge control, not an AA-dependent variant flag.


The [whole-tree billboard contract](billboard-alpha-uv-and-fade.md) closes the ordinary clear capability0x104 vertical0/3 and horizontal6/9 selection, complete packet/UV/pitch/LOD producers, two-sample vertical and one-sample horizontal pixel joins, and selected PASS state. Near alpha targets and instance opacity remain separate quantities.
