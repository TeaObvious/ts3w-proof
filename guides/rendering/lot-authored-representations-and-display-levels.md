# Authored lot representations and renderer display levels

Scope: original PC1.67 TS3W.exe. Names below describe analyst-established roles;
they are not recovered source symbols. Full actual Ghidra output retains foreign
prototype and stack-aggregate artifacts, which the annotations explain using the
original instructions. No original/game runtime, build or fixture execution is
claimed. The central native reference identifies the executable version and bytes.

## Authored model acquisition and persistence

[Acquisition ASM](../../evidence/native/functions/00AD9080_LotImposter_AcquireStoredSceneModels.asm) ([actual annotated C](../../evidence/native/functions/00AD9080_LotImposter_AcquireStoredSceneModels.c)).
ECX receiver, no stack parameter, plain RET. A retained main model at receiver+8
skips initial acquisition but not final AD8C60. Otherwise allocate/initialize the
original aligned 0x2D0 scene model. Three distinct 16-byte keys have the receiver's
UInt64 instance at +30/+34 and MODL type 01661233:

| Representation | Group |
| --- | --- |
| Main shell | 00B0C507 |
| Water/pond | 001DA7E9 |
| Holiday lights | 001064CA |

The manager's virtual+44 lookup and receiver+24 gate main admission; bind6F46F0's
AL becomes receiver+14. Water and holiday models remain separately optional.
Retained assignment and temporary releases occur through real lifetime helpers.
Original stack keys at fixed post-prologue ESP+24/+34/+44 are distinct aggregates;
actual C aliases local_34/local_38/unaff_ESI/uVar7 are not valid reconstructed keys
or uninitialized control policy. This is scene/resource acquisition, not an
all-lots managed dictionary, broad exception fallback or GPU-completion receipt.

[Writer ASM](../../evidence/native/functions/00ADCCE0_LotImposter_WriteStoredModelsAndAtlases.asm) ([actual annotated C](../../evidence/native/functions/00ADCCE0_LotImposter_WriteStoredModelsAndAtlases.c)).
ECX creation owner plus four DWORD slots; RET10 hex. First two seed the context,
last two supply the instance. Three MODL output keys use the groups above.
Admitted OpenWrite invokes6D29E0 only for a nonnull model, then closes and notifies
the store's virtual+30 even when the model was null. Existing texture slots
+50/+68/+80/+98/+B0 use keys +58/+70/+88/+A0/+B8 and writer618E40 if texture and
OpenWrite are admitted. Every admitted stream is closed before notification.

Reuse the complete [OpenWrite ASM](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.asm) ([actual annotated C](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.c))
and [Close ASM](../../evidence/native/functions/007D7A70_ResourceStreamContext_Close.asm) ([actual annotated C](../../evidence/native/functions/007D7A70_ResourceStreamContext_Close.c)).
OpenWrite releases its prior subcontext, requires accumulated context status+14,
ANDs in the service result and obtains stream+18. ADCCE0 samples that accumulated
status at ADCF9D, fixed frame ESP+54 = context+14, before the destructor7D7990;
MOV AL,BL returns it. The apparent local_18[8]/uStack_4 in C abbreviates the real
stack object. It is not an independent uninitialized success byte. Failed status
suppresses later opens; this is not proof that every write succeeded or that a
current preview cache has the same lifecycle.

## Real creator, atlas and material producers

[Creator/key initialization ASM](../../evidence/native/functions/00ADE660_LotImposter_InitializeCreatorsAndAtlasKeys.asm) ([actual annotated C](../../evidence/native/functions/00ADE660_LotImposter_InitializeCreatorsAndAtlasKeys.c)).
ECX creation owner plus lot pointer, RET4. Named original allocations create
wall, floor, thickness, terrain, roof, ceiling, stair, fence, window, column, water
and holiday creators. Main, water and holiday vectors remain separate. Some
actual C casts incorrectly carry virtual-call low-byte results as object pointers;
AL branches and physical stack inputs take precedence over those aliases.
At ADEAFD..ADEB75 copy lot+48/+4C UInt64 into all five DDS keys, type00B2D882:

| Owner texture / key | Group |
| --- | --- |
| +50 / +58 | 00B0C507 |
| +68 / +70 | 007E7555 |
| +80 / +88 | 001DA7E9 |
| +98 / +A0 | 00BC1E4C |
| +B0 / +B8 | 00BC1E54 |

LAB_007E7555 in actual C is a raw group value, not a function pointer. Original
ImpostorHelper shader lookup and FillColor registration follow. This establishes
real IDs and key ownership; individual creators' geometry/UV rules remain their
own methods.

