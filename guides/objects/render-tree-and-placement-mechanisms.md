# Original rendering, tree objects and placement mechanisms

Reference: original PC1.67 TS3W.exe, identified centrally. Names are analyst roles,
not recovered symbols. Each pair is actual annotated Ghidra pseudocode and the
complete owned Listing. Nonowned envelope gaps are marked explicitly. Original
FileBytes, selected memory envelopes, function bounds and physical instructions
were verified; the earlier saved-database statement is historical. The current
lot workflow supplement uses read-only queries, preserves inherited dirty state
and performs no database save or original-byte change.

## Canonical functions

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 00AE0B10 | LotRenderer_PublishLevelRootFlags | [ASM](../../evidence/native/functions/00AE0B10_LotRenderer_PublishLevelRootFlags.asm) ([annotated C](../../evidence/native/functions/00AE0B10_LotRenderer_PublishLevelRootFlags.c)) |
| 006E9230 | SceneRenderer_SetBasementView | [ASM](../../evidence/native/functions/006E9230_SceneRenderer_SetBasementView.asm) ([annotated C](../../evidence/native/functions/006E9230_SceneRenderer_SetBasementView.c)) |
| 006E3E30 | SceneCullFilter_RejectObject | [ASM](../../evidence/native/functions/006E3E30_SceneCullFilter_RejectObject.asm) ([annotated C](../../evidence/native/functions/006E3E30_SceneCullFilter_RejectObject.c)) |
| 00690260 | RenderObject_DrawPacketWithParameters | [ASM](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.asm) ([annotated C](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.c)) |
| 0068E470 | CounterCutout_BindMaterialParameters | [ASM](../../evidence/native/functions/0068E470_CounterCutout_BindMaterialParameters.asm) ([annotated C](../../evidence/native/functions/0068E470_CounterCutout_BindMaterialParameters.c)) |
| 007D77B0 | ResourceKey_MakeAlternate | [ASM](../../evidence/native/functions/007D77B0_ResourceKey_MakeAlternate.asm) ([annotated C](../../evidence/native/functions/007D77B0_ResourceKey_MakeAlternate.c)) |
| 007D8310 | ResourceKey_CopyWithMountedCandidate | [ASM](../../evidence/native/functions/007D8310_ResourceKey_CopyWithMountedCandidate.asm) ([annotated C](../../evidence/native/functions/007D8310_ResourceKey_CopyWithMountedCandidate.c)) |
| 0081F100 | PathLink_CanContinueToSuccessor | [ASM](../../evidence/native/functions/0081F100_PathLink_CanContinueToSuccessor.asm) ([annotated C](../../evidence/native/functions/0081F100_PathLink_CanContinueToSuccessor.c)) |
| 00819FA0 | RoutePath_BuildTypedSegments | [ASM](../../evidence/native/functions/00819FA0_RoutePath_BuildTypedSegments.asm) ([annotated C](../../evidence/native/functions/00819FA0_RoutePath_BuildTypedSegments.c)) |
| 006F5D50 | SceneModel_RefreshSimAndPartBounds | [ASM](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.asm) ([annotated C](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.c)) |
| 006A31C0 | RoomLight_WriteSurfaceSamples | [ASM](../../evidence/native/functions/006A31C0_RoomLight_WriteSurfaceSamples.asm) ([annotated C](../../evidence/native/functions/006A31C0_RoomLight_WriteSurfaceSamples.c)) |
| 006A63F0 | RoomLight_IsSunnyRoom | [ASM](../../evidence/native/functions/006A63F0_RoomLight_IsSunnyRoom.asm) ([annotated C](../../evidence/native/functions/006A63F0_RoomLight_IsSunnyRoom.c)) |
| 00C6DCD0 | Manager auto-cluster wrapper | [ASM](../../evidence/native/functions/00C6DCD0_FUN_00c6dcd0.asm) ([qualified C](../../evidence/native/functions/00C6DCD0_FUN_00c6dcd0.c)) |
| 00C71AB0 | Manager retained-source uncluster | [ASM](../../evidence/native/functions/00C71AB0_FUN_00c71ab0.asm) ([qualified C](../../evidence/native/functions/00C71AB0_FUN_00c71ab0.c)) |
| 0095C620 | Tree component split into primitive clones | [ASM](../../evidence/native/functions/0095C620_FUN_0095c620.asm) ([qualified C](../../evidence/native/functions/0095C620_FUN_0095c620.c)) |
| 0095D5D0 | TreeManager_AutoCluster | [ASM](../../evidence/native/functions/0095D5D0_TreeManager_AutoCluster.asm) ([annotated C](../../evidence/native/functions/0095D5D0_TreeManager_AutoCluster.c)) |
| 0095BF50 | TreeComponent_GetRelativeMatrices | [ASM](../../evidence/native/functions/0095BF50_TreeComponent_GetRelativeMatrices.asm) ([annotated C](../../evidence/native/functions/0095BF50_TreeComponent_GetRelativeMatrices.c)) |
| 0095C480 | TreeComponent_ReadPropertyPrimitives | [ASM](../../evidence/native/functions/0095C480_TreeComponent_ReadPropertyPrimitives.asm) ([annotated C](../../evidence/native/functions/0095C480_TreeComponent_ReadPropertyPrimitives.c)) |
| 007B7310 | TreePrimitive_SetYawTranslation | [ASM](../../evidence/native/functions/007B7310_TreePrimitive_SetYawTranslation.asm) ([annotated C](../../evidence/native/functions/007B7310_TreePrimitive_SetYawTranslation.c)) |
| 0070D6B0 | TreePrimitive_WriteYawMatrix | [ASM](../../evidence/native/functions/0070D6B0_TreePrimitive_WriteYawMatrix.asm) ([annotated C](../../evidence/native/functions/0070D6B0_TreePrimitive_WriteYawMatrix.c)) |
| 0095A460 | TreeComponent_InitResourceIdentity | [ASM](../../evidence/native/functions/0095A460_TreeComponent_InitResourceIdentity.asm) ([annotated C](../../evidence/native/functions/0095A460_TreeComponent_InitResourceIdentity.c)) |
| 0095A490 | TreeComponent_RefreshClusterBounds | [ASM](../../evidence/native/functions/0095A490_TreeComponent_RefreshClusterBounds.asm) ([annotated C](../../evidence/native/functions/0095A490_TreeComponent_RefreshClusterBounds.c)) |
| 0095A6A0 | TreeComponent_WriteBinaryPrimitives | [ASM](../../evidence/native/functions/0095A6A0_TreeComponent_WriteBinaryPrimitives.asm) ([annotated C](../../evidence/native/functions/0095A6A0_TreeComponent_WriteBinaryPrimitives.c)) |
| 0095A9A0 | TreeComponent_ReloadTemplateAndInitializePrimitives | [ASM](../../evidence/native/functions/0095A9A0_TreeComponent_ReloadTemplateAndInitializePrimitives.asm) ([annotated C](../../evidence/native/functions/0095A9A0_TreeComponent_ReloadTemplateAndInitializePrimitives.c)) |
| 0095C160 | TreeComponent_ReadBinaryPrimitives | [ASM](../../evidence/native/functions/0095C160_TreeComponent_ReadBinaryPrimitives.asm) ([annotated C](../../evidence/native/functions/0095C160_TreeComponent_ReadBinaryPrimitives.c)) |
| 0095B990 | TreeComponent_ApplyObjectTransform | [ASM](../../evidence/native/functions/0095B990_TreeComponent_ApplyObjectTransform.asm) ([annotated C](../../evidence/native/functions/0095B990_TreeComponent_ApplyObjectTransform.c)) |
| 0095B110 | TreeComponent_CombineCluster | [ASM](../../evidence/native/functions/0095B110_TreeComponent_CombineCluster.asm) ([annotated C](../../evidence/native/functions/0095B110_TreeComponent_CombineCluster.c)) |
| 0095B6E0 | TreeComponent_BuildPhysicsShapes | [ASM](../../evidence/native/functions/0095B6E0_TreeComponent_BuildPhysicsShapes.asm) ([annotated C](../../evidence/native/functions/0095B6E0_TreeComponent_BuildPhysicsShapes.c)) |
| 007B8290 | TreeData_CopySelectedPrimitive | [ASM](../../evidence/native/functions/007B8290_TreeData_CopySelectedPrimitive.asm) ([annotated C](../../evidence/native/functions/007B8290_TreeData_CopySelectedPrimitive.c)) |
| 004FAA60 | TreeVariation_DrawUniform | [ASM](../../evidence/native/functions/004FAA60_TreeVariation_DrawUniform.asm) ([annotated C](../../evidence/native/functions/004FAA60_TreeVariation_DrawUniform.c)) |
| 004FA9F0 | TreeVariation_Reseed | [ASM](../../evidence/native/functions/004FA9F0_TreeVariation_Reseed.asm) ([annotated C](../../evidence/native/functions/004FA9F0_TreeVariation_Reseed.c)) |
| 007D2340 | VariationWords_Lookup1999 | [ASM](../../evidence/native/functions/007D2340_VariationWords_Lookup1999.asm) ([annotated C](../../evidence/native/functions/007D2340_VariationWords_Lookup1999.c)) |
| 00B3B8E0 | PlacementArea_TestSurfaceKinds | [ASM](../../evidence/native/functions/00B3B8E0_PlacementArea_TestSurfaceKinds.asm) ([annotated C](../../evidence/native/functions/00B3B8E0_PlacementArea_TestSurfaceKinds.c)) |
| 00B3C1D0 | PlacementArea_TestInsideOutside | [ASM](../../evidence/native/functions/00B3C1D0_PlacementArea_TestInsideOutside.asm) ([annotated C](../../evidence/native/functions/00B3C1D0_PlacementArea_TestInsideOutside.c)) |
| 00B3C330 | PlacementArea_TestSlopeSupport | [ASM](../../evidence/native/functions/00B3C330_PlacementArea_TestSlopeSupport.asm) ([annotated C](../../evidence/native/functions/00B3C330_PlacementArea_TestSlopeSupport.c)) |
| 00AFC8D0 | Catalog_AllowsSlopedPlacement | [ASM](../../evidence/native/functions/00AFC8D0_Catalog_AllowsSlopedPlacement.asm) ([annotated C](../../evidence/native/functions/00AFC8D0_Catalog_AllowsSlopedPlacement.c)) |
| 00B45410 | ObjectPlacement_TestLotAdmission | [ASM](../../evidence/native/functions/00B45410_ObjectPlacement_TestLotAdmission.asm) ([annotated C](../../evidence/native/functions/00B45410_ObjectPlacement_TestLotAdmission.c)) |
| 00CFF9E0 | HandTool_CanPickObject | [ASM](../../evidence/native/functions/00CFF9E0_HandTool_CanPickObject.asm) ([annotated C](../../evidence/native/functions/00CFF9E0_HandTool_CanPickObject.c)) |
| 00CFFF00 | HandTool_ResolvePlacementPoint | [ASM](../../evidence/native/functions/00CFFF00_HandTool_ResolvePlacementPoint.asm) ([annotated C](../../evidence/native/functions/00CFFF00_HandTool_ResolvePlacementPoint.c)) |
| 00AFC020 | PlacementGrid_SnapPosition | [ASM](../../evidence/native/functions/00AFC020_PlacementGrid_SnapPosition.asm) ([annotated C](../../evidence/native/functions/00AFC020_PlacementGrid_SnapPosition.c)) |
| 00AEA5D0 | LotWater_IsVertexUnderWater | [ASM](../../evidence/native/functions/00AEA5D0_LotWater_IsVertexUnderWater.asm) ([annotated C](../../evidence/native/functions/00AEA5D0_LotWater_IsVertexUnderWater.c)) |
| 00AD0470 | Lot_TestCellBelowSea | [ASM](../../evidence/native/functions/00AD0470_Lot_TestCellBelowSea.asm) ([annotated C](../../evidence/native/functions/00AD0470_Lot_TestCellBelowSea.c)) |
| 0094F030 | SimComponent_ReadOutfitReferences | [ASM](../../evidence/native/functions/0094F030_SimComponent_ReadOutfitReferences.asm) ([annotated C](../../evidence/native/functions/0094F030_SimComponent_ReadOutfitReferences.c)) |
| 00CFA8F0 | MoveObjects_CommandHandler | [ASM](../../evidence/native/functions/00CFA8F0_MoveObjects_CommandHandler.asm) ([annotated C](../../evidence/native/functions/00CFA8F0_MoveObjects_CommandHandler.c)) |

