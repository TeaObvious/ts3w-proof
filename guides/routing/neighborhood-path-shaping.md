# Original neighborhood path conversion and filtering

These analyst names describe inspected PC1.67 bodies; they are not recovered original symbols. The twelve pairs are verbatim genuine saved annotated C and complete owned Listings:6,588bytes/1,974instructions. Physical ABI and order control where inferred prototypes are incomplete.

| Entry / responsibility | Owned bytes / instructions | Evidence |
| --- | --- | --- |
|`00656af0` NeighborhoodRoute_ConvertPackedKeysToWorldNodes|706 /222|[ASM](../../evidence/native/functions/00656AF0_NeighborhoodRoute_ConvertPackedKeysToWorldNodes.asm) ([C](../../evidence/native/functions/00656AF0_NeighborhoodRoute_ConvertPackedKeysToWorldNodes.c))|
|`0064ec00` NeighborhoodPath_DispatchConditionalFilterPasses|452 /164|[ASM](../../evidence/native/functions/0064EC00_NeighborhoodPath_DispatchConditionalFilterPasses.asm) ([C](../../evidence/native/functions/0064EC00_NeighborhoodPath_DispatchConditionalFilterPasses.c))|
|`00642400` NeighborhoodPath_DemoteIsolatedConstraintPairs|195 /73|[ASM](../../evidence/native/functions/00642400_NeighborhoodPath_DemoteIsolatedConstraintPairs.asm) ([C](../../evidence/native/functions/00642400_NeighborhoodPath_DemoteIsolatedConstraintPairs.c))|
|`0064e5c0` NeighborhoodPath_StraightenWithRunners|1587 /465|[ASM](../../evidence/native/functions/0064E5C0_NeighborhoodPath_StraightenWithRunners.asm) ([C](../../evidence/native/functions/0064E5C0_NeighborhoodPath_StraightenWithRunners.c))|
|`00642ec0` NeighborhoodPath_AdjustCrossingMiddlePoints|458 /106|[ASM](../../evidence/native/functions/00642EC0_NeighborhoodPath_AdjustCrossingMiddlePoints.asm) ([C](../../evidence/native/functions/00642EC0_NeighborhoodPath_AdjustCrossingMiddlePoints.c))|
|`00642c30` NeighborhoodPath_OffsetEligibleConstraintPairs|321 /89|[ASM](../../evidence/native/functions/00642C30_NeighborhoodPath_OffsetEligibleConstraintPairs.asm) ([C](../../evidence/native/functions/00642C30_NeighborhoodPath_OffsetEligibleConstraintPairs.c))|
|`006427d0` NeighborhoodPath_DemoteEligibleTailConstraints|475 /127|[ASM](../../evidence/native/functions/006427D0_NeighborhoodPath_DemoteEligibleTailConstraints.asm) ([C](../../evidence/native/functions/006427D0_NeighborhoodPath_DemoteEligibleTailConstraints.c))|
|`00644eb0` NeighborhoodPath_ProjectEligibleSharpTurns|1213 /297|[ASM](../../evidence/native/functions/00644EB0_NeighborhoodPath_ProjectEligibleSharpTurns.asm) ([C](../../evidence/native/functions/00644EB0_NeighborhoodPath_ProjectEligibleSharpTurns.c))|
|`006420c0` NeighborhoodPathRunner_InitializeSpan|344 /105|[ASM](../../evidence/native/functions/006420C0_NeighborhoodPathRunner_InitializeSpan.asm) ([C](../../evidence/native/functions/006420C0_NeighborhoodPathRunner_InitializeSpan.c))|
|`00642220` NeighborhoodPathRunner_AdvanceSubstep|291 /110|[ASM](../../evidence/native/functions/00642220_NeighborhoodPathRunner_AdvanceSubstep.asm) ([C](../../evidence/native/functions/00642220_NeighborhoodPathRunner_AdvanceSubstep.c))|
|`00642350` NeighborhoodPathRunner_CanSweepNode|170 /71|[ASM](../../evidence/native/functions/00642350_NeighborhoodPathRunner_CanSweepNode.asm) ([C](../../evidence/native/functions/00642350_NeighborhoodPathRunner_CanSweepNode.c))|
|`00644c60` NeighborhoodPathRunner_CutTowardAnchor|376 /145|[ASM](../../evidence/native/functions/00644C60_NeighborhoodPathRunner_CutTowardAnchor.asm) ([C](../../evidence/native/functions/00644C60_NeighborhoodPathRunner_CutTowardAnchor.c))|

