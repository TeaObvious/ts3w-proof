# Stair and fence catalog finish compilation

Selected original PC1.67 functions compile retained catalog presets and bind a
material source to its component/key. Names are analyst descriptions, not recovered
source symbols. Physical stack words and AL truth govern where inferred C has
missing arguments or malformed local aliases. Existing prototypes remain unchanged.

## Actual product-key wrappers and full preset identities

A63B40 receives four cdecl stack words: lot, product-key pointer, full preset ID
and output pointer. It looks up the product with literal allowDefault1, replaces
the product-key lane with that resolved pointer and tail-jumps A62DB0. It does not
perform caller cleanup or normalize a full EAX Boolean; its child normalizes AL.
[Stair wrapper ASM](../../evidence/native/functions/00A63B40_StairCatalogPreset_CompileFromProductKey.asm) ([annotated pseudocode](../../evidence/native/functions/00A63B40_StairCatalogPreset_CompileFromProductKey.c)).

The separate fence wrapper has the corresponding physical product-key transport.
[Fence wrapper ASM](../../evidence/native/functions/00A63B20_FencePreset_BuildForProductKey.asm) ([annotated pseudocode](../../evidence/native/functions/00A63B20_FencePreset_BuildForProductKey.c)).
The wall placement producer supplies its current product/preset fields to that
fence path.
[Wall producer ASM](../../evidence/native/functions/00D45FF0_WallPlacementHelper_BuildFencePreset.asm) ([annotated pseudocode](../../evidence/native/functions/00D45FF0_WallPlacementHelper_BuildFencePreset.c)).
The existing stair tool resolves installed/default finish choices and invokes its
stair catalog path; it is a separate complete body with nonowned alignment gaps.
[Stair producer ASM](../../evidence/native/functions/00CF31B0_StairTool_ResolveInstalledOrDefaultFinishes.asm) ([annotated pseudocode](../../evidence/native/functions/00CF31B0_StairTool_ResolveInstalledOrDefaultFinishes.c)).

A62DB0 requires nonnull lot/product, obtains the combined authored/installed count,
resolves the requested full preset ID to an ordinal, checks count/range and the
FFFFFFFF sentinel, then acquires by ordinal. Full ID and ordinal are different
inputs; the ordinal acquisition is not an index/hash reinterpretation.
[Stair compiler ASM](../../evidence/native/functions/00A62DB0_StairCatalogPreset_CompileFromProductAndFullId.asm) ([annotated pseudocode](../../evidence/native/functions/00A62DB0_StairCatalogPreset_CompileFromProductAndFullId.c)).
[Combined-count ASM](../../evidence/native/functions/00C96FA0_StairProduct_CountAuthoredAndInstalledPresets.asm) ([annotated pseudocode](../../evidence/native/functions/00C96FA0_StairProduct_CountAuthoredAndInstalledPresets.c)).
[Full-ID resolution ASM](../../evidence/native/functions/00C96CC0_StairProduct_ResolveFullPresetIdToOrdinal.asm) ([annotated pseudocode](../../evidence/native/functions/00C96CC0_StairProduct_ResolveFullPresetIdToOrdinal.c)).
[Ordinal acquisition ASM](../../evidence/native/functions/00C96BB0_StairProduct_GetPresetByOrdinal.asm) ([annotated pseudocode](../../evidence/native/functions/00C96BB0_StairProduct_GetPresetByOrdinal.c)).
[First-authored-ID ASM](../../evidence/native/functions/00C96A80_StairProduct_FirstAuthoredPresetId.asm) ([annotated pseudocode](../../evidence/native/functions/00C96A80_StairProduct_FirstAuthoredPresetId.c)).

## Compiler roles and retained output

After preset acquisition/validation, A62DB0 builds programs, traverses the result
vector and retains programs into the output. It excludes resource type0341ACC9
from the diffuse/specular role lanes, reads the role byte, and requires diffuse.
It creates a distinct044AE110 saved-design identity, retains/registers the selected
resources and publishes output fields in the actual Listing order. Failure clears
AL; success writes AL1. Unrelated high EAX bits are not a Boolean contract, and
inferred C aliases are not authority for stack/output roles.

The corresponding fence compiler remains its own existing original body.
[Fence compiler ASM](../../evidence/native/functions/00A62A60_FencePreset_BuildFinishPrograms.asm) ([annotated pseudocode](../../evidence/native/functions/00A62A60_FencePreset_BuildFinishPrograms.c)).
The shared native compiler/acquisition children do not establish a managed worker,
cache identity, generation or completion protocol. Full native bank/default and
installed resource selection remain the upstream owners' contracts.

## Material source binding

B37B60 receives ECX plus two physical stack inputs and returns with RET8. Its
inferred C omits the second input; that omission is not a physical ABI change.
It enters receiver+28's critical section, calls B31970 and then the existing
virtual service, queries049CAE8B, conditionally acquires/stores/releases the
component at+AC, releases the acquired source and requires the component. It then
copies the second input's four DWORDs into+B8..C4, calls B37120 and leaves the
critical section. Both paths normalize AL only. B31970's deeper clearing policy
and the service/refresh children's complete semantics are not inferred here.
[Binding ASM](../../evidence/native/functions/00B37B60_MaterialSource_BindComponentAndResourceKey.asm) ([annotated pseudocode](../../evidence/native/functions/00B37B60_MaterialSource_BindComponentAndResourceKey.c)).

[Incoming transfers](../../evidence/native/catalog-finish-incoming.tsv) preserve
physical calls and tail jumps with honest known/missing caller coverage.
[Selected tail transfer](../../evidence/native/catalog-finish-tail-transfers.tsv)
records A63B40's E9 separately from the shared encoded-E8 direct-call index.
These are static original contracts; no runtime finish-worker, geometry or
scheduler equivalence is asserted.
