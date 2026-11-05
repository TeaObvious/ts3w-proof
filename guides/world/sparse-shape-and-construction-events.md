# Sparse shape locations and construction event ownership

## Scope and evidence

Static shipped PC1.67 TS3W.exe instruction analysis, using the central native
reference identity. Names are analyst roles. This reference establishes concrete
stateful location iteration and construction event producer/consumer boundaries;
it does not establish native equivalents of the project's rectangle decomposition,
directional perimeter, channel compaction or contiguous mesh slicing.

| Function | Full canonical original pair |
| --- | --- |
| C32240 SpanShape_BeginLocationEnumeration | [ASM](../../evidence/native/functions/00C32240_SpanShape_BeginLocationEnumeration.asm) ([actual annotated C](../../evidence/native/functions/00C32240_SpanShape_BeginLocationEnumeration.c)) |
| C312E0 SpanShape_NextLocation | [ASM](../../evidence/native/functions/00C312E0_SpanShape_NextLocation.asm) ([actual annotated C](../../evidence/native/functions/00C312E0_SpanShape_NextLocation.c)) |
| C31F80 SpanShape_TrimEmptyLevelBounds | [ASM](../../evidence/native/functions/00C31F80_SpanShape_TrimEmptyLevelBounds.asm) ([actual annotated C](../../evidence/native/functions/00C31F80_SpanShape_TrimEmptyLevelBounds.c)) |
| C31580 SpanShape_RecountLocations | [ASM](../../evidence/native/functions/00C31580_SpanShape_RecountLocations.asm) ([actual annotated C](../../evidence/native/functions/00C31580_SpanShape_RecountLocations.c)) |
| C52590 LotConstructionEvents_HandleQueuedEvent | [ASM](../../evidence/native/functions/00C52590_LotConstructionEvents_HandleQueuedEvent.asm) ([actual annotated C](../../evidence/native/functions/00C52590_LotConstructionEvents_HandleQueuedEvent.c)) |
| C51F10 ConstructionEventQueue_AppendRetainedRecord | [ASM](../../evidence/native/functions/00C51F10_ConstructionEventQueue_AppendRetainedRecord.asm) ([actual annotated C](../../evidence/native/functions/00C51F10_ConstructionEventQueue_AppendRetainedRecord.c)) |
| AA4350 FloorRenderEvents_HandleOrQueue | [ASM](../../evidence/native/construction/floor-patterns/00AA4350_FloorRenderEvents_HandleOrQueue.asm) ([actual annotated C](../../evidence/native/construction/floor-patterns/00AA4350_FloorRenderEvents_HandleOrQueue.c)) |
| AA3890 FloorRenderEvents_ApplyEvent | [ASM](../../evidence/native/construction/floor-patterns/00AA3890_FloorRenderEvents_ApplyEvent.asm) ([actual annotated C](../../evidence/native/construction/floor-patterns/00AA3890_FloorRenderEvents_ApplyEvent.c)) |

## Sparse level/row/span iteration

C32240 receives ECX shape and one four-byte location output, RET4, physical AL
status. On dirty byte+34, call C31F80 then C31580, clear dirty before cursor setup.
C31F80 invokes existing row normalization on leading/trailing level records,
removes empty boundaries and their deque storage, adjusts byte min/max levels;
an exhausted shape becomes min0/maxFF. It does not rebuild the shape from the
current project's tile list. C31580 zeroes count+30, traverses retained levels,
rows and linked spans and sums signed(lastX-firstX)+1, using MOVSX span bytes+4/+5.
Underlying row normalization/allocation/creation semantics remain their own bodies.

Begin then chooses the first occupied span in retained level/row order and writes
X,Z,level,span-edge flag bytes. Internal cursors+3C/+3D/+3E/+40 retain X/Z/level/
span. A directly empty level range returns AL0 without publishing output and sets
the cursor to last+1; other exhausted traversal returns AL0 after its retained
cursor increments. Physical signed byte comparisons and MOVSX matter;
inferred full EAX values are not additional output status.

C312E0 advances X within its current linked span, choosing retained endpoint flags
at an endpoint and0F for interior locations. At span end it follows linked spans,
rows and levels through retained deque cursors. Success writes four bytes and AL1;
exhaustion updates cursor and AL0, leaving caller output unchanged. Both methods
mutate iteration state; no reentrant/concurrent enumeration guarantee is inferred.
They return one location, not the detached Int32 rectangle/perimeter result types.

