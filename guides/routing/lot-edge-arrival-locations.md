# Lot-edge arrival locations and weighted destinations

Original PC1.67 TS3W.exe. These are analyst-assigned function names, supported
by complete original instructions and actual annotated Ghidra pseudocode.
The findings are static: original functions, malformed data, route planning,
concurrent calls and gameplay scenarios were not executed.

## Complete selected owners

| Entry | Physical ABI and role | Original pair |
| --- | --- | --- |
| 63E0A0 | ECX routing manager +5 stack DWORD slots, RET14; EAX location count | [ASM](../../evidence/native/functions/0063E0A0_LotRouting_CollectAdmittedLotEdgeLocations.asm) ([annotated C](../../evidence/native/functions/0063E0A0_LotRouting_CollectAdmittedLotEdgeLocations.c)) |
| 656510 | ECX goal owner +3 stack slots, RET0C; EAX collected count | [ASM](../../evidence/native/functions/00656510_LotRouteGoals_AppendWeightedLotEdgeDestinations.asm) ([annotated C](../../evidence/native/functions/00656510_LotRouteGoals_AppendWeightedLotEdgeDestinations.c)) |
| 63DB10 | ECX routing owner +lotrecord/component slots, RET8; AL status | [ASM](../../evidence/native/functions/0063DB10_LotRouting_EnsureComponentPortalAdjacency.asm) ([annotated C](../../evidence/native/functions/0063DB10_LotRouting_EnsureComponentPortalAdjacency.c)) |
| 633F70 | ECX routing owner +lot-ID low/high and point pointer, RET0C; AL status | [ASM](../../evidence/native/functions/00633F70_LotRouting_IsPortalLocationAdmitted.asm) ([annotated C](../../evidence/native/functions/00633F70_LotRouting_IsPortalLocationAdmitted.c)) |
| AB0590 | ECX lot, no stack input, plain RET; instructions normalize full EAX0/1 | [ASM](../../evidence/native/functions/00AB0590_Lot_IsCommercialDivingLot.asm) ([annotated C](../../evidence/native/functions/00AB0590_Lot_IsCommercialDivingLot.c)) |
| AB3030 | ECX lot +two GUID DWORD slots, RET8; load-context producer | [ASM](../../evidence/native/functions/00AB3030_Lot_LoadRoutingResources.asm) ([annotated C](../../evidence/native/functions/00AB3030_Lot_LoadRoutingResources.c)) |

The six owners contain870 instructions and2945 owned bytes across eight actual
ranges.63E0A0 owns63E0A0..63E238 and63E240..63E3DC; its seven intervening bytes
are excluded.63DB10 owns63DB10..63DCEC and63DCF0..63DF31; its three intervening
bytes are excluded. The other four owners are contiguous:656510..656741,
633F70..6340B3,AB0590..AB05B1 andAB3030..AB30C3. The code index records bounding
envelopes; the paired Listings contain every owned instruction, without the ten
unowned gap bytes. Types, ABI, function boundaries and original bytes remain
unchanged. Float/pointer aliases in genuine C are decompiler artifacts.

## Load context selects components4 and5

AB3030 obtains its stream from lot+3A8, checks reader/sticky status and obtains
the routing interface through828CF0. Within its scoped tracker it compares the
lot DWORDs+408==1 and+40C==50hex. XOR/SETNZ normalizes that predicate into full
ECX0/1;AB30A5 passes it as the load context into82C4A0. Its two lot-ID stack
loads and RET8 establish physical GUID transport despite pointer-looking C.

[Routing resource loader ASM](../../evidence/native/functions/0082C4A0_LotRouting_ReadLotDataResources.asm)
([annotated C](../../evidence/native/functions/0082C4A0_LotRouting_ReadLotDataResources.c)) forwards the context
unchanged into[lot-location reader ASM](../../evidence/native/functions/0063D100_LotRouting_ReadLotLocationPayload.asm)
([annotated C](../../evidence/native/functions/0063D100_LotRouting_ReadLotLocationPayload.c)). The latter retains
full context at lotrecord+170 and stores low16(context+4) at+16C.63E0A0 loads
that UInt16 selected-component field. Therefore the authored edge component is
4 for an ordinary lot and5 for a commercial diving lot. It is not selected by
minimum floor, a scan for unique zero endpoints or a portal SaveId.

