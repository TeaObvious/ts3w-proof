# Filtered audio view segments and roof collision registration

## Evidence and scope

PC1.67 original TS3W.exe, x86 little-endian; the repository reference identity
applies. These are static instruction-level findings, not executed gameplay tests.
Names below are analyst-assigned. Fifteen complete existing Ghidra bodies contain
10,901 pristine original bytes and2,993 actual Listing instructions. Actual
annotated decompiler projections retain their inferred types and warnings.
Physical register use, stack cleanup, branch flags and constants override those
projections. No original bytes, prototypes, bodies or analysis were repaired.

| Entry and analyst name | Body bytes / Listing instructions | Original code |
| --- | ---: | --- |
| `0x0086c530` — `AudioView_QueryFilteredSegmentHit` | 601 / 186 | [ASM](../../evidence/native/functions/0086C530_AudioView_QueryFilteredSegmentHit.asm) ([C](../../evidence/native/functions/0086C530_AudioView_QueryFilteredSegmentHit.c)) |
| `0x00686e60` — `CollisionService_GetGlobal` | 6 / 2 | [ASM](../../evidence/native/functions/00686E60_CollisionService_GetGlobal.asm) ([C](../../evidence/native/functions/00686E60_CollisionService_GetGlobal.c)) |
| `0x00687390` — `CollisionService_QuerySegment` | 339 / 98 | [ASM](../../evidence/native/functions/00687390_CollisionService_QuerySegment.asm) ([C](../../evidence/native/functions/00687390_CollisionService_QuerySegment.c)) |
| `0x00686f10` — `CollisionQuery_ExpandTypeMask` | 63 / 20 | [ASM](../../evidence/native/functions/00686F10_CollisionQuery_ExpandTypeMask.asm) ([C](../../evidence/native/functions/00686F10_CollisionQuery_ExpandTypeMask.c)) |
| `0x00682270` — `CollisionScene_QueryRayAndProjectHit` | 201 / 62 | [ASM](../../evidence/native/functions/00682270_CollisionScene_QueryRayAndProjectHit.asm) ([C](../../evidence/native/functions/00682270_CollisionScene_QueryRayAndProjectHit.c)) |
| `0x00562220` — `Matrix4_InvertWithReplicatedDeterminant` | 828 / 196 | [ASM](../../evidence/native/functions/00562220_Matrix4_InvertWithReplicatedDeterminant.asm) ([C](../../evidence/native/functions/00562220_Matrix4_InvertWithReplicatedDeterminant.c)) |
| `0x00ab1b00` — `Lot_GetAttachedWorldQuaternionTranslation` | 428 / 118 | [ASM](../../evidence/native/functions/00AB1B00_Lot_GetAttachedWorldQuaternionTranslation.asm) ([C](../../evidence/native/functions/00AB1B00_Lot_GetAttachedWorldQuaternionTranslation.c)) |
| `0x00ab1f40` — `Lot_GetLocalToWorldMatrix` | 356 / 88 | [ASM](../../evidence/native/functions/00AB1F40_Lot_GetLocalToWorldMatrix.asm) ([C](../../evidence/native/functions/00AB1F40_Lot_GetLocalToWorldMatrix.c)) |
| `0x00ab20b0` — `Lot_GetWorldToLocalMatrix` | 412 / 102 | [ASM](../../evidence/native/functions/00AB20B0_Lot_GetWorldToLocalMatrix.asm) ([C](../../evidence/native/functions/00AB20B0_Lot_GetWorldToLocalMatrix.c)) |
| `0x00ab73b0` — `Lot_TransformWorldPointToLocal` | 117 / 39 | [ASM](../../evidence/native/functions/00AB73B0_Lot_TransformWorldPointToLocal.asm) ([C](../../evidence/native/functions/00AB73B0_Lot_TransformWorldPointToLocal.c)) |
| `0x00ab7430` — `Lot_TransformLocalPointToWorld` | 117 / 39 | [ASM](../../evidence/native/functions/00AB7430_Lot_TransformLocalPointToWorld.asm) ([C](../../evidence/native/functions/00AB7430_Lot_TransformLocalPointToWorld.c)) |
| `0x00afdd10` — `Lot_TestSelectedFloorAtPosition` | 241 / 79 | [ASM](../../evidence/native/functions/00AFDD10_Lot_TestSelectedFloorAtPosition.asm) ([C](../../evidence/native/functions/00AFDD10_Lot_TestSelectedFloorAtPosition.c)) |
| `0x00b96e00` — `RoofManager_CreateAndRegisterCollisionShape` | 2025 / 504 | [ASM](../../evidence/native/functions/00B96E00_RoofManager_CreateAndRegisterCollisionShape.asm) ([C](../../evidence/native/functions/00B96E00_RoofManager_CreateAndRegisterCollisionShape.c)) |
| `0x0086c840` — `AudioListener_UpdateFromCamera` | 2862 / 656 | [ASM](../../evidence/native/functions/0086C840_AudioListener_UpdateFromCamera.asm) ([C](../../evidence/native/functions/0086C840_AudioListener_UpdateFromCamera.c)) |
| `0x00b98940` — `RoofManager_ConstructAndPublishRoof` | 2305 / 804 | [ASM](../../evidence/native/functions/00B98940_RoofManager_ConstructAndPublishRoof.asm) ([C](../../evidence/native/functions/00B98940_RoofManager_ConstructAndPublishRoof.c)) |

