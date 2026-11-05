# Authored opening rows and physical wall locators

Original PC1.67 TS3W.exe; static instruction-level comparison. Names are analyst
annotations, not recovered original symbols. Six complete existing functions
contain474instructions/1,611bytes. Existing inferred types and ABI metadata remain;
the comments inside genuine Ghidra pseudocode explain physical instruction roles.
No original function or gameplay scenario was executed for this reference.

| Entry | Inputs, result and responsibility | Complete original pair |
| --- | --- | --- |
| B0BC60 | cdecl object pointer, plain RET; applies each raw authored cutout row after object/catalog/lot/component admission | [ASM](../../evidence/native/functions/00B0BC60_WorldObject_ApplyAuthoredWallAndFenceCutoutRows.asm) ([annotated C](../../evidence/native/functions/00B0BC60_WorldObject_ApplyAuthoredWallAndFenceCutoutRows.c)) |
| B47D20 | ECX partition, locator stack pointer, RET4; graph+64 lookup, full EAX0/1 pointer-presence normalization | [ASM](../../evidence/native/functions/00B47D20_PartitionManager_HasPhysicalWallForLocator.asm) ([annotated C](../../evidence/native/functions/00B47D20_PartitionManager_HasPhysicalWallForLocator.c)) |
| C418D0 | ECX graph, six signed locator bytes; RET4, first matching adjacency wall pointer or0 | [ASM](../../evidence/native/functions/00C418D0_WallGraph_FindWallForPackedLocator.asm) ([annotated C](../../evidence/native/functions/00C418D0_WallGraph_FindWallForPackedLocator.c)) |
| C41860 | ECX graph, Float32 X/Z and Int32 level tuple; RET4, exact compact-location vertex or0 | [ASM](../../evidence/native/functions/00C41860_WallGraph_FindVertexForCompactLocation.asm) ([annotated C](../../evidence/native/functions/00C41860_WallGraph_FindVertexForCompactLocation.c)) |
| C36010 | ECX half-edge; plain RET, opposite endpoint pointer from low two orientation bits | [ASM](../../evidence/native/functions/00C36010_WallHalfEdge_ReadOppositeVertex.asm) ([annotated C](../../evidence/native/functions/00C36010_WallHalfEdge_ReadOppositeVertex.c)) |
| C5D530 | ECX destination, tuple stack pointer; RET4, constructs compact location fields | [ASM](../../evidence/native/functions/00C5D530_WallVertex_InitializeCompactLocation.asm) ([annotated C](../../evidence/native/functions/00C5D530_WallVertex_InitializeCompactLocation.c)) |

## Per-row admission and output

B0BC60 transforms each selected raw cutout row, using its pair-index modulo in
the transformation input. It translates the endpoints and packs the physical
locator, then calls B47D20 at B0BEC2. TEST AL followed by JZ B0C0DA skips that row
when no physical wall is found. This does not combine all sibling rows into a
union or establish whole-object visibility. Found-wall product processing and
ordinary/alternate message paths remain distinct downstream operations.

B47D20 reads the partition's physical graph at+64 and calls C418D0. Its
NEG/SBB/NEG sequence normalizes a returned nonzero pointer to full EAX1; the
stored inferred Boolean return uses AL. A serialized wall section ID or a host
cardinality count is not this predicate's input.

## Compact keys and adjacency ordering

C418D0 sign-extends all six locator bytes into two tuples. Each X/Z becomes
Float32 and each level Int32. C41860 constructs the compact key through C5D530,
queries the existing index through C41540, and rejects its sentinel or any
mismatch of the exact vertex bytes+4/+5/+6. Generic tree insertion and duplicate
key policy are outside these six recovered bodies.

With both vertices resolved, C418D0 walks adjacency from the first vertex+8.
It returns the first node+0C wall value whose opposite vertex equals the second.
The walk stops on null or return to the initial node. There is no nearest-wall
search, epsilon test, global uniqueness count or identical-endpoint rejection.
Serialized section-row order is not proof of native adjacency order. C36010
reads the opposite endpoint at node+28 when the masked orientation is0/1, or
node-18 when it is2/3; signed JGE is equivalent over this actual masked domain.

