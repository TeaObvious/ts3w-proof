# Wall height, roof selection, cutout coordinates and product admission

Original PC1.67 static contract. Descriptive names are analyst assignments, not
recovered original symbols. The pairs retain inferred C signatures and diagnostic
warnings; physical register, stack cleanup and low-byte return facts follow the
instructions. Static local facts establish neither scene output nor full caller,
resource, worker or GPU lifetime behavior.

## Selected native owners

| Responsibility | Original evidence | Extent |
| --- | --- | --- |
| WallGraph_AdmitProductKey | [00C4B300 ASM](../../evidence/native/functions/00C4B300_WallGraph_AdmitProductKey.asm) ([pseudocode](../../evidence/native/functions/00C4B300_WallGraph_AdmitProductKey.c)) | Complete stored body |
| WallGraph_BuildProductBuckets | [00C5A6C0 ASM](../../evidence/native/functions/00C5A6C0_WallGraph_BuildProductBuckets.asm) ([pseudocode](../../evidence/native/functions/00C5A6C0_WallGraph_BuildProductBuckets.c)) | Complete disjoint body; 2 alignment bytes excluded |
| WallProduct_HasNonzeroFieldE0 | [00C5B830 ASM](../../evidence/native/functions/00C5B830_WallProduct_HasNonzeroFieldE0.asm) ([pseudocode](../../evidence/native/functions/00C5B830_WallProduct_HasNonzeroFieldE0.c)) | Complete stored body |
| WallProduct_IsZeroField8COrAllowedType | [00C5B6F0 ASM](../../evidence/native/functions/00C5B6F0_WallProduct_IsZeroField8COrAllowedType.asm) ([pseudocode](../../evidence/native/functions/00C5B6F0_WallProduct_IsZeroField8COrAllowedType.c)) | Complete stored body |
| WallProduct_LookupCatalogEntry | [00C5B600 ASM](../../evidence/native/functions/00C5B600_WallProduct_LookupCatalogEntry.asm) ([pseudocode](../../evidence/native/functions/00C5B600_WallProduct_LookupCatalogEntry.c)) | Complete stored body |
| RoofCandidates_Assign | [00C3C980 ASM](../../evidence/native/functions/00C3C980_RoofCandidates_Assign.asm) ([pseudocode](../../evidence/native/functions/00C3C980_RoofCandidates_Assign.c)) | Complete stored body |
| RoofCandidates_AssignRange | [00C3B070 ASM](../../evidence/native/functions/00C3B070_RoofCandidates_AssignRange.asm) ([pseudocode](../../evidence/native/functions/00C3B070_RoofCandidates_AssignRange.c)) | Complete stored body |
| WallHeight_ResolveVerticalSpan | [00C5C500 ASM](../../evidence/native/functions/00C5C500_WallHeight_ResolveVerticalSpan.asm) ([pseudocode](../../evidence/native/functions/00C5C500_WallHeight_ResolveVerticalSpan.c)) | Complete stored body |
| StairHeight_TryFirstMatch_IncompleteBody | [00B16530 ASM](../../evidence/native/functions/00B16530_TryGetFirstMatchingStairHeight.asm) ([pseudocode](../../evidence/native/functions/00B16530_TryGetFirstMatchingStairHeight.c)) | **Incomplete stored body**; success branch excluded |
| RoofOwner_SelectForEdge | [00C3CF50 ASM](../../evidence/native/functions/00C3CF50_RoofOwner_SelectForEdge.asm) ([pseudocode](../../evidence/native/functions/00C3CF50_RoofOwner_SelectForEdge.c)) | Complete stored body |
| RoofCandidates_CollectMaximumHeightTies | [00C3BAD0 ASM](../../evidence/native/functions/00C3BAD0_RoofCandidates_CollectMaximumHeightTies.asm) ([pseudocode](../../evidence/native/functions/00C3BAD0_RoofCandidates_CollectMaximumHeightTies.c)) | Complete stored body |
| WallSide_PrepareVerticalProfiles | [00C36360 ASM](../../evidence/native/functions/00C36360_WallSide_PrepareVerticalProfiles.asm) ([pseudocode](../../evidence/native/functions/00C36360_WallSide_PrepareVerticalProfiles.c)) | Complete stored body |
| RoofHeight_SampleWithFloorFallback | [00BEA7F0 ASM](../../evidence/native/functions/00BEA7F0_RoofHeight_SampleWithFloorFallback.asm) ([pseudocode](../../evidence/native/functions/00BEA7F0_RoofHeight_SampleWithFloorFallback.c)) | Complete stored body |
| GridPoint_CompareLevelThenXZ | [00A66330 ASM](../../evidence/native/functions/00A66330_GridPoint_CompareLevelThenXZ.asm) ([pseudocode](../../evidence/native/functions/00A66330_GridPoint_CompareLevelThenXZ.c)) | Complete stored body |
| WallCutout_ComputePieceUCoordinates | [00C38910 ASM](../../evidence/native/functions/00C38910_WallCutout_ComputePieceUCoordinates.asm) ([pseudocode](../../evidence/native/functions/00C38910_WallCutout_ComputePieceUCoordinates.c)) | Complete stored body |
| WallFloor_SampleLevelGridHeight | [00AA0B90 ASM](../../evidence/native/functions/00AA0B90_WallFloor_SampleLevelGridHeight.asm) ([pseudocode](../../evidence/native/functions/00AA0B90_WallFloor_SampleLevelGridHeight.c)) | Complete stored body |
| DesignSwap_ReservePatternResource | [00A5FFA0 ASM](../../evidence/native/functions/00A5FFA0_DesignSwap_ReservePatternResource.asm) ([pseudocode](../../evidence/native/functions/00A5FFA0_DesignSwap_ReservePatternResource.c)) | Complete stored body |
| DesignSwap_UploadPatternResource | [00A5F610 ASM](../../evidence/native/functions/00A5F610_DesignSwap_UploadPatternResource.asm) ([pseudocode](../../evidence/native/functions/00A5F610_DesignSwap_UploadPatternResource.c)) | Complete stored body |

