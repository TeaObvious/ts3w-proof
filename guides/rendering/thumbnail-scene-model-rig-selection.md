# Thumbnail scene model preparation and named custom rigs

Original PC1.67 scene-request preparation and its actual named-rig consumer.
These are complete owned functions; the small lookup does not establish the
catalog's initialization or ready-state producer.

## Physical entry and return contracts

| Function | Complete original body | Physical ABI | Interpretation limit |
| --- | --- | --- | --- |
| ThumbnailScene_PrepareRequestModels, D54DA0 | 1497 instructions, 5947 bytes, D54DA0..D564DA | receiver ECX, request pointer Stack4, RET4; eleven returns each write AL0 or AL1 | Upper EAX is unspecified. Existing undefined4/EAX decompiler metadata is retained; it is not a full-EAX Boolean |
| CustomLightRigCatalog_FindReadyName, 6AD190 | 14 instructions, 41 bytes,6AD190..6AD1B8 | receiver ECX, raw name DWORD Stack4, EAX row pointer/null, RET4 | Existing int-pointer/raw-int metadata is retained; signed-looking decompiler types do not change the exact DWORD equality or establish a complete class type |

[Preparation ASM](../../evidence/native/functions/00D54DA0_ThumbnailScene_PrepareRequestModels.asm) ([C](../../evidence/native/functions/00D54DA0_ThumbnailScene_PrepareRequestModels.c)).
[Lookup ASM](../../evidence/native/functions/006AD190_CustomLightRigCatalog_FindReadyName.asm) ([C](../../evidence/native/functions/006AD190_CustomLightRigCatalog_FindReadyName.c)).

## Complete owner, distinct model branches

D54DA0 can reuse a manager-held scene object or prepare pending/direct/catalog
model collections. It handles material/geometry state, selected transforms,
request+A8..AC vector entries and temporary reference release. Different resource
branches, fur/pending work and model arrays remain in their actual body; no claim
that one common rig assignment describes them all.

The additional appended-model branch at D5521B..22 submits E1C27CD7 with override1.
Ordinary preparation separately initializes fallback E1C27CD7 atD55C95. In its
OBJD319E4F1D branch, D55EF9 calls A8B160 and true selects368392A7 atD55F06. The
separate49CA4CD branch selects622F1A85; fence418FE2A has59679982 and its own
model-array/transform work. These constants describe those branches, not a new
universal resource factory.

[Garden predicate ASM](../../evidence/native/functions/00A8B160_Catalog_TestGardenCategoryOrLowFunctionBit31.asm) ([C](../../evidence/native/functions/00A8B160_Catalog_TestGardenCategoryOrLowFunctionBit31.c))
is the complete10-instruction36-byte operation: low function-subcategory DWORD+B8
bit31 or effective build DWORD+D0 maskE00. High function-subcategory default bit63
is a different bit and is not the tested low-word mask.

At D563EB, the resolved model-key low DWORD carried in stack+30 is pushed. D563F0
obtains the existing manager receiver; D563F7 calls6AD190. D563FC tests the pointer
result. D563FE reloads that raw model name; if null, D56404 instead loads the
category fallback from stack+5C. D56412..18 submits override1 and the selected
name to the first retained model's virtual+6C. The decompiler's pointer-looking
local and `(int)` cast here represent that raw name word; the instructions govern
the selection. Packed SSE float/int/pointer expressions elsewhere likewise need
their actual bit-transfer/arithmetic instructions, not invented CLR conversions.

## Ready-gated ordered name lookup

6AD190 checks byte receiver+DD before traversing the existing vector. Nonzero
readiness permits begin+C to end+10 iteration in0x110-byte steps. Each row's first
DWORD is compared directly with Stack4; first equality returns that row pointer.
Disabled readiness, empty vector or no equal name returns null. A name of zero is
compared normally. There is no string/case conversion, hash calculation, package
read, load, allocation, catch or initialization in this helper.

This establishes the ordinary caller's preferred-name versus category-fallback
decision, including not-ready returning null. It does not establish who writes
readiness, how the vector is constructed or retired, failure containment of those
producers, broader resource admission, native allocation recovery or renderer/GPU
completion. No transitive provider implementation is inferred from a function name.

## Separate scene assignment

[Scene assignment ASM](../../evidence/native/functions/00D564E0_ThumbnailScene_AssignCustomLightRigs.asm) ([C](../../evidence/native/functions/00D564E0_ThumbnailScene_AssignCustomLightRigs.c))
is a separate complete291-instruction932-owned-byte function with16 nonowned
alignment bytes. Its default scene loop only assigns standard E1C27CD7 when the
model's+1F0 state is zero; portrait/household branches use their distinct names.
It does not replace D54DA0's request preparation or turn D5521B into ordinary
all-object setup. Native command publication, model/reference ownership and
completed pixels remain distinct boundaries.
