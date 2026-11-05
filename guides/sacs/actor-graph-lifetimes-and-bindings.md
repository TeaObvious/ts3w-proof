# SACS actor graph lifetimes and bindings

Reference: original PC1.67 TS3W.exe identified centrally in the native reference.
Static instruction/data evidence only; no game or test execution. Analyst names
are inferred roles. Each pair below is the complete existing body envelope and
actual annotated Ghidra C after all final names were applied. Annotations describe
physical ABI and bound the decompiler artifacts; zero-argument inferred signatures
are not the original ABI. Original bytes were checked and database saved clean.
One new function boundary007F62C0..007F630F is grounded in actor-operation VTable
slot+2C, original code and terminal RET10. The existing registered symbol00767160
had only a one-byte body: its complete00767160..007671CC body was recovered from
original control flow and both returns. Its referenced jump table007671D0..DF is
exported as nonowned data. Neither recovery overlaps another function or patches bytes.

## Canonical pairs

| Entry / analyst role | Original instructions and actual rendering |
| --- | --- |
| 007fe870 SacsState_ReadRecord | [ASM](../../evidence/native/functions/007FE870_SacsState_ReadRecord.asm) ([annotated pseudocode](../../evidence/native/functions/007FE870_SacsState_ReadRecord.c)) |
| 007fd650 SacsState_ApplyAuthoredFlagMask | [ASM](../../evidence/native/functions/007FD650_SacsState_ApplyAuthoredFlagMask.asm) ([annotated pseudocode](../../evidence/native/functions/007FD650_SacsState_ApplyAuthoredFlagMask.c)) |
| 007fc080 SacsPaths_EnumerateSimplePaths | [ASM](../../evidence/native/functions/007FC080_SacsPaths_EnumerateSimplePaths.asm) ([annotated pseudocode](../../evidence/native/functions/007FC080_SacsPaths_EnumerateSimplePaths.c)) |
| 007fc3d0 SacsPaths_EnumerateFilterAndSelect | [ASM](../../evidence/native/functions/007FC3D0_SacsPaths_EnumerateFilterAndSelect.asm) ([annotated pseudocode](../../evidence/native/functions/007FC3D0_SacsPaths_EnumerateFilterAndSelect.c)) |
| 007f81d0 SacsRandomNode_ChooseAndAdmitChildren | [ASM](../../evidence/native/functions/007F81D0_SacsRandomNode_ChooseAndAdmitChildren.asm) ([annotated pseudocode](../../evidence/native/functions/007F81D0_SacsRandomNode_ChooseAndAdmitChildren.c)) |
| 007fa1e0 SacsRandomNode_ReadOutcomes | [ASM](../../evidence/native/functions/007FA1E0_SacsRandomNode_ReadOutcomes.asm) ([annotated pseudocode](../../evidence/native/functions/007FA1E0_SacsRandomNode_ReadOutcomes.c)) |
| 007ff6f0 SacsBranchNode_AdmitValueOrDefault | [ASM](../../evidence/native/functions/007FF6F0_SacsBranchNode_AdmitValueOrDefault.asm) ([annotated pseudocode](../../evidence/native/functions/007FF6F0_SacsBranchNode_AdmitValueOrDefault.c)) |
| 007ffb10 SacsParameterNode_DefaultBranchHash | [ASM](../../evidence/native/functions/007FFB10_SacsParameterNode_DefaultBranchHash.asm) ([annotated pseudocode](../../evidence/native/functions/007FFB10_SacsParameterNode_DefaultBranchHash.c)) |
| 007ffb20 SacsParameterNode_ReadCurrentValue | [ASM](../../evidence/native/functions/007FFB20_SacsParameterNode_ReadCurrentValue.asm) ([annotated pseudocode](../../evidence/native/functions/007FFB20_SacsParameterNode_ReadCurrentValue.c)) |
| 007ffb40 SacsParameterNode_ReadMatches | [ASM](../../evidence/native/functions/007FFB40_SacsParameterNode_ReadMatches.asm) ([annotated pseudocode](../../evidence/native/functions/007FFB40_SacsParameterNode_ReadMatches.c)) |
| 00800d20 SacsStrings_ExpandParameterTokens | [ASM](../../evidence/native/functions/00800D20_SacsStrings_ExpandParameterTokens.asm) ([annotated pseudocode](../../evidence/native/functions/00800D20_SacsStrings_ExpandParameterTokens.c)) |
| 007f83c0 SacsClipNode_ResolveAgeVariantKey | [ASM](../../evidence/native/functions/007F83C0_SacsClipNode_ResolveAgeVariantKey.asm) ([annotated pseudocode](../../evidence/native/functions/007F83C0_SacsClipNode_ResolveAgeVariantKey.c)) |
| 007f5b30 SacsClip_SelectAgeCandidateBits | [ASM](../../evidence/native/functions/007F5B30_SacsClip_SelectAgeCandidateBits.asm) ([annotated pseudocode](../../evidence/native/functions/007F5B30_SacsClip_SelectAgeCandidateBits.c)) |
| 007fd4c0 SacsParameter_ResolveText | [ASM](../../evidence/native/functions/007FD4C0_SacsParameter_ResolveText.asm) ([annotated pseudocode](../../evidence/native/functions/007FD4C0_SacsParameter_ResolveText.c)) |
| 007fd280 SacsHash_ResolveAndWidenName | [ASM](../../evidence/native/functions/007FD280_SacsHash_ResolveAndWidenName.asm) ([annotated pseudocode](../../evidence/native/functions/007FD280_SacsHash_ResolveAndWidenName.c)) |
| 007d9040 KeyNames_FindFirstMappedName | [ASM](../../evidence/native/functions/007D9040_KeyNames_FindFirstMappedName.asm) ([annotated pseudocode](../../evidence/native/functions/007D9040_KeyNames_FindFirstMappedName.c)) |
| 0072f230 KeyNameMap_FindTextByKey | [ASM](../../evidence/native/functions/0072F230_KeyNameMap_FindTextByKey.asm) ([annotated pseudocode](../../evidence/native/functions/0072F230_KeyNameMap_FindTextByKey.c)) |
| 007fc820 SacsPaths_SelectFirstStep | [ASM](../../evidence/native/functions/007FC820_SacsPaths_SelectFirstStep.asm) ([annotated pseudocode](../../evidence/native/functions/007FC820_SacsPaths_SelectFirstStep.c)) |
| 007fc390 SacsPaths_EnumerateTowardState | [ASM](../../evidence/native/functions/007FC390_SacsPaths_EnumerateTowardState.asm) ([annotated pseudocode](../../evidence/native/functions/007FC390_SacsPaths_EnumerateTowardState.c)) |
| 007fc280 SacsPaths_BuildTraversalList | [ASM](../../evidence/native/functions/007FC280_SacsPaths_BuildTraversalList.asm) ([annotated pseudocode](../../evidence/native/functions/007FC280_SacsPaths_BuildTraversalList.c)) |
| 007f6220 SacsActorOperation_ApplyMirror | [ASM](../../evidence/native/functions/007F6220_SacsActorOperation_ApplyMirror.asm) ([annotated pseudocode](../../evidence/native/functions/007F6220_SacsActorOperation_ApplyMirror.c)) |
| 007f62c0 SacsActorOperation_RestoreMirror | [ASM](../../evidence/native/functions/007F62C0_SacsActorOperation_RestoreMirror.asm) ([annotated pseudocode](../../evidence/native/functions/007F62C0_SacsActorOperation_RestoreMirror.c)) |
| 007f4b50 SacsDecisionGraph_DispatchPhase | [ASM](../../evidence/native/functions/007F4B50_SacsDecisionGraph_DispatchPhase.asm) ([annotated pseudocode](../../evidence/native/functions/007F4B50_SacsDecisionGraph_DispatchPhase.c)) |
| 007f9ae0 SacsCreatePropNode_Execute | [ASM](../../evidence/native/functions/007F9AE0_SacsCreatePropNode_Execute.asm) ([annotated pseudocode](../../evidence/native/functions/007F9AE0_SacsCreatePropNode_Execute.c)) |
| 007f5e00 SacsCreatePropNode_ResolveResourceKey | [ASM](../../evidence/native/functions/007F5E00_SacsCreatePropNode_ResolveResourceKey.asm) ([annotated pseudocode](../../evidence/native/functions/007F5E00_SacsCreatePropNode_ResolveResourceKey.c)) |
| 00581820 SceneEntity_RequestPropOwnership | [ASM](../../evidence/native/functions/00581820_SceneEntity_RequestPropOwnership.asm) ([annotated pseudocode](../../evidence/native/functions/00581820_SceneEntity_RequestPropOwnership.c)) |
| 005820b0 SceneEntity_ReleaseOwnedProp | [ASM](../../evidence/native/functions/005820B0_SceneEntity_ReleaseOwnedProp.asm) ([annotated pseudocode](../../evidence/native/functions/005820B0_SceneEntity_ReleaseOwnedProp.c)) |
| 005823c0 AnimationNamespaces_InsertFirstBinding | [ASM](../../evidence/native/functions/005823C0_AnimationNamespaces_InsertFirstBinding.asm) ([annotated pseudocode](../../evidence/native/functions/005823C0_AnimationNamespaces_InsertFirstBinding.c)) |
| 007f88c0 SacsNamespaces_AppendParameterAliases | [ASM](../../evidence/native/functions/007F88C0_SacsNamespaces_AppendParameterAliases.asm) ([annotated pseudocode](../../evidence/native/functions/007F88C0_SacsNamespaces_AppendParameterAliases.c)) |
| 007f4130 SacsNamespaces_AppendDriverActors | [ASM](../../evidence/native/functions/007F4130_SacsNamespaces_AppendDriverActors.asm) ([annotated pseudocode](../../evidence/native/functions/007F4130_SacsNamespaces_AppendDriverActors.c)) |
| 007f3d50 SacsContext_FindActorByHash | [ASM](../../evidence/native/functions/007F3D50_SacsContext_FindActorByHash.asm) ([annotated pseudocode](../../evidence/native/functions/007F3D50_SacsContext_FindActorByHash.c)) |
| 007f3d20 SacsContext_FindDefinitionActor | [ASM](../../evidence/native/functions/007F3D20_SacsContext_FindDefinitionActor.asm) ([annotated pseudocode](../../evidence/native/functions/007F3D20_SacsContext_FindDefinitionActor.c)) |
| 005695a0 ClipController_ResolveIkTargetActors | [ASM](../../evidence/native/functions/005695A0_ClipController_ResolveIkTargetActors.asm) ([annotated pseudocode](../../evidence/native/functions/005695A0_ClipController_ResolveIkTargetActors.c)) |
| 00577be0 ClipIkInfo_BindNamespaceEntity | [ASM](../../evidence/native/functions/00577BE0_ClipIkInfo_BindNamespaceEntity.asm) ([annotated pseudocode](../../evidence/native/functions/00577BE0_ClipIkInfo_BindNamespaceEntity.c)) |
| 004ff850 CString_CompareFoldedTableBytes | [ASM](../../evidence/native/functions/004FF850_CString_CompareFoldedTableBytes.asm) ([annotated pseudocode](../../evidence/native/functions/004FF850_CString_CompareFoldedTableBytes.c)) |
| 007fd180 SacsParameter_SetHashAndClearText | [ASM](../../evidence/native/functions/007FD180_SacsParameter_SetHashAndClearText.asm) ([annotated pseudocode](../../evidence/native/functions/007FD180_SacsParameter_SetHashAndClearText.c)) |
| 008011d0 SacsDriver_WriteStateAndParameters | [ASM](../../evidence/native/functions/008011D0_SacsDriver_WriteStateAndParameters.asm) ([annotated pseudocode](../../evidence/native/functions/008011D0_SacsDriver_WriteStateAndParameters.c)) |
| 00801ba0 SacsDriver_ReadHashOrDefinitionDefault | [ASM](../../evidence/native/functions/00801BA0_SacsDriver_ReadHashOrDefinitionDefault.asm) ([annotated pseudocode](../../evidence/native/functions/00801BA0_SacsDriver_ReadHashOrDefinitionDefault.c)) |
| 007f3b80 SacsContext_ReadParameterHash | [ASM](../../evidence/native/functions/007F3B80_SacsContext_ReadParameterHash.asm) ([annotated pseudocode](../../evidence/native/functions/007F3B80_SacsContext_ReadParameterHash.c)) |
| 007f3b60 SacsContext_ReadParameterText | [ASM](../../evidence/native/functions/007F3B60_SacsContext_ReadParameterText.asm) ([annotated pseudocode](../../evidence/native/functions/007F3B60_SacsContext_ReadParameterText.c)) |
| 007f3cc0 SacsContext_ResolveAnimationPriority | [ASM](../../evidence/native/functions/007F3CC0_SacsContext_ResolveAnimationPriority.asm) ([annotated pseudocode](../../evidence/native/functions/007F3CC0_SacsContext_ResolveAnimationPriority.c)) |
| 007d7860 AnimationResource_ApplyProductGroupBits | [ASM](../../evidence/native/functions/007D7860_AnimationResource_ApplyProductGroupBits.asm) ([annotated pseudocode](../../evidence/native/functions/007D7860_AnimationResource_ApplyProductGroupBits.c)) |
| 00801870 SacsEventFilters_RemoveFirstExact | [ASM](../../evidence/native/functions/00801870_SacsEventFilters_RemoveFirstExact.asm) ([annotated pseudocode](../../evidence/native/functions/00801870_SacsEventFilters_RemoveFirstExact.c)) |
| 00802030 SacsEventFilters_AppendRow | [ASM](../../evidence/native/functions/00802030_SacsEventFilters_AppendRow.asm) ([annotated pseudocode](../../evidence/native/functions/00802030_SacsEventFilters_AppendRow.c)) |
| 00767160 ScriptCore_SACS__SACS_UpdateEventFilterImpl | [ASM](../../evidence/native/functions/00767160_ScriptCore_SACS__SACS_UpdateEventFilterImpl.asm) ([annotated pseudocode](../../evidence/native/functions/00767160_ScriptCore_SACS__SACS_UpdateEventFilterImpl.c)) |
| 008018e0 SACS_AdmitFilteredEvent | [ASM](../../evidence/native/functions/008018E0_SACS_AdmitFilteredEvent.asm) ([annotated pseudocode](../../evidence/native/functions/008018E0_SACS_AdmitFilteredEvent.c)) |