The existing [A8C690 floor sampler ASM](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.asm)
([pseudocode](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.c)) and
[788660 cutout bridge ASM](../../evidence/native/functions/00788660_ScriptCore_World_World_SetWallCutoutStateForObjectImpl.asm)
([pseudocode](../../evidence/native/functions/00788660_ScriptCore_World_World_SetWallCutoutStateForObjectImpl.c)) remain their single
canonical exports. [Original scalar/table and excluded-branch data](../../evidence/native/wall-preparation-data.tsv)
retains only the selected constants, eight jump targets, two alignment excerpts
and the separately inspected stair success branch. The latter bytes do not grant
Ghidra ownership or turn the incomplete pair into a complete function.

## Height paths and roof ownership

C5C500 accepts an owner, point with signed Int32 level and UInt32 selector as
three cdecl stack words. It returns height through x87. An eight-entry table
selects the span. The roof lane stores BEA7F0(point,1) minus binary32 0.25,
compares it to the extended stored floor, and selects the roof only on ordered
strictly-greater. Equality, less and unordered select the stored floor. A missing
roof chain may use a stair result or floor plus binary32 0.2. The other selected
scalars and the exact jump targets are retained in the data table.

C36360 has a distinct selected-owner lane: nonnull input+0x8C queries the selected
roof's virtual+0x2C separately at start, end and midpoint with third argument0,
then directly subtracts binary32 0.25. That lane has no C5C500 floor clamp. A null
owner instead calls C5C500 with selector at input+0x90. The concrete roof subtype,
owner/grid and coordinate-domain joins remain unresolved.

BEA7F0 starts at the current floor, enumerates roof IDs and applies mode, property
and containment predicates before virtual+0x2C sampling. It retains larger stored
heights; mode-dependent sampling supplies0 or0.5. Without an admitted roof it
queries the next floor. This does not establish every roof subtype's equations.
AA0B90 uses the owner floor grid and signed level despite float-pointer C
spelling. Outside XZ bounds returns x87 zero; min/max recursion uses a three-unit
level stride. Both fractions below binary32 0.001 select the grid vertex;
otherwise A8B360 supplies triangle interpolation. RET0x04 cleans the point word.
AA0B90's owner/grid input is distinct from A8C690's recursion-guarded world
fallback; their complete data-domain equivalence is not inferred.

