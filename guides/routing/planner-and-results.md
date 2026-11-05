# Route planning, graph jobs and failure results

This guide follows the original PC 1.67 managed producer through its registered
TS3W entry, candidate preparation, synchronous native job, graph planning and
managed result consumer. Native names are analyst assignments. These are static
contracts; no retail gameplay test was executed.

Use [destination construction and scoring](destinations-and-scoring.md) for the
goal producers. The relevant original managed consumer is
[ScriptCore.Route C#](../../evidence/managed/types/ScriptCore.Route.cs), with
[original caller IL](../../evidence/managed/callers.il.txt). Result identity and
success semantics come from [RoutePlanResult C#](../../evidence/managed/types/SimIFace.RoutePlanResult.cs)
([original IL](../../evidence/managed/types/SimIFace.RoutePlanResult.il.txt)) and
[RoutePlanResultType C#](../../evidence/managed/types/SimIFace.RoutePlanResultType.cs)
([original IL](../../evidence/managed/types/SimIFace.RoutePlanResultType.il.txt)).

## Managed state before and after planning

`ScriptCore.Route.Plan` and `PlanFromPoint` first reject a target object whose
position is `OutOfWorld`, `Invalid` or `Origin`. This sets
`FailedBecausePlannerAborted` and `DestObjInvalid`, before native planning.
They invoke the optional pre-plan callback, call native planning and store the
returned `RoutePlanResult`. `Succeeded()` means **type equals one**, not a
nonzero result or a nonempty path.

On success, both fetch the first path start into `mOriginalStartPoint` and
update current/plan start fields. On failure, `Plan` sets all those starts to
invalid; `PlanFromPoint` retains the requested input as `mPlanStartPoint`, while
original/current starts become invalid. The optional post-plan callback
receives the result type string. These fields distinguish requested start,
actual planned start and subsequent replan start; they are not interchangeable.

## Native result ABI and start preparation

The original entries use cdecl with a **hidden first result-buffer pointer**.
`Route_PlanFromPoint` then receives handle, X, Y and Z. Both copy eighteen
dwords, a `0x48`-byte result envelope, and return the result pointer in EAX.
The managed semantic fields occupy `0x44` bytes; x86 ABI tail padding occupies
the last four bytes.

| Result offset | Managed meaning |
| --- | --- |
| `+0` | Result type |
| `+4`, `+8`, `+0x0c` | Start slot, destination tag, destination slot |
| `+0x10..+0x18` | Destination XYZ |
| `+0x1c` | Total distance |
| `+0x20` | 64-bit blocker ObjectGuid |
| `+0x28` | Blocker type |
| `+0x2c..+0x34` | Blocker XYZ |
| `+0x38/+0x3c/+0x40` | Generated, accepted and rejected candidate counts |
| `+0x44` | ABI tail padding |

The failure initialization sets type two and clears most fields, but does not
assign the destination-tag word or tail padding on every path. Those bytes
cannot be used as a defined failure signal.
See [0x007651f0 ASM](../../evidence/native/functions/007651F0_ScriptCore_Route_Route_Plan.asm)
([pseudocode](../../evidence/native/functions/007651F0_ScriptCore_Route_Route_Plan.c)) and
[0x007652d0 ASM](../../evidence/native/functions/007652D0_ScriptCore_Route_Route_PlanFromPoint.asm)
([pseudocode](../../evidence/native/functions/007652D0_ScriptCore_Route_Route_PlanFromPoint.c)). The canonical
`0x007651f0` body includes the final RET at `0x007652c1`.

`PlanFromPoint` resolves the route handle and holds its native reference. It
finds the lot containing X/Z, computes a signed integer level, handles below-zero
level/property checks, and queries height before passing the resulting point
to the explicit-start planner. Thus supplied Y is not automatically the final
planned Y. The local location is `{float x;float z;int level}`: instruction
`0x00adc909` writes the level from **EAX**, preserving the height selector's
signed integer result.

| Start stage | Original function |
| --- | --- |
| World point to local X/Z and integer level | [0x00adc8c0 ASM](../../evidence/native/functions/00ADC8C0_Lot_WorldPositionToLocalXZLevel.asm) ([pseudocode](../../evidence/native/functions/00ADC8C0_Lot_WorldPositionToLocalXZLevel.c)) |
| Signed compact-cell property `0x0f` test | [0x00affbf0 ASM](../../evidence/native/functions/00AFFBF0_Lot_TestProperty15AtLocalLocation.asm) ([pseudocode](../../evidence/native/functions/00AFFBF0_Lot_TestProperty15AtLocalLocation.c)) |
| Next-level property path | [0x00aff6a0 ASM](../../evidence/native/functions/00AFF6A0_Lot_TestNextLevelAtLocalLocation.asm) ([pseudocode](../../evidence/native/functions/00AFF6A0_Lot_TestNextLevelAtLocalLocation.c)) |
| Height backend selection | [0x00828e90 ASM](../../evidence/native/functions/00828E90_RoutingSystem_QueryHeightForLevel.asm) ([pseudocode](../../evidence/native/functions/00828E90_RoutingSystem_QueryHeightForLevel.c)) |
| Containing lot and signed level | [0x0074c060 ASM](../../evidence/native/functions/0074C060_RoutePoint_ResolveLotAndLevel.asm) ([pseudocode](../../evidence/native/functions/0074C060_RoutePoint_ResolveLotAndLevel.c)) |

The property test checks signed compact X/Z bytes against half-open lot bounds
and the signed level against inclusive min/max bounds. Its selector is proven;
its gameplay property name remains open. Lot classification `(1,0x50)` changes
height-backend selection, without an original semantic name established here.
The existing [lot level contract](../world/lot-level-selection.md) explains the
height selectors and retains their previous annotations.

The explicit-start planner produces one 64-byte candidate with zero facing,
weight one and resolved integer level. If `RouteOption2` selects follower
orientation (`0x200`) or its opposite (`0x400`), follower facing is copied only
when all three XYZ differences from that follower position are at most `2^-16`.
See [0x00764350 ASM](../../evidence/native/functions/00764350_RouteHost_PlanFromExplicitStart.asm)
([pseudocode](../../evidence/native/functions/00764350_RouteHost_PlanFromExplicitStart.c)).

`Plan` obtains its start from the follower instead. Missing follower returns
type five. Position, transform orientation and level are read under native
object references; a start validation failure returns type two. Temporary start
candidate storage is released after the host planner returns.

| Follower stage | Original function |
| --- | --- |
| Read position and selected orientation | [0x00752650 ASM](../../evidence/native/functions/00752650_RouteHost_ReadFollowerStartPose.asm) ([pseudocode](../../evidence/native/functions/00752650_RouteHost_ReadFollowerStartPose.c)) |
| Build validated follower candidate | [0x0075d9b0 ASM](../../evidence/native/functions/0075D9B0_RouteHost_BuildFollowerStartCandidate.asm) ([pseudocode](../../evidence/native/functions/0075D9B0_RouteHost_BuildFollowerStartCandidate.c)) |
| Dispatch follower-start planning | [0x00764260 ASM](../../evidence/native/functions/00764260_RouteHost_PlanFromFollowerStart.asm) ([pseudocode](../../evidence/native/functions/00764260_RouteHost_PlanFromFollowerStart.c)) |

## Candidate expansion, filtering and host state

The main host planner first disconnects and releases prior path links/current
path, resets path indices and clears endpoint/result flags. A missing goal
returns type two. An empty goal list returns type ten. These failures are
separate from the managed target-position rejection above.

All destinations expand into generated candidates and noncandidates. If no
ordinary candidates exist and no specific error has already been produced,
the noncandidate group can be used as a fallback. The host then refreshes goal
containment flags and filters generated candidates into accepted, rejected and
deferred groups.

| Host stage | Original function |
| --- | --- |
| Main planner and result construction | [0x00760770 ASM](../../evidence/native/functions/00760770_RouteHost_PlanFromStartCandidates.asm) ([pseudocode](../../evidence/native/functions/00760770_RouteHost_PlanFromStartCandidates.c)) |
| Destination expansion | [0x007521c0 ASM](../../evidence/native/functions/007521C0_RouteGoal_ExpandDestinations.asm) ([pseudocode](../../evidence/native/functions/007521C0_RouteGoal_ExpandDestinations.c)) |
| Start containment flags | [0x0074fe80 ASM](../../evidence/native/functions/0074FE80_RouteGoal_RefreshStartContainmentFlags.asm) ([pseudocode](../../evidence/native/functions/0074FE80_RouteGoal_RefreshStartContainmentFlags.c)) |
| Candidate filtering | [0x0075c360 ASM](../../evidence/native/functions/0075C360_RouteHost_FilterCandidatePoints.asm) ([pseudocode](../../evidence/native/functions/0075C360_RouteHost_FilterCandidatePoints.c)) |

Filtering checks lot/room reachability, level constraints, ignored target IDs,
temporary footprint intersections and route options. Examples with original
managed option names are `PassThroughWalls`, `BlockedByDynamicFootprints`,
`DisallowGoalsOnRoads`, `EnableWaterPlanning` and `DestinationMustBeOnLand`.
The original [SimIFace.Route C#](../../evidence/managed/types/SimIFace.Route.cs)
([IL](../../evidence/managed/types/SimIFace.Route.il.txt)) defines the option
constants. [0x0081c4e0 ASM](../../evidence/native/functions/0081C4E0_RoutingOptions_TestMask.asm)
([pseudocode](../../evidence/native/functions/0081C4E0_RoutingOptions_TestMask.c)) tests **any**
intersection of two 32-bit halves: selector zero reads `RouteOption` at
`+0x28/+0x2c`, selector one reads `RouteOption2` at `+0x30/+0x34`.

Deferred records replace an empty accepted group; if ordinary accepted records
exist, deferred records join rejected instead. An empty accepted group produces
type ten, or type eighteen when the rejected marker at record `+0x30` is integer
one. The initial float decompiler displayed that marker as `1.4013e-45`.
The associated reachability return and managed enum establish the portal-lock
result; it is not a float tolerance.

The host records candidate counts as vector byte differences divided by 64.
These count the generated group actually used after fallback, accepted group and
rejected group. On success it writes chosen start slot, chosen destination tag,
destination slot/position and total distance, builds end orientation/position
and applies them to the final path. Temporary candidate vectors are freed;
result path references remain owned by the host.

## Synchronous job and graph ownership

The routing-system adapter rejects empty start/goal arrays, its disabled state
pair, or a false synchronous flag. Under the critical section at `+0x918`, it
refreshes dirty graph state, creates a stack job, **executes it directly** and
releases the job's candidate storage. Success requires a nonempty resulting
path list whose first path state is less than three. This call is not proof of
following a route; it only performs planning.

| Job stage | Original function |
| --- | --- |
| Synchronous adapter | [0x0082c170 ASM](../../evidence/native/functions/0082C170_RoutingSystem_RunSynchronousJob.asm) ([pseudocode](../../evidence/native/functions/0082C170_RoutingSystem_RunSynchronousJob.c)) |
| Refresh dirty lot graph entries | [0x0082bd60 ASM](../../evidence/native/functions/0082BD60_RoutingSystem_PrepareGraphForPlanning.asm) ([pseudocode](../../evidence/native/functions/0082BD60_RoutingSystem_PrepareGraphForPlanning.c)) |
| Copy inputs into job | [0x008199b0 ASM](../../evidence/native/functions/008199B0_RoutingJob_InitializeFromCandidates.asm) ([pseudocode](../../evidence/native/functions/008199B0_RoutingJob_InitializeFromCandidates.c)) |
| Execute and assemble subpaths | [0x0081af00 ASM](../../evidence/native/functions/0081AF00_RoutingJob_ExecuteAndAssembleSubpaths.asm) ([pseudocode](../../evidence/native/functions/0081AF00_RoutingJob_ExecuteAndAssembleSubpaths.c)) |
| Release copied candidates/options | [0x00819740 ASM](../../evidence/native/functions/00819740_RoutingJob_ReleaseCandidateStorage.asm) ([pseudocode](../../evidence/native/functions/00819740_RoutingJob_ReleaseCandidateStorage.c)) |

The job retains the host output-list pointer at `+0x0c`, the world backend at
`+0x14`, owned copies of start/goal vectors at `+0x18/+0x28`, selected-index
output pointers at `+0x38/+0x3c` and copied options at `+0x40`. Cleanup frees the
input copies and option storage, not the host's result path list.

Execution allocates refcounted `RoutingPathImp` objects of `0x190` bytes. It
converts the 64-byte world candidates to lower graph records: 32-byte start
records and 28-byte goal records, with planar X/Z and signed integer level.
It maps route options to graph flags, obtains a lower path, divides it into
typed subpaths and connects neighboring subpaths through retained references.
Endpoint transformations are propagated to the last path. Native allocation
failures and all lower geometry cases have not been runtime tested.

## Graph selection, retries and native states

The graph recovery adapter returns a **numeric EAX status**, verified against
its compare-and-branch consumers. Status eight is terminal;
status six is retried once with flag `0x800000`. Other failure recovery can
search nearby start cells with bounded outer iterations one through nine and
flags `0x11000000`. A flag-controlled segmented recovery loop has at most three
iterations. Status five can try alternate goals or lots.
See [0x00661fa0 ASM](../../evidence/native/functions/00661FA0_RouteGraph_PlanWithRecovery.asm)
([pseudocode](../../evidence/native/functions/00661FA0_RouteGraph_PlanWithRecovery.c)).

The underlying dispatcher resolves start/goal lots and heights. It selects
same-lot planning, an eligible short direct path, or a region/waypoint path
with lot lead-in/out and water sections. Crossing a lot whose byte `+0x4bc` is
set can return status eight. Its goal-order score is
`weight * scale - planarDistanceSquared`, with the original scale retained in
[constants.tsv](../../evidence/routing/constants.tsv); the sort comparator and
tie behavior remain open. It constructs path records and validates assembled
geometry before returning zero.
See [0x0065e520 ASM](../../evidence/native/functions/0065E520_RouteGraph_PlanAcrossLotsAndRegions.asm)
([pseudocode](../../evidence/native/functions/0065E520_RouteGraph_PlanAcrossLotsAndRegions.c)).

The lot planner first attempts the preferred room/goal. Status five can trigger
deduplicated alternate-room goals. The portal planner requires enabled backend,
nonempty start/goals and a valid lot graph. It transforms inputs to local lot
coordinates and resolves room IDs; a same-room path uses a geometric solver,
while a portal plan alternates geometric pieces and portal entry/exit records.
It transforms the resulting path back to world and returns selected indices.
See [0x006418d0 ASM](../../evidence/native/functions/006418D0_LotRouteGraph_PlanWithAlternateRooms.asm)
([pseudocode](../../evidence/native/functions/006418D0_LotRouteGraph_PlanWithAlternateRooms.c)) and
[0x0063ff00 ASM](../../evidence/native/functions/0063FF00_LotRouteGraph_PlanThroughPortals.asm)
([pseudocode](../../evidence/native/functions/0063FF00_LotRouteGraph_PlanThroughPortals.c)).

The graph status, native path state and managed result type are different
number spaces. Job execution maps graph zero to path state two, defaults to
state three on failure and maps graph 2/3/4/5-or-8 to states 5/6/7/8. The host
then decodes the selected path:

| Native path state | Managed result |
| --- | --- |
| 0, 1, 2 | 1 — Succeeded |
| 3 | 2 — Failed |
| 4 | 3 — FailedBecausePlannerAborted |
| 5 | 4 — FailedBecauseNoStartSpecified |
| 6 | 10 — FailedBecauseNoDestinationSpecified |
| 7, 8 | 16 — FailedBecauseNoPathToDestination |

See [0x007527f0 ASM](../../evidence/native/functions/007527F0_RouteHost_DecodePathPlanFailure.asm)
([pseudocode](../../evidence/native/functions/007527F0_RouteHost_DecodePathPlanFailure.c)). For states seven
and eight it scans obstacle records, ignores the follower's own ID and fills
blocker ID/type/location. The returned obstruction is thus a selected failure
explanation, not every object touched by the route. With
`ReplanToFindObstacleWhenPathPlanFails`, job execution can perform an additional
diagnostic graph call and retain obstacle records.

## Evidence limits and remaining graph work

The reviewed chains establish input conversion, object/route identity,
destination ownership, candidate records, synchronous execution, graph retry
boundaries, subpath assembly and result translation. Complete leaf algorithms
for region search (`0x006764c0`), geometric solvers (`0x00633660`, `0x00632e50`)
and water search (`0x00671da0`) remain open. The [portal/stairs contract](portals-and-stairs.md)
now records portal search keys, costs, directional permissions, managed lanes
and traversal completion. No runtime reachability or search optimality guarantee
is inferred from the static paths.

Other open points are property selector names, all destination-rejection leaf
rules, the goal-order comparator/ties, malformed-input behavior and route
execution outside the reviewed portal/stairs path. These limits do not change the numeric result and
ownership contracts above. No timing measurement, engine regression test or
retail route-following test was performed.

## Steering Travelling clock and callback order

The clock belongs to the steering component. Registered entry74DB30 resolves the
object and011EA138 component and calls952240. The original managed setter
forwards ObjectGuid/Float32 directly (ScriptCore060010BE IL0008; native
declaration0600107B).
[74DB30 ASM](../../evidence/native/functions/0074DB30_ScriptCore_RouteManager_RouteManager_SetTravellingEventInterval.asm)
([annotated pseudocode](../../evidence/native/functions/0074DB30_ScriptCore_RouteManager_RouteManager_SetTravellingEventInterval.c)),
[952240 ASM](../../evidence/native/functions/00952240_FUN_00952240.asm)
([annotated pseudocode](../../evidence/native/functions/00952240_FUN_00952240.c)),
[managed IL](../../evidence/managed/types/ScriptCore.RouteManager.il.txt)
([managed decompilation](../../evidence/managed/types/ScriptCore.RouteManager.cs)).
952240 copies interval to component+E0 and writes positive zero to elapsed+E4,
without clamping/validation. The constructor also initializes both to zero.
[constructor ASM](../../evidence/native/functions/00955A30_SteeringComponent_Construct.asm)
([annotated pseudocode](../../evidence/native/functions/00955A30_SteeringComponent_Construct.c)).

Actual per-component update955C40 is reached by the selected manager-list call
at83C6A2. It requires nonzero839640(component+8); otherwise it takes953720.
Controller update8399F0 precedes the clock. For finite ordered values:

1. Interval+E0 must exceed zero; component+C0 must pass its separate nonzero
   gate. The C0 writer/meaning remains open, not an inferred speed threshold.
2. ADDSS adds the supplied update delta to elapsed+E4 and stores Float32.
3. COMISS/JBE955D03/955D0E skips when elapsed<=interval. Equality is not due.
4. Otherwise one SUBSS/store subtracts one interval and interface+68 is invoked
   once at955D23. No backedge retries the comparison; remaining time is retained.
5. Subsequent avoidance scan85F690 and nonempty-obstacle callback interface+60
   occur later in this same update. Callbacks can make this order observable.

[955C40 ASM](../../evidence/native/functions/00955C40_FUN_00955c40.asm)
([annotated pseudocode](../../evidence/native/functions/00955C40_FUN_00955c40.c)).
With interval1, accumulated time1 produces no callback; accumulated time3.5
produces one callback and leaves2.5. Later admitted updates process at most one
further interval each. This is static branch behavior, not a retail timing run
or evidence of the designer's rationale. Nonpositive intervals suspend
accumulation; assigning an interval resets elapsed. NaN/FP-exception behavior
must be read from instructions, not extrapolated from these finite examples.

The constructor installs interface vtable10455A8 at component+8. Slot+68 at
1045610 contains `20 32 95 00`, selecting953220. ECX is component+8; the helper
requires interface+90 sink, reads both owner GUID words through interface-4,
and supplies event type4 to sink virtual+8. Missing sink emits nothing, after
clock subtraction. Complete vector payload math and managed callback/error
semantics remain separate.
[953220 ASM](../../evidence/native/functions/00953220_FUN_00953220.asm)
([annotated pseudocode](../../evidence/native/functions/00953220_FUN_00953220.c)).

These three canonical pairs contain1066 pristine PE-matched bytes and339 owned
Listing instructions; the vtable word was also matched. Display aliases are
analyst reference annotations; database symbols and original bytes are unchanged.
The enclosing scheduler's delta units, C0 writer, list/retirement guarantees,
full event payload, errors and reentrancy remain open. One callback per component
update is not proof of one callback per render frame or host route record.

## Active-path point and destination obstruction

These queries inspect geometry through retained native path/context objects;
they are not simply reads of the previous plan's failure-blocker field.
`74CA30` resolves/retains a route, requires a nonempty path list and nonnull
tail-node path, obtains its endpoint through virtual+134, and calls8460F0.
`74CAF0` selects route+EC when its+F4 byte is set; otherwise it uses the first
list-node path, or null for an empty list. It supplies the requested point to the
same helper. Both pass null for the helper's second (actor-interface) parameter,
route+40..4C as two64-bit exclusion values, and count2. Route cleanup preserves
EDX:EAX as the full returned GUID; failed route/list admission yields zero.
[74CA30 ASM](../../evidence/native/functions/0074CA30_ScriptCore_Route_Route_GetDestinationObstruction.asm)
([annotated pseudocode](../../evidence/native/functions/0074CA30_ScriptCore_Route_Route_GetDestinationObstruction.c)),
[74CAF0 ASM](../../evidence/native/functions/0074CAF0_ScriptCore_Route_Route_GetObstructionAtPoint.asm)
([annotated pseudocode](../../evidence/native/functions/0074CAF0_ScriptCore_Route_Route_GetObstructionAtPoint.c)).
The exact producers of the two exclusions, selected current path and virtual
endpoint remain separate contracts; a last-nonempty host path is not certified
by this native tail-node selection alone.

8460F0 obtains query options through a nonnull path's virtual+C. The selected
point flow calls845E40, obtains a level height through828E90 with both flags1,
and gathers through82E7E0 at extent0 with the filtered flag set. Null actor
interface supplies AGS100. It skips virtual+8 classification14, checks the
explicit two-word GUID rows through845DC0, then checks memberships81C5C0 and
81C580 when options exist. In-lot geometry uses62F750 followed by the footprint
primary-interface+B8 point predicate. The first qualifying footprint GUID wins
before the standing-component pass. Full level/gather/virtual geometry and
ordering still need their respective producers.
[8460F0 ASM](../../evidence/native/functions/008460F0_FUN_008460f0.asm)
([annotated pseudocode](../../evidence/native/functions/008460F0_FUN_008460f0.c)).

The standing pass traverses the native component manager and requires839640 to
be absent plus virtual+18 kind1 or4 before its reach/transformed-rectangle test.
Parent/owner-distance filtering is conditional on a supplied actor interface;
the two public wrappers above pass null. The actor resource and actual matrix
reader remain distinct from replacing these conditions with host route-membership
or per-capture quaternion tests. Human/pet dimension selection and native matrix
point-in-polygon arithmetic are visible in the canonical pair but not fully
reduced to a portable numeric contract here.

The two membership readers independently compare both GUID DWORDs at eight-byte
stride.81C5C0 reads vector38..3C;81C580 reads vector58..5C. Meaningful result is AL,
not normalized full EAX. These readers do not identify the second vector as
slot targets without following its writer.
[81C5C0 ASM](../../evidence/native/functions/0081C5C0_FUN_0081c5c0.asm)
([annotated pseudocode](../../evidence/native/functions/0081C5C0_FUN_0081c5c0.c)),
[81C580 ASM](../../evidence/native/functions/0081C580_FUN_0081c580.asm)
([annotated pseudocode](../../evidence/native/functions/0081C580_FUN_0081c580.c)).

## Along-route obstacle scan boundaries

Public750620 selects the same current-or-first path convention as74CAF0 and
resolves the supplied Sim to011EA138. With the steering interface and path it
calls85F690 with final flag1. Nonempty GUID output is copied through the native
array interface; route references and temporary vector are then released. The
current generated C has incorrect stack aliases around those interface calls;
the existing original instructions govern their actual ABI.
[750620 ASM](../../evidence/native/functions/00750620_ScriptCore_Route_Route_FindObstaclesForSimAlongRoute.asm)
([annotated pseudocode](../../evidence/native/functions/00750620_ScriptCore_Route_Route_FindObstaclesForSimAlongRoute.c)).

85F690 requires actor/path, resolves interface14CFD2F8 and field+10C, and with
final flag1 prepares its field through85D030 before scanning and calls85C240
afterward. The selected scale comes through56C070/845F30, otherwise1. It resets
and reserves output, then seeds it through85F3C0 using two context vectors before
iterating components. That producer is not replaced by proving only the later
sphere/sample geometry. Selected instructions retain kind1/4 or component+DC,
own/parent membership exclusions, inclusive vertical1.5 at85F99D..9AA, and954980
field admission. Route-bit and vessel/species conditions precede85A770 or85A6B0;
a separate near-destination/class-hash branch can append independently. Those
numeric/class identities must not be assigned semantic names from hash values.
[85F690 ASM](../../evidence/native/functions/0085F690_FUN_0085f690.asm)
([annotated pseudocode](../../evidence/native/functions/0085F690_FUN_0085f690.c)).

These four new canonical pairs contain3319 pristine PE-matched bytes and985
owned Listing instructions. No database symbols/bytes were changed. This is
selected original caller/filter/ownership evidence: field construction,
seed-vector writers, geometric leaves, manager membership/failure and native
retirement/reentrancy remain open. Existing decompiler stack/lane artifacts are
explicitly qualified rather than treated as executable specifications.