## Physical contracts

### 00656af0: NeighborhoodRoute_ConvertPackedKeysToWorldNodes

ECX conversion context, two stack vector pointers; RET8. Converts packed keys to 0x14-byte output records. Low key halfFFFF produces usage20 and copies the previous position when one exists; an initial sentinel position is repaired from the second output only when count exceeds1. Other nodes use low-five-bit usage, world-bin positions and selected lot-edge adjustment joins. No full route-filter policy is established here.

### 0064ec00: NeighborhoodPath_DispatchConditionalFilterPasses

ECX filter context, five stack words; RET0x14. Global0115924C gates the initial filter group; context+72 receives option bit10 when that group runs. Tests each selected child result in AL and returns on failure. Options0x800/0x8000/0x1000000/0x8000000 select further passes, including sea-level inputs. The final group still runs when the initial gate is clear. Child semantics and option meanings are not established solely by this dispatcher.

### 00642400: NeighborhoodPath_DemoteIsolatedConstraintPairs

Two stack words, path and option bits; RET8. Null path returns AL0. For more than3 0x40-byte nodes and maskC0000280 clear, adjacent equal constraint1/10/11 pairs become0 only when the outside neighbors have none of those constraints. Other admitted paths return AL1. Upper return bits are not normalized by all leaves.

### 0064e5c0: NeighborhoodPath_StraightenWithRunners

ECX filter context and one stack path; RET4. Clears context+70/+71, prepares constraint anchors, compacts eligible near-tail nodes, then invokes pair-offset, tail-demotion and sharp-turn helpers. Initializes anchor/probe runners and performs ordered sweep/visibility/cut decisions using node floor, usage and flag metadata. End-cluster comparisons use00FEDE8C. The completion leaf writes AL1; no general null/short-path admission is supplied by this body.

### 00642ec0: NeighborhoodPath_AdjustCrossingMiddlePoints

One stack path; RET4. For more than3 0x40-byte nodes, examines each four-node window and excludes middle constraints2/3. A successful segment-intersection helper using0106E6EC moves the two middle XZ positions toward the intersection with separate subtract/multiply/add stages using00FEDE94. Completion writes AL1; this body does not establish general null admission.

### 00642c30: NeighborhoodPath_OffsetEligibleConstraintPairs

ECX filter context and one stack path; RET4. Null or at most3 nodes produces no work. Saves context+70/+71, temporarily writes1/0, and restores both after the walk. Eligible adjacent pairs require surrounding zero floor fields and constraint10 on either pair member; successful006429D0 displacement is added to both node+0/+8 positions. The helper displacement policy is not defined by this caller alone.

### 006427d0: NeighborhoodPath_DemoteEligibleTailConstraints

Four stack words, path/index/span/dot threshold; RET0x10. Validates the selected index and walks backward through a bounded tail. Constraint and usage gates restrict demotion; normalized segment dot product below the supplied threshold can set a selected constraint to0. A separately observed mode byte additionally sets node flag20. No general route validity or unknown mode meaning is established.

### 00644eb0: NeighborhoodPath_ProjectEligibleSharpTurns

ECX filter context, stack path and dot threshold; RET8. Null or at most3 nodes produces no work. Saves context+70/+71, temporarily writes1/0, then restores them. Node constraint/floor/flag gates precede normalized incoming/outgoing dot comparison. Candidate segment intersections require visibility; ordered squared-distance and01159308 comparisons choose an admissible XZ replacement. The runtime value of01159308 is not established by this body.

### 006420c0: NeighborhoodPathRunner_InitializeSpan