## Selection, fixups and lighting

007D77B0 toggles group08000000 only when the source high nibble is zero. For
five exact resource types, instanceHigh0 and low-instance top5bits zero also
permit instanceLow08000000 toggle.007D8310 preserves a present original and
uses the alternate only after normalization54E0A0 and actual manager presence.
Package-index existence alone is not full native resource lifetime/loading.

00AE0B10 publishes actual level/root state.006E9230 stores lot identity even
when the flag stays unchanged, and only a flag transition refreshes dependencies.
006E3E30 returns AL0 for retained type/explicit-node/scene-ancestry/object-ancestor
cases and AL1 to reject. A pure same-lot predicate is a restricted projection.

00690260 basin-interior flag selects reference(current|80), compare3F,
KEEP/KEEP/REPLACE, write80. Separate40-bit paths are distinct. The material
shader owns its final water-pass test; draw-state setup alone is not the shader.
The [original PASS states](../../evidence/shaders/basin-and-subtractive-pass-states.tsv)
contain16 BasinWater passes: STENCILENABLE1, EQUAL, ref/mask80, write0, KEEP;
alpha-blend state differs by variant. The two Subtractive passes set REVSUBTRACT,
ONE/ONE and ZENABLE1. Their selected shader hashes are6AAD2AD5/0B272CC5.
0068E470 binds SinkCutout, rows(1,0,x+0.5)/(0,1,0.5-z), heights(y-0.1,y+0.1),
and actual material/reference ownership; RET10/AL status. Scene-coordinate
normalization in the managed renderer is an adapter beyond that original body.