[Atlas/model producer ASM](../../evidence/native/functions/00ADEF20_LotImposter_RenderAtlasesAndBuildModels.asm) ([actual annotated C](../../evidence/native/functions/00ADEF20_LotImposter_RenderAtlasesAndBuildModels.c)).
ECX owner, no stack parameter, plain RET. Invoke creator virtual+0C for each of
three vectors; preserve and restore global11D0564 around event03FABF1D mode
transitions. Five ADEBF0 passes target slots+50/+98/+68/+B0/+80 with the concrete
flags/fill/modes in the original listing. First four return values are NOT joined.
Only fifth AL is captured at ADF0C3, masked by AND BL,1 at ADF0E6 and restored
at ADF144 after model calls. Therefore returned AL is not aggregate success of
all atlases, creators or model writes. lotImposter and ImpostorWater select
ADD320 with main/water vectors and outputs+38/+3C; HolidayLights selects ADD6A0
and output+40. Foreign child internals and image quality are not inferred here.

[Material-model builder ASM](../../evidence/native/functions/00ADD320_LotImposter_BuildMaterialModel.asm) ([actual annotated C](../../evidence/native/functions/00ADD320_LotImposter_BuildMaterialModel.c)).
ECX owner plus output-model pointer, creator vector, shader hash; RET0C. Allocate
0x2E0 builder; failure writes output null and returns EAX0. Two passes bind
imposterTexture and imposterTextureAOandSI from +58/+70 then +A0/+B8, water from
+88, optional named ImpostorDetailTexture DDS, diffuse four ones, and actual
isOnHouseboat material flag. Each creator virtual+18 contributes before pass and
builder finalization. Success establishes AL1, not all upper EAX bits.

Reuse the [string-hash wrapper ASM](../../evidence/native/functions/007D00F0_HashLowercasedCStringFNV1.asm) ([actual annotated C](../../evidence/native/functions/007D00F0_HashLowercasedCStringFNV1.c))
and [shader hash/parameter contract](../shaders/README.md). Independent lowercased
FNV1 calculations yield imposterTexture=BDCF71C5,
imposterTextureAOandSI=15C9D298, imposterTextureWater=BF3FB9FA,
lotImposter=68601DE3. These are concrete parameter/resource selectors, not a new
material decoder or proof of all atlas UV output.

## Roof renderer ownership and display-level publication

[Roof initialization ASM](../../evidence/native/functions/00B9E390_RoofRenderer_BindLotRoofAndMaterial.asm) ([actual annotated C](../../evidence/native/functions/00B9E390_RoofRenderer_BindLotRoofAndMaterial.c)).
ECX renderer plus lot-renderer, roof, model/shape argument; RET0C. Missing lot
renderer or its+240 manager returns AL0. Retain roof at renderer+18, copy signed
roof+18 to renderer+20 (zero for null roof), and establish original material,
WorldToLotTrig, WorldToLotTransAndLotScale and AOMap state with the real original
gates. Material acquisition supplies final AL; decompiler float/int aliases do
not establish every matrix bit. The necessary original
[vtable target word010712EC](../../evidence/rendering/lot-representations/0x010712ec-roof-renderer-init-target.bin)
is little-endian B9E390. Its selected table identity is separate from collision
shape registration; no full constructor/factory grammar is inferred from one word.

[Roof scene-membership ASM](../../evidence/native/functions/00B9CEE0_RoofRenderer_SetSceneMembership.asm) ([actual annotated C](../../evidence/native/functions/00B9CEE0_RoofRenderer_SetSceneMembership.c)).
ECX renderer plus requested raw state byte in one stack DWORD; RET4. Equal bytes
return. With model+30 and previous nonzero state, remove through6E82F0 and store
new byte. With previous zero state, read retained level+20, increment ONLY if
roof+18 is nonnull, resolve the real lot-renderer+8 interface virtual0 group and
add through6E82E0. Always store the raw byte even when no model exists. Thus an
actual roof at level2 selects group3; null-roof level2 selects2. Byte0→2 adds,
1→2 removes,2→2 does nothing. The routine does not normalize arbitrary bytes.

Reuse [collision registration ASM](../../evidence/native/functions/00B96E00_RoofManager_CreateAndRegisterCollisionShape.asm) ([actual annotated C](../../evidence/native/functions/00B96E00_RoofManager_CreateAndRegisterCollisionShape.c))
and [lot display-state ASM](../../evidence/native/functions/00ABF620_Lot_SetDisplayLevel.asm) ([actual annotated C](../../evidence/native/functions/00ABF620_Lot_SetDisplayLevel.c)).
Those collision-level nodes and dispatch are not the roof renderer insertion.
Roof+1 must follow the real renderer producer/consumer above, not an offset-only
identity between collision and presentation roots.

