# Native pose-cache keys and ordered publication

Reference: original PC1.67 TS3W.exe in the central native reference index. Names
are analyst assignments. Complete instruction/static facts are distinguished from
runtime behavior; no original executable, rendered frame or cache census was run.

## Exactly two native cached poses

[Lookup ASM](../../evidence/native/functions/00573EA0_AnimationPoseCache_FindByTick.asm)
([C](../../evidence/native/functions/00573EA0_AnimationPoseCache_FindByTick.c)) uses ECX render-state receiver,
one stack DWORD and RET4; EAX is the borrowed pose pointer or zero. It scans rows
at receiver+10 and+18, each pointer then UInt32 key. SUB/SBB compare the signed
64-bit difference of zero-extended UInt32 request and stored keys. Future keys
remain; a positive difference greater than2 clears that row's key and pointer
before decrementing the old pointer's reference count. On zero, count becomes1
before the virtual deleting call with argument1.

The following equality returns the first matching pointer, including null. A
request0 can therefore return a first null/zero row without examining a second
nonnull/zero row. This is not modular age: storedFFFFFFFF remains future for
request0. A key4 remains at request6 (age2), but is cleared at request7 (age3).

[Setter ASM](../../evidence/native/functions/00573F20_AnimationPoseCache_StoreByTick.asm)
([C](../../evidence/native/functions/00573F20_AnimationPoseCache_StoreByTick.c)) uses ECX, pointer/key stack
DWORDs and RET8. Unsigned CMP/JA chooses the smallest **raw stored key**, with the
later row winning ties. It does not calculate modular age or search for the newest
value. The selected key is written before pointer equality. Equal pointer changes
only the key; differing pointer retains the new value, publishes it, then releases
the old value through its actual reference-count/deletion sequence. The retained
inferred signed parameter spelling does not change unsigned row selection.

## Actual producer and subsequent consumers

[Pose-stream producer ASM](../../evidence/native/functions/00940B10_SceneAnimation_EvaluatePoseStreams.asm)
([C](../../evidence/native/functions/00940B10_SceneAnimation_EvaluatePoseStreams.c)) physically has five cdecl stack
DWORD slots: key, two stream receivers, binary32 interpolation input and queryable
owner. It queries owner virtual+0C with17F1D88. Existing stream bits/global flags
select optional native cache use or evaluation without that reuse. Cache reads use
the input key and/or DWORD key+1; the latter wraps at FFFFFFFF. Borrowed hits are
retained before use. Misses create/prepare local-pose buffers and publish through
the setter. Complete inferred C keeps its stack/register aliases and uncertain
types; it is not a manually repaired replacement algorithm.

The selected pose is published at009414F6, then children are updated at0094153E;
subsequent dirty/bounds/debug/state operations retain their original order.
Every normal exit writes AL=1; full EAX is not a defined Boolean result. The
existing undefined4 prototype and all other prototypes/boundaries remain intact.

[Render-state publication ASM](../../evidence/native/functions/00573430_AnimationRenderState_PublishPose.asm)
([C](../../evidence/native/functions/00573430_AnimationRenderState_PublishPose.c)) uses ECX plus selected pose
pointer, RET4. Null pose returns; otherwise world-matrix storage is allocated
lazily and actual pose expansion writes it. Optional vertex-animation weights use
the rig's actual count and pose+4C source. The allocation groups four float lanes
using x87 signed load plus unsigned correction, quarter multiplication, ceil and
truncating conversion. COMISS zero,weight followed by JBE skips nonnegative and
unordered values; only strictly ordered negative values become positive zero.
This body does not compare output vertex bytes with a packet vertex stream.

[Attachment walk ASM](../../evidence/native/functions/006FC770_SceneObject_UpdateAttachmentChildren.asm)
([C](../../evidence/native/functions/006FC770_SceneObject_UpdateAttachmentChildren.c)) uses ECX parent, no stack
arguments and plain RET, retaining its inferred fastcall signature. The circular
list head is parent+194; each node maps to child at node-20, then calls006FB340
with parent on stack before following the next link. Its explicit null-node path
does not establish safe behavior for a corrupt list. The concrete attachment-mode
transform kernel and downstream GPU consumers remain separate function boundaries.

