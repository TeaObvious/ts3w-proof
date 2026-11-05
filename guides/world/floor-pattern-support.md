# Floor-pattern keys and physical support predicates

Original shipped PC1.67 TS3W.exe, reviewed statically in Ghidra. Names below
are descriptive analyst annotations, not recovered original symbols. The genuine
annotated pseudocode retains existing inferred types and decompiler artifacts;
physical ABI, field widths and branches are established by complete instructions.
No original function, malformed-data case, placement scenario or gameplay was run.

## Complete selected owners

| Entry | Physical inputs and observed role | Original pair |
| --- | --- | --- |
| AD0E20 | cdecl lot and packed cell-part pointers; two caller-cleaned stack words, plain RET; AL-only terrain admission | [ASM](../../evidence/native/functions/00AD0E20_Lot_TestTerrainSurfaceAtCellPart.asm) ([annotated C](../../evidence/native/functions/00AD0E20_Lot_TestTerrainSurfaceAtCellPart.c)) |
| AD0EE0 | cdecl lot and packed cell-part pointers; two caller-cleaned stack words, plain RET; AL-only floor admission | [ASM](../../evidence/native/functions/00AD0EE0_Lot_TestFloorSurfaceAtCellPart.asm) ([annotated C](../../evidence/native/functions/00AD0EE0_Lot_TestFloorSurfaceAtCellPart.c)) |
| AA5030 | ECX map owner, no incoming EDX use or stack arguments, plain RET; map initialization | [ASM](../../evidence/native/functions/00AA5030_FloorPatternMap_Initialize.asm) ([annotated C](../../evidence/native/functions/00AA5030_FloorPatternMap_Initialize.c)) |
| A8EE40 | ECX floor manager, cell UInt16 and 64-byte output pointer in stack slots, RET8; key lookup and copy | [ASM](../../evidence/native/functions/00A8EE40_FloorManager_CopyPatternKeysForCellId.asm) ([annotated C](../../evidence/native/functions/00A8EE40_FloorManager_CopyPatternKeysForCellId.c)) |
| A8FA90 | ECX floor manager, packed cell-part pointer and output pointer in stack slots, RET8; cell-to-key transport | [ASM](../../evidence/native/functions/00A8FA90_FloorManager_CopyPatternKeysAtCellPart.asm) ([annotated C](../../evidence/native/functions/00A8FA90_FloorManager_CopyPatternKeysAtCellPart.c)) |

The five contiguous owners contain232 instructions and678 bytes: AD0E20..AD0EDB
(188), AD0EE0..AD0FBC(221), AA5030..AA50BD(142), A8EE40..A8EE9E(95) and
A8FA90..A8FAAF(32). The Listings cover each owned byte, without adjacent data or
neighboring functions. Existing ABI/types, bodies, original bytes and interior
annotations are retained. Inferred integer returns must not turn AL-only
predicates into normalized UInt32 Booleans; no return-value contract is asserted
for the three initializer/copy owners.

## Default quad and persisted storage identity

AA5030 initializes forward/reverse map structures and diagnostic labels. It copies
16 DWORDs from the initial null quad at011EC8E0 to owner+40, then clears byte+80
and fields+84/+88/+8C. All four implicit default keys therefore start null.

The resource reader at AA5490 supplies the persistence boundary:
[ASM](../../evidence/native/functions/00AA5490_FloorPatternMap_ReadResourceRows.asm)
([annotated C](../../evidence/native/functions/00AA5490_FloorPatternMap_ReadResourceRows.c)). It reads a complete
UInt32 storage index for saved map rows, while overwriting only the first inline
16-byte default key at owner+40. The remaining default keys retain their
initialized values unless another owner changes them. Do not infer that the
saved map index has the narrower cell query's width.

The [null-pattern contract](lot-level-growth-and-null-patterns.md) establishes
the initial64zero bytes at011EC8E0 from original memory. The [floor valuation
constants](../../evidence/native/data/floor-valuation-constants.tsv) retain the
initial16zero-byte key at011EC8A0. These addresses are in the PE's virtual
zero-fill region: their initial-memory values are not physically backed raw disk
excerpts. Do not present fabricated bytes read from a nonexistent file offset.

## Cell ID selects an entire64-byte key quad

A8EE40 loads the map through floor-manager+D8. MOVZX zero-extends the cell's
UInt16 value before reverse-map lookup. ID0 selects the inline implicit default
quad at map+40. Every nonzero ID, including FFFF, follows the ordinary reverse
lookup through A8E780 at map+20. Missing/end lookup, or a null key-block pointer,
selects the null quad at011EC8E0. It copies exactly16 DWORDs to the caller's
output. There is no reserved-FFFF failure branch or invented map-null guard.

A8FA90 preserves the manager in ESI and queues the output pointer before calling
A8D1C0 with the packed cell-part pointer. It restores ECX, pushes EAX as the cell
ID, then invokes A8EE40. The latter consumes only low16bits through its MOVZX;
this transport does not establish normalized high EAX bits. The packed-grid
index and part-mask policy inside A8D1C0 remain that separate producer's contract.
No new grid-layout rule follows from this32-byte wrapper.

## Terrain predicate checks the first key and additional admission

AD0E20 first rejects a nonzero packed byte level at offset+2. It fetches the
concrete quad through A8FA90 and compares the first16-byte key with011EC8A0 using
four DWORD comparisons. That key must be null. Other keys in the quad are not
compared by this terrain-key branch.

