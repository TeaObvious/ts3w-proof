# Wall graph selection and segment crossing

Original PC1.67 TS3W.exe. Names below are analyst-assigned roles supported by the
instructions; they are not recovered original symbols. Findings are static; no
original function, gameplay routing, malformed input or floating-point exception
case was executed.

## Complete internal owners

| Entry | Analyst name and physical ABI | Original pair |
| --- | --- | --- |
| C40C60 | WallGraph_CrossesLocalSegment; ECX graph +3stackDWORDs, RET0C; AL Boolean only | [ASM](../../evidence/native/functions/00C40C60_WallGraph_CrossesLocalSegment.asm) ([annotated C](../../evidence/native/functions/00C40C60_WallGraph_CrossesLocalSegment.c)) |
| B471C0 | PartitionManager_DispatchSectionToProductGraphs; ECX owner +2stackDWORDs, RET8, no meaningful return | [ASM](../../evidence/native/functions/00B471C0_PartitionManager_DispatchSectionToProductGraphs.asm) ([annotated C](../../evidence/native/functions/00B471C0_PartitionManager_DispatchSectionToProductGraphs.c)) |
| C5B640 | WallProduct_ExistsInCatalog; cdecl key pointer, plainRET, fullEAX0/1 | [ASM](../../evidence/native/functions/00C5B640_WallProduct_ExistsInCatalog.asm) ([annotated C](../../evidence/native/functions/00C5B640_WallProduct_ExistsInCatalog.c)) |
| C5BF10 | WallProduct_BlocksPlacementOrMissing; cdecl key pointer, plainRET; Boolean consumed inAL | [ASM](../../evidence/native/functions/00C5BF10_WallProduct_BlocksPlacementOrMissing.asm) ([annotated C](../../evidence/native/functions/00C5BF10_WallProduct_BlocksPlacementOrMissing.c)) |
| C5BF70 | WallProduct_BlocksLightOrMissing; cdecl key pointer, plainRET; Boolean consumed inAL | [ASM](../../evidence/native/functions/00C5BF70_WallProduct_BlocksLightOrMissing.asm) ([annotated C](../../evidence/native/functions/00C5BF70_WallProduct_BlocksLightOrMissing.c)) |
| C5BF40 | WallProduct_BearsLoadOrMissing; distinct partition200 flag and missing-enabled default | [ASM](../../evidence/native/functions/00C5BF40_WallProduct_BearsLoadOrMissing.asm) ([annotated C](../../evidence/native/functions/00C5BF40_WallProduct_BearsLoadOrMissing.c)) |

The first five owners contain369 instructions/1250 owned bytes across exact
contiguous rangesC40C60..C41022, B471C0..B4727B, C5B640..C5B658,
C5BF10..C5BF34 andC5BF70..C5BF94. Complete existing owned Listing and actual
annotated Ghidra C are retained as one pair per address. Every listed byte was
checked against the pristine executable; no function boundary, inferred type,
ABI or original byte was changed to make the pseudocode look cleaner.

## Six graph slots and missing-product default

B471C0 receives a section and its product key. C5B640 calls catalogC8FA20 through
global011EE034 with the supplied full key and default-enabled argument1. It uses
NEG/SBB/NEG to normalize lookup pointer presence into fullEAX0or1. If missing,
B471C0 dispatches the same section throughC43C60 to all six consecutive graph
pointers at owner+54,+58,+5C,+60,+64,+68.

For a found product, C5B8C0 selects+60(slot3) when its placement-kind predicate
holds and+64(slot4) otherwise. Separate low-byte predicates admit the flag lanes:

| Slot | Graph field | Catalog partition flag | Original helper and missing default |
| --- | --- | --- | --- |
| 0 | +54 | BlocksLight400 | C5BF70; missingAL1 |
| 1 | +58 | BearsLoad200 | C5BF40; missingAL1 |
| 2 | +5C | BlocksPlacement100 | C5BF10; missingAL1 |
| 3 | +60 | C5B8C0 placement-kind branch | Missing product already dispatched to all six |
| 4 | +64 | Other physical-section branch | Missing product already dispatched to all six |
| 5 | +68 | Other maintained graph lane | This dispatcher supplies it only through its missing-product branch |

