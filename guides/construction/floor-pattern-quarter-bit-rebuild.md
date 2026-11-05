# Floor-pattern upper-quarter flag rebuilding

The floor manager stores low quarter flags and derived support flags in the same
byte. `RefreshFloorUpperQuarterFlags` (`A913D0`) recomputes selected **high bits
q+4**, preserving all other bits. A changed result is stored before a per-quarter
message is prepared and submitted. Pending refresh expands the request to all
four quarters and removes its pending location only after the refresh returns.

Reference: [original PC 1.67 `ts3w-pc-1.67`](../../evidence/reference.json).
These are static original-byte, complete owned-body and actual caller findings;
no original game execution, renderer result or whole Building completion is
claimed. Function names below are analyst-assigned. Physical types/register use
qualify the decompiler projections.

A separate bulk entry recomputes every upper-quarter flag at one input level;
it uses the same predicate while preserving low bits and emitting no change
messages. That caller confirms the shared predicate's floor-manager role.

## Complete selected bodies

| Entry | Analyst role | Owned coverage | Evidence |
| --- | --- | --- | --- |
| `00A913D0` | RefreshFloorUpperQuarterFlags | 911 bytes / 288 instructions | [ASM](../../evidence/native/construction/floor-patterns/00A913D0_RefreshFloorUpperQuarterFlags.asm) ([C](../../evidence/native/construction/floor-patterns/00A913D0_RefreshFloorUpperQuarterFlags.c)) |
| `00AD2990` | TestFloorQuarterSupport | 908 bytes / 295 instructions | [ASM](../../evidence/native/construction/floor-patterns/00AD2990_TestFloorQuarterSupport.asm) ([C](../../evidence/native/construction/floor-patterns/00AD2990_TestFloorQuarterSupport.c)) |
| `00AD1920` | InsertUniqueCellLocation | 110 bytes / 49 instructions | [ASM](../../evidence/native/construction/floor-patterns/00AD1920_InsertUniqueCellLocation.asm) ([C](../../evidence/native/construction/floor-patterns/00AD1920_InsertUniqueCellLocation.c)) |
| `00ACFF30` | TestFloorCellCornerHeightAgreement | 266 bytes / 93 instructions | [ASM](../../evidence/native/construction/floor-patterns/00ACFF30_TestFloorCellCornerHeightAgreement.asm) ([C](../../evidence/native/construction/floor-patterns/00ACFF30_TestFloorCellCornerHeightAgreement.c)) |
| `00A8D430` | RebuildFloorUpperQuarterFlagsForLevel | 190 owned bytes / 70 instructions | [ASM](../../evidence/native/construction/floor-patterns/00A8D430_RebuildFloorUpperQuarterFlagsForLevel.asm) ([C](../../evidence/native/construction/floor-patterns/00A8D430_RebuildFloorUpperQuarterFlagsForLevel.c)) |
| `00A8ED70` | FindFloorCellPayload | 145 bytes / 60 instructions | [ASM](../../evidence/native/construction/floor-patterns/00A8ED70_FindFloorCellPayload.asm) ([C](../../evidence/native/construction/floor-patterns/00A8ED70_FindFloorCellPayload.c)) |

The [address/name index](../../indexes/floor-pattern-quarter-rebuild.tsv) resolves
these new captures to one canonical pair per function.
[Source mapping](../../indexes/floor-pattern-quarter-rebuild-sources.tsv)
distinguishes these captures from previously published callers/readers. Names,
function comments and instruction comments were read back from the existing
Ghidra program; matching Listing EOL comments are incorporated at the relevant C
statements because this decompiler route omits them. The explicit existing-project
Save reported success for the annotations; no close/reopen persistence test was
performed. The bulk body excludes three nonowned alignment bytes
`A8D48D..A8D48F` between its two existing owned ranges.

## Selected high bits, not a byte-wide reset

