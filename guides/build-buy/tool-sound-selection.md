# Build/Buy sound selection and actual catalog inputs

Original PC1.67 TS3W.exe SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Four actual annotated C/fullowned Listing pairs:2494original bytes/825instructions.
Names are analyst-assigned. Physical instructions govern ABI and arithmetic;
prototype omissions in the decompiler are not repaired by guessing.

|Entry|Analyst name|Owned bytes|Instructions|Actual pair|
|---|---|---:|---:|---|
|`00cd3a20`|UserTool_SubmitUndoableWithCostEffects|675|228|[full owned ASM](../../evidence/native/functions/00CD3A20_UserTool_SubmitUndoableWithCostEffects.asm) ([annotated C](../../evidence/native/functions/00CD3A20_UserTool_SubmitUndoableWithCostEffects.c))|
|`00d04700`|UserToolObject_CommitPlacementWithSound|1242|413|[full owned ASM](../../evidence/native/functions/00D04700_UserToolObject_CommitPlacementWithSound.asm) ([annotated C](../../evidence/native/functions/00D04700_UserToolObject_CommitPlacementWithSound.c))|
|`00d3b8c0`|WallTool_DragWithCostSound|541|174|[full owned ASM](../../evidence/native/functions/00D3B8C0_WallTool_DragWithCostSound.asm) ([annotated C](../../evidence/native/functions/00D3B8C0_WallTool_DragWithCostSound.c))|
|`00a8b160`|Catalog_TestGardenCategoryOrLowFunctionBit31|36|10|[full owned ASM](../../evidence/native/functions/00A8B160_Catalog_TestGardenCategoryOrLowFunctionBit31.asm) ([annotated C](../../evidence/native/functions/00A8B160_Catalog_TestGardenCategoryOrLowFunctionBit31.c))|

## Original producer/consumer closure

Existing [C97A00 full owned Listing](../../evidence/native/functions/00C97A00_Catalog_TestIntersectionCategoryOrD0Bit4.asm)
([annotated C](../../evidence/native/functions/00C97A00_Catalog_TestIntersectionCategoryOrD0Bit4.c)) establishes
ECX catalog, no stack arguments/plainRET/fullEAX0/1:
type98&00100000 OR categoryD0&4000010A OR D0&4. Its complete owned Listing is
41bytes/12instructions.


A8B160's fullEAX predicate tests LOW function-subcategory B8&80000000 OR
categoryD0&E00. D04700 tests C97A00 first, then A8B160, after placement/callbacks
and nonnull catalog/tool70==0 gate. Thus door takes precedence, then garden,
then ordinary. Tool70 broader admission and transitive placement remain open.
Existing [catalog reader C98660](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.c)
and [normalizer C97910](../../evidence/native/functions/00C97910_ObjectProduct_DeriveLegacyBuildCategories.c) retain
raw type98, function B8/BC and effective categoryD0. Zero function flags default
to high bit63, not LOWbit31. All4333reused owned bytes freshly match the PE.

The bounded existing initializer instruction sequences retain seven25-byte/6instruction pre-existing nonfunction spans. Their exact
PUSH string/CALL7D0090/EAX-EDX key-store/RET producers establish buy/sell/object/
door/garden/wall/walldelete names. No fake C, function, body or index rows are
created for them. [Original constants and strings](../../evidence/native/data/tool-sound-selection-data.txt)
retain raw .01, zero,2^-23cost epsilon, .001pointer epsilon and seven names.
Imported BSS target storage is not treated as live key values.

D3B8C0 is physically ECX+twoDWORDstackslots/RET8; the second is pointer
coordinates and first has no selected-body input read. Samples old/new virtual34
float costs around rebuild. Endpoint/level/.001 and A70020 geometry gates precede
SUBSS new-old; SUBSS2^-23 with ordered>0 chooses wall011EC0A8; otherwise
ADDSS2^-23 with ordered<0 chooses delete011EC090. Two-word keys submit through
[CD04A0](../../evidence/native/functions/00CD04A0_BuildBuy_PlayKeyedSound.c). Full fractional undoable/geometry semantics are separate child contracts;
arbitrary FPU/JIT instruction/control-state equivalence is not inferred.

CD3A20 physically ECX+undoable pointer+low-byte option in2DWORDslots/RET8. Raw
cost virtual34, absolute .01gate, stored cost rounding under ambient native FP
state and forced signed nonzero charge precede cost effects. Sound requires
byte1Cclear and effect20present or optiontrue. Positive stops prior tool30 with
parameter0, allocates/stores ID and uses
[860880](../../evidence/native/functions/00860880_Audio_SubmitKeyedPlayCommand.c); negative uses CD04A0.
Its final D39980 history submission follows cost/effect/audio. The complete rounding/effect/buy-ID/undoable/callback transaction remains a
separate transitive contract; selected bodies do not close all child behavior.