The exact kind predicate is a separate producer boundary; graph-slot3/4 choice
is established by this dispatcher's actual calls and fields. A missing catalog
record is not equivalent to a found record whose partition flags are zero.
C5BF10 readsDWORD+90, shifts logically8 and ANDsAL1. C5BF70 shifts10 and ANDsAL1.
The present result retains shifted upperEAX bits; B471C0 tests onlyAL. Do not
translate the decompiler's uint expressions into a full-width Boolean test.
BearsLoad retained inBL additionally gates an optional owner-lot+290 callback
throughA918F0. That callback andC43C60's insertion implementation are separate
owners; neither is assigned a rendering or world-travel meaning here.

## Crossing contract and first endpoint level

C40C60 iterates the selected graph's section pointers between+1C and+20. Each
first endpoint's X/Z/level is loaded byMOVSX from signed bytes. The level compare
is integerCMP against the first query point's Int32 field+8. The second endpoint
comes throughC36010 and has the same signed-byte coordinate loading. The stored
float/pointer aliases in genuine decompilation are not authority for a float
level comparison or pointer-based sign type.

The query and section AABBs must overlap with boundaries included. COMISS/JA
rejects only strict outside bounds. Let query endpoints beA/B and wall endpoints
beS/T in the lot-local plane. Float32 subtraction/multiplication forms side
signs around the two lines. The wall endpoint signs may be zero or opposite;
they cannot both lie strictly on the same query-line side. Then both query
endpoint signs must be nonzero and unequal across the wall line.

Consequently end-only contact and a query along a collinear wall do not cross.
A wall endpoint on the interior query line may reach the second gate. There is
no epsilon, distance tolerance, level rounding or nearest-wall choice in this
body. It stops at the first qualifying section. The optional third pointer,
when nonnull, receives the endpoint pair throughA64A80/A64AC0 before success;
the full subordinate output representation is not reconstructed here.

Each sign sequence comparesvalue versus0, then0 versusvalue, usingCOMISS/JBE.
An unordered comparison takes the zero-sign path, as does either signed zero.
The decompiler's ordered <= wording alone obscures that branch fact. This says
what those branches do if comparison completes; the process floating-point
exception-mask configuration is outside this selected function contract.
Success writesAL1 and failure clearsAL. UpperEAX is not a defined Boolean.

## Managed entry and wrapper consumers

| Registered entry | Original managed declaration and selected native role | Original pair |
| --- | --- | --- |
| [World_WallExistsBetweenImpl](../../api/ScriptCore.World/0x01163b00.md) | ScriptCore token06000862, UInt64 lot plus two LotLocation values, Boolean result; physical graphslot4, tile centers+0.5, first point level, nullhitoutput | [ASM](../../evidence/native/functions/00785E40_ScriptCore_World_World_WallExistsBetweenImpl.asm) ([annotated C](../../evidence/native/functions/00785E40_ScriptCore_World_World_WallExistsBetweenImpl.c)) |
| [World_WallExistsBetweenPointsImpl](../../api/ScriptCore.World/0x01163b08.md) | ScriptCore token06000863, UInt64 lot, two Vector3 values and Int32 definition, Boolean result; world-to-lot conversion, selected graph and first point level, nullhitoutput | [ASM](../../evidence/native/functions/00785EF0_ScriptCore_World_World_WallExistsBetweenPointsImpl.asm) ([annotated C](../../evidence/native/functions/00785EF0_ScriptCore_World_World_WallExistsBetweenPointsImpl.c)) |

Original complete managed caller IL retains WallExistsBetween token060009E4 at
IL0003 and WallExistsBetweenPoints token060009E5 atIL0005. The API pages preserve
those exact declarations and registration identities.785E40 checks the lot
manager and loaded lot, choosesPartitionManager+64 and supplies half-tile centers.
785EF0 converts both world points throughADC860, indexesgraph+54+4*definition,
and uses the first converted level for both endpoints. These are actual native
call roles, not permission to rename original managed hooks or infer every host
validation policy. The wrapper ASM windows remain bounded176/224-byte linear
exports including padding, not fresh complete owned-body censuses.

## Boundaries

The original manager owns six maintained graph objects; the crossing kernel does
not derive membership from renderer geometry, a caller product enum or collision
flags. Catalog load/retirement, exact kind/default product acquisition, full
insertion/topology, original coordinate-level sampling and optional hit-output
helpers remain separate contracts. No runtime thread safety, arbitrary concurrent
catalog mutation, route scoring, portal traversal or water no-walk behavior is
established by these selected static bodies.
