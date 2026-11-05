# Native pose output, bounds and dirty publication

Reference: original PC1.67 TS3W.exe in the central evidence index. Analyst names
are annotations; full actual C and original instructions establish the following
bounded mechanisms. No target/GPU/scheduler execution is represented.

## Actual pose producer and matrix input

The existing [pose-stream producer ASM](../../evidence/native/functions/00940B10_SceneAnimation_EvaluatePoseStreams.asm)
([C](../../evidence/native/functions/00940B10_SceneAnimation_EvaluatePoseStreams.c)) publishes selected pose through
[render-state publication ASM](../../evidence/native/functions/00573430_AnimationRenderState_PublishPose.asm)
([C](../../evidence/native/functions/00573430_AnimationRenderState_PublishPose.c)), which creates/writes the actual
world-matrix storage at render-state+28 and optional vertex-animation weights.
It then invokes the actual attachment-child walk described in
[pose-cache and publication](pose-cache-and-publication.md).

[Matrix getter ASM](../../evidence/native/functions/0056C070_AnimationRenderState_GetWorldMatrices.asm)
([C](../../evidence/native/functions/0056C070_AnimationRenderState_GetWorldMatrices.c)) is exactly MOV EAX,[ECX+28],RET:
a borrowed pointer, no retain/validation/allocation. The complete existing
[model/part bounds consumer ASM](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.asm)
([C](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.c)) uses that actual getter. Its
Sim override uses135 original selectors, matrix translations, padding and head
box; other branches use resource/bone-transformed part bounds. This connects the
actual pose matrix output and bounds input; it is not an output-vertex scan.

## Post-pose callback and dirty-list admission

After pose/attachment publication,00940B10 invokes the
[optional callback ASM](../../evidence/native/functions/006F4D60_SceneAnimation_InvokePostPoseCallback.asm)
([C](../../evidence/native/functions/006F4D60_SceneAnimation_InvokePostPoseCallback.c)). It reads component+2B4, skips
null, otherwise PUSH ECX,CALL EAX,POP ECX. The actual component is the callback's
stack input and ECX is restored. Concrete callback implementation, retention or
safe reentrance is not inferred from this dispatch.

Then its [dirty-once admission ASM](../../evidence/native/functions/006FA9F0_SceneObject_QueueDirtyOnce.asm)
([C](../../evidence/native/functions/006FA9F0_SceneObject_QueueDirtyOnce.c)) uses object+18. Nonzero next
word prevents another insertion. Otherwise it self-links both words first, then
conditionally calls the actual scene list owner from object+30. Its null-object
branch still dereferences a zero node; it is not a safe-null return.

[Dirty append ASM](../../evidence/native/functions/006E3F00_Scene_AppendDirtyObject.asm)
([C](../../evidence/native/functions/006E3F00_Scene_AppendDirtyObject.c)) physically takes ECX owner plus
object/RET4. It appends object+18 before scene+20 sentinel using old tail scene+24:
node.prev=oldtail,node.next=head,head.prev=node,oldtail.next=node. It does not check
membership, acquire references or lock. This establishes actual list production;
a complete scheduler/drain and its eventual GPU consumers are separate boundaries.

## Model/resource bound publication and world transform

[Bounds refresh/fallback ASM](../../evidence/native/functions/006F6020_SceneModel_RefreshBoundsOrCopyResourceFallback.asm)
([C](../../evidence/native/functions/006F6020_SceneModel_RefreshBoundsOrCopyResourceFallback.c)) is ECX model plus descriptor,
RET4. Null descriptor returns. Call006F5D50 and test AL only; when it declines,
copy actual resource part bounds as two aligned16-byte rows into model+288 storage
at0x40-byte strides, then publish descriptor bounds. Complete owned ranges exclude
eight alignment bytes006F6058..006F605F, present explicitly in the full envelope.
The real vtable references do not themselves prove that every dirty item calls
this function or establish a complete render-phase schedule.

[Local-bound setter ASM](../../evidence/native/functions/006FCC10_SceneObject_SetLocalBoundsAndRefresh.asm)
([C](../../evidence/native/functions/006FCC10_SceneObject_SetLocalBoundsAndRefresh.c)) copies the two original16-byte
rows to object+50/+60 and immediately calls006FC960. It adds no null/finiteness/
range validation or dirty-list operation.

[World-bound output ASM](../../evidence/native/functions/006FB240_SceneObject_WriteWorldBounds.asm)
([C](../../evidence/native/functions/006FB240_SceneObject_WriteWorldBounds.c)) returns the caller's actual
output pointer in EAX, ECX object plus output/RET4. When object+40 bit0 is set and
scene/spatial owner exists, obtain the real owner bounds through007053D0.
Otherwise obtain the actual world matrix006FACD0, copy64bytes and transform local
bounds+50 through0068C370. These real helper implementations remain their own
boundaries; no per-vertex union or guessed coordinate normalization is added.

## Sphere and spatial-owner consumer: exact unordered branches

[World/sphere refresh ASM](../../evidence/native/functions/006FC960_SceneObject_RefreshWorldBoundsAndSpatialOwner.asm)
([C](../../evidence/native/functions/006FC960_SceneObject_RefreshWorldBoundsAndSpatialOwner.c)) first obtains those world bounds.
COMISS maxX,minX followed by **JC** selects zero sphere for inverted **or unordered**
X. The apparent simple '<' in retained decompiler C does not express that NaN case.
Otherwise call the [sphere helper ASM](../../evidence/native/functions/0069D730_Bounds_WriteCenterAndHalfDiagonalRadius.asm)
([C](../../evidence/native/functions/0069D730_Bounds_WriteCenterAndHalfDiagonalRadius.c)), storing center/radius at+70.

The helper computes center xyz=(min+max)*0.5 and radius=length(max-min)*0.5. SSE
reduces squared lanes as (dz²+dy²)+dx², then SQRTPS and the actual
[binary32 half operand](../../evidence/native/data/0x00f9b5b4-4.bytes.txt).
It has no invalid-bound check of its own; the selected caller owns that admission.

When scene+30 and scene+2C are nonnull,006FC960 sends object/world bounds to
[spatial-cell consumer ASM](../../evidence/native/functions/00705A50_SceneSpatialOwner_UpdateObjectCell.asm)
([C](../../evidence/native/functions/00705A50_SceneSpatialOwner_UpdateObjectCell.c)). It returns on null object.
First COMISS/JC rejects inverted/unordered X bounds. The three comparisons of
owner origin xyz minus actual
[binary32 15000 operand](../../evidence/native/data/0x00ffb36c-4.bytes.txt) against
minimum xyz use **JA**: ordered greater rejects, unordered does not take those
branches. They are not an all-finite rule or equivalent '<=' chain for NaNs.

The admitted path builds its actual four-byte cell key through00705A30, resolves
007054B0 and returns for missing or identical cell. A different selected cell
invokes007061A0. The rejection path calls006FB220 only when an old cell exists.
Detailed key/cell insertion/removal implementations are separate real callees.

The ten new complete pairs contain315 owned instructions/941 owned bytes plus8
explicit non-owned alignment bytes; eight necessary original constant bytes are
retained separately. Existing006F5D50 is reused, not duplicated. Whole boundaries,
physical ABI/prototypes and original bytes are unchanged; actual Ghidra annotations
were saved. This bounded native evidence does not imply host registry/shared-lease,
held-memo, lighting epoch, Vulkan packet batching or scheduler parity.