## Selected contracts and differences

- Synchronized request008029E0 enumerates paths through007FC390 then ANDs every
  state byte+4C with initially true accumulator.007FC390 status means valid input
  enumeration invoked, not nonempty paths.007FC280 itself returns nonempty status;
 007FC3D0 adds loop fallback and private-path preference;007FC820 selects first state.
  Native excluded pointer checks precede target admission and direct self is rejected.
  Current BFS's target-by-chunk before excluded/self checks differs at boundaries.
- Mirror node007F6220 saves actor entity byte+25 in per-node data+4 under admission;
  phase3+2C reaches007F62C0, checks/clears active byte and restores it.007F4B50
  consumes the visited deque front, so cleanup is traversal order, not lexical reverse.
  Current actor-hash dictionary and tuple lists are projections, not entity identity.
- CreateProp007F9AE0 includes parameterized key resolution007F5E00 and native
 02D6E559 branch beyond current two admitted types.00581820 refuses ownership
  conversion of an ordinary bound object.005820B0 dispatches a retained scene/event
 7829873A or uses its flag8 branch; a call is not proof of immediate world deletion.
- Namespace selection in007F8DC0 uses physical CLIP instance fold, then source-scene
 name hash; the current third pre-age authored-fold reconciliation is unverified
 original behavior.005823C0 keeps the first namespace and retains its entity.
 Rows precede007F88C0 numbered parameter aliases then007F4130 declared actors.
 Numbered UTF16 From/To literals and first absent From termination are verified;
 native container duplicate iteration is not current list-order proof.