[Renderer level application ASM](../../evidence/native/functions/00AE3BE0_LotRenderer_ApplyDisplayLevel.asm) ([actual annotated C](../../evidence/native/functions/00AE3BE0_LotRenderer_ApplyDisplayLevel.c)).
ECX renderer plus signed level and force byte in two DWORDs; RET8. Reject outside
retained min+68..max+6C+1 using actual native32-bit arithmetic. Inactive+1E stores
+29C only. Active changed/forced level stores+29C, refreshes wall+238/fence+248/
floor+230/stair+254 and callsAE0B10; equal unforced level is a no-op.

[Renderer root flags ASM](../../evidence/native/functions/00AE0B10_LotRenderer_PublishLevelRootFlags.asm) ([actual annotated C](../../evidence/native/functions/00AE0B10_LotRenderer_PublishLevelRootFlags.c)).
ECX only, plain RET. Actual level+29C/min+68/count+70 select segmented renderer
roots+278/+27C/+284, distinct from lot collision nodes. Active lot ID, original
global/view flags and special branches drive environment state. In ordinary
+3D8-zero mode, signed strictly-below-display feeds flag4 and masked flag2;
inclusive at/below with active+1E/enabled+20 feeds flag1. Nonnegative display
further gates flag1 by signed level>=-1 when+31 zero, otherwise >=0; AE0E8B..AE0EFD
CMP/TEST/SETGE proves that relation despite C's SBORROW artifact. Special+3D8 mode
handles levels<1,==1,>1 separately with+3D7. Root+26C gets flag1 only for nonnegative
display and active+1E, flag2false; root+268 has additional owner+430/special gates.
Do not replace these real flag paths with a universal pure kind/level predicate.

## Thumbnail acquisition is a separate representation workflow

Reuse [key derivation ASM](../../evidence/native/functions/00D4AA70_UIThumbnail_DeriveResourceKey.asm) ([actual annotated C](../../evidence/native/functions/00D4AA70_UIThumbnail_DeriveResourceKey.c)),
[size-section parser ASM](../../evidence/native/functions/00D53D90_ThumbnailSizes_ReadIniSection.asm) ([actual annotated C](../../evidence/native/functions/00D53D90_ThumbnailSizes_ReadIniSection.c)),
[size-source loader ASM](../../evidence/native/functions/00D57C40_ThumbnailSizes_LoadSource.asm) ([actual annotated C](../../evidence/native/functions/00D57C40_ThumbnailSizes_LoadSource.c))
and [target clamp ASM](../../evidence/native/functions/00D62180_ThumbnailTarget_ClampRequestedDimensions.asm) ([actual annotated C](../../evidence/native/functions/00D62180_ThumbnailTarget_ClampRequestedDimensions.c)).
Descriptor436FEE4C selects D84E7FC4+size and retains the instance. Computed group0
inherits the source group, while a nonzero computed group combines its lower bits
with source F8000000. D84E7FC6 is size2 specifically; there is no universal group0
or512-pixel contract. Four configured pairs small/medium/large/xlarge replace packed
16-bit defaults only on two successful conversions. Requested UInt32 dimensions
are independently bounded by the actual target capacity. The thumbnail service's
[cache-path ASM](../../evidence/native/functions/00D4BAB0_ThumbnailCache_SelectPath.asm) ([actual annotated C](../../evidence/native/functions/00D4BAB0_ThumbnailCache_SelectPath.c)),
[preparation ASM](../../evidence/native/functions/00D59D50_ThumbnailRequest_AdvancePreparationAndRender.asm) ([actual annotated C](../../evidence/native/functions/00D59D50_ThumbnailRequest_AdvancePreparationAndRender.c))
and [render/publication ASM](../../evidence/native/functions/00D62A90_ThumbnailScene_RenderOffscreenAndPublishTexture.asm) ([actual annotated C](../../evidence/native/functions/00D62A90_ThumbnailScene_RenderOffscreenAndPublishTexture.c))
establish separate cache/resource/render ownership; see
[thumbnail preparation](original-thumbnail-preparation.md). A current fixed package
image lookup and negative process cache are host mechanisms, not that entire state
machine or an original package-edit invalidation rule.

## Static evidence and limits

All nine whole owned function listings and actual annotated pseudocode are
canonical address pairs. ADD320 and AE0B10 have respectively six and eight
nonowned alignment bytes inside their envelopes; those bytes are explicit in ASM,
not silently claimed owned instructions. Original PE bytes, boundaries, physical
stack cleanup, selectors, signed branches, AL producers and necessary data were
checked independently. The database was saved without changing executable bytes.
Pure packet-kind tags, no-level sentinels, cache/reference identities, dictionary
fallbacks, all generated geometry/material output and rendered visibility are not
established as native aggregate parity. Static examples above are not executed
runtime or acceptance tests.
