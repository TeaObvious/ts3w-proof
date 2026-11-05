# Find Good Location: native request and result boundaries

This contract uses the original PC 1.67 reference identified in the
[overview](../../references/retained-proof-overview.md). Internal names are analyst assignments. The selected
branches, field widths, instructions and stored constants were inspected
statically; no placement, routing or retail-game test was executed. The complete
candidate search is retained, but only the boundaries described below are
established here.

## Managed entry and native ownership

The original [ScriptCore.World](../../evidence/managed/types/ScriptCore.World.cs)
declares `World_FindGoodLocation` with fifteen logical arguments. The UInt64
object GUID occupies two stack words and the by-value Vector3 occupies three:
the native cdecl entry therefore consumes eighteen physical stack words. Its
Boolean result is AL; the upper EAX bits are not a result contract.

`FindGoodLocation` forwards a false world-only flag and the supplied ignore
array. `FindGoodLocationOnWorld` forwards true and a null ignore array. The
separate wrapper named `FindGoodLocationOnWorldAtCustomDepth` actually forwards
false to the custom-depth native declaration. Its name alone does not establish
a world-only operation. The [complete caller IL](../../evidence/managed/callers.il.txt)
and [registered API](../../api/ScriptCore.World/0x011634d8.md) retain these joins.

The native entry looks up **both** GUID words. Missing object returns false
without writing the external result values. A valid object receives a temporary
reference at object+4, balanced on each normal exit. Selection is:

| Request | Selected branch |
| --- | --- |
| world-only byte nonzero | World helper `0x00b13130`, with world-only true |
| world-only false, containing lot at start XZ | Lot helper `LotFgl_FindWithZeroDepthRange` |
| world-only false, no containing lot | World helper `0x00b13130`, with world-only false |

Only the lot branch borrows the ignore array through host vtable+0x68. This is
ECX host plus three stack arguments: managed handle, UInt64 data-pointer output,
and raw DWORD count output. There is no observed native array clone or matching
release in this wrapper; host pinning and exceptional lifetime remain open. The
host reuses storage previously occupied by the float radius parameter for the
count. The resulting C numeric cast is an overlapping-storage artifact: the
instructions pass the count's raw DWORD, without float-to-integer conversion.

A local three-float record contains `{maxSearchRadius, startX, startZ}` and is
passed synchronously to the selected search. The position output is an opaque
managed/host handle, while the yaw output is written through a float pointer.
[ASM](../../evidence/native/functions/0078B210_ScriptCore_World_World_FindGoodLocation.asm) ([annotated pseudocode](../../evidence/native/functions/0078B210_ScriptCore_World_World_FindGoodLocation.c))

## Lot request construction

The zero-depth adapter inserts **two positive FLOAT32 zero words**, using
FLDZ/FST/FSTP, and forwards to the depth-aware helper. The caller removes 0x44
bytes; the adapter removes its 0x4c-byte outgoing call. ADD ESP and RET preserve
the callee's AL result. A void decompiler signature would incorrectly discard
that result. [ASM](../../evidence/native/functions/00B0F230_LotFgl_FindWithZeroDepthRange.asm) ([annotated pseudocode](../../evidence/native/functions/00B0F230_LotFgl_FindWithZeroDepthRange.c))

The depth-aware helper requires a containing lot, converts the world position
to lot-local XZ and integer level, and initializes a query through `0x00afd980`.
It then writes the following selected fields. Offsets are relative to this
query, not the separate per-candidate record.

| Offset | Established producer |
| --- | --- |
| +0 / +4 | Native object / containing lot pointers |
| +8 / +0xc / +0x10 | Local X, local Z, integer level |
| +0x14 / +0x18 | Direction-to-select / initial-search-direction words |
| +0x1c | Facing byte: **full input word == 0 ? 1 : LOWBYTE(input)** |
| +0x20 / +0x24 / +0x28 | Required room ID / required platform-room ID / delegate |
| +0x2c..+0x32 | Constraint bits 0..6, individually masked to one byte |
| +0x33 / +0x34 | Constraint bits 15 / 16 |
| +0x35 | Separate object-resource predicate: DWORD+0xa4 bit14 and byte+0x9b bit0 |
| +0x36 / +0x37 | Constraint bits 11 / 12 |
| +0x38 / +0x39 / +0x3a | Constraint bits 17 / 18 / 19 |
| +0x3b / +0x3c / +0x3d / +0x3e | Constraint bits 22 / 23 / 24 / 25 |
| +0x40 / +0x44 | Minimum / maximum depth float words |
| +0x48 | Offset-scale word |
| +0x4c / +0x50 | Borrowed ignore pointer / raw count word |
| +0x54 / +0x58 / +0x5c | Radius / original start X / original start Z |

