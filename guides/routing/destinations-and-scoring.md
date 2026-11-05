# Route destinations, object targets and scoring

This is a static contract of the original PC 1.67 executable identified in the
[proof reference](../../references/retained-proof-overview.md). The function names below are analyst names.
The paired exports are complete original instruction envelopes and actual
annotated Ghidra decompilations; some generated pointer and SIMD expressions
remain decompiler artifacts.

The managed producers are [ScriptCore.Route C#](../../evidence/managed/types/ScriptCore.Route.cs)
and its [original caller IL](../../evidence/managed/callers.il.txt), together with
[SimIFace.Route C#](../../evidence/managed/types/SimIFace.Route.cs) and
[original IL](../../evidence/managed/types/SimIFace.Route.il.txt).
`AddDestination` constructs a native destination but does not plan a path.
Planning expands these descriptions into candidates and filters them, as
described in [the planner contract](planner-and-results.md).

## Handle and ownership

A route has a 32-bit native handle. The resolver requires
`(handle & 0xff000000) == 0x25000000`, takes the registry critical section,
calls the host handle resolver and subtracts four from a nonnull result.
This handle is separate from the 64-bit follower and target `ObjectGuid` values.
See [0x0074b4b0 ASM](../../evidence/native/functions/0074B4B0_RouteRegistry_ResolveTypedHandle.asm)
([annotated pseudocode](../../evidence/native/functions/0074B4B0_RouteRegistry_ResolveTypedHandle.c)).

The route host owns a lazily created `0x50`-byte goal at `host+0x144`.
Goal creation copies the follower ID from `host+0x40/+0x44` to
`goal+0x40/+0x44`. Destinations are allocated separately and inserted through
their embedded node at `destination+4` into the circular list whose sentinel is
`goal+0x18`. The goal consumes their ownership. Its destructor frees valid-room
storage and destroys each destination through vtable slot `+8`, after unlinking
the node. Calls through goal vtable slots `+0/+4` retain/release its reference.

| Stage | Original function |
| --- | --- |
| Create or obtain goal | [0x00752300 ASM](../../evidence/native/functions/00752300_RouteHost_GetOrCreateGoal.asm) ([pseudocode](../../evidence/native/functions/00752300_RouteHost_GetOrCreateGoal.c)) |
| Initialize goal and sentinel | [0x00752140 ASM](../../evidence/native/functions/00752140_RouteGoal_Initialize.asm) ([pseudocode](../../evidence/native/functions/00752140_RouteGoal_Initialize.c)) |
| Append destination | [0x0074f100 ASM](../../evidence/native/functions/0074F100_RouteGoal_AppendDestination.asm) ([pseudocode](../../evidence/native/functions/0074F100_RouteGoal_AppendDestination.c)) |
| Destroy owned destinations | [0x0074fdf0 ASM](../../evidence/native/functions/0074FDF0_RouteGoal_DeleteAllDestinations.asm) ([pseudocode](../../evidence/native/functions/0074FDF0_RouteGoal_DeleteAllDestinations.c)) |
| Delete goal | [0x007570c0 ASM](../../evidence/native/functions/007570C0_RouteGoal_Delete.asm) ([pseudocode](../../evidence/native/functions/007570C0_RouteGoal_Delete.c)) |

The append helper's null path really dereferences addresses zero and four.
The reviewed public producers check allocation before appending; this helper
does not supply a safe null insertion contract.

## Shared destination header and ABI

| Offset | Meaning |
| --- | --- |
| `+0` | Destination vtable |
| `+4`, `+8` | Intrusive next/previous links |
| `+0x0c..+0x24` | Seven float score weights, initially zero |
| `+0x28` | Caller destination tag, initially zero |
| `+0x2c` | Overall float weight, initially `1.0` |

The [managed RouteDestination C#](../../evidence/managed/types/SimIFace.RouteDestination.cs)
([original IL](../../evidence/managed/types/SimIFace.RouteDestination.il.txt))
lazily creates seven score weights and extends a shorter retained array to
seven. Native [0x0074bd40 ASM](../../evidence/native/functions/0074BD40_RouteDestination_CopyScoreWeights.asm)
([pseudocode](../../evidence/native/functions/0074BD40_RouteDestination_CopyScoreWeights.c)) copies
`min(count,7)` float values without normalization; zero pointer/count leaves
constructor defaults intact.

Public destination add functions return a boolean in **AL**. High EAX bits
can contain a preceding release result. Managed `Vector3` arguments occupy
three floats each on the cdecl stack. The native expansion helper stores four
lanes **`(x,y,z,x)`**, not a homogeneous point convention; it returns the output
pointer in EAX and uses `RET 4` for its one output stack argument. See
[0x0076c050 ASM](../../evidence/native/functions/0076C050_RouteVector_ExpandXYZWithXLane.asm)
([pseudocode](../../evidence/native/functions/0076C050_RouteVector_ExpandXYZWithXLane.c)).

| Kind | Allocation / vtable | Type tag | Constructor and type getter |
| --- | --- | --- | --- |
| Point | `0x50` / `0x01005238` | `0x07216ab6` | [0x0074f140 ASM](../../evidence/native/functions/0074F140_PointDestination_Initialize.asm) ([pseudocode](../../evidence/native/functions/0074F140_PointDestination_Initialize.c)); [0x0074f1a0 ASM](../../evidence/native/functions/0074F1A0_PointDestination_GetTypeTag.asm) ([pseudocode](../../evidence/native/functions/0074F1A0_PointDestination_GetTypeTag.c)) |
| Slot array | `0x58` / `0x0100528c` | `0x07216aad` | [0x0074f240 ASM](../../evidence/native/functions/0074F240_SlotArrayDestination_Initialize.asm) ([pseudocode](../../evidence/native/functions/0074F240_SlotArrayDestination_Initialize.c)); [0x0074f2a0 ASM](../../evidence/native/functions/0074F2A0_SlotArrayDestination_GetTypeTag.asm) ([pseudocode](../../evidence/native/functions/0074F2A0_SlotArrayDestination_GetTypeTag.c)) |
| Radial range | `0x80` / `0x010052ac` | `0x07216a82` | [0x0074f3e0 ASM](../../evidence/native/functions/0074F3E0_RadialRangeDestination_Initialize.asm) ([pseudocode](../../evidence/native/functions/0074F3E0_RadialRangeDestination_Initialize.c)); [0x0074f580 ASM](../../evidence/native/functions/0074F580_RadialRangeDestination_GetTypeTag.asm) ([pseudocode](../../evidence/native/functions/0074F580_RadialRangeDestination_GetTypeTag.c)) |

These native type tags differ from the caller's tag at `+0x28`.

## Point and slot targets

The point bridge writes position at `+0x30` and facing at `+0x40`, then appends
the destination. Expansion resolves its containing lot and signed level,
queries routing height at X/Z and emits one candidate. The supplied Y can be
replaced by this height query. Special lot classification `(1,0x50)` and a
below-level property test affect which height path is chosen.
See [0x007569d0 ASM](../../evidence/native/functions/007569D0_ScriptCore_Route_Route_AddPointDestination.asm)
([pseudocode](../../evidence/native/functions/007569D0_ScriptCore_Route_Route_AddPointDestination.c)) and
[0x007595f0 ASM](../../evidence/native/functions/007595F0_PointDestination_ExpandCandidate.asm)
([pseudocode](../../evidence/native/functions/007595F0_PointDestination_ExpandCandidate.c)).

The slot-array bridge requires a nonnull extracted hash array and a **signed
positive** element count. Optional slot weights are used only when their count
equals the hash count. A missing or mismatched weight array leaves every new
record's `1.0` default. Each record is `{uint hash; float weight}` with an
eight-byte stride. The bridge also copies follower ID, target ID, AGS and the
one-byte portal-offset flag. Indirect host array calls confuse stack recovery
in the initial decompiler; the annotated original stack offsets govern.
See [0x00760040 ASM](../../evidence/native/functions/00760040_ScriptCore_Route_Route_AddSlotArrayDestination.asm)
([pseudocode](../../evidence/native/functions/00760040_ScriptCore_Route_Route_AddSlotArrayDestination.c)) and
[0x0075fec0 ASM](../../evidence/native/functions/0075FEC0_SlotGoals_ResizeWithUnitWeight.asm)
([pseudocode](../../evidence/native/functions/0075FEC0_SlotGoals_ResizeWithUnitWeight.c)).

At expansion time, the target must resolve with both its slot and transform
components. Each matching enabled slot contributes a transformed world point
and facing, with optional AGS portal offset. Its candidate weight is
`slotWeight * destinationWeight`; its slot hash and caller tag remain distinct.
Missing target/components, missing slots or disabled slots produce no usable
candidate. Obstruction checks can place a record in the noncandidate group and
record a blocker. See [0x00759770 ASM](../../evidence/native/functions/00759770_SlotArrayDestination_ExpandCandidates.asm)
([pseudocode](../../evidence/native/functions/00759770_SlotArrayDestination_ExpandCandidates.c)).

## Moving radial targets

| Radial offset | Input |
| --- | --- |
| `+0x30` | Cone direction float4 |
| `+0x40` | Center point float4 |
| `+0x50/+0x54` | Target ObjectGuid |
| `+0x58` | Facing preference |
| `+0x5c` | Cone angle |
| `+0x60/+0x64/+0x68` | Minimum, maximum and preferred radius |
| `+0x6c` | Preferred spacing |
| `+0x70` | Vertical ray offset |

After inserting a radial destination, the bridge resolves its target and
transform. When available, it stores the center in target-local coordinates
using inverse rotation and translation, and stores the cone using inverse
rotation. If lookup fails, it keeps the supplied vectors and still reports
successful insertion. Expansion resolves the target again and applies its
current transform. Thus an object-relative target can follow the object's
movement between insertion and planning. The target ID is returned in
**EDX:EAX**, and the shared goal query considers both halves.
See [0x00756c50 ASM](../../evidence/native/functions/00756C50_ScriptCore_Route_Route_AddRadialRangeDestination.asm)
([pseudocode](../../evidence/native/functions/00756C50_ScriptCore_Route_Route_AddRadialRangeDestination.c)),
[0x0075bef0 ASM](../../evidence/native/functions/0075BEF0_RadialRangeDestination_ExpandCandidates.asm)
([pseudocode](../../evidence/native/functions/0075BEF0_RadialRangeDestination_ExpandCandidates.c)),
[0x0074f800 ASM](../../evidence/native/functions/0074F800_RadialRangeDestination_GetTargetObjectId.asm)
([pseudocode](../../evidence/native/functions/0074F800_RadialRangeDestination_GetTargetObjectId.c)) and
[0x0074ff70 ASM](../../evidence/native/functions/0074FF70_RouteGoal_GetFirstTargetObjectId.asm)
([pseudocode](../../evidence/native/functions/0074FF70_RouteGoal_GetFirstTargetObjectId.c)).

The managed wrapper first increases spacing when its area estimate would
generate over 100 points. That is a spacing heuristic, not a native hard
candidate-count limit. Native expansion uses an optional near-start candidate
when `abs(startY-centerY)<1`, then samples radii and cone angles. For
`max>min`, the radial step count is
`max(2,uint32(truncTowardZero((max-min)/spacing + 0.5)))`; the original
instructions temporarily set x87 rounding toward zero and restore it. Both
endpoints are visited. A nonnegative preferred radius is used explicitly,
otherwise minimum radius is preferred; an unsampled preferred radius receives
an additional pass.

The radius and near-start producers call an early rejection routine: **AL zero
accepts**, AL one rejects. A separate float multiplier starts at one. Accepted
radial candidate weight is the overall destination weight times that multiplier,
and additionally times the score sum when at least one score weight is positive.

| Stage | Original function |
| --- | --- |
| Near-start candidate | [0x0075b030 ASM](../../evidence/native/functions/0075B030_RadialRangeDestination_GenerateNearStartCandidate.asm) ([pseudocode](../../evidence/native/functions/0075B030_RadialRangeDestination_GenerateNearStartCandidate.c)) |
| Radius/cone sampling | [0x0075b6a0 ASM](../../evidence/native/functions/0075B6A0_RadialRangeDestination_GenerateRadiusCandidates.asm) ([pseudocode](../../evidence/native/functions/0075B6A0_RadialRangeDestination_GenerateRadiusCandidates.c)) |
| Early rejection | [0x00759bb0 ASM](../../evidence/native/functions/00759BB0_RadialRangeDestination_ShouldRejectCandidateEarly.asm) ([pseudocode](../../evidence/native/functions/00759BB0_RadialRangeDestination_ShouldRejectCandidateEarly.c)) |

## Score functions and candidate consumers

The original managed `PlanToRadialRange` producers assign score indices
0/1/2/3 for nearest/farthest origin and nearest/farthest destination.
The native sum includes only **positive** weights. It is not normalized.

| Index | Native contribution |
| --- | --- |
| 0 / 1 | Near / far route origin |
| 2 / 3 | Near / far radial center |
| 4 | No contribution in the reviewed switch |
| 5 | Preferred-radius score |
| 6 | Global pseudo-random score |

For ordinary finite values, near distance is
`1-clamp(distanceSquared/normalizingBoundSquared,0,1)` when the bound is
positive; a nonpositive bound returns raw squared distance. Far distance is
one minus this value. Preferred-radius scoring uses squared distance and
separate inner/outer squared-radius spans. When maximum radius is negative or
equals minimum, indices 0–3 contribute their weight directly. An exact score
sum of `-1.0` becomes one; an ordinary zero sum stays zero. Original constants
are retained in [the routing constant excerpt](../../evidence/routing/constants.tsv).

| Stage | Original function |
| --- | --- |
| Initialize shared score contexts | [0x0074f920 ASM](../../evidence/native/functions/0074F920_RadialRangeDestination_InitializeScoringContext.asm) ([pseudocode](../../evidence/native/functions/0074F920_RadialRangeDestination_InitializeScoringContext.c)) |
| Initialize preferred radius spans | [0x0074f4a0 ASM](../../evidence/native/functions/0074F4A0_RadialRangeScore_InitializeRadii.asm) ([pseudocode](../../evidence/native/functions/0074F4A0_RadialRangeScore_InitializeRadii.c)) |
| Weighted score sum | [0x0074faa0 ASM](../../evidence/native/functions/0074FAA0_RadialRangeDestination_EvaluateScore.asm) ([pseudocode](../../evidence/native/functions/0074FAA0_RadialRangeDestination_EvaluateScore.c)) |
| Near / far evaluator | [0x0074c930 ASM](../../evidence/native/functions/0074C930_RouteScore_NormalizedNearDistance.asm) ([pseudocode](../../evidence/native/functions/0074C930_RouteScore_NormalizedNearDistance.c)); [0x0074ca10 ASM](../../evidence/native/functions/0074CA10_RouteScore_NormalizedFarDistance.asm) ([pseudocode](../../evidence/native/functions/0074CA10_RouteScore_NormalizedFarDistance.c)) |
| Preferred radius evaluator | [0x0074f810 ASM](../../evidence/native/functions/0074F810_RadialRangeScore_EvaluatePreferredRadius.asm) ([pseudocode](../../evidence/native/functions/0074F810_RadialRangeScore_EvaluatePreferredRadius.c)) |

The goal invokes every destination's expansion slot `+0x10` and ORs their
boolean results. A success clears old blocker information. Candidates use
64-byte records: position `+0`, facing `+0x10`, weight `+0x20`, signed integer
level `+0x24`, slot `+0x28`, tag `+0x2c`, and an integer marker at `+0x30`.
Padding and other tail bytes are not established public data. The host later
filters these candidates, rather than treating insertion as reachability.
See [0x007521c0 ASM](../../evidence/native/functions/007521C0_RouteGoal_ExpandDestinations.asm)
([pseudocode](../../evidence/native/functions/007521C0_RouteGoal_ExpandDestinations.c)).

## Evidence limits

No retail execution or malformed-input test was performed. Exact NaN,
zero-spacing, zero-radius-span and degenerate quaternion behavior follows the
original instructions and has not been validated in a running game. Individual
placement, footprint and portal leaf checks remain open. The shared score
contexts are visible globals; this review does not establish thread safety.
Managed `AddDestination` ignores native boolean insertion returns and updates
its approximate destination/callback state, so those managed fields alone do
not prove that a native candidate was accepted.

## Authored lot-edge locations

[Lot-edge arrival locations](lot-edge-arrival-locations.md) establishes the native producer and selected consumer: explicit commercial-diving context chooses component4/5, generated signed floor is0/1, cyclic midpoints pass native query admission, and surviving preferred/ordinary locations supply100/50 destination weights. These weights do not prove the full downstream route score or insertion order.


## Object obstruction branch selection

Complete [831070 ASM](../../evidence/native/functions/00831070_FUN_00831070.asm)
([actual C](../../evidence/native/functions/00831070_FUN_00831070.c)) adds164instructions/
480ownedbytes. ECX routing owner, nine stack words, RET36 and EAX result pointer;
first output DWORD is signed integer status, not a Single despite inferred C.
Missing target clears status and two GUID DWORDs, not the reserved output word.
Nonmissing target holds native critical section owner+918 through all tests.

Override mask40000 selects independent8000 footprint,10000 LOS and20000 people
admission. Without override, product+A4bit14 selects LOS versus footprint.
Footprint82FD70 runs first, LOS82A8C0 next, people82A360 only when footprint is
not selected. Later result replaces only on strict signed greater status, keeping
earlier equal-status owner. Full child numerical/status/physics/sampling and
catalog producer contracts are not established by this dispatch body alone.
Current WorldRouteObstructionQueries uses an explicit IRouteObstructionActors
port and host caches; its unported LOS no-hit note is a limitation, not proof a
clear line exists. Static cache keys/private type-init or CLR lock freedom are
not native critical-section equivalence or safe parallelization evidence.


## Selected goal level/water branches and numeric inputs

The existing complete759BB0 pair above is reused. The following are bounded
static caller/instruction observations, not a complete pure-policy extraction,
world-query contract or executed routing result. AL0 accepts, AL1 rejects;
separate output weight starts1. The two option words in each bank must remain
paired, and bank1 versus bank2 must not be interchanged.

The initial level/pool branches test bank1 low10000000, then platform branches
use high10 and high2. Single-level and different-level-weight tests use low
04000000 and20000000. The single-level path has three specific diving/off-lot
remaps; it is not a general symmetric level equivalence. Platform queries for
both positions use the selected center lot, and the same-platform-room comparison
queries lane3. These calls do not prove that a caller can substitute arbitrary
per-point Boolean values or a goal-lot query for that center-lot context.

The water stage tests bank2 low10/1/100/4 and separately vessel classification.
It obtains ground throughC6A090, sea throughC61090, the water-query owner through
829600 and its+14 child, body admission through66DE10 and species-fit through
66DC30/66E120. The shared011EDBC4 pointer is the lot/world spatial owner used by
C687D0, not by itself proof of a standalone routing-water-map availability check.
Concrete child initialization, missing-input/error and source-revision rules
remain unexpanded. Vessel-only versus option-bearing paths differ.

The five newly checked binary32 constants are in the existing
[routing constant excerpt](../../evidence/routing/constants.tsv):

| Native data / selected read | Exact stored value and use |
| --- | --- |
| 0104487C,75A061/75A128 | 3DCCCCCD =0.10000000149011612, different-level/platform weight |
| 010056B8,75A4A2 | 3F7A1CAC =0.9769999980926514, deep-goal depth when age mask70 is clear |
| 010056BC,75A498 | 3FB1EB85 =1.3899999856948853, depth when that age mask is nonzero |
| 01184538,75A481 | 3F400000 =0.75, ordinary boat depth |
| 0118453C,75A477 | 3FC00000 =1.5, large-boat classification depth |

Read-only GhidrAssist with explicit/TS3W.exe supplied the data; the same20bytes
were independently matched to the central PC1.67 original PE identity. Existing
canonical instructions identify these consumers; no new database mutation,
analysis, save or function export was needed. Depth selection tests boat first,
then the deep-goal age mask. The sea-depth comparison admits equality, while the
world-pond comparison uses strict depth. Full finite/nonfinite source admission,
child query/selection/callback order, the later627E00 branch, footprint checks and
route insertion remain separate; these constants do not establish the whole
GoalValidity producer or make an unavailable height a successful goal.


## Low-level search score threshold and social footprint queries

This section adds bounded read-only PC1.67 observations from complete owned
Listings:61ED90 has314 instructions,823F60 has142,825BC0 has307. Their
[selected original instruction/data words](../../evidence/native/data/routing-query-selected-words.json)
were independently matched against the authoritative PE. These three newly
inspected entries have no canonical C/ASM export pair added here. Existing
route expansion/scoring exports above remain distinct stages. No runtime,
new database analysis, mutation or save is implied.

### 61ED90: caller-supplied score threshold

ECX is the search owner; six stack words are consumed by RET18. The first
argument's+50 mask100000 selects limit40002; absent/clear selects FA00(64000).
The owner's+24 counter is cleared before61EBF0 setup. A popped node is marked,
then virtual+10 admits a goal and virtual+14 obtains its record. For finite
record+44 values, a retained best is replaced only on strict greater comparison;
equal values preserve the earlier retained result. This body does not establish
the upstream meaning/order of every field or priority in the open structure.

The best record+44 is compared with the supplied fourth stack argument at
EBP+14, using stored SSE subtraction, multiplication by binary32 minus-one,
MAXPS and a four-lane <= test. The tolerance at FEB5DC is binary32 37800000,
exactly1.52587890625e-5. Reaching this test or the selected counter cap can stop
the loop. Later optional61D240, result-index write from record+48,61E5D0 and
reference cleanup are separate completion stages; failure without a retained
best returns AL0. The current host assumption that the threshold is its
highest open-cell input weight still needs the actual61EBF0/633660 candidate,
score and caller join. A matching tolerance/cap does not certify a grid A*,
heap/tie ordering, filter refusal or complete weighted route selection.

### 823F60: full-GUID versus helper-qualified exclusion

ECX supplies query context; stack inputs are point pointer, float query extent
and two DWORDs of an identity, with RET10. It obtains a query owner through
828CF0 and gathers retained entries through82E7E0. Missing owner or failed gather
returns AL0 after the applicable cleanup. That branch alone does not mean an
unavailable host callback may be treated as a successful world query.

For each nonnull gathered entry, virtual+8 selects a routing type. Original
switch bytes at824120/82412C distinguish type1 from always-blocking types
2,4,9,12,13,16,17,21,23,29. Other types pass this selected classifier. Type1
obtains its full64-bit identity through virtual+4. A supplied nonzero identity
excludes only an exact low AND high DWORD match. A supplied zero identity
instead passes that entry identity to822E10: AL0 blocks and nonzero passes.
The helper's exact membership producer/lifetime remains a separate boundary.
Entries receive temporary reference increments/releases; final array cleanup
is distinct from a host's borrowed enumeration or delegate lifetime.

### 825BC0: ring fallback and fixed query extent

Context field+50 zero selects separate825630; the source of that field and
complete alternate path are not established here. The other branch forms a
flattened direction from context+30 minus+20, applies the original SIMD
normalization and x87 FPATAN, and uses context+4 as the displacement radius.
It supplies FEDE98(binary32.0625) to F7F7C4, multiplies the result by2 and clamps
the angular increment between the stored values.03490658476948738 and
6.2831854820251465. The math helper itself is not decoded by this caller.
A second sweep uses the fine increment and stored endpoint6.248279094696045.

Both sweeps call823F60 with a zero64-bit exclusion selector and the separate
FB7290 query extent, binary32.4000000059604645. A nonblocking result is followed
by8234A0 admission and8243D0 refusal. A successful point reaches822550 before
822B90 and successful AL1; exhausting candidates returns AL0. Mapping these
child calls to room/wall/facing semantics requires their own bodies. The code
does not equate its fixed obstruction extent with context+4's placement radius.

Full placement-circle setup, grouped/single participant ownership, original
query provider/error behavior, off-lot geometry, math/transcendental rounding,
portal checks, mutation order and actual managed/native callers remain open.
A pure two-person host calculator and caller-owned Boolean delegates do not
by themselves reproduce the original stateful group operation.

## Social wall-query fallback and idle rejection

The following joins selected PC1.67 instruction reads to the existing complete
idle API exports. The [selected instruction and scalar words](../../evidence/native/data/social-wall-idle-selected-words.json)
were checked against the authoritative original PE. The wall-query caller,
segment gather and selected child helpers now have complete reviewed canonical
pairs below; the selected839640 accessor window remains a bounded read.
Undefined663220 remains undefined; its actual wrapper bytes are qualified below
without inventing a Ghidra function or repairing the database.

### Wall query8243D0

The caller resolves both points' containing lots withC687D0 and their levels
withADC860. Different levels returnAL0. For equal levels it passes extent
0106E6EC to632640 on the first lot: binary32 bits3C23D70A,
0.009999999776482582. A different second lot is queried only when the first
query's AL is zero (8245B5..8245F0). The retained collection is then traversed;
a nonnull entry's virtual+0C yielding0C or17 sets the final true result.
A non-wall entry and an empty initial gather are therefore different stages;
the fallback condition cannot be replaced with the final wall predicate.

632640 consumes six stack words. Missing context owner, missing lot identity,
failed629360 lookup and null selected quadtree reachAL0 paths. An available
quadtree is queried through6676A0, with its AL propagated as0/1.
6676A0 selects callback663220 versus663200 from its flag, calls663F50,
balances its active counter and returns whether collector+14 is nonzero.
The child-path expansion below establishes the field as retained unique-pointer
set cardinality. It remains separate from query availability and final wall kind.

Original missing-query return0 must stay distinct from a host wrapper's
successful-capture-with-null-index convention. The0.01 cell/segment admission,
collection population and later type classification are separate operations;
neither a zero-width polygon test nor a second-lot test after “no wall found”
is established as equivalent. The selected retained-entry and insertion rules are closed below; spatial
mutation, upstream mask production and full off-lot geometry remain separate.

### Social wall segment collector and cell admission

The first gather returns **whether its retained pointer set is nonempty**, not
whether it found a wall, not whether a quadtree existed, and not the callback's
continuation value. The final wall predicate is a separate, later scan.
The selected original instruction paths now close the former collector-field
ambiguity:

| Stage | Verified original operation | Evidence |
| --- | --- | --- |
| Caller setup | Initializes an empty per-call set; set+`0x14` is zero. Query-record+`0x40` and +`0x44` are explicitly zero, and +`0x54` receives the selected lot. | [8243D0 ASM](../../evidence/native/functions/008243D0_FUN_008243d0.asm) ([annotated pseudocode](../../evidence/native/functions/008243D0_FUN_008243d0.c)) |
| Lot/query admission | Checks query owner, both lot-GUID words, admitted lot record and selected level quadtree; converts both endpoints to that lot's XZ. A zero query-record+`0x44` forwards **null filtering context**. Missing prerequisites yield AL0; the earliest failure does not normalize all of EAX. | [632640 ASM](../../evidence/native/functions/00632640_FUN_00632640.asm) ([annotated pseudocode](../../evidence/native/functions/00632640_FUN_00632640.c)) |
| Gather result | Chooses filtered callback `663220`, visits cells, then returns normalized `collector+0x14 != 0`. Its active counter+`0x48` brackets traversal; it is not itself proof of synchronization. | [6676A0 ASM](../../evidence/native/functions/006676A0_FUN_006676a0.asm) ([annotated pseudocode](../../evidence/native/functions/006676A0_FUN_006676a0.c)) |
| Cell dispatch | A nonnull selected storage pointer with nonzero subcell code uses the record-mask path. Code zero has separate ordinary-leaf and recursive-child paths. | [669FA0 ASM](../../evidence/native/functions/00669FA0_FUN_00669fa0.asm) ([annotated pseudocode](../../evidence/native/functions/00669FA0_FUN_00669fa0.c)) |
| Unique admission | Compares **unsigned footprint-pointer keys**. A duplicate returns the existing node with inserted=false. | [628CA0 ASM](../../evidence/native/functions/00628CA0_FUN_00628ca0.asm) ([annotated pseudocode](../../evidence/native/functions/00628CA0_FUN_00628ca0.c)) |
| Count writer | New node stores its footprint at node+`0x10`, retains a nonnull footprint through virtual+`0x90`, links the node, then increments set+`0x14` at `627477`. | [627400 ASM](../../evidence/native/functions/00627400_FUN_00627400.asm) ([annotated pseudocode](../../evidence/native/functions/00627400_FUN_00627400.c)) |

The common insertion forwarder supplies a trailing zero stack word to the
unique-insert helper. Its physical ABI matters: `628CA0` returns with `RET 0x0c`
although its current inferred C declaration exposes only two stack parameters.
[629850 ASM](../../evidence/native/functions/00629850_FUN_00629850.asm)
([annotated pseudocode](../../evidence/native/functions/00629850_FUN_00629850.c)).
Do not reproduce an inferred declaration at the expense of the actual calls.

The [reviewed callback windows and cell lookup tables](../../evidence/native/data/social-wall-segment-cells.json)
retain the two undefined entry windows and four exact original tables.
`663200` and `663220` each forward the three incoming words to `669FA0`, supplying
selector zero or one, respectively, and then return **AL1 unconditionally**.
That value tells traversal to continue; it does not announce an inserted
candidate. The entries remain undefined in the database, with no invented
function definition or decompilation.

#### Segment versus cells, then cell masks

`663F50` uses the ordinary callback branch because `6676A0` passes a null distance
callback. It tests cells through `66AA30`; the alternative distance-producing
`66A680` branch is not this social query. Child slots are visited in order
`0,1,2,3`, using thirteen per-call descriptors and a visible depth cap. The selected
callback's constant AL1 means that finding a record or wall does not stop this
traversal early.
[663F50 ASM](../../evidence/native/functions/00663F50_FUN_00663f50.asm)
([annotated pseudocode](../../evidence/native/functions/00663F50_FUN_00663f50.c)).

A descriptor is terminal when selected storage+`0x0c` is null or its unsigned
low-byte code at +`0x1c` is greater than `0x14`. A nonempty physical leaf alone
is not that predicate. Nonempty terminal cells have codes `21..84`, mapping to
mask bits `0..63`. The original scale/offset/child-code tables describe an
`8 × 8` subcell subdivision of a stored leaf; a real branch node selects its
actual child, halves scale and resets the code to zero. A compressed leaf
keeps its backing storage while advancing the virtual subcell code.
[669F80 ASM](../../evidence/native/functions/00669F80_FUN_00669f80.asm)
([annotated pseudocode](../../evidence/native/functions/00669F80_FUN_00669f80.c)),
[66A310 ASM](../../evidence/native/functions/0066A310_FUN_0066a310.asm)
([annotated pseudocode](../../evidence/native/functions/0066A310_FUN_0066a310.c)),
[669F00 ASM](../../evidence/native/functions/00669F00_FUN_00669f00.asm)
([annotated pseudocode](../../evidence/native/functions/00669F00_FUN_00669f00.c)).

For finite ordered inputs, the cell test is the three-axis separation test for
a segment against an axis-aligned square expanded by the query extent. Let
`d=(end-start)/2`, `m=(start+end)/2`, `c=cell centre`, and
`e=cell half-size + extent`. It admits exactly the comparisons:

```
abs(m.x-c.x) <= abs(d.x) + e
abs(m.z-c.z) <= abs(d.z) + e
abs((-d.x)*(m.z-c.z) + (m.x-c.x)*d.z)
    <= e * (abs(d.x) + abs(d.z))
```

The stored centre uses the original packed 12-bit coordinates, selected table
offsets, descriptor scale and tree origin. The physical comparisons at
`66AB47/JBE`, `66AB6D/JBE`, `66AB9F/JA` **include equality**, so exact contact with
the expanded cell boundary is not rejected merely for being a touch.
The `0.01` is added to the **cell half-size on both axes**. This routine does not
read footprint vertices or perform a per-footprint polygon grow/intersection.
The formula expresses the ordered-input geometry; the original mixes SSE
Float32 and x87 arithmetic, so algebraic equivalence alone is not a numeric
port specification, especially for NaNs or a different floating-point mode.
[66AA30 ASM](../../evidence/native/functions/0066AA30_FUN_0066aa30.asm)
([annotated pseudocode](../../evidence/native/functions/0066AA30_FUN_0066aa30.c)).

After a cell is admitted, `669500` reads its lookup bit and tests that bit in each
12-byte storage row: footprint-record pointer, low mask DWORD, high mask DWORD.
Only a nonzero record pointer with that bit set reaches footprint filtering.
Repeated cells can visit the same footprint, but pointer-set insertion deduplicates
it. This path never substitutes a zero-width line/polygon intersection for the
stored membership mask.
[669500 ASM](../../evidence/native/functions/00669500_FUN_00669500.asm)
([annotated pseudocode](../../evidence/native/functions/00669500_FUN_00669500.c)).

#### Footprint filtering and retained ownership

For this caller the routing-record context is null. `828F00(null)` also yields
null options; there is no nonnull actor record for the self-GUID or actor-option
branches here.
[828F00 ASM](../../evidence/native/functions/00828F00_FUN_00828f00.asm)
([annotated pseudocode](../../evidence/native/functions/00828F00_FUN_00828f00.c)).
Nevertheless the following filters still precede insertion, for ordinary valid
nonnull footprint records:

1. Virtual+`0x60(0)` must admit the footprint; nonzero virtual+`0x28()` excludes it.
2. Virtual+`0x08(null, record-byte+0x10)` produces a raw classification. The later
   virtual+`0x0c()` kind is a different value; do not merge those two domains.
3. Kind `0x1f` marks this callback's eligible cohort and is not itself inserted.
   Kind `0x14` is forced to classification `1` with these null options. The
   context-dependent kind-`0x1e` suppression and `0x13/0x18` remapping do not run
   with this null context.
4. Classification `2` is retained temporarily. It enters the final set only if
   this **same cell callback** encountered the eligible kind-`0x1f` marker. This
   is not a query-global marker or a wall predicate.
5. Other classifications are inserted except unsigned `0`, `1`, `0x0d`, which
   `621220` rejects. Thus raw rows present in a touched cell do not guarantee a
   nonempty retained set.

[621220 ASM](../../evidence/native/functions/00621220_FUN_00621220.asm)
([annotated pseudocode](../../evidence/native/functions/00621220_FUN_00621220.c)) qualifies
the raw classification predicate. The generic unmasked leaf and recursive
storage paths are separate bodies; their wider context/flag inputs must not be
silently imported into this caller.
[669B20 ASM](../../evidence/native/functions/00669B20_FUN_00669b20.asm)
([annotated pseudocode](../../evidence/native/functions/00669B20_FUN_00669b20.c)),
[669E00 ASM](../../evidence/native/functions/00669E00_FUN_00669e00.asm)
([annotated pseudocode](../../evidence/native/functions/00669E00_FUN_00669e00.c)),
[669E60 ASM](../../evidence/native/functions/00669E60_FUN_00669e60.asm)
([annotated pseudocode](../../evidence/native/functions/00669E60_FUN_00669e60.c)).

The temporary class-`2` vector fast path calls virtual+`0x90` on append. Its
capacity-growth helper remains a separate allocator boundary. The collector
later releases temporary references through virtual+`0x94`, whether or not they
were inserted into the final set. New set nodes own their own retained reference;
a duplicate key does not acquire another set reference. On the caller's ordinary
cleanup path `628C50` recursively releases set payloads through virtual+`0x94` and
frees nodes. This establishes ordinary per-call retained ownership, not exception,
allocation-failure or cross-thread guarantees.
[6694C0 ASM](../../evidence/native/functions/006694C0_FUN_006694c0.asm)
([annotated pseudocode](../../evidence/native/functions/006694C0_FUN_006694c0.c)),
[628C50 ASM](../../evidence/native/functions/00628C50_FUN_00628c50.asm)
([annotated pseudocode](../../evidence/native/functions/00628C50_FUN_00628c50.c)).

#### First/second-lot outcome matrix

All rows assume the caller's required owners and equal-level check passed.
“Retained” means the mask, footprint filters, deferred-class rule and unique
insertion have run, not merely that a raw storage row existed.

| First-lot result | First AL | Query a different second lot? | Final wall result |
| --- | --- | --- | --- |
| Retained set has one or more entries, all kinds other than `0x0c/0x17` | 1 | **No** | False after the first set is scanned |
| Retained set contains kind `0x0c` or `0x17` | 1 | No | True |
| Cells/raw rows exist, but no footprint survives the masks/filters/deferred rule | 0 | Yes | Determined by the second retained set and its later kind scan |
| First lot/record/quadtree is missing or unavailable | 0 | Yes | Same second-lot rule; unavailable query is not proof of clear geometry |
| Empty first gather and both point-to-lot pointers are equal | 0 | No | False |
| Segment exactly touches an expanded cell boundary | Depends on surviving records | Only if the first retained set remains empty | Cell admission includes the touch; masks and filters still decide retained entries |
| Required shared routing/spatial owner is absent, or levels differ | No gather | No | Caller returns false before collection |

No first-lot count reset occurs between the two calls: the caller reuses the same
initially empty set, changing the selected lot. With an available tree, gather AL
is the final set count test. The caller checks kinds `0x0c/0x17` only after this
fallback decision. A replacement that queries the second lot after “no wall”
changes this control flow even if its final wall scan recognizes the same kinds.

The original masks are inputs to this query. Their polygon-to-mask production,
all concrete footprint virtual implementations, malformed-record/allocator fault
behavior, full tree-refresh/concurrency and exact replacement floating-point
parity are separate contracts not closed here. The complete owned Listings and
annotated renderings cover this selected query path; `663F50` and `669B20` have
six and nine nonowned envelope-gap bytes, respectively. All function names added
here are analyst display aliases in the reference files; Ghidra database symbols
were not changed. No gameplay execution or host-correction acceptance is implied.

### Idle entry755840

Reuse [755840 ASM](../../evidence/native/functions/00755840_ScriptCore_RouteManager_RouteManager_IsOkToIdleAtCurrentLocation.asm)
([annotated pseudocode](../../evidence/native/functions/00755840_ScriptCore_RouteManager_RouteManager_IsOkToIdleAtCurrentLocation.c)),
including its full1024-byte original window. The original registration and
managed caller are on the [API page](../../api/ScriptCore.RouteManager/0x01161bf8.md).
The original instructions, rather than recovered decompiler Boolean grouping,
establish both GUID words and early refusal paths.

After required interfaces, registry, nonzero GUID, object and routing component
are admitted,7558D8 calls839640 with routing-component+8.839640 is a two-instruction
accessor returning its own ECX+8 DWORD; nonzero causes result2 before transform
lookup. The field's writer and meaning beyond this pointer-presence test remain
open; this is not proof of a velocity threshold or a particular host follower
collection.

The ignore-array extraction precedes transform lookup. With a transform,
B865C0/B7CA40 road tests precede83ACB0 nearby-Sim query, which precedes the
room/625960 portal query. Results are respectively80,4,40. Later74C120-provided
actor lot/level and caller radius/AGS feed the82E7E0 gather with its flag clear.
ADC860 is additionally used for the room lookup; the gathered actor level
must not silently be replaced by that separate nearest-floor calculation.

The gathered vector is traversed in order. Virtual+0C kind5 follows the
Discourage branch: empty ignore list gives20; an ignored full GUID is skipped;
otherwise a currently resolved Sim owner gives4 and other owners20.
For other kinds, virtual+1C(0) must return nonzero before virtual+8 type1
gives10 or types0C/17 give8. The first qualifying result returns immediately;
there is no global highest-priority merge in this body. Missing required
inputs and remaining paths return0. Derived predicates, actual vector order,
physics/portal endpoint geometry, array lifetime and state coherence remain
separate original contracts.

## Native social placement outputs and refusal

The original native wrappers and managed consumers are distinct contracts;
a registered Boolean signature does not establish placement success.

- [Group wrapper7649A0 ASM](../../evidence/native/functions/007649A0_ScriptCore_RouteManager_RouteManager_PlaceGroupSocialImpl.asm)
  ([annotated pseudocode](../../evidence/native/functions/007649A0_ScriptCore_RouteManager_RouteManager_PlaceGroupSocialImpl.c)).
- [No-route wrapper763600 ASM](../../evidence/native/functions/00763600_ScriptCore_RouteManager_RouteManager_PlaceSocialFootprintObjectImpl.asm)
  ([annotated pseudocode](../../evidence/native/functions/00763600_ScriptCore_RouteManager_RouteManager_PlaceSocialFootprintObjectImpl.c)).
- [Route wrapper762E20 ASM](../../evidence/native/functions/00762E20_ScriptCore_Route_Route_PlaceSocialFootprint.asm)
  ([annotated pseudocode](../../evidence/native/functions/00762E20_ScriptCore_Route_Route_PlaceSocialFootprint.c)).

All three existing original windows (1504,128,128bytes) were independently
matched to the authoritative PC1.67 PE. A fresh464-instruction Listing7649A0
confirms a successful output path. Its existing pseudocode removes many
blocks as unreachable because stack tracking across indirect host calls fails;
its apparent false-only result must not be used as original behavior.

7649A0 extracts the two input ID arrays, resolves full64-bit identities and
retains resolved object references in separate vectors. Null resolutions are
skipped in these loops. Context setup reaches826FB0 at764C6D; AL0 branches
to refusal cleanup, while ALnonzero reaches output allocation and copying.
The output record count is the sum of retained vector lengths, and each
of the two float buffers has three lanes per record. The loop calls8242E0
with successive indices and copies XYZ position and orientation lanes at
12-byte strides. A supplementary12-instruction read of8242E0 shows unsigned
index admission against context+0,64-byte record stride from context+40,
copy through823EA0, and AL0/1 return. No new canonical pair for this helper
is exported here.

764E06 and764E1E make separate interface+0A8 array-setter calls for the two
by-reference outputs, followed by interface+78 access and cleanup.
764F0D sets AL1. These are sequential operations; their child allocation,
copy-back failure and atomicity semantics require the interface implementation.
Context/object-reference cleanup also occurs on refusal. Participant ordering,
placement-circle geometry and all many-participant cases still require826FB0's
record producers and actual consumers; this wrapper does not certify a
two-person-only reconstruction or arbitrary output reordering.

Original [ScriptCore.RouteManager C#](../../evidence/managed/types/ScriptCore.RouteManager.cs)
([complete IL](../../evidence/managed/types/ScriptCore.RouteManager.il.txt))
PlaceGroupSocial allocates both float arrays with3*(grouped.Length+single.Length)
and invokes the native row at IL0028. Original
[SimIFace.Route C#](../../evidence/managed/types/SimIFace.Route.cs)
([complete IL](../../evidence/managed/types/SimIFace.Route.il.txt))
converts consecutive triples only after the IRouteManager call succeeds;
its false branch publishes empty Vector3 arrays. Initial managed array length
and final native retained-participant count are not automatically identical.

763600 passes null route, explicit first position, slot names, second position
and full footprint GUID to75DF20. ADD ESP then RET preserves the child's
result; the native operation is not an unconditional-false stub.
762E20 resolves and retains the route, invokes75DF20 with that route, releases
it and preserves the placement result's low byte. Full route/no-route geometry,
slot ownership, goal-forward production, command mutation and error behavior
remain open.

For ordinary door restriction, the original
[Door C#](../../evidence/managed/types/Sims3.Gameplay.Abstracts.Door.cs)
([complete IL](../../evidence/managed/types/Sims3.Gameplay.Abstracts.Door.il.txt))
DoorPortalComponent.IsPortalLockedForSim IL001E..0028 calls the virtual
CommonDoor.IsAllowedThrough(int,int,Sim), ANDs2 and compares with2.
Its arguments originate from the Sim's current RoomId and the owner's
GetAdjoiningRoom result. This establishes the mask, not equivalence of arbitrary
lane endpoint room queries, derived callback substitutions or planning versus
traversal timing. Those caller/permission distinctions remain in the
[portal guide](portals-and-stairs.md).