The receiver is the floor manager; its borrowed lot is at `+4`. Four stack words
supply a packed cell pointer, two UInt32 halves of an excluded-object ID and a
low-byte force argument; physical `RET 10h` removes those four words. Signed
cell bytes X/Z must lie in the lot's half-open extents. Signed level must lie in
the inclusive lot minimum/maximum interval. Invalid inputs return before
queueing or touching flags.

With manager DWORD `+178 > 0` and force zero, the operation inserts the
three-byte location into pending storage `+F0` and returns. The meaning and
writers of state `+178` remain a separate boundary. Otherwise a bitwise OR of the
two object-ID halves determines whether registry lookup is needed: **either or
both** halves may be nonzero. The registry supplies a borrowed excluded Object
pointer; ID zero uses null without a lookup.

Preparation also acquires the lot's mode-0 room owner through `lot+298/B46EA0`
and the optional payload through `A8ED70`, before entering the quarter loop.
Even an input mask with no low bits reaches these preparation calls.

For q in order **0,1,2,3**, input bit q selects one iteration. The operation copies
X/Z/level, sets local mask `1<<q` and calls `AD2990(lot,cell,q,excludedObject)`.
Only its **AL** result is Boolean. The old stored flag is bit `1<<(q+4)` in the
flat byte grid at manager `+28`:

`index = ((signedLevel - managerMin(+10)) * gridWidth(+4) + signedX) * gridDepth(+8) + signedZ`

The grid's data base is at its `+10`. These numeric offsets are hexadecimal.
The [quarter mask table](../../evidence/native/construction/floor-patterns/quarter-flag-masks.tsv)
records selection, stored and inverse-clear masks.

| Previous bit q+4 | Support AL | Byte update | Per-quarter event |
| --- | --- | --- | --- |
| 0 | 0 | None | None |
| 1 | 1 | None | None |
| 0 | 1 | Set only q+4 | One `0431BFC9` message |
| 1 | 0 | Clear only q+4 | One `0431BFC9` message |

At `A91547..A9155C`, a changed value first clears that single high bit and then
sets it if AL was nonzero. The other **seven bits** are preserved. There is no
high-nibble memset, low-bit update, upper-mask-bit selection or interpretation
of a `FFFF` pattern sentinel in this flag writer.

The store precedes allocation, payload preparation and dispatch. The allocation
null branch still reaches message field stores; this body has no safe
allocation-failure return or rollback of the already changed flag. Dispatch
uses the current message owner, virtual slot `+1C`, event `0431BFC9`. This
establishes call order, not delivery timing, callback reentrancy, thread safety
or message retirement.

## Bulk rebuild is a separate writer

`RebuildFloorUpperQuarterFlagsForLevel` (`A8D430`) takes ECX=floor manager and
one **Int32 level**, with `RET4`. It computes a full Int32 relative level from
manager minimum `+10`, then walks outer X in manager `+8` and inner Z in manager
`+C`. For each cell it calls `AD2990` for q=0..3, with excluded Object pointer0,
and sets or clears stored high bit q+4 from **AL**. It preserves the low nibble.
There is no changed-value guard, per-quarter event, pending insertion or pending
erasure in this complete body.

The stored grid pointer uses full Int32 counters/relative level, while the query
cell narrows X/Z/level to bytes. The function has no local level bounds check;
caller admission and valid grid dimensions remain prerequisites. It does not
write the packed fourth byte here: the support predicate forces full maskF in
its region/direct-support paths and constructs its own q mask for basement
admission. No dependence on an invented initial mask is needed.

This bulk writer and `A913D0` share a support decision while serving different
publication paths. Treating the bulk pass as a sequence of changed-only
messages, or using it to infer pending-list cleanup, adds behavior absent from
the original body.

## What the support result means

`AD2990` is cdecl with four stack words: lot, packed cell, quarter index, excluded
borrowed Object pointer. It independently validates signed lot bounds before
branching on signed level. Its third argument forms a byte mask
`1<<(quarterIndex&31)`; `A913D0` proves q=0..3, but `AD2990` has no independent
quarter-index guard.

