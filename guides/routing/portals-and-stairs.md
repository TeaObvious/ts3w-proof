# Local routing portals, permissions and stairs

This is a static contract from original PC 1.67 `TS3W.exe` and its matching
pristine managed assemblies. Native analyst names and types were applied in
GhidrAssist with `/TS3W.exe` explicitly selected. The actual annotated Ghidra C
and original instruction bytes govern this guide. These portals connect route
segments and rooms; world loading is covered by [world travel](../travel/world-travel.md),
and local underwater relocation by [diving](../travel/diving-and-dive-wells.md).

## Producers, consumers and lookup

| Managed producer/consumer | Native path | Result/state |
| --- | --- | --- |
| `Route.AddPortal`, ladder/spiral/elevator registration | `00757f40 → 00638200 → 0064f7d0` | Ref-counted portal, opaque handle family `0x28` |
| `StairsPortalComponent.AddStairsPortals` | `0074b630 → 0082f1a0 → 0082cd70` | Reconcile transformed routing-slot pairs; changed count becomes bool |
| `Route.SetPortalCost`, `SetPortalAgeGenderFlags` | `00758240` / `00758350 → 0062ff80` | Update every portal for one full object GUID |
| `Route.SetPortalLockStatus(lotId,…)` | `0074b680 → 00630380` | Lot graph callback activation byte `+0x8f` |
| `TombRoomManager.AboutToPlanRouteCallback` | `00762bb0 → 0081c600 → 0064fb20` | Per-route forbidden object GUIDs affect eligibility |
| `LotRouteGraph_PlanThroughPortals` | `0063ff00 → 0063eb60 → 0063e780 / 00634d20` | Packed room/portal graph search, geometric subpaths |
| `StairsPortalComponent.OnPortalStart` | `0074d930 → 009549e0 → 00854b90 / 008542e0` | Start/skip result followed by traversal completion |

