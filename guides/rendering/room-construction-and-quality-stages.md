# Lighting room construction and quality stages

Original PC1.67 TS3W.exe, identified centrally. Descriptive names are analyst
assignments. These complete annotated Ghidra bodies, original instructions and
direct producer/consumer references establish a static boundary, not original
runtime scheduling, full map reconstruction or a platform capability policy.

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 006A2220 | LightingRoom_Construct | [ASM](../../evidence/native/functions/006A2220_LightingRoom_Construct.asm) ([annotated C](../../evidence/native/functions/006A2220_LightingRoom_Construct.c)) |
| 0069E920 | RoomLighting_GetDesiredQualityForOwnerState | [ASM](../../evidence/native/functions/0069E920_RoomLighting_GetDesiredQualityForOwnerState.asm) ([annotated C](../../evidence/native/functions/0069E920_RoomLighting_GetDesiredQualityForOwnerState.c)) |
| 0069EC80 | RoomLighting_AdvanceQualityStage | [ASM](../../evidence/native/functions/0069EC80_RoomLighting_AdvanceQualityStage.asm) ([annotated C](../../evidence/native/functions/0069EC80_RoomLighting_AdvanceQualityStage.c)) |
| 0069F800 | RoomLighting_UpdateQualityDependentMapResource | [ASM](../../evidence/native/functions/0069F800_RoomLighting_UpdateQualityDependentMapResource.asm) ([annotated C](../../evidence/native/functions/0069F800_RoomLighting_UpdateQualityDependentMapResource.c)) |
| 006A6680 | LightingRoom_CreateFromSignedRoomId | [ASM](../../evidence/native/functions/006A6680_LightingRoom_CreateFromSignedRoomId.asm) ([annotated C](../../evidence/native/functions/006A6680_LightingRoom_CreateFromSignedRoomId.c)) |

## Actual construction and limit

6A6680 allocates6B0hex bytes aligned10hex, returns null on allocation failure,
uses a signed low-Int16 room ID for metadata lookup and RoomLight_IsSunnyRoom,
then passes nine DWORD stack slots to6A2220. Two are consumed as low-byte flags.
ECX is the object, EAX returns it and RET24 cleans those nine words. The caller's
RET4 cleans its one room-ID word. Unspecified upper flag bits in inferred C do
not widen the physical flag consumers.

The constructor initializes actual labelled tile/light/wall storage, current
quality-like fieldF4=0, prior/presented fields100/104=4, flags164=1, and reserves
at least16tile pointers and8wall pointers. During the plain-byte01159AD8-guarded
InteriorBuildingAmbientColor row registration it initializes DWORD01159B00 with:

`2 - (BYTE[011D1C5D] != 0)`

6A24C7 NEG CL,6A24D5 SBB ECX,ECX and6A24D7 ADD ECX,2 establish exact1or2
independent of a decompiler Boolean spelling. Zero byte gives2; any nonzero byte
gives1. This is not an unconditional maximum2. The byte's semantic meaning and
its producer/wider structure writes remain unresolved; the selected direct xrefs
are reads. Do not label it a particular GPU/OS capability without that producer.
The constructor's plain byte guard is not proof of a multithreaded once primitive.

## Direct consumers

69E920 receives the room in ECX without a stack argument. It classifies signed
owner Int32 fields88/284 plus room byte18, and only owner byte288==1 with the
selected zero classification returns shared01159B00. Other lanes return0. Those
opaque owner fields are retained as offsets; inferred fastcall is not a second
EDX input contract.

69EC80 saves roomF4 into100 and compares current F4 with69E920 desired value.
When lower it advances0->1 or1->2, choosing stage2. Otherwise current equal to
shared01159B00 chooses stage5, different chooses stage4. It stores F4, calls
owner6A5B40 and stores stageF0. Its visible assignments do not select the retained
stage3/6A6240 branch. This does not establish when/how often callers run it.

69F800 copies100 into104. If resource154 exists and F4 equals01159B00, it calls
6ACA90 with physical stack literal1 then6ACAA0; it then applies float result69F7A0
through626A30. The stored6ACA90 child prototype omits the pushed word; its child
API and resource/GPU completion semantics are not inferred here.

## Bounded consequences

The original has conditional limit and incremental quality-state transitions;
these bodies alone do not establish that all room assets are prepared before
simulation starts, or that one room solve corresponds to one draw/frame. Source,
room membership, geometry/sample decoding, native allocator and complete worker/
map lifetimes remain their own contracts. A renderer requesting fixed2 must mark
that as its own admission/profile decision rather than quote this constructor as
unconditional evidence. Original function bounds, all selected bytes and saved
Ghidra annotations were checked; no original byte was changed or target run.