| Case | Ordered original decisions | Limits |
| --- | --- | --- |
| Invalid signed X/Z/level | Return AL0 | No automatic clamp or layer creation. |
| Valid level0 | Return AL1 immediately | Invalid coordinates at level0 were already rejected. |
| Negative level | First `ACF820` with allow-kind6=1; on false, `AB6D70` with the single-quarter local cell | `ACF820` itself forces full mask0F, uses strict compatible-region selection and admits kind3 or6. The basement alternative is quarter-specific. |
| Positive level | Require `ACFF30`, then live bounds `868970`; try full-mask0F direct support `AD2930` with excluded Object | Direct support has ordered room/floor, object, lower-partition and roof alternatives. |
| Direct support false | Traverse the native bit iterator and neighboring-cell encoder, checking each admitted neighbor for level<=0 or `AD0040` support; otherwise retain whether any `A8E0B0` call succeeds | Iterator/neighbor producers and `A8E0B0` layer admission are separate child boundaries; their names do not substitute for a complete child contract. |
| No early support and retained admission flag true | Search byte-wrapped X/Z offsets -2..2 with Manhattan distance exactly2 or3 for full-mask room/floor support, then the constructed local rectangle for full-mask lower-partition support | Each candidate has its own signed bounds check. Exact rectangle traversal and support-child resource/topology behavior remain their own contracts. |
| No admitted path | Return AL0 | Upper EAX bits are not a general Boolean contract. |

The existing [structural-support contract](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/lot-structural-support.md)
provides the already reviewed direct support, room/floor, partition and roof
owners. The negative-level child is retained as
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00acf820.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00acf820.c));
the distinct basement all-parts alternative is
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00ab6d70.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00ab6d70.c)).

Quarter index q is used by the **negative-level basement alternative**. It has
no further data flow in the level-zero or positive-level decisions: the latter
use forced full masks and their own neighborhood inputs. Under unchanged child
state this makes the nonnegative-level support decision common to the selected
quarters. Per-quarter message callbacks prevent a stronger temporal guarantee
that every selected high bit always finishes equal.

### Corner-height admission

`ACFF30` reads four Float32 vertices from the floor manager at `lot+290`, grid
`+24`, using signed level minus manager minimum. Starting at `(X,Z)`, the three
other corners are `(X,Z+1)`, `(X+1,Z+1)`, `(X+1,Z)`. Coordinate increments narrow
as bytes before sign extension; there is no independent bounds or null guard.

Each of the three absolute differences **from the first vertex** must be
strictly below binary32 `0.05f`, stored at `01066B24` as `CD CC 4C 3D`:
[threshold data](../../evidence/native/construction/floor-patterns/height-agreement-threshold.tsv).
These are x87 differences/comparisons; a separate binary32 rounding after each
subtraction is not established. `FCOMI/JBE` rejects equality and unordered
comparison. This is not a maximum pairwise corner difference: two corners can
lie on opposite sides of the first and be farther than0.05 apart while every
required comparison passes. This function returns full EAX0/1.

## Message inputs and optional payload

For a changed quarter, message byte `+5B` receives the newly computed support
Boolean. Byte `+5A` comes from a **different** byte grid at manager `+30`.
Platform `+84`, support below `+85`, room `+5E` and other predicates have separate
producers. `+85` is assigned twice through separate support-below calls; no
single cached result or equality of these byte domains is inferred.

The message's pattern keys depend on `A8CB10`'s selected **low** flag. If true,
the UInt16 pattern storage ID from `A8D1C0` feeds `A8EE40`'s key reader. Otherwise
exactly64 bytes come from live global `011EC920`. This is a distinct key source,
not assumed zero, immutable, or equal to another null/default input. `A911C0`
interns the 64-byte input into message UInt16 field `+58`. These child contracts
are reused in the [pattern/message input guide](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/floor-pattern-message-inputs.md).