AB0590 tests the same two lot fields. Its instructions explicitly produce full
EAX0/1 although existing return metadata says AL.63E0A0 copies that result at
63E293 as the point's third DWORD, then copies it into LotXZLevel+8 before the
A8C690 call. The[lot-level consumer ASM](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.asm)
([annotated C](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.c)) loads that field as
signed Int32 for level-range/grid indexing. Thus actual generated floor is0/1,
separate from component ordinal4/5. This producer/consumer chain establishes
both values; the component offset alone would not establish a world floor.

## Ordered edge projection and preferred-index lifetime

63E0A0 prepares component adjacency through63DB10, then retains nonnull portal
entries whose DWORD+58 has bit1 set, preserving their source order. The preferred
ordinal in lotrecord+14 is mapped from the unfiltered source through this filter.
It is an array ordinal, distinct from a portal's persisted UInt32 SaveId.

Before iteration,63E0A0 seeds the previous endpoint from the last retained portal.
Each retained portal is then paired with that previous endpoint, which is updated
after projection. Thus the first midpoint joins last-to-first, followed by each
previous-to-current pair in source order. It reads From X/Z fields+14/+18 and performs
separate binary32 ADDSS then MULSS with0.5. There is no midpoint epsilon, double
intermediate or nearest-edge search. The original[scalar bytes](../../evidence/native/lot-edge-arrival-data.tsv)
retain0.5 and both destination weights.

The midpoint first receives the AB0590 level. It must pass633F70's native query
admission. When the low-byte below-sea exclusion argument is enabled, ordered
lot-local sea>floor comparison (FCOMIP/JA) excludes the covered point.
[Coordinate transform ASM](../../evidence/native/functions/0062F360_LotRouteGraph_ApplyInverseLotPositionMatrix.asm)
([annotated C](../../evidence/native/functions/0062F360_LotRouteGraph_ApplyInverseLotPositionMatrix.c)) transforms XZ and
copies the raw level word. Accepted points append as12-byte records; preferred
index is compacted to that output position. An excluded preferred point does
not designate another preferred point by proximity.

The nonempty edge path clears the output vector and writes preferred=-1 before
its lot lookup. Earlier empty/unavailable exits return0 without promising those
writes. A caller must not assume universal output clearing from the return count.
656510 explicitly creates a local empty vector and preferred=-1 before its call.

## Adjacency preparation and downstream admission

63DB10 checks lotrecord+8C and, when necessary, requires63D3B0 success. Component
bounds are unsigned, with44hex-byte records. A ready component returns its saved
ready byte. Otherwise it initializes portal goals/groups, limits counts>=FFFF
toFFFE and chooses From when the component matches portal+48 or the selected
component's special edge bit; other entries use To. It rebuilds connected groups
through634210, appends symmetric neighbor relations, brackets optional owner+BC
service callbacks, marks ready and releases its temporary scoped state. Child
group-building and callback policy remain separate owners.

633F70 creates scoped Routing/PortalCheckCache data and calls6328F0. A null query
fails. It increments query+28, calls66B8D0 and admits precisely unsigned status
less than2 or status13 (CMP2/JC and CMP0D); other statuses fail. Release decrements
the reference count, preserves the original zero-count virtual destruction path
through query+24, and destroys/frees scoped cache storage. These observed status
numbers do not establish that a replacement graph's passability Boolean is an
equivalent query. Full dynamic query backend, object-sensitive admission and
runtime cache policy remain separate unresolved contracts.

## Destination weights and consumer

656510 is the selected direct consumer of63E0A0. It queries world height through
C6A090 for each collected XZ and constructs64-byte destination data. A surviving
preferred index loads100.0 from010F6BF4 and uses654980; other locations load50.0
from00FEE3A8 and append/grow through654070. Its EAX return is the collected
location count, not a demonstrated count of successful full routes. It releases
the local location vector through4E44E0. This does not prove654980's complete
insertion ordering, the full scoring function or a first-reachable policy.

[Selected incoming references](../../evidence/native/lot-edge-arrival-incoming.tsv)
and the[direct-call index](../../evidence/native/direct-calls.tsv) connect the
six owners without inventing virtual destinations. General destination lifetime
and planning are described in[destinations and scoring](destinations-and-scoring.md).
No thread-safety guarantee, water no-walk fix, world-travel portal rule or runtime
success claim follows from these static arrival-projection bodies.
