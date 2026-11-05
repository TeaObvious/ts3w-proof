# Surface cutout registration and render inputs

Static PC1.67 original; analyst names identify reviewed roles. Full owned bodies
and actual database pseudocode are canonical. No original bytes changed.

## Authored inputs and lifetime

C977F0 copies six outputs: signed32 level at product+F0, float length+158,
width+15C, offsets+160/+164 and16byte mask key+148. Its field-copy body supplies
no finite/positive-size validation. Versioned catalog decoding remains the producer.
B08180 requires object/catalog primarybit25, Location, queried manager IID90566B0E
and Location bit11 clear. It reads the actual local pose/yaw, rotates offsets,
computes half-extents and invokes the floor registration service. Generic host
matrix projection is not proof of identical original SIMD/trigonometric rounding.

A9A4B0 is ECXmanager plus8stack words, RET20hex, lowALBoolean. Existing fullGUID
registration rejects; signed cutlevel above lot top rejects. It collects rotated
rectangle quarters, stores binary32 scales .5/halfextent and allocates ID/record.
Covered on-lot/live-level quarters cause tile owner-ID writes and surface messages.
A registration below live bottom can exist without admitted cells. There is no
universal positive-size, finite or minimum-level guard in this body.

A94D30 writes one byte ID per TILE x/z/relativelevel; it is not a per-quarter owner
stack. A9A710 is ECXmanager+GUIDlow/high, RET8, lowALBoolean. Missing record returns
false. It clears admitted ownership and emits removal/default mask inputs, then
releases IDs/maps. It does not generally restore an older overlapping owner.

## Geometry and fractional selection

A90420 computes rotated bounds/corners with x87 trig and floor(min+.001) through
ceil(max-.001), then calls the quarter collector with flags0/0. Its x87 epsilon,
stored float boundaries and native intersection predicate matter at boundaries.
The existing quarter-coverage guide retains the downstream intersection contract.
AC2D10 writes triangles for one-hot1/2/4/8 and clears output for invalid masks;
it does not classify points. A zero-based host adapter may use0/1/2/3.

AF7BC0 is cdecl(floatX,floatZ), plainRET, one-hotAL. Fractional X is spilled to
binary32; fractional Z remains x87 for first comparison and is also rounded to
binary32 for the second. SUBSS computes complement=1-roundedX.
If roundedX<=retainedZ: complement<=roundedZ selects4, otherwise8.
Otherwise roundedZ<complement selects1, otherwise2. Thus centre(.5,.5) selects4,
(.25,.25) selects8, and(.75,.25) selects2 for ordinary finite positive coordinates.
An absolute dominant-axis classifier with its own tie policy is not equivalent.
Unordered inputs, negative subnormals and ambient x87/MXCSR controls remain outside
the stated host binary64 adapter domain.

## Physical render message

A99C50 is ECXmanager+7stack words, RET1Chex, void. It clears tile bit10000000 and
obtains a90hex-byte packet. Fields include lotGUID+8/+C, tilepart+10, existing
material/room/light/support metadata,16byte mask key+60, float centre+70/+74,
yawbits+78, binary32 scales+7C/+80 and main packet byte+87. It may emit an additional
lower-level packet; those extra native floor/material rules are not implied by
a host CPU mesh clone or generic alpha-test material.

0044C4F0 reads the current interface pointer without incrementing ownership.
Both calls to its virtual1C physically use ECXserver and four stack words:
message0934A19E, packet,0,0. No caller cleanup follows; later frame accesses and
RET1C establish16byte callee purge. Local overrides include explicit ECXthis plus
those four stack words. Omitting the this formal corrupted later decompiler frame
tracking; actual saved C now retains correct centre/scale references and no fake
unaff_retaddr receiver. Return register is unused; its semantic type is unresolved.
Final packet virtual8 release has ECXpacket and no stacked argument.

ADF150 acquires a block under its critical section, popping the free list or
asking the pool grower and retrying until failure. It releases the lock and
returns block/null. Its body does not read incoming stack arguments; the caller
pushes90hex and caller-cleans4, so the formal unused-parameter count remains
unresolved. Concrete installed message-dispatch implementation is not identified
by the global pointer getter. Neither leaf proves host texture/GPU residency.

## Canonical original bodies

- FloorManager_RegisterObjectCutout: [ASM](../../evidence/native/functions/00A9A4B0_FloorManager_RegisterObjectCutout.asm) ([pseudocode](../../evidence/native/functions/00A9A4B0_FloorManager_RegisterObjectCutout.c)).
- FloorManager_EmitCutoutSurfaceMessage: [ASM](../../evidence/native/functions/00A99C50_FloorManager_EmitCutoutSurfaceMessage.asm) ([pseudocode](../../evidence/native/functions/00A99C50_FloorManager_EmitCutoutSurfaceMessage.c)).
- FloorOwnerGrid_WriteTileOwnerId: [ASM](../../evidence/native/functions/00A94D30_FloorOwnerGrid_WriteTileOwnerId.asm) ([pseudocode](../../evidence/native/functions/00A94D30_FloorOwnerGrid_WriteTileOwnerId.c)).
- FloorManager_RemoveObjectCutout: [ASM](../../evidence/native/functions/00A9A710_FloorManager_RemoveObjectCutout.asm) ([pseudocode](../../evidence/native/functions/00A9A710_FloorManager_RemoveObjectCutout.c)).
- ObjectPlacement_RegisterFloorCutout: [ASM](../../evidence/native/functions/00B08180_ObjectPlacement_RegisterFloorCutout.asm) ([pseudocode](../../evidence/native/functions/00B08180_ObjectPlacement_RegisterFloorCutout.c)).
- ObjectProduct_CopyFloorPlacementFields: [ASM](../../evidence/native/functions/00C977F0_ObjectProduct_CopyFloorPlacementFields.asm) ([pseudocode](../../evidence/native/functions/00C977F0_ObjectProduct_CopyFloorPlacementFields.c)).
- FloorCutout_CollectRotatedRectangleQuarters: [ASM](../../evidence/native/functions/00A90420_FloorCutout_CollectRotatedRectangleQuarters.asm) ([pseudocode](../../evidence/native/functions/00A90420_FloorCutout_CollectRotatedRectangleQuarters.c)).
- TileQuarter_WriteTriangle: [ASM](../../evidence/native/functions/00AC2D10_TileQuarter_WriteTriangle.asm) ([pseudocode](../../evidence/native/functions/00AC2D10_TileQuarter_WriteTriangle.c)).
- LotLocation_SelectQuadrantFromFraction: [ASM](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.asm) ([pseudocode](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.c)).
- MessageDispatch_GetCurrent: [ASM](../../evidence/native/functions/0044C4F0_MessageDispatch_GetCurrent.asm) ([pseudocode](../../evidence/native/functions/0044C4F0_MessageDispatch_GetCurrent.c)).
- FloorMessagePool_AcquireStorage: [ASM](../../evidence/native/functions/00ADF150_FloorMessagePool_AcquireStorage.asm) ([pseudocode](../../evidence/native/functions/00ADF150_FloorMessagePool_AcquireStorage.c)).