`FindFloorCellPayload` uses optional manager `+D0` byte grid. It checks
`relativeLevel<gridDepth` and signed X/Z extents, but has no explicit local
`relativeLevel>=0` guard. Zero cell ID returns null. A nonzero 8-bit ID is looked
up in the map at manager `+17C`; a hit returns borrowed `node+8`, a miss returns
zero. It does not acquire a demonstrated reference lease.

When present, this pointer supplies these message fields:

| Source payload | Destination message | Physical transfer |
| --- | --- | --- |
| `00,04,08,0C` | `60,64,68,6C` | Four DWORD copies |
| `10,14,18` | `70,74,78` | Three x87 Float32 load/store copies |
| `30,34` | `7C,80` | Two x87 Float32 load/store copies |
| `38` | `87` | One byte |

The lookup precedes the quarter loop; its borrowed pointer is reused across
message dispatches. Map mutation, payload lifetime across callbacks and
receiver consumption are separate questions. There is no demonstrated
immutable snapshot or thread boundary in these calls.

## Pending uniqueness, forced refresh, then erasure

`InsertUniqueCellLocation` lower-bounds signed three-byte keys in
**level,X,Z** order. It reverse-compares the candidate to distinguish equality
from absence. Equality reports the existing borrowed entry pointer at output
`+0` and inserted=false at output `+4`. Absence calls `A90280` for insertion and
reports its entry pointer with inserted=true. Both paths return the **caller
owned output buffer** in EAX, not the container entry. Growth, allocation and
pointer validity after mutation remain the insertion helper's responsibility.
The quarter mask and excluded-object ID are absent from the pending key.

`A934A0(refresh=true)` calls `A925B0` before reading whenever the pending list is
globally nonempty. `A925B0` searches this specific three-byte location; only if
found does it copy a cell with **mask0F**, object-ID halves **0,0**, and
**force1** into `A913D0`. Thus a deferred partial request is later recomputed
for the entire cell, with no retained excluded Object, bypassing the deferral
gate. The original caller is
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00a925b0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00a925b0.c)).

After **normal return**, `A925B0` shifts trailing three-byte records and
subtracts3 from end, erasing exactly one location. It does not inspect a
success result: even a now-invalid cell that makes `A913D0` return without work
is removed. An abort/exception may prevent reaching erasure; no rollback or
safety against callback mutation/reallocation of the saved iterator is proved.

The reader `A934A0` then tests selected low mask q against stored high bit q+4,
returning AL any-match. It rejects negative relative level but has no own upper
level or X/Z guard:
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00a934a0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00a934a0.c)).
The separate low-bit setter `A8D130` preserves all high bits:
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00a8d130.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00a8d130.c)).

## Derived witnesses and remaining boundaries

These examples follow the original branches; they are not executed game tests.

| Input/case | Required consequence |
| --- | --- |
| Stored byteA5, mask01, support(q0)=true | B5; one q0 event; low nibble5 and other high bits retained. |
| Stored byteB5, mask01, support(q0)=false | A5; one q0 event. |
| Stored byteA5, mask01, support(q0)=false | Unchanged A5; no event. |
| Mask80 alone | No quarter-loop work; preparation calls still occur. |
| Same location deferred with masks01 then08 | One unique three-byte key; eventual pending refresh uses maskF and object ID0. |
| Pending location outside live bounds when refreshed | Normal no-op refresh return is followed by pending erasure. |
| Corner heights0,+0.04,-0.04,0 | Height gate passes although pairwise maximum difference0.08 exceeds0.05. |

The exact writer mapping, changed-only message order, optional payload lookup
and pending-refresh/removal relationship are established. The full support
child graph, neighbor/rectangle producers, catalog/resource lifetime,
allocation recovery, reentrant/concurrent mutation, message receiver behavior
and actual game/rendering acceptance remain separate work.

The [bounded message-delivery contract](floor-pattern-message-delivery.md) now joins the concrete queue slot, pump, subscription/callback data, receiver owner filter, separate deferred queue and atomic payload references. Complete outer broadcast, owner-ID construction and original runtime behavior retain explicit gaps.
