# Scene shadow queue and optional flora submission

Reference: original PC1.67 `TS3W.exe`, identified in the native evidence index.
Names below are analyst assignments. The complete selected bodies and instruction
operands establish the following contract; no original execution is represented.

## Resource producer and pass dispatch

[Initialization ASM](../../evidence/native/functions/006F3F40_SceneRenderer_InitializeRenderResources.asm)
([pseudocode](../../evidence/native/functions/006F3F40_SceneRenderer_InitializeRenderResources.c)) selects `shadowmap`
and stores its library result at receiver+2E4. The selected `shadowmapmerged`
program goes to +2EC. Registered parameter handles include `ShadowMainMap` at
+224 and the separate `PrecipitationShadowMainMap` at +22C. Its physical API has
ECX receiver, no stack arguments and RET; success/failure is in AL, despite the
retained wider decompiler return type. Upper EAX is not a proven Boolean value.
Other initialization, target allocation children and failure cleanup remain in
the full original body; no isolated allocation-success guarantee is inferred.

[Pass dispatcher ASM](../../evidence/native/functions/006F3E20_SceneRenderer_ExecutePreparedPasses.asm)
([pseudocode](../../evidence/native/functions/006F3E20_SceneRenderer_ExecutePreparedPasses.c)) requires receiver+29D
nonzero. With +28F zero it runs the synchronous preparation calls; otherwise it
waits the selected existing jobs. It executes the scene shadow body before the
separate precipitation shadow body. Its ECX receiver/no-stack-argument/RET shape
is physical; no EDX input or managed scheduling contract is established.

## Scene shadow consumer

[Scene shadow ASM](../../evidence/native/functions/006EBF50_SceneRenderer_RenderShadowMap.asm)
([pseudocode](../../evidence/native/functions/006EBF50_SceneRenderer_RenderShadowMap.c)) has ECX receiver,
no stack arguments, RET. Device+8D gates immediate return. The `ShadowMainMap`
parameter is assigned RenderSystem+12C before testing receiver+28E. If enabled,
it selects depth/color target entries, builds draw context from the shadow
program and camera, configures the pass and submits the prepared source queues.

The source is receiver+14. Its begin/end pair at +150 has eight-byte rows; a
nonempty row range calls the scene-caster consumer. Only after that consumer
returns does the pass retrieve the optional flora service. A nonnull service
receives source+120 and the same borrowed stack context through vtable+8. The
virtual target, source category producers and internal flora LOD/billboard policy
are not established by these five selected bodies. No diagnostic generated/world/
current-tree classification is inferred from their native pointer layout.

The apparent `1.4013e-45` viewport values in the actual decompiler output are
integer bit patterns in reused stack storage: MOV EAX,1, DWORD stores and size-1
subtraction at 6EC30F..6EC32E. Do not reinterpret them as tiny float coordinates.
Unsigned map-size conversion uses signed DWORD FILD to x87 extended precision,
conditional FADD of +2^32 for a negative input, then FSTP to binary32. No universal
project resolution constant follows from it.

## Queue memo and service getter

[Queued caster ASM](../../evidence/native/functions/006EA9A0_SceneShadow_DrawQueuedCasters.asm)
([pseudocode](../../evidence/native/functions/006EA9A0_SceneShadow_DrawQueuedCasters.c)) is thiscall: ECX scene
renderer plus three stack DWORDs (source, begin/end queue pointer, draw context),
RET0C. End-minus-begin uses SAR3. Each row supplies a draw-item pointer; item+24
selects source+210 + index*80 bytes. A local memo compares the item key and two
parameter-registry row stamps, updates matrix payloads, then invokes item
interface+18. Four parameter handles are cleared after the loop, including the
empty-queue path. These memo values reset on each invocation. The eight non-owned
alignment bytes between 6EA9E8 and 6EA9F0 are explicitly included and labelled in
the full envelope export; the function boundaries were not enlarged to own them.

[Service getter ASM](../../evidence/native/functions/00712BE0_FloraRenderer_GetService.asm)
([pseudocode](../../evidence/native/functions/00712BE0_FloraRenderer_GetService.c)) is exactly a DWORD
pointer load from 0115C488 and RET, with no physical arguments. It neither creates
nor retains the service. The caller checks null before the virtual call.

## Cache and lifetime limits

No previous-matrix/scene-identity reuse decision or resident depth-copy operation
appears in this selected dispatcher and shadow-pass body. The per-queue matrix
memo is a different mechanism. This is not a global absence claim about every
native cache, unexpanded shader/target operation, job producer or virtual target.

The context is stack storage borrowed by synchronous consumers; these bodies do
not establish asynchronous retention, GPU completion or a Vulkan submit token.
No original resource destruction/last-use protocol is inferred. Existing native
PASS/state and shader-system evidence remains separate from this pass contract.