B16530 traverses the stair map to the first B15A60 match, samples through A8C690
and may use B14C80/B14E50 for local slope. The separately inspected success branch
ends with AL1 and RET0x08; upper EAX is unspecified. Its stored ranges stop at
B16605 and omit B16606..B1663C, with B1654D..4F also excluded. The exported C and
ASM explicitly describe this incomplete body. Neither all matching stair heights
nor agreement among overlaps is established by this first-match operation.

C3CF50 forms midpoint candidates for a packed signed-byte endpoint pair. It
filters endpoints through C02F70 using swap-last removal and rechecks the replaced
slot. No survivor returns null; one returns that roof. For multiple survivors,
C3BAD0 selects midpoint maximum-height ties, then at most two endpoint queries
while ties remain. Each nonunique result replaces the prior candidate vector
through C3C980 before the next query: the queries narrow successive winners.
The final choice is the first survivor, with order affected by swap-last removal.
C3BAD0 samples virtual+0x30 with third0, stores a binary32 maximum and retains
strict absolute difference below binary32 0.001. Concrete roof and ordering
producer contracts remain separate.

C3C980 clears destination elements and forwards the source range to C3B070 unless
self-assignment. C3B070 copies/replaces that range, grows storage when required
and publishes end/capacity. Its actual RET0x0C cleans three stack words although
C shows only two explicit parameters; no prototype repair or recovered container
type is implied. A66330 compares signed Int32 level before X and Z; unordered
floating branches must not be replaced by ordinary finite lexicographic rules.

## Cutout and product boundaries

C38910 produces three U coordinates from eight cdecl stack words. C37B70-derived
scalars, packed direction/flags, global/stored tuning, centered0.5 branches and a
diagonal factor control the values. This operation is not a pixel rasterizer or
an alpha/luma classifier. The existing 788660 bridge controls a separate cutout
activation boundary; it does not prove CPU mask density or sampling thresholds.

C5A6C0 builds seven product buckets; C4B300 inserts a selected product. Both
admission lanes require a nonnull C5B600 result, UInt32 field+0x90 mask0x800, then
low-byte success from C5B6F0 or C5B830 before C4AEE0/C44A10 bucket work. C5A6C0's
disjoint body excludes the two original8BFF alignment bytes. Its complete outer
startup caller remains outside this selected contract.

C5B600 forwards key and literal1 through C8FA20 using global011EE034 and returns
the actual EAX pointer. Callers test and dereference it; inferred void C does not
replace that ABI. C5B6F0 accepts a resolved product when UInt32 field+0x8C is zero.
On null lookup, the third key word rejects0418FE2A, accepts9151E6BC and rejects
other types. Only AL is Boolean. C5B830 uses a separate C8E760 lookup and returns
full EAX1 only for nonnull product and nonzero UInt32 field+0xE0, otherwise0.
These predicates are not joined to every serialized partition or half-wall enum.
C4B300 uses ECX plus two stack words and RET0x08; only AL reports its result.

## DesignSwap reservation and upload

A5FFA0 uses ECX DesignSwap, output-key pointer and variable-hash stack words,
then RET0x08. It reuses the map at+0x74 or allocates/registers a resource and stores
its key before upload. Local lifetime-shaped calls use virtual+0x00/+0x04; their
child effects and reference-count semantics are unestablished. Allocation failure
can reach a null dereference. Reservation does not prove loaded program data,
worker exclusion or completion.

A5F610 uses ECX DesignSwap and hash/data/byteCount stack words, then RET0x0C.
Null or zero payload and absent hash reject. A found resource supplies interface
0x03420F34; the helper wraps bytes, calls607610, invokes virtual+0x04 and4DEE00
cleanup. Only AL reports status. A missing interface may be dereferenced. The
selected calls do not establish child reference-count effects, parser replacement,
full material readiness, destruction or GPU scheduling.


## Stair validator dispatch and commit-only floor removal

CF6240 and CB9B30 are not defined functions in the current database. Their
selected memory windows were read from explicitly selected /TS3W.exe and matched
byte for byte to PC1.67 PE. The additional instruction excerpts in the existing
[original data table](../../evidence/native/wall-preparation-data.tsv) are
qualified data, not invented owned bodies or decompiled functions. Three memory
windows cover CF6240..CF743F and CB9B30..CBAB2F; linear decoding beyond actual
branches can include data, and the latter window stops before the validator
ends. Only the selected control/data facts below are established.