A null first key is necessary but insufficient. It then rejects a true low-byte
result from ACF070, from AD0470(lot,part,null,0), or from
AD0D00(lot,part,1,1,null). If lot byte+4BC is nonzero, it additionally requires
807670's low-byte result to be true. The child below-sea and region/collection
contracts are described in [placement selection and admission](../objects/render-tree-and-placement-mechanisms.md).
ACF070 and807670 are retained call boundaries; this guide does not assign
unproved internal policy to them or replace their results with constants.

Failure clears AL while preserving or carrying unrelated upper EAX bits;
success sets AL to1. A pattern-derived ground bit alone is therefore not the
complete original terrain admission result.

## Floor predicate compares all four keys and conditionally filters regions

AD0EE0 fetches the same quad and compares all64bytes with011EC8E0 using
[ResourceKeyQuad equality ASM](../../evidence/native/functions/007892B0_ResourceKeyQuad_Equals.asm)
([annotated C](../../evidence/native/functions/007892B0_ResourceKeyQuad_Equals.c)). An equal null quad
fails. This differs from the terrain predicate's first-key-only test: a null
first key plus a nonnull later key can satisfy both key-level conditions.

MOVSX reads packed signed-byte X, Z and level. Only when X/Z are nonnegative and
within signed lot dimensions and the level lies within signed lower/upper bounds
does it repack the same three coordinates with part mask0F. That branch queries
AB67D0(...,0) and rejects region type3 or6 through AFE300. Outside that bounds
branch does not universally fail; execution still reaches
AD0D00(lot,part,1,1,null). A true AL result there fails, otherwise it returns AL1.

The concrete key quad, signed coordinate transport, bounds-conditional region
branch and collection/water policy are separate evidence. An unavailable decoded
key or host warning state cannot stand in for an original concrete null quad.
No full native admission, concurrency, placement success or rendered result is
claimed by a key-only projection.

## Lookup references

[Selected incoming references](../../evidence/native/floor-pattern-support-incoming.tsv)
connect the five entries to their actual callers. The [direct-call index](../../evidence/native/direct-calls.tsv)
retains complete selected direct edges, including unresolved child owners, without
inventing virtual targets. Resource decoding, grid/mask production, optional
807670 behavior and broader placement backends remain separately owned contracts.


## Point-selected pattern masks, ties and floor edit recording

[B04090 ASM](../../evidence/native/functions/00B04090_FUN_00b04090.asm)
([C](../../evidence/native/functions/00B04090_FUN_00b04090.c)) first calls existingAF7DB0,
which encodes the point and obtains AF7BC0 onehot quarter. Its six physical cdecl
words are output/localpoint/lot/three lowbyteflags, plainRET/void. Partition tests
may expand or choose diagonal/previous-level masks. With fifth flag1, it reads
the original seed's four keys, then removes different candidate quarters through
[A8AE70 ASM](../../evidence/native/functions/00A8AE70_FUN_00a8ae70.asm)
([C](../../evidence/native/functions/00A8AE70_FUN_00a8ae70.c)). This full64byte-quad predicate
returns fullEAX1 for different,0equal; fourth key compares through
[54E0A0 ASM](../../evidence/native/functions/0054E0A0_FUN_0054e0a0.asm)
([C](../../evidence/native/functions/0054E0A0_FUN_0054e0a0.c)), a four-DWORD inequality.
The original seed bit is skipped during filtering, not replaced by another tie.
A5E360/A61890 pass(0,1,1) for ordinary floor design. On a flat cell at minimum
level, no diagonal wall, four distinct patterns, the selected mask returns to
the original seed. B0D330 wall selection, AFDE10 admission, all lower-level/
region/support/default/partition gates remain distinct native boundaries.

Existing AF7BC0's exact dyadic centre(.5,.5) ->mask4, (.25,.25)->8,
(.75,.25)->2 therefore determines which pattern/preset gets read. Current
OpenTS3 Engine.World.Lots.Geometry.NearestEdgePart used abs-dominant-axis ties
and returned zero-based0 for all three; eight of14 explicit compiled vectors
failed. Bug445 now forwards to existing Core.TileQuarterGeometry.ContainingPart;
no new algorithm, type, original hook or fixture.14finite dyadic vectors pass.
Native x87/mixed intermediate precision, NaN/subnormal/out-of-domain behavior
and source/geometry-specific admission remain unaccepted broader parity.

[D236E0 ASM](../../evidence/native/functions/00D236E0_FUN_00d236e0.asm)
([C](../../evidence/native/functions/00D236E0_FUN_00d236e0.c)) is a real selected native undo
mutation/price producer, ECXundo plus locator/quad/flag RET0C. Per selected mask
bit it reads old keys/rotation, compares actual quad/rotation, records/applies
throughD235A0 before price. Separate default and paired-level writes have their
own gates and do not establish current RoomEnclosure/default/refcount policy.
Price can skip same catalog+semantic-preset, has thirdflag and special native
key/lot+4BC conditions; it is not every changed quarter unconditionally charged.
Actual binary32 SUBSS(new-old), MULSS0.25, ADDSS per contribution builds subtotal;
when changes occurred virtual30 reads prior total, x87 adds subtotal and FSTP
binary32 is passed to virtual2C. Final integer/funds/undo completion and D235A0
full writer remain open. Current MathF.Round-to-int does not follow from this
float setter. CB1270/CB2160/CB2300/CE4910/CB1F20 original support/fill/erase are
still explicit further paths, not proven by the host's fixed-point room loop.
