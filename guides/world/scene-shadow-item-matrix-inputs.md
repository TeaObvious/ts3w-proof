# Scene-shadow item matrix inputs

Original PC1.67 TS3W.exe. Names are analyst assignments; selected complete actual
Ghidra C/ASM and instructions establish this bounded producer/consumer contract.

| Address | Analyst role | Complete original |
| --- | --- | --- |
| 6EA610 | SceneShadow_UpdateItemMatrixPayloads | [ASM](../../evidence/native/functions/006EA610_SceneShadow_UpdateItemMatrixPayloads.asm) ([pseudocode](../../evidence/native/functions/006EA610_SceneShadow_UpdateItemMatrixPayloads.c)) |
| 6FA970 | SceneObject_TestShadowMatrixSource | [ASM](../../evidence/native/functions/006FA970_SceneObject_TestShadowMatrixSource.asm) ([pseudocode](../../evidence/native/functions/006FA970_SceneObject_TestShadowMatrixSource.c)) |
| 6FAE70 | SceneObject_CopyMatrixPayloadAOrIdentity | [ASM](../../evidence/native/functions/006FAE70_SceneObject_CopyMatrixPayloadAOrIdentity.asm) ([pseudocode](../../evidence/native/functions/006FAE70_SceneObject_CopyMatrixPayloadAOrIdentity.c)) |
| 6FAF40 | SceneObject_CopyMatrixPayloadBOrIdentity | [ASM](../../evidence/native/functions/006FAF40_SceneObject_CopyMatrixPayloadBOrIdentity.asm) ([pseudocode](../../evidence/native/functions/006FAF40_SceneObject_CopyMatrixPayloadBOrIdentity.c)) |

## Actual queue consumer

[Queued caster ASM](../../evidence/native/functions/006EA9A0_SceneShadow_DrawQueuedCasters.asm)
([pseudocode](../../evidence/native/functions/006EA9A0_SceneShadow_DrawQueuedCasters.c)) calls 6EA610 at
6EAA8B only when its local item key or two parameter-registry stamps change,
after updating its two per-queue matrix handles and before item virtual+18.
It clears all four handles+1D4/+1D8/+1DC/+1E0 after traversal, including an empty queue.
This local memo is not a resident depth image or current GPU packet cache.

[Scene pass ASM](../../evidence/native/functions/006EBF50_SceneRenderer_RenderShadowMap.asm)
([pseudocode](../../evidence/native/functions/006EBF50_SceneRenderer_RenderShadowMap.c)) calls that consumer
at6EC377, then optional flora. [Precipitation pass ASM](../../evidence/native/functions/006EC6D0_TS3W_RenderPrecipitationShadow.asm)
([pseudocode](../../evidence/native/functions/006EC6D0_TS3W_RenderPrecipitationShadow.c)) also calls it at6ECB39.
The [queue/pass guide](../shaders/scene-shadow-queue-and-flora-order.md) describes their actual
stack context and complete-pass boundaries. No underlying virtual draw target is
invented from the callback ABI.

## Item payload update

6EA610 physically uses ECX renderer plus one stack item DWORD, RET4. Null input or
false AL from6FA970 takes its identity branch. An accepted source tests actual item
virtual+10 AL; only nonzero produces/copies payloadA (four MOVAPS blocks) into
11D2A90..ACC and binds renderer handle+1DC through79A040. The accepted-source path
always produces/copies payloadB into11D2A50..A8C and binds+1E0.

Rejected input lazily creates identity11D2A10..A4C under initialization bit4 and binds
**only+1E0**. It does not clear+1DC here; the complete queue consumer owns that later
four-handle cleanup. Bits1/2 mark the two copied static payload regions. The source
virtual+10 is an actual selected predicate, not a recovered managed method name.

6FA970 loads object+38, rejects null, calls6FA5C0 and tests AL, then explicitly
normalizes EAX to0 or1. This caller consumes AL; the complete source-kind predicate
and component lifecycle belong to the underlying6FA5C0 owner.

Both copy wrappers take ECX object, one output DWORD and RET4. A nonnull object+38
calls6FA5B0; nonzero returned pointer becomes ECX for A42D70 (payloadA) or A42F60
(payloadB), with the original output pointer on stack. Both wrappers explicitly
return that **supplied output pointer in EAX**, independently of child return.
Missing source writes exactly64-byte identity. The shared original constant
F998F8 is IEEE binary32 one (`0000803f`), already retained in the
[original scalar data](../rendering/local-light-original-data.tsv); zeros are the
actual XORPS source. The copied payload semantics are deliberately called A/B:
world, inverse or normal-matrix identities do not follow from these wrappers alone.

## Verification and limits

Four complete bodies contain223 instructions/881 original owned bytes, no envelope
gaps. Existing prototypes/body sets and original bytes are unchanged; names/comments
only were saved clean. The first function ends after the complete three-byte RET4
at6EA7D9, exclusive6EA7DC. Eleven resolved direct calls have actual Ghidra target
identities; virtual targets and deeper A42D70/A42F60 transforms remain separate.
The complete reused scene/queue/precipitation listings were compared with original
PE bytes, including their existing explicit alignment where applicable.

This establishes actual matrix parameter production and cleanup relative to queued
shadow submissions. It does not establish Vulkan prepared-alpha leases, contiguous
index batching, stable/posed partitions, current draw counters, device-generation
retirement or queue submit/abort cache receipts. No global original cache absence,
source thread safety, GPU completion or executed test/game/target is claimed.