CF6363 increments the signed input level and compares it to5; its greater branch
emits B3 and returns AL0 with RET1C before the final output stores. This proves
the selected top-level guard, not the entire caller's floor or lot admission.
CF6B8A tests the first physical stack byte. Nonzero selects the retained fields
at tool+24C/+258; zero supplies local zero-initialized temporary values instead.
The caller atCF6C1E passes22 physical DWORD slots to CB9B30, reclaims58hex bytes,
and retains AL. CF6240 has ECX tool state and seven physical stack words; its
exact child-owned edit-context lifetime and all preceding calls remain separate.

CB9B3C reads byte[EBP+40]. Packed point[EBP+10] contains signed X/Z/level bytes;
lot is [EBP+14]. The zero-flag branch checks X/Z against lot+174/+178 and level
against signed lot+17C/+180, then calls A8E170 with maskF and true. Failure may
append AF through diagnostic pointer[EBP+50], then returns AL0/plainRET. The
other branch performs the range checks without that initial floor call and can
append B3. Later water/selection/flatten/geometry/object-volume/price and error
branches are not certified by these entry excerpts. Generated parameter labels
from another analysis are not substituted for the physical stack positions.

CF7098 tests the same first stack byte; zero branches directly toCF70D1, skipping
the D23AF0 call atCF70CC. This establishes commit-gated floor-removal dispatch,
not the full D23AF0 mutation, refcount, undo or callback contract. The earlier
CF6E53 call targets CF2870; its exact snap calculation remains unexpanded. At
CF7326..CF7365, two independently nullable output pointers receive three words
each. These stores are separate from the removal branch and precede final
success testing. CF52F0 landing-floor creation and CF56D0 ghost publication must
still be traced; the removal guard alone does not establish their semantics.

No complete native standard/automatic planner, product cache, floorability,
level expansion, wall admission, rail price, hash, financial transaction,
resource/queue/helper/GPU lifetime or runtime parity follows. CF7820/CF2E30/
CF2C60/CB83B0/CB6FD0/CB6B70/CB4420, CB9660/CB8AE0/CB5900/CB5D00/CB4E90/
CB4FF0/CB1270, CBBE60/CB8860/B00B70, D24F30/D254D0 and the concrete catalog
providers remain explicit next original paths. There was no function definition,
body/prototype change, annotation, analyzer, export mutator, save or original-byte
mutation in this selected comparison. Existing canonical pairs remain single.


## Current roof selector divergence

Current RoofWallOwnerSelection restarts the full ordered candidate array for each
endpoint maximum. C3CF50 instead calls C3C980 atC3D1F9/C3D244 to replace input by
prior ties before C3BAD0 atC3D218/C3D263. For finite accepted candidates with
start/mid/end A=(5,10,15), B=(6,10,14), C=(7,9,11), lexicographically earlier
start: midpoint retains A/B; narrowed start selects B, while full restart selects
C. This is a source-derived algorithm example, not original execution or installed
roof geometry capture. The actual host caller feeds the selected ID into attic
wall component grouping. Issue461 tracks this confirmed selector mismatch;
visible rendering impact and broader subtype/order/FP parity remain unverified.

Canonical C3CF50/C3BAD0/C3C980 exports were reused and independently PE-byte checked;
no export, database or old mutator was replayed. Full endpoint-filter swap-last and
source ordering remain separate from fixing input-set narrowing.


## Stair boundary admission and roof eave emission

Complete [B15A60 Listing](../../evidence/native/functions/00B15A60_FUN_00b15a60.asm)
([actual C](../../evidence/native/functions/00B15A60_FUN_00b15a60.c)) establishes122instructions433ownedbytes.
ECX is the stair and its one stack pointer contains X/Z plus signedInt32 level,
not a three-float position. B15A66..85 resolves C8E7D0 with literal1 and requires
C969E0 AL before the B14C80 bounds test. B15AB1..C5 compares point+8 with bottom
level+58 and requires top+4C-bottom==1. Direction dispatch and absolute endpoint
axis distances call B14BC0 with0. B14BC0 tolerance, jump-table values and precise
C969E0 product predicate remain independent children; source0.0001 and matching
cardinal names alone do not verify them. Early failure clears AL only, success
sets EAX1. Existing incomplete B16530 first-match parent is still incomplete;
current strict serialized-row and overlap-disagreement refusal is not native
first-match behavior or evidence that every admitted stair has equivalent height.