The listener's unchanged canonical raw envelope additionally retains two alignment
bytes after its complete body. Those bytes are not owned instructions. Other
fourteen raw exports retain the complete saved Listing and original instruction
bytes. There are no unowned gaps inside these fifteen stored bodies.
[Necessary original constants, tables and labels](../../evidence/native/audio-view-collision-data.tsv)
retain271 bytes in17 ranges. Constructor targets identify a selected producer;
they do not establish each constructor's internal behavior.

## Segment query and listener consumer

`0086C530` takes five stack words and returns its Boolean through AL with plain
RET. It copies the initial 16-byte point and obtains the collision service through
`00686E60`, whose six-byte body reads global `011D0490`. Missing service returns
AL zero. Service query `00687390` receives its service in ECX and five stack words;
its RET0x14 and physical receiver accesses override a narrower decompiler view.

The latter converts query codes with `00686F10`: 11→0xFFFF,12→0x70,13→3,
14→0x104,15→6,16→0x8FFFF; other values use the x86 masked shift 1<<(code&31).
Its six-target original jump table establishes the nonmonotonic 15/16 case order.
The optional input byte adds mask0x10000. A segment whose lower-three absolute
component maximum is at most binary32 2^-23 exits before the collision query.
The direction uses RSQRTPS with two refinements, not a CLR normalization promise.

`00682270` initializes the lower query record distance to binary32
1.0000000150474662e30 and its shape pointer to zero before child `00681C40`.
The child AL survives this wrapper's SSE computations. On success it rotates the
normal with the hit shape quaternion and computes the world hit point from the
segment origin plus direction times hit distance. The decompiler's float view of
the shape pointer and void return are projections; physical loads and AL govern.
The lower collision-tree traversal and individual shape virtual methods remain
their own unexpanded boundaries.

`00687390` writes the resulting fraction to caller output before comparing with
one. COMISS/JNC rejects ordered fraction≥1; its unordered flag behavior must not
be replaced with an invented finite-value guard. On admitted success it writes
the hit position at +0x10, normal at +0x20, shape metadata at +0x30/+0x34 and
shape pointer at +0x38. Failure does not promise an untouched or zeroed record.

`0086C530` accepts a hit unless a nonnull output shape pointer has mask0x02 in its
byte+0x34. A decompiler float projection of output+0x38 is not an arithmetic
conversion. Flagged hits are further admitted through lot containment, local
coordinate conversion and `00AFDD10`. If that filter rejects one, the helper
advances from the hit toward the endpoint by binary32 `0.009999999776482582`
and re-queries while the normalized direction stays within 2^-16 per lower-three
component tolerance. Exact zero remaining displacement exits false. The original
is an iterative filtered segment query, not just min(wallDistance,roofDistance).

The listener `0086C840` invokes query13 and conditionally query2, with separate
point buffers and AL-gated copies. It uses `00AB73B0` and `00AB7430` for lot
coordinate conversion. This selected call path does not establish the current
stepped room search, live registry generation or authored-file fallback cache.

## Lot transforms and roof producer

`00AB73B0`/`00AB7430` each contain117 bytes and39 Listing instructions, with
ECX lot and two stack pointers followed by RET8. Inactive lot byte+0x444 copies
all16 bytes. Active paths obtain matrices from `00AB20B0`/`00AB1F40` and evaluate
`x*row0 + row3 + y*row1 + z*row2` in that physical order, ignoring inputw for
the translation term. Captured input lanes allow in-place input/output.

`00AB1B00` resolves the lot's object ID at +0x460/+0x464 through the registry and
its transform component, combines stored quaternion/translation with the object
world transform, or writes identity quaternion/zero translation on its failure
branches. Matrix producers perform the corresponding SSE quaternion construction.
`00AB20B0` calls general cofactor/determinant inverse `00562220`; that helper
stores the replicated determinant through its third pointer and divides the
cofactor rows without a singularity branch. `00AB1F40` physically returns the
output pointer in EAX although its inferred decompiler prototype is void.
Float identity stores contain bits0x3F800000, not integer conversion of1.0.
The original full transform machinery does not prove equivalence with a current
lot XZ rotation using only one angle and relativeY.

`00B96E00` allocates an aligned0xA0-byte `LotRenderer/RoofCollisionShape`, builds
its geometry/transform, preserves upper flags while setting low16 to8, and
conditionally registers it with the collision service. The selected node index
is `((lot[+0x378]-lot[+0x37C])>>2)-lot[+0x17C]+1+roof[+0x18]`, followed by
the original signed segmented64 indexing calculation. The producer publishes
the retained shape in the manager map and balances temporary references. Caller
`00B98940` invokes it after successful roof construction and manager record/index
publication; concrete type constructors and global visibility consumers remain
separate. Node registration alone does not prove that every levelL roof is drawn
only when viewing L+1, nor the current `maxLevel-1` selection.


## Boundaries and remaining questions

The concrete lower collision-tree traversal, shape virtuals, registry/component
lifetime and roof constructors remain separate boundaries. The selected roof
producer establishes construction, publication and collision-node registration
order, not complete renderer visibility, every roof type, or world-unload safety.

The original query's0.01 advance and2^-16 tolerance are not evidence for a
replacement cache, stepped room search, file fallback, camera-side0.1 room probe,
or maxLevel-1 roof selection. A full transform with object-linked quaternion and
general matrix inverse does not establish simple XZ-angle equivalence. Keep these
comparisons separate from audible/GPU/platform acceptance and decoder internals.
