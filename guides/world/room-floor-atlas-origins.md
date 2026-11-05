# Room-floor atlas origins and ordered groups

Original PC1.67 TS3W.exe. The nine analyst-named functions below contain
724instructions and2,347ownedbytes. Existing inferred types and ABI metadata
remain unchanged; comments embedded in the genuine Ghidra pseudocode distinguish
physical register/stack behavior from its decompiler presentation. These are
static findings; no original function or gameplay case was executed.

| Entry | Verified responsibility | Complete original pair |
| --- | --- | --- |
| 006A4FA0 | Four ordered adjacent split/base probes; result consumed through AL | [ASM](../../evidence/native/functions/006A4FA0_LightingSolver_HasAdjacentSplitBase.asm) ([annotated C](../../evidence/native/functions/006A4FA0_LightingSolver_HasAdjacentSplitBase.c)) |
| 006A7ED0 | Refresh room atlas tiles, descriptor copy, base and density binding | [ASM](../../evidence/native/functions/006A7ED0_LightingSolver_RefreshRoomAtlasTiles.asm) ([annotated C](../../evidence/native/functions/006A7ED0_LightingSolver_RefreshRoomAtlasTiles.c)) |
| 006A82C0 | Conditional refresh followed by retained room/resource traversal | [ASM](../../evidence/native/functions/006A82C0_LightingSolver_UpdateRoomAtlasResources.asm) ([annotated C](../../evidence/native/functions/006A82C0_LightingSolver_UpdateRoomAtlasResources.c)) |
| 006A8D80 | Conditional refresh and virtual render-owner updates | [ASM](../../evidence/native/functions/006A8D80_LightingSolver_UpdateAtlasRenderOwners.asm) ([annotated C](../../evidence/native/functions/006A8D80_LightingSolver_UpdateAtlasRenderOwners.c)) |
| 006A8E80 | Indexed table byte in AL; no established table-content meaning | [ASM](../../evidence/native/functions/006A8E80_LightingSolver_ReadIndexedAtlasTableByte.asm) ([annotated C](../../evidence/native/functions/006A8E80_LightingSolver_ReadIndexedAtlasTableByte.c)) |
| 006A9050 | Wrapped atlas-origin allocation and raw coordinate output | [ASM](../../evidence/native/functions/006A9050_FloorAtlas_WriteNextWrappedOrigin.asm) ([annotated C](../../evidence/native/functions/006A9050_FloorAtlas_WriteNextWrappedOrigin.c)) |
| 006A90C0 | Reset only the two selected allocator counters | [ASM](../../evidence/native/functions/006A90C0_FloorAtlas_ResetWrappedSlotCounters.asm) ([annotated C](../../evidence/native/functions/006A90C0_FloorAtlas_ResetWrappedSlotCounters.c)) |
| 006AA650 | Assign relative partition labels and stored atlas origins | [ASM](../../evidence/native/functions/006AA650_LightingTile_AssignPartitionAtlasOrigins.asm) ([annotated C](../../evidence/native/functions/006AA650_LightingTile_AssignPartitionAtlasOrigins.c)) |
| 006AABA0 | Collect ordered groups by both stored UInt16 origin words | [ASM](../../evidence/native/functions/006AABA0_LightingTile_CollectRoomAtlasOriginGroups.asm) ([annotated C](../../evidence/native/functions/006AABA0_LightingTile_CollectRoomAtlasOriginGroups.c)) |

## Actual inputs and origin writes

6A7ED0 resets three wrappers and replaces retained room resources. For each
nonnull physical tile under unsigned dimension bounds it copies14descriptorbytes,
obtains the base flag through6A4FA0 and calls6AA650 with density4 and the allocator
at solver+0x200. Its two owned ranges are6A7ED0..6A7FCC and6A7FD0..6A81C5;
the three intervening bytes are excluded from the owned Listing. The lookup index
records the enclosing interval, not ownership of that gap.

6A4FA0 checks (x-1,z),(x,z-1) with mask0x10, then (x+1,z),(x,z-1) with mask0x40.
The repeated final z-1 is present in the original instructions. Its child
predicates and the caller consume AL; upper EAX is not normalized. 6A90C0 clears
wrapper+0x08 and+0x04 only, corresponding to the selected allocator's y/x counters.
Neither function initializes allocator offsets, limits or strides.

6AA650 reads seven two-byte-spaced descriptor lanes but tests direction bits4/6
only in lane0. Four relative labels begin with the Boolean base low byte. The
first split adjusts labels1/2 and the later split adjusts2/3 in their actual
branch order. Label0 stores low16(tile-coordinate*density). Other labels request
6A9050 while cached X is0, then store low16(X+1,Y+1). Equal relative labels alone
do not prove equal stored origins under every allocator state.

6A9050 uses low32 coordinate arithmetic and unsigned limit comparisons. It may
wrap a row and eventually reset both counters. It writes current raw32 X/Y and
increments x. There is no returned capacity/failure status, nonzero guarantee or
proven global uniqueness contract. Initial offset/limit/stride producers remain
unresolved; no invented allocator initialization is implied by these consumers.

## Group selection and output

6AABA0 clears the output vector's end to its beginning. Ascending unvisited
room-owned quadrant i starts a group; ascending j from i admits unvisited members
whose BOTH UInt16 stored origin words match. The inner loop does not repeat the
room-membership test. Each group emits one48-byte origin/offset record and grows
the vector through its existing allocator when required. Offset rows consume the
live global at01159B70; its complete initializer and downstream sampler remain
outside these bodies. Relative labels are not this grouping key.

## Refresh callers and evidence limits

6A82C0 and6A8D80 refresh when byte solver+0x280 is0, then update room or render
owners. They contain no direct stores establishing the remaining allocator
fields. 6A8D80 reloads the same stack float before its second virtual call;
the decompiler's unaff_retaddr display is not evidence of an uninitialized read.
6A8E80 reads the index at owner+0x08 and a byte at0x00FF4720+index into AL; high24EAX
bits retain the index. Bounds, table meaning and its producer were not recovered.

These functions establish concrete input widths, branching, write order and
ownership. Opaque child predicates, allocator initialization, label/origin
key-equivalence, complete sampler behavior, malformed-input execution and visual
or runtime parity remain separate questions.