Complete [BFC450 Listing](../../evidence/native/functions/00BFC450_FUN_00bfc450.asm)
([actual C](../../evidence/native/functions/00BFC450_FUN_00bfc450.c)) and
[BFCCD0 Listing](../../evidence/native/functions/00BFCCD0_FUN_00bfccd0.asm)
([actual C](../../evidence/native/functions/00BFCCD0_FUN_00bfccd0.c)) add559instructions1943ownedbytes.
Both physically use ECX plus three stack words and RET12 despite incomplete stored
prototypes. BFC450 first stack byte selects stride1/2 and its second word is the
endpoint-vector owner (loadedBFC487 from ESP+58 after0x50 local/register bytes).
BFCCD0 first byte likewise selects stride, second byte controls edge admission
with receiver+38/+39/+3A, third word is the vector (BFCE52 ESP+60 after0x58 bytes).
Do not read the C unaffected-register/return-address aliases as real arguments.
Four outer-grid walks read dimensions+74/+78, sample virtual+28 in x87, store
selected heights Float32, orient endpoint order by side and append24byte records
through the existing capacity fastpath or BFB130. They return AL1. BFC450 does
not inspect its third physical word in the stored body. Concrete vtable families,
source grid dimensions/steps, stride callers, helper allocation and owner lifetime
still require producer closure. BFCCD0 C0208E incoming call has no stored function
owner; data references are not executed calls. Analytic dome/cone/octagon emitters,
BFFC80 hidden-span predicate, native seasonal attachment selection/RNG/model/GPU
retirement and exact FP constants remain unverified by these two grid emitters.

The three complete owned exports total681instructions2376bytes, excluding15bytes
of nonowned alignment. All listed bytes matched pristine PC1.67 PE independently;
existing DB dirty=true/modification1725 was retained, without metadata edit,
analysis, database save or replay of earlier exports. Current RoofEaveGeometry
uses floor worldY and transforms only XZ during attachment placement; that is not
an extra lotY translation. Its mutable arrays/reference-keyed source reuse,
Task cancellation without join, library replacement and later GPU retirement are
host ownership facts, not inferred original worker or cache contracts.


## Current wall CPU pipeline and missing native joins

Current OrdinaryWallPacketBuilder calls actual component preparation, optional
attic material preflight, mesh emitter and either WorldSceneLoader live append or
compiled CLI utility projection. Source's old emitter unwired summary is stale.
Component bucket/roof-owner identity, separate sideA/B/top material authority and
selected C36360 height producer must be joined independently; Exact confidence
is host classification, not evidence for an entire native topology pipeline.

Reused C38910 complete actual C/677byte178instruction Listing shows eight cdecl
words/plainRET, C37B70 length inputs, cached1-tuning and diagonal factor, three
ordered U writes and flags/flip/center branches. It does not establish generic
red-channel bilinear CPU picking, native atlas allocation, every pixel format,
SHORT4 overflow/declaration, VS66 display, C36020 ring insertion, C4D540 bucket
constructor or C39060 buffer refill/retirement. Those concrete producers and
native dirty queue C55EA0/C54DB0 remain explicit next paths. No canonical export
for them is invented from a source address comment.

Host topology memo retains request/list references with a one-time hash, compares
raw Float32 words and returns shared result arrays. Its capacity clear and
ConcurrentDictionary do not establish immutable inputs/results or native cache
semantics. Actual post-insert mutation and synchronized caller ownership must be
proved before classifying a productive cache bug. Invoking a pure kernel is not
proof that all borrowed inputs stay stable while another stage consumes it.

HostedOpeningPresentationLedger separates expected control identity from successful
wall append, prior-source replay, fence credit and final part/no-op admission.
B0BC60/B47D20 row skip and AC0250 actual visible-object caller do not establish
this entire managed whole-object policy. Full native fence rail intervals,
conflict/all-cutout admission and wall/object visibility/resource retirement
remain open. Current append can have prior list writes before a later false;
CPU result and receipt counters are not GPU completion. No build, native execution,
fixture or gameplay result was added for these documentation observations.
