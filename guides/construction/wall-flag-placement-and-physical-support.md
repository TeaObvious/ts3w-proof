# Wall-flag placement and physical support

Original PC1.67 TS3W.exe, identified centrally. Names are descriptive analyst
assignments. Static instruction/callsite inspection establishes the selected
mechanisms; it is not executed original-game acceptance or a complete placement
reconstruction. The canonical pairs contain complete owned instruction ranges,
marked nonowned envelope gaps and actual annotated Ghidra decompilation.

## Canonical original owners

| Entry | Analyst role | Original code |
| --- | --- | --- |
| 00B3FD50 | Placement_CollectWallFlagEdgeSets | [ASM](../../evidence/native/functions/00B3FD50_Placement_CollectWallFlagEdgeSets.asm) ([annotated C](../../evidence/native/functions/00B3FD50_Placement_CollectWallFlagEdgeSets.c)) |
| 00B404B0 | Placement_TestWallFlagConstraints | [ASM](../../evidence/native/functions/00B404B0_Placement_TestWallFlagConstraints.asm) ([annotated C](../../evidence/native/functions/00B404B0_Placement_TestWallFlagConstraints.c)) |
| 00B3CD30 | Placement_TestRequiredWallEdge | [ASM](../../evidence/native/functions/00B3CD30_Placement_TestRequiredWallEdge.asm) ([annotated C](../../evidence/native/functions/00B3CD30_Placement_TestRequiredWallEdge.c)) |
| 00B3FB50 | Placement_RasterizeWallSegmentIntoSets | [ASM](../../evidence/native/functions/00B3FB50_Placement_RasterizeWallSegmentIntoSets.asm) ([annotated C](../../evidence/native/functions/00B3FB50_Placement_RasterizeWallSegmentIntoSets.c)) |
| 00B3F740 | WallEdgeSet_InsertUnique | [ASM](../../evidence/native/functions/00B3F740_WallEdgeSet_InsertUnique.asm) ([annotated C](../../evidence/native/functions/00B3F740_WallEdgeSet_InsertUnique.c)) |
| 00C979A0 | ObjectCatalog_ReadWallPlacementRow | [ASM](../../evidence/native/functions/00C979A0_ObjectCatalog_ReadWallPlacementRow.asm) ([annotated C](../../evidence/native/functions/00C979A0_ObjectCatalog_ReadWallPlacementRow.c)) |
| 00B3DE30 | Placement_GetFootprintBoundsForLevel | [ASM](../../evidence/native/functions/00B3DE30_Placement_GetFootprintBoundsForLevel.asm) ([annotated C](../../evidence/native/functions/00B3DE30_Placement_GetFootprintBoundsForLevel.c)) |
| 00B3DF30 | Placement_TransformBoundsCornersToLot | [ASM](../../evidence/native/functions/00B3DF30_Placement_TransformBoundsCornersToLot.asm) ([annotated C](../../evidence/native/functions/00B3DF30_Placement_TransformBoundsCornersToLot.c)) |
| 00B40410 | Placement_CollectCurrentObjectWallEdges | [ASM](../../evidence/native/functions/00B40410_Placement_CollectCurrentObjectWallEdges.asm) ([annotated C](../../evidence/native/functions/00B40410_Placement_CollectCurrentObjectWallEdges.c)) |
| 00B45410 | ObjectPlacement_TestLotAdmission | [ASM](../../evidence/native/functions/00B45410_ObjectPlacement_TestLotAdmission.asm) ([annotated C](../../evidence/native/functions/00B45410_ObjectPlacement_TestLotAdmission.c)) |

## Producers, sets and consumers

B40410 resolves an object's placement component, refreshes yaw, reads position
and level, quantizes yaw to an octant and calls B3FD50 with five DWORD arguments.
Its ADD ESP18 also cleans an earlier yaw argument; it is not a six-argument call.
Missing object/component returns AL0 with upper EAX unspecified.

B3FD50 uses the object's typed catalog key at+18 and catalog fieldA4. Missing
catalog or zero flags returns AL0 without clearing outputs. With nonzero flags
it clears both descriptor sets. Required direction mask is3F; prohibited isFC0.
If both masks are zero, bit4000 synthesizes required2; otherwise that case fails.
[Original direction table words](../../evidence/native/wall-flag-direction-masks.tsv)
retain six powers1..32 and their shifted prohibited powers64..2048.

Without authored rows, B3DE30 unions nondegenerate footprint polygon XZ bounds
for the signed authored level using runtime flags5/option1. Missing bounds fails.
The caller expands each deficient axis to at least0.5; the second axis has a
one-sided expansion for effective bit4002. B3DF30 transforms four corners through
the actual footprint owner-to-lot matrix. B3FB50 iterates physical edge crossings,
skips same-level motion within0.001 and rounds coordinates using original x87
FISTP. Ambient control state is not established as a managed rounding mode.

Authored rows use (catalog+D8 minus catalog+D4)/28hex. The loop ordinal/count
are integer DWORDs despite C float spellings, with index+=2 and unsigned bound
comparison. C979A0 reads five scalar words plus four auxiliary words at row+18;
it omits row+14 and performs no local bounds check. Required2 is remapped to10
for octants1/5 and20 for3/7. At B3FFEF the authored prohibited-table test actually
uses the same effective LOW-mask DWORD as the required-table test. It does not
use the retainedFC0 word. Consequently those disjoint table bits cannot admit a
prohibited entry on this selected authored lane. This is the original instruction,
not an inferred correction of intent. Packed coordinates/levels sign-extend bytes.

B3F740 inserts unique full edge descriptors into an ordered native set. ECX is
owner; the three stack words are result, descriptor and an ignored word; RET0C.
The stored signature includes that third word. The output has a node pointer
and insertion byte at+4. Endpoint/level signed-byte ordering and later descriptor
terms participate; this is not a maximal collinear floating-span union.

B404B0 succeeds immediately for no catalog/zeroA4. Otherwise it owns temporary
wallsRequired/wallsProhibited sets and invokes B3FD50. Required entries call
B3CD30(edge,0,1,(flags>>12)&1,context,diagnostics), six stack words. Prohibited
entries inspect physical wall state, stairs, products and cutout/footprint state.
Null diagnostics short-circuits the first failing constraint; nonnull diagnostics
retains failure, appends original numeric feedback and continues. Both sets are
freed on local exits. No generated material edge substitutes for physical support.

B45410 calls B404B0 after its existing admission steps unless context+98 has
already returned or byte+81 bypasses that test. The caller checks AL after two
pushes/ADD ESP8. Script callbacks and committed placement are separate owners.

## ABI and bounded limits

B3FD50 is cdecl five words; B404B0 two; B3CD30 six; B3FB50 eight; B3DF30 five;
B40410 three. Their ordinary RET leaves argument cleanup to callers. C979A0 is
ECX plus seven words/RET1C; B3F740 ECX plus three/RET0C. Return widths follow
physical low-byte tests, not inferred UInt32 C return types.

Selected child iterator, comparator, allocator/tree balancing, complete product
predicates, footprint transforms, original x87 rounding control and managed
placement veto/commit behavior remain separate boundaries. In particular no
floating merge epsilon, renderer material identity, project spatial opening score
or whole-lot diagnostic readiness formula follows from these native bodies.
Original file bytes and every selected instruction envelope were checked unchanged;
the annotated database was saved clean. No original runtime test is claimed.
