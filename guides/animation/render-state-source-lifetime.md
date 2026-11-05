# Native scene render-state source and teardown

Reference: original PC1.67 TS3W.exe in the central native evidence index. Names
are analyst assignments; these are full-body/instruction facts, not target or
rendering execution. Pointer/reference roles are established separately; this is
not a claim of host model/GUID/generation-lease parity.

## Unique state owner and exact initialization

[State getter ASM](../../evidence/native/functions/006F48E0_SceneAnimation_GetRenderState.asm)
([C](../../evidence/native/functions/006F48E0_SceneAnimation_GetRenderState.c)) is ECX receiver, plain RET,
EAX=receiver+298 pointer, with no retain or validation.

[Replacement ASM](../../evidence/native/functions/006F4F70_SceneAnimation_ReplaceOwnedRenderState.asm)
([C](../../evidence/native/functions/006F4F70_SceneAnimation_ReplaceOwnedRenderState.c)) is ECX plus pointer/RET4.
It destroys an old nonnull state, frees its allocation and zeros the field before
assigning the new pointer. Nonnull replacement then updates attachment children.
There is no same-pointer guard or replacement retain in this complete function;
callers must supply their actual ownership and equality admission.

[Initializer ASM](../../evidence/native/functions/00574200_AnimationRenderState_InitializeStorage.asm)
([C](../../evidence/native/functions/00574200_AnimationRenderState_InitializeStorage.c)) installs vtable FC3D90 and zeros
its actual pointer/storage fields and sixteen bytes at+40. The actual allocating
callers request50hex bytes. Cache pointers+10/+18 are zeroed, but cache KEY words
+14/+1C are not written: constructor-wide zero storage is not a proven rule.
MOV EAX,ECX preserves the destination as the actual return identity; its existing
inferred void signature remains, explicitly annotated as a decompiler artifact.

## Retained input and consumed source are distinct

[Scene source binder ASM](../../evidence/native/functions/006F5B00_SceneAnimation_BindSource.asm)
([C](../../evidence/native/functions/006F5B00_SceneAnimation_BindSource.c)) uses ECX plus source/RET4. With
nonnull source, reuse existing state or allocate/initialize one. Retain source
through its virtual0 before invoking render-state virtual0. The exact original
[vtable slot](../../evidence/native/data/0x00fc3d90-4.bytes.txt) resolves that slot
to00574120. Only a different/new state goes through unique-owner replacement.
The existing dirty helper follows. Independently send source, including null,
through the actual geometry-source owner at component+210; nonnull source also
resolves transformBone and stores its result at+2BC. Allocation/source failures
are not converted into safe fallback geometry by this body.

[Source-consuming slot ASM](../../evidence/native/functions/00574120_AnimationRenderState_ConsumeSourceReference.asm)
([C](../../evidence/native/functions/00574120_AnimationRenderState_ConsumeSourceReference.c)) is ECX plus source/RET4. A
changed source frees matrix storage, retains the new pointer, publishes+20, then
releases the old pointer. Existing retained input+24 can be cleared when its count
differs from the selected source count. Even on the same-source branch, the final
nonnull incoming reference is released: this slot CONSUMES the temporary retained
reference supplied by its actual caller. It is not a generic borrowed-pointer
setter. Concrete source interface types and the mismatch child remain separate.

[Retained-input setter ASM](../../evidence/native/functions/005741B0_AnimationRenderState_ReplaceRetainedInput.asm)
([C](../../evidence/native/functions/005741B0_AnimationRenderState_ReplaceRetainedInput.c)) clears+24 before atomically
releasing its old input, then assigns a nonnull incoming input through the actual
reference helper and sets dirty bit1. Its selected
[input producer ASM](../../evidence/native/functions/009409F0_SceneAnimation_SetRetainedPoseInput.asm)
([C](../../evidence/native/functions/009409F0_SceneAnimation_SetRetainedPoseInput.c)) independently retains that
incoming fourth DWORD argument at entry and releases it at the end. The two other
selector words go through real scene lookup; the third word goes through existing
resource resolution. Missing state can allocate/bind source and replace state in
its original order. Retained-input replacement, dirty marking and cache clearing
follow. Opaque selectors/resource types are not a recovered current model-key API.

[Geometry propagation ASM](../../evidence/native/functions/006DB570_SceneGeometrySources_ReplaceBoundSource.asm)
([C](../../evidence/native/functions/006DB570_SceneGeometrySources_ReplaceBoundSource.c)) separately releases its old
+38 source before assignment/new retain, then invokes the two actual nonnull
untagged children. Low two pointer-tag bits gate those consumers. No same-pointer
repair or inferred deeper virtual implementation is added.

## Reusable clear and destruction have different ordering

[Reusable cache clear ASM](../../evidence/native/functions/00573F80_AnimationPoseCache_Clear.asm)
([C](../../evidence/native/functions/00573F80_AnimationPoseCache_Clear.c)) visits state+10 then+18,
clearing key/pointer BEFORE releasing each nonnull pose. It is called after new
retained input and by the selected pose-evaluation dirty path. Its two rows are
the real UInt32 cache described in [pose-cache publication](pose-cache-and-publication.md).

[Whole render-state destructor ASM](../../evidence/native/functions/00574050_AnimationRenderState_Destroy.asm)
([C](../../evidence/native/functions/00574050_AnimationRenderState_Destroy.c)) frees the masked allocation
encoded at+34 while preserving its two low flags, clears/releases retained+24,
frees matrix/weight storage, re-reads+24 for its actual conditional release and
releases source+20. The second read is retained actual code; no assumed absence
of reentrance justifies deleting it.

It then tail-calls the [cache-subobject destructor ASM](../../evidence/native/functions/00574010_AnimationPoseCache_DestroyEntries.asm)
([C](../../evidence/native/functions/00574010_AnimationPoseCache_DestroyEntries.c)) with ECX=state+10. That child
releases actual state+18 then state+10, without clearing keys/pointers. Relative
subobject addressing must not be mistaken for state-base offsets or the forward
reusable-clear order. The outer destructor does not free its own50hex allocation.

[Actual component teardown ASM](../../evidence/native/functions/006F5AA0_SceneAnimation_DestroyComponent.asm)
([C](../../evidence/native/functions/006F5AA0_SceneAnimation_DestroyComponent.c)) provides that final allocation
ownership: destroy state, free it, clear+298 (including its second explicit zero),
free optional+288, destroy geometry-source owner+210 and tail-call base teardown.
Those other cleanup bodies remain real distinct callees, not a universal safe
failure or current IDisposable contract.

The twelve canonical pairs cover483 owned instructions/1,263 contiguous pristine
bytes plus four necessary original vtable bytes. No original bytes, boundaries or
prototypes changed. Retained input, consumed source, cached pose references and a
uniquely owned render-state allocation must remain distinct when comparing with
current shared resident model leases, packet generations and GPU retirement.