006F5D50 uses135 selectors at00FFA5C0, skips missing entries, unions final bone
positions, expands.15 and includes head0F97B21B radius.30. Derived render-vertex
bounds are not equivalent.006A63F0 returns sunny for room0; other rooms use the
real lookup/status byte.006A31C0 writes raw sunny sourceRGB/zeroalpha, with
enclosed exposure/compression/fill on its separate branch. Entire source and
occlusion kernels remain their own reviewed contracts.

0081F100 includes more path kinds and intrusive retain/release than the current
walking projection. Portal50660D52 forbids successorSimC6600B67/Portal.
00819FA0 chooses ordinary approach2, catalog flag10000 approach3, and a special
retained identity approach0.25, splitting native dense nodes. Current interpolated
corner splitting is not proof of all native route construction.

## Tree object primitives, state and variation

007B7310 stores raw matrix m00/m02 and translation;0070D6B0 reconstructs yaw
with no scalar scale or normalization.0095BF50 forms Mi*inverse(M0), scaling
basis rows when requested.0095A490 unions positions in first-tree space, then
widens by template bounds times first-tree scale only.0095B990 consumes object
quaternion/translation and refreshes actual primitive state; its inferred pointer
prototype is not a Matrix4x4 ABI.

0095A460 selects finalized parameterA6E5F629 and owner low identity.
0095A9A0 initializes scale from one draw (or deterministic0.5), then chooses
variation.0095C160 context<14 reads TGI, otherwise narrow handle; context>4
has count and0x44-byte wire records into0x50-byte live records.0095A6A0 writes
handle, variationDWORD, count, matrix16float plus scale; world bounds and normal
are reconstructed rather than serialized there.0095C480 property primitives
have their separate import path. Other original context/template/lifetime branches
are not implied by a detached17-float row projection.