Actual pool consumer
[B668A0 ASM](../../evidence/native/functions/00B668A0_PoolGeometry_RebuildPresenceFromRooms.asm) ([annotated C](../../evidence/native/functions/00B668A0_PoolGeometry_RebuildPresenceFromRooms.c))
requests room mode2 at selectedLevel-1, obtains admitted room shape, calls begin/
next and sets presence bits signedX*depth+signedZ. Existing
[B66120 ASM](../../evidence/native/functions/00B66120_PoolGeometry_UpdatePresenceRectangle.asm) ([annotated C](../../evidence/native/functions/00B66120_PoolGeometry_UpdatePresenceRectangle.c))
edits presence over endpoint rectangles. Actual water producer
[B67EA0 ASM](../../evidence/native/functions/00B67EA0_PoolGeometry_RebuildWaterGroups.asm) ([annotated C](../../evidence/native/functions/00B67EA0_PoolGeometry_RebuildWaterGroups.c))
scans Z outer/X inner and invokes
[B67950 ASM](../../evidence/native/functions/00B67950_PoolGeometry_AppendPackedWaterTile.asm) ([annotated C](../../evidence/native/functions/00B67950_PoolGeometry_AppendPackedWaterTile.c))
for packed attribute-grouped water. Tile enumeration and water are different
outputs from current basin floor partition and directional wall boundary lists.
Full original shape construction, basin floor/wall emission and atlas producers
remain separate; captured shape similarity is not an instruction-level proof of
the project's row-continuation algorithm or its optimality.

## Retained construction records and floor updates

C52590 receives ECX receiver, UInt32 eventID and payload pointer, RET8, physical AL.
Its attached owner+4 supplies identity comparisons; branches update flags/batch
counter or construct a12-byte record with flag byte, ID+4 and pointer+8. Queue
call C51F10 uses receiver+30C. Unsupported IDs return AL0; selected matched or
nonmatching-owner handled routes preserve actual AL1 behavior. It is an event
receiver; a source comment naming a render manager does not turn it into a mesh
channel selector.

C51F10 receives ECX vector plus record pointer/RET4. Available capacity advances
end by12 before copy, copies its flag/ID/payload pointer and calls payload
virtual+4 when nonnull; full capacity delegates the existing insertion helper.
C52590 also invokes virtual+4 during local message acquisition and virtual+8
when cleaning that local reference. These paired calls indicate retention/release-
like roles; concrete payload virtual implementations and growth/failure behavior
remain separate. The operation does not copy arbitrary payload contents or vertex
channels, and this selected queue writer is not its eventual full message consumer.

AA4350 receives the same eventID/payload widths. Disabled byte+70 or null attached
lot+8 returns AL0. Identity/event branches change flags or nesting counter+80;
selected events pass immediately to AA3890 when counter0, otherwise construct a
local record through existing C1EC20, queue at+84 through A6CA70 and clean the local
reference. Counter decrement/flush paths and all short-circuit guards remain actual
instructions. No current host task priority, request cache or cancellation protocol
is inferred from this native batch counter.

AA3890 applies admitted event branches to per-level floor services. In particular,
114765F7 supplies signed byte X/Z/level and scalar height, updating existing level
structures including special-1/0 paths. Optional lot services are called in their
original conditional order:+234, fence-related+248, wall-related+238, ceiling-
related+258. C55EA0 receives location; A6C2B0 and A812C0 receive actual additional
scalar arguments. Existing child arithmetic/format/resource lifetimes remain
separate; this body does not construct the project's Gather/Slice arrays.

## Comparison limits and verification

The current project consumes deduplicated Int32 tile sets and validates rectangle
area/exact coverage; native iterator consumes retained signed-byte sparse spans
and mutates cursor/count state. Current mesh compaction/block slicing preserves
host tags/channels/index ownership; selected native receivers transport event
records and call actual per-level geometry services. These observations compare
real boundaries without claiming matching algorithms or transitive absence of
such work elsewhere in the executable.

Complete original bodies, alignment gaps, ABI/RET/AL widths, signed/unsigned
branches and caller/consumer order were instruction-checked. Canonical actual
annotated Ghidra C and full original Listing ASM are paired by address. Original
bytes unchanged and database saved clean. No original/runtime/GPU execution,
console/pre-release symbols, asset conversion or product test acceptance claimed.