Every address in this table has its canonical paired evidence in the
[native function table](#native-function-table). The retained original
managed [type table](#managed-types) supplies complete IL and C# for these
callers. [Managed/native reuse](../../evidence/bindings/managed-native-reuse.tsv)
joins registered ScriptCore IL sites to immediate native callees;
[direct-calls](../../evidence/native/direct-calls.tsv) continues the native chain.

## Registration, identity and coordinate frames

`AddPortal` takes GUID64, two by-value Vector3s, float32 cost, uint32 portal
type, **signed int32 flags**, and full64 availability mask. Portal types are
`RouteThrough=47144 (0xb828)` and `AnimateThrough=45250 (0xb0c2)`.
Only low-byte bit0 of flags survives the native wrapper: the actual
`MOVZX byte; AND 0xffffff01` reduces it to `OneWayPortal`. The other public
enum bits do not pass through this constructor path.

The wrapper selects the lot from start **world X/Z**, calls the original lot
position/floor converter for both endpoints, and retains its **signed floor
index only**. Converted local X/Z is discarded; downstream triples carry
original world X/Z plus selected floor. `0062f750` applies the selected lot
graph's matrix to X/Z. `0062f360` applies its inverse for matching. The shared
triple layout `{float X,float Z,int32 level}` does not imply a coordinate frame.
Treating the third DWORD as float or applying the lot transform twice changes
the original contract.

The portal allocation is `0x80` bytes. Relevant fields are GUID64 `+8`, serial
`+0x10`, stored triples `+0x14/+0x20`, cost float32 `+0x2c`, uint16 room pair
`+0x48/+0x4a`, uint16 flags `+0x58`, variant vector `+0x5c`, and AGS64 `+0x78`.
The constructor initializes rooms to `0xffff`. The graph builder returns a
serial from its `+0xc0` counter; this is distinct from a per-room portal-vector
index. Early missing/disabled graph or lot gates return zero. Original code
does not establish graceful recovery from allocation failure.

Endpoint dedup compares candidate start X/Z within the original epsilon and
integer level equality. Native flags bit1 suppresses the end comparison;
otherwise end also must match. It does **not** try reversed endpoints. The
output is a vector iterator, used by reconciliation to remove a retained
match from the stale list. `AddPortal` returns handle0 when that match exists;
it does not return the existing handle.

Location variants require a valid `0x28` handle and interface `0xf0464184`.
Their stride `0x38` contains four directional triples plus AGS64. The wrapper
again preserves world X/Z and calculated level. The backend applies the graph
matrix unless its `alreadyLocal` flag is set. Its passed object GUID is unused;
it is not an additional handle-ownership check.

## Built-in slot portals and lifecycle

`0082cd70` reconciles current routing slots against all graph portals for an
object. It requires enabled routing, an object owner lot other than the world
lot, a transform and routing-slot component. Kind0 dispatches by original
helper identity; explicit kinds are pool1, pool-ladder2, stairs3, platform4,
diving-board5 and water-slide6. Default costs are respectively 300,296,5,6,295
and295.5. Slot transforms produce world positions, followed by selected lot
floor indices and the graph matrix.

Board/slide kinds5/6 require exactly3 routing slots; other kinds require an even slot count. Invalid counts return0 before reconciliation. Ordinary pairs use `(i,i+1)`; stairs reverse them `(i+1,i)`; board/slide use
`(i,i+2)`. Pairs are visited with `i+=2`. Disabled slot endpoints are skipped.
Existing endpoint matches are retained, new portals are created, and leftover
stale portals are removed. Pet availability variants depend on the original
feature gate. Native stairs attach dog/cat/little-dog variants and primary
human mask `0x7ff`.

The original [costs and jump tables](../../evidence/native/portal-original-data.tsv)
retain the constants and dispatch data. Ghidra's manually recovered second
switch still omits kind6 as an alias of kind5 in displayed C. Both original
DWORD table entries target `0082d1db` and select `(i,i+2)`; the annotation in C
records this limitation. SIMD spill locals still have some pointer/float casts.

Removing object portals and destroying a host handle are separate operations.
`RemovePortals` changes graph registration; `DestroyPortalHandle` removes a
host handle mapping and releases the returned reference. `SetOceanPortalOwner`
returns true even without a manager, so that return alone proves no mutation.

## Eligibility and directional permission cache

The per-route context cache is keyed by **object GUID64 plus the two raw room16
IDs**, not portal serial. Portals of the same object/room pair can therefore
share decisions. Two byte fields in a cached DWORD encode the directions.
No context/follower returns `Unlocked=2`. Otherwise default finite-cost
classification rejects cost≥1,000,000 or a forbidden object GUID. Non-boat
followers also need all converted AGS bits included in a primary/variant mask.
Boat species bypass this availability rejection; shark does not. The same
predicate does not bypass cost, forbidden-object or script checks.

| Callback result | Value | Native meaning |
| --- | ---: | --- |
| `NoListeners` | 0 | Keep default; disable the lot's callback activation |
| `PortalLocked` | 1 | Crossing rejected |
| `PortalUnlocked` | 2 | Crossing allowed |
| `PortalDiscouraged` | 3 | Allowed with cost penalty |

When object Location and lot graph resolve and `+0x8f` is set, the classifier
invokes managed event59 (`0x3b`) with lot GUID, follower GUID, portal object
GUID, source/destination signed managed Int16 rooms and default-locked bool. Raw room0..16 maps to
managed room0; larger values map to `raw-16`, then narrow to the callback’s signed16 fields. Valid callback1..3 overrides the
default. Zero or values>3 clear activation and retain default. Cache insertion
does not mean its directional result was populated when object/lot resolution
failed. [Callback registration](../callbacks/README.md) describes the host
bridge; the [visitor contract](../travel/visitors-and-door-greeting.md) follows
the managed permission producers.

Primary masks and variants are full64. `SetPortalAgeGenderFlags` accepts only
uint32 and writes high DWORD zero; it cannot preserve boat/houseboat high bits.
`Portal_SelectDirectionalPosition` requires complete mask inclusion, scans
variant records when primary fails, and falls back to primary positions when
no variant matches. That position fallback does not itself grant permission.

Original COMISS/JAE handling makes NaN cost initially unlocked, despite the
decompiler's less-than expression. The guide's threshold statements concern
finite costs; exact flags and branches are annotated in C.

## Graph selection and costs

Node keys pack room in high16 and room-local portal index in low16.
Low `0xfffe` is start, `0xffff` goal. Other reserved/invalid low indices may
return a fallback position; arbitrary high room indices are not range-checked
by the position reader. Neighbor generation supplies intra-room connections
and the same portal's counterpart in its other room. Only eligible candidates
continue to edge-cost evaluation.

Crossing the same portal rejects a wrong one-way direction and locked sides.
Entry reachability is always checked; native flags bit1 can bypass exit
reachability. Discouraged entry/exit adds500 once. Without a preferred object,
crossing cost is portal cost+penalty. With a nonzero preferred GUID, its matching
crossing costs exactly1 without the penalty; other crossings cost4×portal
cost+penalty. Rejected crossings produce1,000,000 and search discards costs at
or above that value.

Between distinct portals and in the heuristic, distance is
`sqrt(dx*dx + dz*dz + 9*dLevel*dLevel)`. Floor delta enters x87 with signed
`FILD`; positions remain float32. The small helper has custom ECX/EAX pointer
inputs, rather than ordinary fastcall ECX/EDX. Callers round x87 results into
float32 search priorities.

Search maintains open priorities, closed keys and predecessors. A cheaper
open node updates g/f and predecessor; closed nodes are not reopened. Success
reconstructs only predecessor pairs that change high16 room, then reverses
their order. The closest output updates on strictly smaller heuristic.
This establishes the search mechanics, not optimality under preferred-cost
overrides or every malformed input. The outer planner subsequently creates
the geometric pieces and portal subpaths; see [planner/results](planner-and-results.md).

## Lanes, approach, traversal and cleanup

The managed `PortalAction.PerformAction` subscribes route-finished cleanup,
locks a lane and calls a specialized action. Lane selection starts from the
nearest allowed start slot and its paired exit. An existing user on the same
lane blocks an opposite start direction, or an elevator door, but the same
direction is not universally exclusive. Additional obstruction tests can
retain a fallback lane for later pushing/replanning. A lane dictionary entry,
object use-list membership and graph eligibility are separate state.

No lane either fails immediately according to `NoLanesAvailableFailsRoute`, or
inserts waiting/approach actions. General lane acquisition waits in0.25-minute
steps with a20-minute budget and cancellation; elevator uses its tuned budget,
queue logic and timeout teleport-skip path. These timers are distinct from
stair traversal's completion wait. `FreeRoutingLane`, route-finished callbacks,
reset and `OnPortalCompleted` release lane/use-list state.

`PortalRouteThroughAction` replans approach/through/exit subpaths when another
lane is chosen. It tests the route's one-shot should-use callback and
`OnApproachingPortalObject`, then follows the path. `PortalAnimateThroughAction`
plants/routes to the entry, handles posture changes and invokes specialized
`OnPortalStart`; successful completion calls `OnPortalCompleted`. Loading,
walkstyle changes and replanning have distinct result/restart paths.

## Native stairs start and managed completion

`StairsPortalComponent` creates BottomN/TopN lanes from routing-slot pairs.
Hidden stairs are not registered. At traversal start, hidden stairs, toddlers,
puppies and kittens release their lane and fail. Its separate `IsAllowedThrough`
also rejects horses and wild animals. Slot positions are selected for actor
AGS. Walking, hoverboard and HoverBot use distinct style names. A descending
large dog can choose left/right exit direction from the adjacent wall and
next route segment. This is not a world-travel transition.

Packed native arguments are actorGUID64 + PortalRoutingSpec80bytes +
RouteAnimationSpec16bytes. The portal spec contains objectGUID, direction,
lane, start/end slots, two quaternion orientations and two Vector3 positions.
The wrapper creates a native request and resolves Steering. Enum values are
`Success=0, Failure=1, Skip=2`. Invalid actor/component also returns0 in this
wrapper; zero alone does not establish a valid started body or completion.

Steering clears its prior body, checks animation eligibility and starts
`Locomotion/AnimatedSimStairsBody`. Fallback plants at the endpoint and returns
Skip2. Body setup selects clips from style/age/gender/species/direction;
directions2/3 retry direction0 when lookup fails. Original internal states1..10
choose clips, register listeners, advance and invoke the completion virtual.
Their recovered numeric states do not establish original symbolic phase names.

The completion slot is produced by the Steering constructor: vtable `0x010455a8` at component+8, slot+0x58 → `0x00954660`. The callback compares request DWORD+0x1c/+0x20 for success, clears native steering first, and invokes original `Stairs.OnStairsCompleted` through host+0x138 using request GUID, follower GUID and Boolean. Missing host suppresses invocation. This is a static reflected method call with three engine variants, not the portal-lock world event. The [vtable word](../../evidence/native/portal-steering-vtable.tsv) and canonical callback/constructor pairs below establish the producer and consumer.

The ordinary managed Success path registers a sleeping-task entry **after**
native Begin returns, disables the large-animal evaluation node, and repeatedly
`Simulator.Sleep(10)` while its sleeping flag remains set. It queries sims
within0.6 of the exit, removes self and actors with push-relevant interactions,
then pushes remaining blockers without waiting. The completion handler records
success, clears sleeping and wakes the task. `finally` removes its entry and
reenables the evaluation node. Load's WakeAll clears sleeping and wakes retained
tasks. Skip returns true immediately; OnPortalStop records LastStairsUsedGuid.

Missing-clip native fallback can invoke the completion virtual **during Begin**,
and some paths invoke it twice through recursive state10 plus the outer call.
Thus the native body is not universally asynchronous. The exact host delivery
ordering relative to managed sleeping-entry insertion remains a required runtime
check. No timeout is visible in that stair Sleep loop. This static observation
does not prove an OpenTS3 timeout or identify its cause.

## Other portal families

| Family | Original distinction |
| --- | --- |
| Door | Route-through lanes; room/door permission tested on approach, door opens on lock and closes on unlock; traversal records OnWalkedThrough. Visitor permission is supplied by separate lot/greeting logic. |
| Spiral stairs | Explicit cost2 portal and directional animal variants; aligns entry/exit orientation, invokes its own Use interaction instead of the straight-stairs native Begin path. |
| Ladder | Two explicit one-way animated portals, human availability mask; own managed climb interaction and one lane. |
| Elevator | Explicit directed portals between linked interior slot sets, multiple lanes and queue/teleport-skip policy; dedicated managed animation/traversal state. |
| Platform/pool | Native helper reconciliation and specialized managed lane/posture/obstruction rules; reusing a registration entry does not make these states interchangeable. |

Their complete original owner types are retained below. The table identifies
reviewed distinctions; it does not claim every elevator animation, vehicle,
houseboat or specialized portal has been fully reconstructed.

## Evidence status and remaining checks

Executed verification compares original PE bytes with selected Ghidra memory,
complete function envelopes, direct E8 targets, managed struct layouts and
constants. This is offline verification. No original-game or OpenTS3 gameplay
test was executed for this guide. Runtime checks still needed include callback
delivery ordering, lost/duplicate completions, save/load while traversing,
lane contention/replanning, species-specific endpoints and the reported
premature visitor greeting. World travel, tomb links and rendering overlap have
their own guides and test limits.

## Managed types

| Original owner type | Evidence |
| --- | --- |
| `ScriptCore.RouteManager` | [C#](../../evidence/managed/types/ScriptCore.RouteManager.cs) ([IL](../../evidence/managed/types/ScriptCore.RouteManager.il.txt)) |
| `Sims3.Gameplay.Abstracts.StaircaseSpiral` | [C#](../../evidence/managed/types/Sims3.Gameplay.Abstracts.StaircaseSpiral.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Abstracts.StaircaseSpiral.il.txt)) |
| `Sims3.Gameplay.Core.PlatformPortalComponent` | [C#](../../evidence/managed/types/Sims3.Gameplay.Core.PlatformPortalComponent.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Core.PlatformPortalComponent.il.txt)) |
| `Sims3.Gameplay.Core.Stairs` | [C#](../../evidence/managed/types/Sims3.Gameplay.Core.Stairs.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Core.Stairs.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.PortalComponent` | [C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.PortalComponent.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.PortalComponent.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.PortalObjectType` | [C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.PortalObjectType.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.PortalObjectType.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.PortalRestriction` | [C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.PortalRestriction.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.PortalRestriction.il.txt)) |
| `Sims3.Gameplay.Objects.Elevator.ElevatorInterior` | [C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Elevator.ElevatorInterior.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Elevator.ElevatorInterior.il.txt)) |
| `Sims3.Gameplay.Objects.Ladder` | [C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Ladder.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Ladder.il.txt)) |
| `Sims3.Gameplay.Pools.PoolPortalComponent` | [C#](../../evidence/managed/types/Sims3.Gameplay.Pools.PoolPortalComponent.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Pools.PoolPortalComponent.il.txt)) |
| `Sims3.Gameplay.Routing.PortalAction` | [C#](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalAction.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalAction.il.txt)) |
| `Sims3.Gameplay.Routing.PortalAnimateThroughAction` | [C#](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalAnimateThroughAction.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalAnimateThroughAction.il.txt)) |
| `Sims3.Gameplay.Routing.PortalRouteThroughAction` | [C#](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalRouteThroughAction.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalRouteThroughAction.il.txt)) |
| `Sims3.Gameplay.Routing.PortalTraversalAction` | [C#](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalTraversalAction.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Routing.PortalTraversalAction.il.txt)) |
| `Sims3.SimIFace.CAS.CASAGSAvailabilityFlags` | [C#](../../evidence/managed/types/Sims3.SimIFace.CAS.CASAGSAvailabilityFlags.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.CAS.CASAGSAvailabilityFlags.il.txt)) |
| `Sims3.SimIFace.CAS.CASAgeGenderFlags` | [C#](../../evidence/managed/types/Sims3.SimIFace.CAS.CASAgeGenderFlags.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.CAS.CASAgeGenderFlags.il.txt)) |
| `Sims3.SimIFace.PortalDirection` | [C#](../../evidence/managed/types/Sims3.SimIFace.PortalDirection.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.PortalDirection.il.txt)) |
| `Sims3.SimIFace.PortalLockedCallbackResults` | [C#](../../evidence/managed/types/Sims3.SimIFace.PortalLockedCallbackResults.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.PortalLockedCallbackResults.il.txt)) |
| `Sims3.SimIFace.PortalRoutingSpec` | [C#](../../evidence/managed/types/Sims3.SimIFace.PortalRoutingSpec.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.PortalRoutingSpec.il.txt)) |
| `Sims3.SimIFace.PortalType` | [C#](../../evidence/managed/types/Sims3.SimIFace.PortalType.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.PortalType.il.txt)) |
| `Sims3.SimIFace.RouteAnimationSpec` | [C#](../../evidence/managed/types/Sims3.SimIFace.RouteAnimationSpec.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.RouteAnimationSpec.il.txt)) |
| `Sims3.SimIFace.RoutePortalFlags` | [C#](../../evidence/managed/types/Sims3.SimIFace.RoutePortalFlags.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.RoutePortalFlags.il.txt)) |
| `Sims3.SimIFace.StairTraversalResult` | [C#](../../evidence/managed/types/Sims3.SimIFace.StairTraversalResult.cs) ([IL](../../evidence/managed/types/Sims3.SimIFace.StairTraversalResult.il.txt)) |


## Native function table

| Address | Analyst function | Canonical evidence |
| --- | --- | --- |
| `0x0055ddc0` | `Routing_IsBoatSpeciesForPortalPermission` | [ASM](../../evidence/native/functions/0055DDC0_Routing_IsBoatSpeciesForPortalPermission.asm) ([annotated C](../../evidence/native/functions/0055DDC0_Routing_IsBoatSpeciesForPortalPermission.c)) |
| `0x006248b0` | `Routing_RawRoomToManagedRoomId` | [ASM](../../evidence/native/functions/006248B0_Routing_RawRoomToManagedRoomId.asm) ([annotated C](../../evidence/native/functions/006248B0_Routing_RawRoomToManagedRoomId.c)) |
| `0x00624970` | `Routing_ConvertCASFlagsToPortalAvailability` | [ASM](../../evidence/native/functions/00624970_Routing_ConvertCASFlagsToPortalAvailability.asm) ([annotated C](../../evidence/native/functions/00624970_Routing_ConvertCASFlagsToPortalAvailability.c)) |
| `0x00625010` | `PortalLocalPosition_Distance` | [ASM](../../evidence/native/functions/00625010_PortalLocalPosition_Distance.asm) ([annotated C](../../evidence/native/functions/00625010_PortalLocalPosition_Distance.c)) |
| `0x00625050` | `Portal_BypassesEndPositionCheck` | [ASM](../../evidence/native/functions/00625050_Portal_BypassesEndPositionCheck.asm) ([annotated C](../../evidence/native/functions/00625050_Portal_BypassesEndPositionCheck.c)) |
| `0x00626c70` | `LotRouteGraph_IsNodeExcluded` | [ASM](../../evidence/native/functions/00626C70_LotRouteGraph_IsNodeExcluded.asm) ([annotated C](../../evidence/native/functions/00626C70_LotRouteGraph_IsNodeExcluded.c)) |
| `0x00626cd0` | `PortalGraphSearch_GetNodePosition` | [ASM](../../evidence/native/functions/00626CD0_PortalGraphSearch_GetNodePosition.asm) ([annotated C](../../evidence/native/functions/00626CD0_PortalGraphSearch_GetNodePosition.c)) |
| `0x00627d90` | `PortalGraphSearch_EstimateDistance` | [ASM](../../evidence/native/functions/00627D90_PortalGraphSearch_EstimateDistance.asm) ([annotated C](../../evidence/native/functions/00627D90_PortalGraphSearch_EstimateDistance.c)) |
| `0x0062f360` | `LotRouteGraph_ApplyInverseLotPositionMatrix` | [ASM](../../evidence/native/functions/0062F360_LotRouteGraph_ApplyInverseLotPositionMatrix.asm) ([annotated C](../../evidence/native/functions/0062F360_LotRouteGraph_ApplyInverseLotPositionMatrix.c)) |
| `0x0062f750` | `LotRouteGraph_ApplyLotPositionMatrix` | [ASM](../../evidence/native/functions/0062F750_LotRouteGraph_ApplyLotPositionMatrix.asm) ([annotated C](../../evidence/native/functions/0062F750_LotRouteGraph_ApplyLotPositionMatrix.c)) |
| `0x0062ff80` | `LotRouteGraph_CollectObjectPortals` | [ASM](../../evidence/native/functions/0062FF80_LotRouteGraph_CollectObjectPortals.asm) ([annotated C](../../evidence/native/functions/0062FF80_LotRouteGraph_CollectObjectPortals.c)) |
| `0x00630380` | `LotRouteGraph_FindLotByGuid` | [ASM](../../evidence/native/functions/00630380_LotRouteGraph_FindLotByGuid.asm) ([annotated C](../../evidence/native/functions/00630380_LotRouteGraph_FindLotByGuid.c)) |
| `0x006340c0` | `PortalGraphSearch_TestEndpointReachability` | [ASM](../../evidence/native/functions/006340C0_PortalGraphSearch_TestEndpointReachability.asm) ([annotated C](../../evidence/native/functions/006340C0_PortalGraphSearch_TestEndpointReachability.c)) |
| `0x00634d20` | `PortalGraphSearch_EvaluateEdgeCost` | [ASM](../../evidence/native/functions/00634D20_PortalGraphSearch_EvaluateEdgeCost.asm) ([annotated C](../../evidence/native/functions/00634D20_PortalGraphSearch_EvaluateEdgeCost.c)) |
| `0x00638200` | `LotRouteGraph_CreatePortal` | [ASM](../../evidence/native/functions/00638200_LotRouteGraph_CreatePortal.asm) ([annotated C](../../evidence/native/functions/00638200_LotRouteGraph_CreatePortal.c)) |
| `0x00638450` | `LotRouteGraph_AddPortalLocationVariant` | [ASM](../../evidence/native/functions/00638450_LotRouteGraph_AddPortalLocationVariant.asm) ([annotated C](../../evidence/native/functions/00638450_LotRouteGraph_AddPortalLocationVariant.c)) |
| `0x00638710` | `LotRouteGraph_AddStairPetVariants` | [ASM](../../evidence/native/functions/00638710_LotRouteGraph_AddStairPetVariants.asm) ([annotated C](../../evidence/native/functions/00638710_LotRouteGraph_AddStairPetVariants.c)) |
| `0x00638be0` | `LotRouteGraph_AddDirectionalAnimalVariants` | [ASM](../../evidence/native/functions/00638BE0_LotRouteGraph_AddDirectionalAnimalVariants.asm) ([annotated C](../../evidence/native/functions/00638BE0_LotRouteGraph_AddDirectionalAnimalVariants.c)) |
| `0x00638fd0` | `LotRouteGraph_AddAdditionalAnimalVariants` | [ASM](../../evidence/native/functions/00638FD0_LotRouteGraph_AddAdditionalAnimalVariants.asm) ([annotated C](../../evidence/native/functions/00638FD0_LotRouteGraph_AddAdditionalAnimalVariants.c)) |
| `0x0063e780` | `PortalGraphSearch_AppendNeighbors` | [ASM](../../evidence/native/functions/0063E780_PortalGraphSearch_AppendNeighbors.asm) ([annotated C](../../evidence/native/functions/0063E780_PortalGraphSearch_AppendNeighbors.c)) |
| `0x0063eb60` | `PortalGraphSearch_FindRoomCrossings` | [ASM](../../evidence/native/functions/0063EB60_PortalGraphSearch_FindRoomCrossings.asm) ([annotated C](../../evidence/native/functions/0063EB60_PortalGraphSearch_FindRoomCrossings.c)) |
| `0x0064f170` | `Portal_SelectDirectionalPosition` | [ASM](../../evidence/native/functions/0064F170_Portal_SelectDirectionalPosition.asm) ([annotated C](../../evidence/native/functions/0064F170_Portal_SelectDirectionalPosition.c)) |
| `0x0064f7d0` | `Portal_Initialize` | [ASM](../../evidence/native/functions/0064F7D0_Portal_Initialize.asm) ([annotated C](../../evidence/native/functions/0064F7D0_Portal_Initialize.c)) |
| `0x0064f9b0` | `PortalPermissionCache_FindObjectRoomKey` | [ASM](../../evidence/native/functions/0064F9B0_PortalPermissionCache_FindObjectRoomKey.asm) ([annotated C](../../evidence/native/functions/0064F9B0_PortalPermissionCache_FindObjectRoomKey.c)) |
| `0x0064fa40` | `PortalPermissionCache_FindOrInsert` | [ASM](../../evidence/native/functions/0064FA40_PortalPermissionCache_FindOrInsert.asm) ([annotated C](../../evidence/native/functions/0064FA40_PortalPermissionCache_FindOrInsert.c)) |
| `0x0064fb20` | `Portal_GetDirectionalPermission` | [ASM](../../evidence/native/functions/0064FB20_Portal_GetDirectionalPermission.asm) ([annotated C](../../evidence/native/functions/0064FB20_Portal_GetDirectionalPermission.c)) |
| `0x0064fdb0` | `Portal_IsDirectionLocked` | [ASM](../../evidence/native/functions/0064FDB0_Portal_IsDirectionLocked.asm) ([annotated C](../../evidence/native/functions/0064FDB0_Portal_IsDirectionLocked.c)) |
| `0x0064fdd0` | `Portal_IsDirectionDiscouraged` | [ASM](../../evidence/native/functions/0064FDD0_Portal_IsDirectionDiscouraged.asm) ([annotated C](../../evidence/native/functions/0064FDD0_Portal_IsDirectionDiscouraged.c)) |
| `0x0074b570` | `RouteManager_DestroyPortalHandle` | [ASM](../../evidence/native/functions/0074B570_RouteManager_DestroyPortalHandle.asm) ([annotated C](../../evidence/native/functions/0074B570_RouteManager_DestroyPortalHandle.c)) |
| `0x0074b5a0` | `RouteManager_AddDivingBoardPortals` | [ASM](../../evidence/native/functions/0074B5A0_RouteManager_AddDivingBoardPortals.asm) ([annotated C](../../evidence/native/functions/0074B5A0_RouteManager_AddDivingBoardPortals.c)) |
| `0x0074b5d0` | `RouteManager_AddWaterSlidePortals` | [ASM](../../evidence/native/functions/0074B5D0_RouteManager_AddWaterSlidePortals.asm) ([annotated C](../../evidence/native/functions/0074B5D0_RouteManager_AddWaterSlidePortals.c)) |
| `0x0074b600` | `RouteManager_AddPoolOrPlatformPortals` | [ASM](../../evidence/native/functions/0074B600_RouteManager_AddPoolOrPlatformPortals.asm) ([annotated C](../../evidence/native/functions/0074B600_RouteManager_AddPoolOrPlatformPortals.c)) |
| `0x0074b630` | `RouteManager_AddStairPortals` | [ASM](../../evidence/native/functions/0074B630_RouteManager_AddStairPortals.asm) ([annotated C](../../evidence/native/functions/0074B630_RouteManager_AddStairPortals.c)) |
| `0x0074b660` | `RouteManager_SetOceanPortalOwner` | [ASM](../../evidence/native/functions/0074B660_RouteManager_SetOceanPortalOwner.asm) ([annotated C](../../evidence/native/functions/0074B660_RouteManager_SetOceanPortalOwner.c)) |
| `0x0074b680` | `RouteManager_SetPortalLockStatus` | [ASM](../../evidence/native/functions/0074B680_RouteManager_SetPortalLockStatus.asm) ([annotated C](../../evidence/native/functions/0074B680_RouteManager_SetPortalLockStatus.c)) |
| `0x0074d5b0` | `Route_SetPreferredPortal` | [ASM](../../evidence/native/functions/0074D5B0_Route_SetPreferredPortal.asm) ([annotated C](../../evidence/native/functions/0074D5B0_Route_SetPreferredPortal.c)) |
| `0x0074d600` | `RouteManager_AddPortalLocationVariation` | [ASM](../../evidence/native/functions/0074D600_ScriptCore_RouteManager_RouteManager_AddPortalLocationVariation.asm) ([annotated C](../../evidence/native/functions/0074D600_ScriptCore_RouteManager_RouteManager_AddPortalLocationVariation.c)) |
| `0x0074d8c0` | `RouteManager_RemovePortals` | [ASM](../../evidence/native/functions/0074D8C0_ScriptCore_RouteManager_RouteManager_RemovePortals.asm) ([annotated C](../../evidence/native/functions/0074D8C0_ScriptCore_RouteManager_RouteManager_RemovePortals.c)) |
| `0x0074d930` | `RouteManager_BeginPortalRouting` | [ASM](../../evidence/native/functions/0074D930_ScriptCore_RouteManager_RouteManager_BeginPortalRouting.asm) ([annotated C](../../evidence/native/functions/0074D930_ScriptCore_RouteManager_RouteManager_BeginPortalRouting.c)) |
| `0x007510c0` | `Route_ClearForbiddenPortalList` | [ASM](../../evidence/native/functions/007510C0_Route_ClearForbiddenPortalList.asm) ([annotated C](../../evidence/native/functions/007510C0_Route_ClearForbiddenPortalList.c)) |
| `0x00757f40` | `RouteManager_AddPortal` | [ASM](../../evidence/native/functions/00757F40_ScriptCore_RouteManager_RouteManager_AddPortal.asm) ([annotated C](../../evidence/native/functions/00757F40_ScriptCore_RouteManager_RouteManager_AddPortal.c)) |
| `0x00758240` | `RouteManager_SetPortalCost` | [ASM](../../evidence/native/functions/00758240_ScriptCore_RouteManager_RouteManager_SetPortalCost.asm) ([annotated C](../../evidence/native/functions/00758240_ScriptCore_RouteManager_RouteManager_SetPortalCost.c)) |
| `0x00758350` | `RouteManager_SetPortalAgeGenderFlags` | [ASM](../../evidence/native/functions/00758350_ScriptCore_RouteManager_RouteManager_SetPortalAgeGenderFlags.asm) ([annotated C](../../evidence/native/functions/00758350_ScriptCore_RouteManager_RouteManager_SetPortalAgeGenderFlags.c)) |
| `0x007591b0` | `Route_RemoveObjectFromForbiddenPortalList` | [ASM](../../evidence/native/functions/007591B0_Route_RemoveObjectFromForbiddenPortalList.asm) ([annotated C](../../evidence/native/functions/007591B0_Route_RemoveObjectFromForbiddenPortalList.c)) |
| `0x00762bb0` | `Route_AddObjectToForbiddenPortalList` | [ASM](../../evidence/native/functions/00762BB0_Route_AddObjectToForbiddenPortalList.asm) ([annotated C](../../evidence/native/functions/00762BB0_Route_AddObjectToForbiddenPortalList.c)) |
| `0x00762ea0` | `Route_InsertPortalSubPathAtIndex` | [ASM](../../evidence/native/functions/00762EA0_ScriptCore_Route_Route_InsertPortalSubPathAtIndex.asm) ([annotated C](../../evidence/native/functions/00762EA0_ScriptCore_Route_Route_InsertPortalSubPathAtIndex.c)) |
| `0x00791fc0` | `World_InvokePortalLockedCallback` | [ASM](../../evidence/native/functions/00791FC0_World_InvokePortalLockedCallback.asm) ([annotated C](../../evidence/native/functions/00791FC0_World_InvokePortalLockedCallback.c)) |
| `0x0081c550` | `RoutePortalContext_SetPreferredObject` | [ASM](../../evidence/native/functions/0081C550_RoutePortalContext_SetPreferredObject.asm) ([annotated C](../../evidence/native/functions/0081C550_RoutePortalContext_SetPreferredObject.c)) |
| `0x0081c600` | `RoutePortalContext_IsObjectForbidden` | [ASM](../../evidence/native/functions/0081C600_RoutePortalContext_IsObjectForbidden.asm) ([annotated C](../../evidence/native/functions/0081C600_RoutePortalContext_IsObjectForbidden.c)) |
| `0x00829cb0` | `RoutingManager_FindMatchingPortalEndpoints` | [ASM](../../evidence/native/functions/00829CB0_RoutingManager_FindMatchingPortalEndpoints.asm) ([annotated C](../../evidence/native/functions/00829CB0_RoutingManager_FindMatchingPortalEndpoints.c)) |
| `0x0082cd70` | `RoutingManager_ReconcileSlotPortals` | [ASM](../../evidence/native/functions/0082CD70_RoutingManager_ReconcileSlotPortals.asm) ([annotated C](../../evidence/native/functions/0082CD70_RoutingManager_ReconcileSlotPortals.c)) |
| `0x0082f140` | `RoutingManager_AddDivingBoardPortals` | [ASM](../../evidence/native/functions/0082F140_RoutingManager_AddDivingBoardPortals.asm) ([annotated C](../../evidence/native/functions/0082F140_RoutingManager_AddDivingBoardPortals.c)) |
| `0x0082f160` | `RoutingManager_AddWaterSlidePortals` | [ASM](../../evidence/native/functions/0082F160_RoutingManager_AddWaterSlidePortals.asm) ([annotated C](../../evidence/native/functions/0082F160_RoutingManager_AddWaterSlidePortals.c)) |
| `0x0082f180` | `RoutingManager_AddPoolOrPlatformPortals` | [ASM](../../evidence/native/functions/0082F180_RoutingManager_AddPoolOrPlatformPortals.asm) ([annotated C](../../evidence/native/functions/0082F180_RoutingManager_AddPoolOrPlatformPortals.c)) |
| `0x0082f1a0` | `RoutingManager_AddStairPortals` | [ASM](../../evidence/native/functions/0082F1A0_RoutingManager_AddStairPortals.asm) ([annotated C](../../evidence/native/functions/0082F1A0_RoutingManager_AddStairPortals.c)) |
| `0x00854150` | `AnimatedStairsBody_Initialize` | [ASM](../../evidence/native/functions/00854150_AnimatedStairsBody_Initialize.asm) ([annotated C](../../evidence/native/functions/00854150_AnimatedStairsBody_Initialize.c)) |
| `0x008542e0` | `AnimatedStairsBody_Transition` | [ASM](../../evidence/native/functions/008542E0_AnimatedStairsBody_Transition.asm) ([annotated C](../../evidence/native/functions/008542E0_AnimatedStairsBody_Transition.c)) |
| `0x00854b90` | `AnimatedStairsBody_Begin` | [ASM](../../evidence/native/functions/00854B90_AnimatedStairsBody_Begin.asm) ([annotated C](../../evidence/native/functions/00854B90_AnimatedStairsBody_Begin.c)) |
| `0x009549e0` | `Steering_BeginAnimatedStairs` | [ASM](../../evidence/native/functions/009549E0_Steering_BeginAnimatedStairs.asm) ([annotated C](../../evidence/native/functions/009549E0_Steering_BeginAnimatedStairs.c)) |
| `0x00adc920` | `Lot_WorldPositionToPortalLocalXZLevel` | [ASM](../../evidence/native/functions/00ADC920_Lot_WorldPositionToPortalLocalXZLevel.asm) ([annotated C](../../evidence/native/functions/00ADC920_Lot_WorldPositionToPortalLocalXZLevel.c)) |


| `0x00954660` | `Steering_InvokeManagedStairsCompleted` | [ASM](../../evidence/native/functions/00954660_Steering_InvokeManagedStairsCompleted.asm) ([annotated C](../../evidence/native/functions/00954660_Steering_InvokeManagedStairsCompleted.c)) |
| `0x00955a30` | Steering constructor/vtable producer | [ASM](../../evidence/native/functions/00955A30_SteeringComponent_Construct.asm) ([annotated C](../../evidence/native/functions/00955A30_SteeringComponent_Construct.c)) |
| `0x0063ff00` | `LotRouteGraph_PlanThroughPortals` | [ASM](../../evidence/native/functions/0063FF00_LotRouteGraph_PlanThroughPortals.asm) ([annotated C](../../evidence/native/functions/0063FF00_LotRouteGraph_PlanThroughPortals.c)) |
| `0x006418d0` | `LotRouteGraph_PlanWithAlternateRooms` | [ASM](../../evidence/native/functions/006418D0_LotRouteGraph_PlanWithAlternateRooms.asm) ([annotated C](../../evidence/native/functions/006418D0_LotRouteGraph_PlanWithAlternateRooms.c)) |


## Current registration boundary is not native graph publication

RoutePortalRegistrations stores incremented raw handles, endpoint/variation records
and object kind/settings. Actual Ocean owner and stair classification are consumed;
there is no endpoint/variant/lot-lock graph publisher in that owner. This differs
from the verified757F40 family28 retained graph portal,74D600 interface/lot transform
and82CD70 routing-slot reconciliation above. API success and a recorded field do
not prove an edge, direction permission or routing behavior. Actual affected
managed gameplay caller and existing report scope must be joined before a separate
bug/fix; no fabricated runtime reproduction or native handle alias is supplied.
Remove graph versus destroy-handle release, object-incarnation reset, concurrent
Kinds/settings writes and full callback59/AGS permissions remain open.