## Rounding, storage and limits

C5D530 initializes IDFFFFFFFF, stores X/Z through Float32 FLD, FISTP Int32 and
low-byte extraction, copies the level low byte, and clears DWORD+8/+C. The
function does not change the inherited x87 rounding/exception control. Its C
rendering's ROUND and partial parameter assignments are decompiler artifacts;
the Listing establishes the actual loads, stores and narrowing.

The existing graph resource writer supplies signed-byte integral X/Z as Float32:
[ASM](../../evidence/native/functions/00C3F910_WallGraph_WriteResource.asm) ([annotated C](../../evidence/native/functions/00C3F910_WallGraph_WriteResource.c)).
Those normal integral coordinates do not depend on the rounding mode. Other
floating inputs, invalid conversion and nondefault x87 control remain separate
questions; this reference does not establish universal nearest-even behavior.

These are static input/output, branching and ownership facts. Original gameplay,
malformed-resource execution, duplicate graph construction, attachment/message
side effects and runtime rendering equivalence were not tested here.


## Location transform, cutout rows and held placement

Original PC1.67 static input/state and instruction facts. Physical ABI qualifies
stored prototypes; no runtime, all-helper or safe-parallelization claim.

| Entry | Boundary | Evidence |
| --- | --- | --- |
| 00B05870 | 240 owned bytes / 65 instructions. Three cdecl words object, catalog, aligned output. CatalogE8 unsigned zero becomes1, row count from D4/D8 stride40 divides by that value. CategoryD0mask10000 selects Z-.5 else+.5. Per-level4or5 selects X106B798. Zero-row branch can also select anchor via A4mask10000 and category or AFFD30 type2. Stores aligned lanes X,0,Z,X; fourth lane is not evidence of a semantic homogeneous W before caller construction. | [ASM](../../evidence/native/functions/00B05870_FUN_00b05870.asm) ([actual C](../../evidence/native/functions/00B05870_FUN_00b05870.c)) |
| 00B059C0 | 459 owned bytes / 121 instructions. Five physical cdecl words with second word unused locally; copy input three-word position/level to fourth output. Typed product A4mask403F snaps planar words via MULSS2, inherited-x87 FISTP, CVTSI2SS*.5. Odd quantized orientation plus AFFCE0 gate repeats snap and applies106B850 table; total four rows or zero-row A4mask10000/type2 selects second half. No local rounding-control change or host finite/domain guards. Output level word preserved. | [ASM](../../evidence/native/functions/00B059C0_FUN_00b059c0.asm) ([actual C](../../evidence/native/functions/00B059C0_FUN_00b059c0.c)) |
| 00B05F70 | 552 owned bytes / 160 instructions. Six physical cdecl words; output matrix last. Quantizes angle through DIVSS then inherited-x87 FISTP; only odd orientation with clear C97890 result reaches anchor. Zero-row path can still admit through A4mask400F/AFFCB0. Calls B05870, constructs anchor transform then B05B90 and combines matrices; other path calls B05B90 directly. Whole B05B90 transform/lot state and helper lifetime remain separate; do not reduce every source case to nonzero cutouts. | [ASM](../../evidence/native/functions/00B05F70_FUN_00b05f70.asm) ([actual C](../../evidence/native/functions/00B05F70_FUN_00b05f70.c)) |
| 00C45750 | 915 owned bytes / 220 instructions. Four cdecl words source endpoints, orientation pointer, output, UInt32 pair index; plainRET. Converts pair index using FILD and2^32 sign correction, dispatches orientation1..7 by table, default copies. Planar SUBSS uses pristine negative-zero; ordered branch predicates compare leftZ against0 and leftX/rightX. Level DWORDs are copied, not numerically converted. Full nonfinite/invalid orientation and source row semantics remain separate. | [ASM](../../evidence/native/functions/00C45750_FUN_00c45750.asm) ([actual C](../../evidence/native/functions/00C45750_FUN_00c45750.c)) |
| 00C456B0 | 154 owned bytes / 43 instructions. Three cdecl pointer words, RET0. Copies input endpoint words before output writes, adds planar coordinates with ADDSS and both level lanes with integer ADD of translation+8. C float casts for levels are misleading; this is not floating numeric conversion of level. | [ASM](../../evidence/native/functions/00C456B0_FUN_00c456b0.asm) ([actual C](../../evidence/native/functions/00C456B0_FUN_00c456b0.c)) |
| 00784DF0 | 130 owned bytes / 34 instructions. ECX six-byte destination plus two endpoint pointer stack words, RET8. Each planar Single is loaded through x87 FISTP Int32 then narrowed to low byte; endpoint+8 level low byte copied. No local control-word change, range/finite/identical-endpoint check. Inferred partial assignment to input pointer is stack aliasing, not modification of input point storage. | [ASM](../../evidence/native/functions/00784DF0_FUN_00784df0.asm) ([actual C](../../evidence/native/functions/00784DF0_FUN_00784df0.c)) |
| 00D016D0 | 1683 owned bytes / 546 instructions. ECX held-tool receiver, two actual stack words and RET8. Second stack word is mutable point pointer (ESI from savedESP+5C); first reaches CFFA90 fallback. Stored single-argument C and unaff_retaddr names are misleading. Tool2F7 selects object slot5C/60;2F5 selects separate four-step/clone versus eight-offset searches. Common offset table0,1,7,2,6,3,5,4 then optional cardinal four nudges tests only original yaw. ChildCCDC20 supplies placement status and helpers mutate tool/orientation/point; full flags/caller/helper semantics remain open. Nine nonowned gapbytes excluded. | [ASM](../../evidence/native/functions/00D016D0_FUN_00d016d0.asm) ([actual C](../../evidence/native/functions/00D016D0_FUN_00d016d0.c)) |