The facing test is not a byte-zero test: input 256 is nonzero but stores a zero
byte. This function does not establish meanings for every constraint bit or
validation of every input.

`LotFgl_SearchCandidates` receives this query and separate location, direction
and free-yaw outputs. Missing lot or false search result leaves the external
position and yaw untouched. On success, optional position publication uses the
local/world transform helpers, height helper `0x00b0c5e0`, and managed vector
writer. Their full failure and height policies remain separate.

Optional yaw uses the returned free angle when constraint bit23 is set.
Otherwise it performs signed FILD32 of the returned direction, multiplies by
the stored FLOAT32 **0x3f490fda** (`0.7853981256484985`), stores that product to
FLOAT32, adds the lot virtual+0x68 orientation returned in x87 ST0, and stores
FLOAT32 again. Exact pi/4 or one unrounded expression is not this arithmetic.
[ASM](../../evidence/native/functions/00B0C930_LotFgl_FindWithDepthRange.asm) ([annotated pseudocode](../../evidence/native/functions/00B0C930_LotFgl_FindWithDepthRange.c))

## Selected candidate-search boundaries

The search requires lot/context prerequisites and iterates ignored GUIDs at an
eight-byte stride. Selected cell coordinates are sign-extended bytes. The
radius/origin triplet is retained separately from the local candidate record.
Radius strictly above stored FLOAT32 **0x49742400** (1,000,000) bypasses the
distance gate. Otherwise separate SSE subtractions, squares and addition form
the distance comparison; COMISS/JB rejects a radius-squared less than the
distance-squared, **including unordered**. NaN does not take the preceding
COMISS/JA bypass. The decompiler's ordered `radius <= threshold` expression
therefore does not preserve this edge.

The selected oriented branch obtains a start rotation through shared RNG state
`0x011ed1a0`, requesting bound8 from `0x004faa30`, then tries at most eight rotated
directions against the facing byte. The RNG's complete algorithm and draw
ordering across all branches are not inferred here. Candidates enter distinct
wrappers `0x00b45930` and `0x00b45960`.

On the selected oriented success path with a delegate, four variant values are
constructed from world X/Y/Z and yaw. Host virtual+0x134 receives ECX host and
four stack arguments: result storage, delegate, value array, count4. A false
converted result rejects this candidate. Full exception, boxing and other
candidate-branch callback behavior remain open.

The common success tail writes three raw location words, optionally direction,
performs cleanup and sets AL1. Failure sets AL0. The free-yaw pointer has earlier
writes on another branch, so a blanket promise that *all internal outputs*
remain untouched on every failure would be wrong. Large SIMD expansions and
float/int casts in the actual C must be interpreted with its annotations.
[ASM](../../evidence/native/functions/00B459B0_LotFgl_SearchCandidates.asm) ([annotated pseudocode](../../evidence/native/functions/00B459B0_LotFgl_SearchCandidates.c))

The [necessary stored constant bytes](find-good-location-constants.tsv) retain
the radius threshold and direction multiplier without substituting mathematical
constants.

## Candidate validation chain and open scope

The selected chain derives direction from candidate+0x14 and stores it at+0x20,
resolves a footprint resource through object+0x18 and stores it at+0x1c. Missing
resource returns AL0. When candidate byte+0x81 is zero and `0x00afc090` is true,
`0x00b3b2f0` must succeed before continuing. Then `0x00b45410` is called; only its
nonzero AL proceeds to `0x00b43900`, whose AL becomes the result. These polarities
do not establish a general meaning for each child's status.
[ASM](../../evidence/native/functions/00B458A0_FglCandidate_TestPlacementChain.asm) ([annotated pseudocode](../../evidence/native/functions/00B458A0_FglCandidate_TestPlacementChain.c))

Open contracts include world helper `0x00b13130`, custom-depth entry internals,
query constructor defaults, complete candidate/offset ordering, all room,
terrain, footprint/occupancy and depth predicates, child status taxonomy,
callback exceptional lifetime, malformed inputs and actual gameplay acceptance.
The [footprint kernels](../objects/footprint-queries.md) and
[routing destinations](destinations-and-scoring.md) cover distinct operations;
they do not close these search gaps.

[Held-footprint gates](held-footprint-gates.md) establish selected catalog masks,
retained scalar-angle comparisons and first-failure versus collected-failure
behavior. The full object-pair geometry and other-row predicates remain open.