ECX runner and five stack words; RET0x14. Stores node index, XZ, sign-extended 16-bit floor, current/next lot observations and zero substep. A supplied lot may be reused; otherwise queries by the current position. The long-segment branch uses SQRTPS, stored scalar multiplication, ceil and the x87 truncate helper to produce a count and step vector; other branches use count1. No Boolean return or independent route admission is established.

### 00642220: NeighborhoodPathRunner_AdvanceSubstep

ECX runner, stack world/context and path; RET8. Last node returns AL0. Advances the existing substep and position, skips samples while00B865C0 returns nonzero, and updates current lot/floor observations on selected transitions. Exhausting a span initializes the next node while reusing its observed lot. Other completion leaves write AL1; upper return bits are not generally normalized. The called sample predicate is not decoded by this body alone.

### 00642350: NeighborhoodPathRunner_CanSweepNode

Three stack words, path/runner/option byte; RET0xC. Optional next-node handling rejects constraints1/10/11, while equal adjacent floor fields can return AL1 before later rules. Otherwise usage20 with qualifying neighboring usage19 is refused; remaining acceptance requires constraint0/8/9. Some leaves only write or clear AL, so an inferred unsigned return is not a stable full-width Boolean contract.

### 00644c60: NeighborhoodPathRunner_CutTowardAnchor

ECX runner, stack world/context, path and anchor descriptor; RET0xC. Acts only when anchor index exceeds the current node. Partial-step cases can insert or overwrite positions and copy the low16 runner floor; other selected ranges are erased before reinitialization. The simple adjacent whole-node case initializes and returns; other cut paths initialize then advance once. No independent visibility query or generic failure policy is established here.

## Calls, constants and ownership boundaries

[Incoming sites](../../evidence/native/neighborhood-path-shaping-incoming.tsv) contain31 physical relativeCALLs:24 within the selected owned bodies and7 from the separately retained producer envelope. [Direct calls](../../evidence/native/direct-calls.tsv) add71 physicalE8 instructions from the twelve bodies. [The indirect-call table](../../evidence/native/neighborhood-path-shaping-indirect-calls.tsv) records the distinctFF15 through00F966A8, whose pristine PE import and retained external reference identifyceil; it is not relabeled as anE8 or fixed runtime destination.

[Selected constants](../../evidence/native/neighborhood-path-shaping-data.tsv) retain the five exact file-backed Float32 encodings used by these passes. Stored SSE multiplication/addition, SQRTPS, the importedceil operation and the subsequent x87 truncate-helper join remain distinct. Runtime globals such as0115924C/01159308 and option/child policies are not inferred from an operand address or uninitialized image bytes.

Owned Listing headers retain all actual discontiguous ranges. Code-index window_length is the enclosing address envelope and can exceed owned byte count; gaps are not manufactured as instructions. Direct child calls with no paired canonical body remain unqualified; labels or caller behavior do not establish their full contracts. No complete planner, callback, allocation, synchronization or managed lifecycle contract follows from these twelve bodies.

The separately retained world-plan producer is [ASM](../../evidence/native/functions/0065E520_RouteGraph_PlanAcrossLotsAndRegions.asm) ([C](../../evidence/native/functions/0065E520_RouteGraph_PlanAcrossLotsAndRegions.c)). Its existing linear envelope is not upgraded to a fresh owned Listing by this addition. Street0065A010, smoothing00645B90 and sight00644DE0 are not paired by this addition; their unadmitted provider text supplies no new owned-body or annotation claim here.

## Selected boat, clearance and height-stage boundaries

A subsequent PC1.67 read-only comparison inspected the existing owned instruction
bodies at643E30,6728F0,672E40,66E120,66E0F0,624940,64D040,64CE00 and641E00.
This adds understood branch relationships; it does **not** add canonical C/Listing
export pairs or upgrade the twelve paired bodies above. Selected instruction
windows for the room rejection, hull-neighbour range and height-refinement gate
were also matched against the authoritative PE identified in the main README.
These are static observations, with no original gameplay execution.

### Boat admission is ordered, and the diving exception is late