## Proven boundary

The cache retains native pose objects by UInt32 keys with its actual reference
protocol. The producer still performs ordered render-state and child publication
when a selected cache branch supplies a hit. These complete bodies do not specify
a copied position/normal-prefix, normalization-bit, wrapper/vertex-buffer identity
or submesh-validity memo. Such a current host optimization must retain its own
input/consumer contract; neither native parity nor global absence of other native
vertex/dirty caches follows from this bounded comparison.

The five canonical pairs cover1,088 owned instructions and3,535 original contiguous
bytes without boundary, prototype or byte changes. Their annotation text is inside
the actual Ghidra pseudocode. Direct/import-resolved call identities are indexed;
unresolved virtual implementations are not invented.

## Attachment command reader and mode consumer

The complete existing [703CA0 handler ASM](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm) ([C](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)) recognizes9375C04F at7049F5. It takes the payload body from message+10, copies mode+10 and position+20, constructs an offset matrix from the three Euler words+30/+34/+38 through original fsin/fcos, and selects the union: mode4 copies64bytes from payload+40; otherwise copies the resolved index+14. At704DCE it calls [6FE2A0 ASM](../../evidence/native/functions/006FE2A0_FUN_006fe2a0.asm) ([C](../../evidence/native/functions/006FE2A0_FUN_006fe2a0.c)) with child and parent fullGUID plus descriptor. Child map absence returnsAL0; parent map absence passesnull to the child handler. After invocation AL1 is returned even for an absent parent. This is command handling, not rendered-frame readiness.

[6FC5F0 ASM](../../evidence/native/functions/006FC5F0_FUN_006fc5f0.asm) ([C](../../evidence/native/functions/006FC5F0_FUN_006fc5f0.c)) receives childECX,parent,descriptor/RET8. It unlinks the old child node+20, resets one child transform through virtual+28(identity), stores parent+190. A null parent clears mode100 and selflinks the child node. A nonnull parent copies mode→100, offsetmatrix→110..14C and the64byte index/static union→150..18C, links into parent+194 ring, immediately calls6FB340, then6FB2E0(parent) and child virtual+5C. It performs no inverse-bind calculation in this body, and no safe nullchild, queue lock or generic retain/release guarantee follows from these writes.

The full [6FB340 ASM](../../evidence/native/functions/006FB340_FUN_006fb340.asm) ([C](../../evidence/native/functions/006FB340_FUN_006fb340.c)) has4754owned bytes/1199instructions and the four-entry file-backed switch recorded in [dispatch data](../../evidence/native/animated-slot-dispatch-data.tsv). ECXchild,parentstack/RET4; out-of-range raw mode does nothing. Modes1/2/3 ask parent virtual+2C with the stored model **index**+150 and a64byte output; AL0 leaves the current world unchanged. Mode1 composes childLocalC0×queriedBone×parentWorld80. Mode2 includes the offsetmatrix110 before queriedBone; mode4 uses the stored static matrix and offset with the parent world. Successful paths call child virtual+20 with the resulting matrix. Mode3 contains an additional orientation reconstruction with global-mask, normalization and acos branches; its exact exceptional arithmetic, constants and equivalence to a generic always-up helper are **not** certified here.

Later pose/world publication traverses6FC770 and re-evaluates this same child function. Original command admission, descriptor installation, parent bone query, child world setter and eventual GPU use are separate boundaries. These static functions do not establish timing, successful queue delivery, a safe CLR lock order, hash/index identity, concrete Model-versus-Sim virtual+2C behavior or current outfit/resource/GPU retirement equivalence. The host's nonblocking Busy protocol and registry generations are separate reconstruction mechanisms requiring their own caller and lifetime checks.
