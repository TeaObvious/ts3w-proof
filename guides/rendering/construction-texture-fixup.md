# Original saved construction texture fixup

These analyst names describe selected PC1.67 native responsibilities, not recovered original symbols. The six genuine annotated pairs retain their existing inferred signatures; instructions control physical ABI and ownership.

| Entry / role | Owned bytes / instructions | Evidence |
| --- | --- | --- |
| 006fe070 TexCompFixupLOD_Initialize | 82 / 26 | [ASM](../../evidence/native/functions/006FE070_TexCompFixupLOD_Initialize.asm) ([C](../../evidence/native/functions/006FE070_TexCompFixupLOD_Initialize.c)) |
| 00b28bd0 ModularStairsRenderer_PrepareComponentSceneModel | 1277 / 420 | [ASM](../../evidence/native/functions/00B28BD0_ModularStairsRenderer_PrepareComponentSceneModel.asm) ([C](../../evidence/native/functions/00B28BD0_ModularStairsRenderer_PrepareComponentSceneModel.c)) |
| 007227b0 TexCompFixupLOD_Apply | 693 / 230 | [ASM](../../evidence/native/functions/007227B0_TexCompFixupLOD_Apply.asm) ([C](../../evidence/native/functions/007227B0_TexCompFixupLOD_Apply.c)) |
| 00722a70 TexCompFixupLOD_FormatDescription | 123 / 47 | [ASM](../../evidence/native/functions/00722A70_TexCompFixupLOD_FormatDescription.asm) ([C](../../evidence/native/functions/00722A70_TexCompFixupLOD_FormatDescription.c)) |
| 006db3d0 ModelLOD_CloneWithMaterialSubstitutions | 126 / 54 | [ASM](../../evidence/native/functions/006DB3D0_ModelLOD_CloneWithMaterialSubstitutions.asm) ([C](../../evidence/native/functions/006DB3D0_ModelLOD_CloneWithMaterialSubstitutions.c)) |
| 006db170 ModelLOD_ApplyMaterialSubstitutions | 598 / 193 | [ASM](../../evidence/native/functions/006DB170_ModelLOD_ApplyMaterialSubstitutions.asm) ([C](../../evidence/native/functions/006DB170_ModelLOD_ApplyMaterialSubstitutions.c)) |

## Original contract

B2AC90 retains three 16-byte design keys in the stair flight descriptor. B28BD0 and the fence rail/post paths select exactly two texture keys for TexCompFixupLOD; the saved preset identity is independent. The initializer copies those keys and clears two flag bits; material application occurs later through the selected LOD callback.

The applied callback creates type4 diffusemap then specularmap overrides when each key TYPE word is nonzero. Names use lowercased FNV1. Flagbit0 controls resource-type change; bit1 controls append-missing and the optional AlphaMaskThreshold parameter. Constructor-cleared flags select neither behavior in this two-key path. The AlphaMaskThreshold pointer does not establish a physical-file scalar runtime value.

Model byte+72 selects clone/refusal or in-place substitution. No overrides returns the original with retained reference. Clone copy refusal returns AL0 before writing the output; successful AL1 does not normalize all EAX bits. The generic installer pairs submodels, excludes a matching descriptor hashC09C7582, reuses substituted materials by nonzero source hash, and acquires/installs/invalidates with explicit virtual reference lifetimes.

MaterialDef_CreateSubstituted retains unmatched parameters when appendMissing0. For selected resource-key tags it uses the first matching name hash, marks that override used before compatibility checking, and compares old versus replacement ResourceKey.TYPE when allowResourceTypeChange0. This establishes per-lane TYPE compatibility, not full tagged-table/duplicate or backend behavior.

The formatter uses an ECX receiver and one stackword destination/RET4 even though its inferred signature omits the receiver. That inference is retained, with the limitation inside the actual annotated C.

## Existing canonical producer, reader and material counterpart

- 00b2ac90 ModularStairsRenderer_BuildStepObjects: [ASM](../../evidence/native/functions/00B2AC90_ModularStairsRenderer_BuildStepObjects.asm) ([C](../../evidence/native/functions/00B2AC90_ModularStairsRenderer_BuildStepObjects.c)).
- 00b21750 ModularStairs_ReadManager: [ASM](../../evidence/native/functions/00B21750_ModularStairs_ReadManager.asm) ([C](../../evidence/native/functions/00B21750_ModularStairs_ReadManager.c)).
- 00a6b020 FenceRenderer_AddRailSceneModel: [ASM](../../evidence/native/functions/00A6B020_FenceRenderer_AddRailSceneModel.asm) ([C](../../evidence/native/functions/00A6B020_FenceRenderer_AddRailSceneModel.c)).
- 00a6b510 FenceRenderer_AddPostSceneModel: [ASM](../../evidence/native/functions/00A6B510_FenceRenderer_AddPostSceneModel.asm) ([C](../../evidence/native/functions/00A6B510_FenceRenderer_AddPostSceneModel.c)).
- 006cb470 MaterialDef_CreateSubstituted: [ASM](../../evidence/native/functions/006CB470_MaterialDef_CreateSubstituted.asm) ([C](../../evidence/native/functions/006CB470_MaterialDef_CreateSubstituted.c)).

Those five canonical pairs remain the single reference for their bodies. 6CB470 has a retained linear disassembly window, not a fresh owned Listing.

## Data, calls and limits

[Selected physical strings and pointer words](../../evidence/native/construction-texture-fixup-data.tsv) distinguish constructor vtable associations from callback bodies and the following table. [Incoming sites](../../evidence/native/construction-texture-fixup-incoming.tsv) distinguish selected owned instructions from retained caller-owner metadata. [Indirect calls](../../evidence/native/construction-texture-fixup-indirect-calls.tsv) retain encoded operands without guessing runtime destinations; the shared direct-call index contains only physical E8 transfers for these bodies.

The six pairs cover2,899 owned bytes /970 instructions. 6DB170 owns two ranges; its envelope includes the six-byte6DB1CA..6DB1CF gap, which is not manufactured as Listing instructions. Other code-index envelope lengths likewise describe addresses, not ownership of every byte.

Native deferred scene/LOD/material publication and lifetime remain distinct from eager host texture lookup and copied-range publication. Allocation/refusal timing, descriptor-hash source mapping, complete material-table/backend semantics and broader managed/render lifecycle are not established by these selected bodies. No runtime BSS value, shader-name interpretation or complete rendering equivalence follows from a static operand or analyst name.