007D2340 indexes raw words by unsigned ownerLow%1999. Near-zero variance is
inclusive[-2^-23,+2^-23]; NaN takes arithmetic. Normalization uses signed FILD,
conditional exact double+2^32, then binary64 bits3DF0000000100000 and one final
FSTPfloat. The constant is exactly(2^32+1)*2^-64, not exact2^-32. The exact
unsigned-word product fits64 significant bits. Ambient x87 precision/rounding
control beyond the selected instructions is not established here.

004FAA60 wraps state*278DDE6D, signed FILD, FMULbinary32exact2^-32, FADD0.5,
clamps>=1 to0 and returnsST0 without a local finalfloatstore. Reseed004FA9F0
replaces only0/FFFFFFFF with lowRDTSC. This RNG differs from table normalization.

0095D5D0 groups exactSPT, normalized locationlevel and worldgrid cell, retaining
manager collection order. Cell conversion is CVTTSS2SI truncation. First member
survives; later members combine then are destroyed through manager virtual3C,
followed by refresh/notifications and3359DC3C.0095B110 additionally has native
copy-on-write/allocation failure;007B8290 copies one whole primitive and converts
its own worldbounds to its local frame.0095B6E0 emits matrix/radius/halfheight
plus two radius-valued fields; names of the latter remain unrecovered.

## Placement and saved-Sim projection boundary