[Selected original scalars and dispatch data](../../evidence/native/data/wall-opening-selected-words.json)
establish pi/4 bits3F490FDA, anchor bits3E5413CD, planar half shifts, negative-zero,
2^32, orientation offsets and cardinal nudges. Literal values do not establish
all higher catalog/state/rounding policy.

B05870 distinguishes catalog row count, per-level row count and zero-row
special-object admission. B059C0 uses total row count for the second shift-table
half. They are not interchangeable counts. Both preserve the selected original
zero-row flag/type branches; the catalog/flag producers AFFCE0/AFFCB0/AFFD30 and
B05B90's full matrix construction remain independent contracts. The aligned
anchor's fourth lane repeats X in this body; a caller's later construction can
replace that padding lane. Do not infer homogeneous-matrix semantics from it.

B059C0 and784DF0 load Single then FISTP under inherited x87 control. Neither sets
nearest-even locally. The latter narrows to bytes and copies raw level bytes;
C456B0 performs integer level addition before that narrowing. There is no
identical-endpoint rejection in784DF0 or the existing C418D0 lookup body. A
collapsed host span is therefore not by itself proof of original no-wall/no-op:
actual compact vertices, adjacency, input range and downstream B47D20/B0BC60
must establish that result. Original graph self/duplicate construction remains
open, including native compact rounding and invalid conversions.

C45750 has default identity behavior outside its1..7 dispatch and uses source
level DWORD copies. Its UInt32 pair index becomes binary32 with x87 sign
correction before selected planar arithmetic. Exceptional/unordered and signed
zero cases follow the actual COMISS/SUBSS instructions; a source switch alone
does not prove all-input bit equality.

D016D0's stored prototype mislabels the actual second-word mutable point input;
first-word fallback data is not a recovered return address. Tool byte2F5 chooses
an additional four-orientation/clone workflow. In its common branch the eight
orientation offsets are attempted first; only after their refusal does the
nonempty-cutout/cardinal branch try four neighbor displacements. That retry
reuses the original yaw, rather than starting another eight-offset search at
each neighbor. Full2F5/2F7 input producers, D06020 caller, CCDC20 and CFC470/
CFCC60/CFE150/CFDE40/CFC550/CFFA90 side effects remain separate. This selected
body does not establish a host wall-only predicate, universally successful
preview/commit, or a defect's installed-content/gameplay occurrence.