- Target bindings00577BE0 preserve scene-entity/namespace identity.005695A0 resolves
 owner-equal target GUID to the actual playing actor, then requires real component,
 rig and bone. Current GUID projection alone does not establish final IK output.
 Suffix comparator004FF850 uses table0114DB30; ASCII uppercase folds to lowercase,
 while current Ordinal suffix checks are case-sensitive. High-byte behavior is bounded.
- Hash setter007FD180 frees text then stores hash.00801BA0 treats stored hash0 as
 authored default; raw current dictionary can retain explicit0; the bounded Bug441 correction makes actual public/graph reads use the declared default without replacing raw0.008011D0 separates hash
 and text save lists but is not a complete recovered stream contract here.
- Play priority flag4 takes node+58, otherwise007F3CC0 uses mutable driver+38 with
 -2 sentinel to machine+34, or10000 for absent driver. Current constructor override
 is a separate source of state; identical scalar selection is not full parity.
- Registration00767160 physically takes five caller-cleaned stack dwords: handle,
 type, subtype, id, operation. Unsigned operation>3 returns; jump-table entries
 00767191/00767195/007671AF/007671B3 establish0 one-shot append,1 persistent append,
 2/3 first-exact removal. Its old four-argument stdcall decompiler signature and
 shifted arguments are artifacts, not the physical ABI. Only lowbyte flag is
 initialized; removal consumes but does not read that fourth leaf slot.
- Native filter leaves append duplicate16-byte rows, remove first exact triple,
 and consume all matched one-shots under zero wildcards.008018E0 requires a bound
 queue, delivers once and retains/releases event. Fourth slot of removal ABI is
 consumed but unused, despite decompiler signature. Current lock/snapshot and
 nonconsuming Matches are separate host mechanisms.

## Scope limits

Full graph scheduling, actor admission, native object-creation/destruction receivers,
namespace/rig descriptor loading, hash/RNG mappings, invalid-resource transaction
policy, native thread synchronization and complete persistence streams remain
bounded children. Current diagnostic counters have no claimed original equivalent.
Neither this reference nor C# source extraction changes current semantics or asserts
runtime acceptance. Read entry annotations for exact verified widths and constants.
See [JAZZ readers and selection](resource-graphs-and-selection.md) for the related
prior mechanisms; their canonical pairs above were refreshed after final names.

[Current request/parameter comparison](README.md#current-host-request-and-parameter-boundaries) adds actual setter/slot lookup and verified effective-zero rule; other enumeration/text/admission/cache/private/lifetime differences remain open.