B3B8E0/B3C1D0/B3C330 are full covered-part surface/inside/slope tests, including
water/roof/catalog exceptions and optional feedback. Known shared flags support
narrow pure predicates; those do not establish the complete original planner.
AFC8D0 exempts catalog+98 bits19/17 or+D0bit11. B45410 always checks lot extent
and signed level before ignore-restrictions can succeed. CFF9E0 retains a separate
special-object flag before ordinary moveObjects handling.

CFFF00 resolves wall/slot/object constraints before grid. AFC020 uses binary32
inverse/multiply, x87FISTP under ambient rounding, binary32 conversion/multiply,
copying the third coordinate. Explicit nearest-even in the current pure helper
is not proof of every original ambient rounding mode.

CFA8F0 is the complete command handler, recovered from original existing Listing
flow with two RET8 paths. Hash05F0D096/nonempty arguments/kind1 writes the payload
byte to011EE7B8, atomically sets owner+D8=0, returnsAL1. Invalid input sets2 and
AL0. The process flag is not a saved game setting.

AEA5D0 checks pond versus floor. AD0470 mode0 checks paired vertices versus local
sea; equality is dry. Other mode queries world terrain and worldsea. Current
finite point predicate does not reproduce all packed-cell/level/neighbor policy.
94F030 loads primary outfit into component+10 and context>19 secondary+20, with
context<14 inlineTGI otherwise narrow handles. Metadata Sim-row projection does
not instantiate scripts or consume every component field.

[Selected build feedback names](../../evidence/objects/build-edit-error-keys.tsv)
retains99 actual string-table entries indexed at01183F60. The complete checked
subset retains exact code/name and string address; it is not all original errors.

This is static original evidence, with physical ABI and decompiler artifacts
qualified inside the canonical C. No native execution, platform acceptance,
full tree/save interchange or malformed-input exhaustiveness follows from export.

## Chimney query counterparts

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 00ACF3D0 | Lot_TestSelectedFloorZone2 | [ASM](../../evidence/native/functions/00ACF3D0_Lot_TestSelectedFloorZone2.asm) ([annotated C](../../evidence/native/functions/00ACF3D0_Lot_TestSelectedFloorZone2.c)) |
| 00ACF4F0 | Lot_TestSelectedFloorZone4 | [ASM](../../evidence/native/functions/00ACF4F0_Lot_TestSelectedFloorZone4.asm) ([annotated C](../../evidence/native/functions/00ACF4F0_Lot_TestSelectedFloorZone4.c)) |
| 00A8C690 | LotLevelHeight_SampleLocalPosition | [ASM](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.asm) ([annotated C](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.c)) |
| 00B9A7A0 | RoofManager_HighestHeightAtPoint | [ASM](../../evidence/native/functions/00B9A7A0_RoofManager_HighestHeightAtPoint.asm) ([annotated C](../../evidence/native/functions/00B9A7A0_RoofManager_HighestHeightAtPoint.c)) |
| 00AD2930 | Lot_TestChimneyCellSupport | [ASM](../../evidence/native/functions/00AD2930_Lot_TestChimneyCellSupport.asm) ([annotated C](../../evidence/native/functions/00AD2930_Lot_TestChimneyCellSupport.c)) |
| 00B482C0 | LotRoom_ResolveForLocalLocation | [ASM](../../evidence/native/functions/00B482C0_LotRoom_ResolveForLocalLocation.asm) ([annotated C](../../evidence/native/functions/00B482C0_LotRoom_ResolveForLocalLocation.c)) |
| 00B94BB0 | RoofManager_TestPointCoverage | [ASM](../../evidence/native/functions/00B94BB0_RoofManager_TestPointCoverage.asm) ([annotated C](../../evidence/native/functions/00B94BB0_RoofManager_TestPointCoverage.c)) |

A8C690 takes signed level, triangularly samples physical floor data and extends
outside stored levels by3; its full outside-lot/world recursion path is distinct.
B9A7A0 iterates level0..lotMax inclusive, asks B94BB0 exact-level/includingeave,
then B99F90 height and keeps greatest above initial0. B94BB0 holds the native roof
manager lock while invoking actual virtual48/50 coverage/eave predicates; its
inferred pointer formal is a packed low-byte mode, not an accepted LPCRITICAL_SECTION
input contract. B482C0 returns signed16 AX for selected room definition.
AD2930 immediately admits level<=0; otherwise AD0040,AD22C0,ACEC50 thenB98530
are ordered alternative support owners. The third word is an excluded Object*
(not flags); the chimney caller supplies null. [Detailed support and typed-cell
contract](../world/lot-structural-support.md) distinguishes all four mechanisms. ACF3D0/ACF4F0 iterate selected quadrant
bits and test compatible region type2/type4. A current constantfalse zone adapter
or room/roof support approximation does not reproduce those original mechanisms.