643E30 begins with an **unsigned** level comparison against1, so negative Int32
levels are rejected too. After the level-specific ground query, a level0 world
pond rejects. A found lot is converted to a local location; when its room manager
exists, B482C0 is called with definition2 and outside/fallback flag1. A nonzero
AX at643F31 branches directly to the dry return at643F57. This precedes the
diving-lot exception. The existing [room lookup contract](../world/lot-spatial-lookup.md)
and [selected object-handling query](../objects/object-handling.md) describe the
separate query/definition ABI; the boat caller does not establish every authored
room or basin producer by itself.

The following lot classification branch rejects the selected diving category at
level0. After water-map and conditional fit/footprint checks, 624BC0 returning
true with level1 reaches Boat0x800 even where the ordinary depth/fit branch did
not. Thus a level1 diving exception must retain the earlier room refusal; it is
not permission to bypass an entire host callback which also enforces pool/basin
exclusion. The general641E00 water-classifier separately rejects diving levels
other than1, ordinary lot levels other than0, and a successful AFFAB0 result.
These distinct classifiers must not be conflated.

Full pool/room authoring, lot identity and live generation, map acquisition via
828CF0, footprint655EB0, original exceptional inputs and every real caller remain
separate verification obligations. A host which only offers a combined
level-and-basin predicate must preserve both parts when admitting the new diving
surface; a Boolean type/name does not prove equivalent query coverage.

### Hull clearance reads first and writes afterwards

6728F0 installs eight flat offsets at map+37C and constructs the first large
offset set at map+268. The latter contains the twelve offsets two cells along
each axis and one cell to either side. These are flat UInt32 additions, not
independently clamped X/Z coordinates.

In672E40, the scan at673452 excludes low body0/7F and cells already carrying
high-byte bit4. For each of eight neighbours, an index **greater** than cell
count is skipped; exactly count supplies a zero body instead of reading a cell.
A different low body or high-byte bit4 queues the source in both sets. Otherwise
the large ring tests body difference or high-byte bit10. Deferred loops at6735B8
and673640 then OR high-byte bits4/8 and10 respectively. Newly marked cells do
not influence the scan; near-blocked cells therefore receive0400/0800/1000.
The low body byte is preserved.

The later lot-edge processing and pond child671470 occur after these writes,
followed by6713C0. Matching this stage order does not establish the missing
painted mask, low-road-bridge inputs, all shoreline cuts or map retirement/cache
invalidation. No safe parallel scan or persistent-cache equivalence follows.

### Cell fit has a body wildcard and a separate sentinel boundary

66E120 takes a selected body, cell, species and low-byte body-mask flag. Body0
is a wildcard; low body7F rejects, while low body0 is not universally rejected.
The initial range branch uses unsigned **greater than** count, unlike a host
array's usual greater-than-or-equal guard. The meaning/storage validity of the
equal-count slot must be established at the actual producer before reproducing
that native read. Do not turn a host index into proof of map identity or accept
a sentinel merely from this wrapper.

For valid ordinary cells, the vessel predicate55DDC0, houseboat test624940 and
high-byte flag reader66E0F0 distinguish4100/4200/4300 as masks4/8/10; other
vessels use2. A full actor word must be projected to the expected species domain
at its real call boundary. This predicate alone does not provide body admission,
goal validity, current map ownership or route reachability.

### Height sampling does not imply unconditional refinement

The existing paired64EC00 dispatcher calls64D040 before its conditional stroller
and portal-approach stages, then642600. 64D040 initially computes node heights;
its insertion/refinement portion requires more than one node **and** global
0115924C nonzero (64D3AB..64D3BD). The flag's writer, configuration and intended
host profile are not inferred from its image contents or an analyst name.

Both insertion paths compare the insertion count against0800 and fail beyond
that bound. The observed64DD17 write really targets the previous entry's keep
byte in the selected midpoint branch. 64CE00 distinguishes original and inserted
entries; inserted records inherit selected end metadata, mask flags with1F80 and
OR2. When0115924C is zero its writeback also ORs flag1, including original nodes.
A host with a smaller Node representation and unconditional refinement must
document that profile and its real consumers instead of claiming complete native
node/option equivalence. Whole-route versus per-leg order, cap-failure handling,
stroller/kind-reset behavior, callback currentness and finite-input refusal remain
explicit integration questions.