## Lot tree entry, source retention and clone/publication order

[Complete selected original caller CIL](../../evidence/managed/lot-tree-manager-callers.il.txt)
and [selected decompiled members](../../evidence/managed/lot-tree-manager-callers.cs)
join the same packaged Retail1.67 identities in the
[method/resource index](../../evidence/managed/lot-tree-method-index.tsv).
LotManager.EnterBuildBuyMode0600992D calls World.LotClusterTrees(false) at0085,
after selecting/locking the active lot and dirtying metrics, before Seasons and
BuildBuy listeners. ExitBuildBuyMode0600992E flushes commands, Sleep(0), routing
and conditional Seasons work before the true call at003D on nonnull ActiveLot;
later it refreshes caches/listeners and unlocks speed. ClusterAllLotTrees06009977
iterates sLots.Keys and calls true at001C. SimIFace World06000653 dispatches via
its service; original ScriptCore060008EA/0002 calls native06000773. These are
static calls, not an executed gameplay sequence. Four new complete bodies total
1253CILbytes, each compared to pristine package-extracted DLL bytes; no Mod or
retargeted assembly substitutes for Retail identity.

Registered786C80 resolves the manager only if the global interface and lookup
succeed. True supplies C6DCD0(1,1,0,null); false supplies C71AB0(0). No status is
returned. C6DCD0 receives managerECX/four stackwords/RET10; its recursion flag is
the low byte of the third stackword. If requested, child managers use virtual58
and4C before local95D5D0. The registered lot path requests no recursion/filter.

C71AB0 receives managerECX/one stackword/RET4. TEST BL,BL atC71AB8 establishes
low-byte recursion, despite the C renderer's undefined4* parameter. It first
collects manager vector14..18 objects with Tree component count>1 into a retained
object vector. LOCK increment of object+4 and matching release paths preserve
those source pointers while mutation occurs. Then C71BFA..C71C0E calls
95C620(tree,manager,null), immediately followed by manager virtual3C(source,1).
There is no split-success status branch between these calls. Retained-vector
release BE7D50 and backing allocation release follow the loop.

95C620 is treeECX plus manager/optional callback stackwords, RET8 and no Boolean
result. It requires data and more than one0x50-byte primitive. Each primitive
attempts native clone938CC0(registry,source,0,0,FFFFFFFF). On a nonnull clone it
clears Location flag80 when present, applies row world position, and calls
manager virtual30. Only an admitted clone continues through yaw-matrix /
quaternion rotation, location notification, selected primitive copy7B8290 and
physics refresh95B910. It constructs message3359DC3C carrying full object ID and
retained tree data, enqueues, releases its temporary command, invokes a supplied
callback, conditionally updates manager level occupancy and dispatches event0B.
Null clone or failed insertion advances to the next primitive. Source removal
belongs to C71AB0; no all-clone rollback is visible in these two selected bodies.

95D5D0 keeps exact SPT/normalized location level/world-grid grouping and manager
order. At95D969 CALL95B110 is followed by manager virtual3C destruction at95D97C
with no TEST of returnedAL; COW allocation failure from95B110 must not be recast
as a caller rollback. Final physics/bounds/footprint/location-or-collision refresh
and message publication follow the bucket. Cell conversion is CVTTSS2SI, not
floor for negative inputs. One-by-one append bounds/owner policy in another
runtime is not established by this original final-refresh order.

[Existing693380 enqueue ASM](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.asm)
([qualified C](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.c)) only forwards when
the dispatcher global exists. Tree data retention/temporary command cleanup is
visible here; complete command3359DC3C reader, renderer/GPU completion and every
resource release are still separate. No CPU call return proves a GPU fence.

Open questions remain at938CC0 full component/script clone and allocation /
failure ownership; manager virtual30/3C concrete implementations, callbacks and
world reentry; optional filter/child collection and edge cells; original SSE
rotation conversion precision; complete3359DC3C data reader/retirement. The large
95C620 decompiler contains vector/scalar artifacts; this supplement does not infer
new quaternion constants or numeric parity from that rendering. All three new
native pairs cover complete contiguous owned instructions (1751bytes/533
instructions), not newly created Ghidra functions or modified database bytes.
