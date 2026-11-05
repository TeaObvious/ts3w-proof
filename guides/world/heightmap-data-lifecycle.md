# Heightmap data: keep, release and reconstruction

## Scope

This is the original PC 1.67 heightmap lifecycle, using the [identified native reference](../../evidence/native/README.md). Function names are analyst names. Full original instructions and actual annotated Ghidra C form the canonical pairs. The [managed caller guide](map-view-managed-callers.md) supplies the actual Gameplay/UI arguments; the [job guide](cleanup-job-lifetime.md) supplies the supporting scheduling and reference contract. No original game, OpenTS3 scenario or memory-residency comparison was executed.

## Entry points and keep state

Both registered wrappers are cdecl, read one four-byte stack argument whose low byte is Boolean, and do nothing without WorldManager singleton `0x011edbc4`. The load wrapper invokes native ensure; the unload wrapper invokes native release. Both managed contracts return **void**, discarding the native AL result. [Load wrapper ASM](../../evidence/native/functions/00787420_ScriptCore_World_World_LoadHeightMapRelatedDataImpl.asm) ([annotated C](../../evidence/native/functions/00787420_ScriptCore_World_World_LoadHeightMapRelatedDataImpl.c)); [Unload wrapper ASM](../../evidence/native/functions/00787440_ScriptCore_World_World_UnloadHeightMapRelatedDataImpl.asm) ([annotated C](../../evidence/native/functions/00787440_ScriptCore_World_World_UnloadHeightMapRelatedDataImpl.c))

The native methods use ECX for WorldManager, one Boolean stack argument, `RET 4`, and a Boolean AL result. Their shared byte `manager+0x152` is a keep-loaded latch:

| Operation | Latch and immediate result | Remaining work |
| --- | --- | --- |
| Ensure, latch already set | Returns true | No allocation or resource check |
| Ensure, latch clear, keepLoaded=false | Leaves latch clear | Attempts load job |
| Ensure, latch clear, keepLoaded=true | Sets latch before attempting work | Attempts load job; failure does not restore latch |
| Release, forceRelease=false, latch set | Returns true | No cleanup |
| Release, forceRelease=false, latch clear | Leaves latch clear | Attempts release job |
| Release, forceRelease=true | Clears latch before attempting work | Attempts release job |

[Ensure body ASM](../../evidence/native/functions/00C63370_World_EnsureHeightmapRelatedData.asm) ([annotated C](../../evidence/native/functions/00C63370_World_EnsureHeightmapRelatedData.c)); [Release body ASM](../../evidence/native/functions/00C63410_World_ReleaseHeightmapRelatedData.asm) ([annotated C](../../evidence/native/functions/00C63410_World_ReleaseHeightmapRelatedData.c))

Consequently a normal UI release can deliberately retain this data after an earlier keep-loaded request. A true ensure result from the already-set branch does not revalidate backing data. Force removes that retention gate; it does not turn this API into a general resource-cache flush.

## Job, context and result

Each body creates a stack context with manager pointer at offset 0 and a false result byte at offset 4. It acquires a public job through JobManager interface vtable slot `+0x10`, stores callback/context, and writes **affinity mask 1** at public job `+0x20` (internal job `+0x28`). This is not the job's priority or state. It submits, waits and releases the caller's handle. The [original job contract](cleanup-job-lifetime.md) establishes allocation, queueing, callback event 4, terminal states and the bounded lifetime of this context.

The indirect acquire call is thiscall with ECX=this, one pushed `&outJob`, and callee-pop 4. The actual annotated decompilation has an effective call-site signature including both arguments. In the displayed release C, `_forceRelease` is the original four-byte argument slot reused for the job pointer after its input byte was consumed; the separate stack context is not a return address.

Only callback **event 4** performs terrain work; all callback events return true. Before using the stack context, both callbacks acquire the serialized world context. If it is busy, they retain a predecessor job and attach the dependency, without accessing the stack context on that branch. Successful acquisition enqueues the current job; releasing the front removes/releases it. [World-context acquire ASM](../../evidence/native/functions/006E3010_WorldContext_TryAcquireForJob.asm) ([annotated C](../../evidence/native/functions/006E3010_WorldContext_TryAcquireForJob.c)); [World-context release ASM](../../evidence/native/functions/006E1D40_WorldContext_ReleaseFrontJob.asm) ([annotated C](../../evidence/native/functions/006E1D40_WorldContext_ReleaseFrontJob.c))

On a successful release callback with manager and TerrainData present, the output byte becomes `TerrainData[+8] != null` after the release. Native release returns its logical inverse. The byte starts false, so job allocation failure or missing callback work can also leave a true native return **without proving reclamation**. Managed callers do not receive this Boolean. [Release callback ASM](../../evidence/native/functions/00C626C0_World_ReleaseHeightmapJobCallback.asm) ([annotated C](../../evidence/native/functions/00C626C0_World_ReleaseHeightmapJobCallback.c))

The successful callback-4 path that accesses this stack context returns before normal job completion state 6. State 7 alone is not a universal callback-return barrier; cancellation and dependency failures must retain the narrower conditions explained in the [job guide](cleanup-job-lifetime.md).

## Exactly which allocations are released

The callback first reaches the optimizer owner through `manager+0x58 → +0x68`, then its optimizer through `+0x68`. It separately obtains TerrainData through `manager+0x54`. [Owner selection ASM](../../evidence/native/functions/00C626C0_World_ReleaseHeightmapJobCallback.asm) ([annotated C](../../evidence/native/functions/00C626C0_World_ReleaseHeightmapJobCallback.c)); [Optimizer-owner forwarding ASM](../../evidence/native/functions/00C22B60_TerrainOptimizerOwner_ReleaseVertices.asm) ([annotated C](../../evidence/native/functions/00C22B60_TerrainOptimizerOwner_ReleaseVertices.c))

| Owner | Release path | Original allocations/state |
| --- | --- | --- |
| Optimizer at owner+0x68 | `TerrainOptimizer_ReleaseVertices` | If row pointers exist, frees the first row's contiguous backing allocation and the pointer allocation. Clears pointer+0, DWORDs+0x14/+0x10/+8 and byte+0x34. |
| HeightMap at TerrainData+8 | `TerrainData_ReleaseHeightMap` | Calls its slot-0 deleting destructor with flag 1, clears TerrainData+8, sets bytes+0x1c=1,+0x1d=0,+0x20=0. |
| HeightMap sample payload+0x38 | Deleting destructor | Frees the decoded uint16 sample backing and clears its pointer. |
| HeightMap derived-cache vector+0x44..+0x48 | Entry cleanup then destructor | Each nonnull entry owns two allocations at +0/+4, then the entry itself. Slots are nulled; end becomes begin. Destructor additionally frees the pointer-vector backing. |
| HeightMap owner | Deleting destructor flag bit 0 | Frees the 100-byte owner after resource teardown. Its returned old-this value must not be dereferenced. |

[Optimizer release ASM](../../evidence/native/functions/00C88250_TerrainOptimizer_ReleaseVertices.asm) ([annotated C](../../evidence/native/functions/00C88250_TerrainOptimizer_ReleaseVertices.c)); [TerrainData heightmap release ASM](../../evidence/native/functions/00C28630_TerrainData_ReleaseHeightMap.asm) ([annotated C](../../evidence/native/functions/00C28630_TerrainData_ReleaseHeightMap.c)); [HeightMap deleting destructor ASM](../../evidence/native/functions/00AA6DD0_HeightMap_DeletingDestructor.asm) ([annotated C](../../evidence/native/functions/00AA6DD0_HeightMap_DeletingDestructor.c)); [Derived-cache entries ASM](../../evidence/native/functions/00AA6D60_HeightMap_ReleaseDerivedCacheEntries.asm) ([annotated C](../../evidence/native/functions/00AA6D60_HeightMap_ReleaseDerivedCacheEntries.c))

The HeightMap constructor installs vtable `0x010650b8`; its original first word targets `0x00aa6dd0`. The [retained original word](../../evidence/native/heightmap-lifecycle-data.tsv) closes this virtual release target. The constructor initializes dimensions, backing/cache pointers and the original `World/HeightMap` label, and returns this in EAX. [HeightMap constructor ASM](../../evidence/native/functions/00AA6BC0_HeightMap_Construct.asm) ([annotated C](../../evidence/native/functions/00AA6BC0_HeightMap_Construct.c))

The sample producer reads width and height and requests `2 * width * height` bytes for the uint16 payload. Its compression helper and all malformed-input behavior are outside this lifecycle contract. The final ushort selector is passed as 7 by this loader; its original semantic name/version domain is not established. [Sample-payload producer ASM](../../evidence/native/functions/00AA6C30_HeightMap_ReadSamplePayload.asm) ([annotated C](../../evidence/native/functions/00AA6C30_HeightMap_ReadSamplePayload.c))

The optimizer producer receives that sample pointer, source row stride `width*2`, side argument `width-1`, and TerrainData height scale. For ordinary admitted dimensions it builds side `N=(1<<exponent)+1`, allocates `4*N` pointer bytes and `4*N*N` packed vertex bytes, then copies uint16 samples into four-byte cells and pads edges before hierarchy work. The optimizer copy is a separate allocation. These formulas describe these producers; they are not measured process savings or arbitrary-size safety guarantees. [Borrowed sample getter ASM](../../evidence/native/functions/005422A0_HeightMap_GetSamplePayload.asm) ([annotated C](../../evidence/native/functions/005422A0_HeightMap_GetSamplePayload.c)); [Optimizer producer inputs ASM](../../evidence/native/functions/00C22BF0_TerrainOptimizerOwner_BuildVerticesFromHeightMap.asm) ([annotated C](../../evidence/native/functions/00C22BF0_TerrainOptimizerOwner_BuildVerticesFromHeightMap.c)); [Optimizer allocation ASM](../../evidence/native/functions/00C88330_TerrainOptimizer_BuildVertices.asm) ([annotated C](../../evidence/native/functions/00C88330_TerrainOptimizer_BuildVertices.c)); [Sample copy ASM](../../evidence/native/functions/00C88280_TerrainOptimizer_CopyHeightSamples.asm) ([annotated C](../../evidence/native/functions/00C88280_TerrainOptimizer_CopyHeightSamples.c))

The shared free wrapper forwards nonnull pointers to the game's allocator. This proves release requests at their owners; it does not show when allocator pages return to the OS or how private commit changes. [Allocator forwarding ASM](../../evidence/native/functions/004E44E0_Memory_FreeIfNonNull.asm) ([annotated C](../../evidence/native/functions/004E44E0_Memory_FreeIfNonNull.c))

### State retained by this release

The inspected release does not delete the optimizer owner, its budget records, TerrainData itself, its blend pointer at +0x0c, or its collision-owner array at +0xbc. It does not traverse every lot, texture, object mesh or GPU allocation.

Blend release is a distinct method. The heightmap **load** callback invokes it before rebuilding blend data; the heightmap **release** callback does not. [Separate blend release ASM](../../evidence/native/functions/00C28660_TerrainData_ReleaseBlendMap.asm) ([annotated C](../../evidence/native/functions/00C28660_TerrainData_ReleaseBlendMap.c)); [Blend producer ASM](../../evidence/native/functions/00C28810_TerrainData_LoadBlendMap.asm) ([annotated C](../../evidence/native/functions/00C28810_TerrainData_LoadBlendMap.c))

Optimizer initialization stores original geometry-budget fields derived from unsigned `width*height / 42` and `/10`, with fixed companion fields 15000/35000 and conditional minima 10000/40000. Refresh can reuse those records. These fields are not renderer memory-byte budgets. [Budget initialization ASM](../../evidence/native/functions/00C22C30_TerrainOptimizerOwner_InitializeBudgets.asm) ([annotated C](../../evidence/native/functions/00C22C30_TerrainOptimizerOwner_InitializeBudgets.c)); [Budget refresh ASM](../../evidence/native/functions/00C22D00_TerrainOptimizerOwner_RefreshBudgets.asm) ([annotated C](../../evidence/native/functions/00C22D00_TerrainOptimizerOwner_RefreshBudgets.c))

## Reconstruction

The load callback tries the same serialized context. With TerrainData present:

1. A missing HeightMap invokes the resource loader with manager database+0x80, original mode derived from manager byte+0x43, and only-if-reloadable=true.
2. If that load succeeds, or an existing HeightMap has missing optimizer vertices, it releases/reloads blend data, conditionally refreshes auxiliary terrain data, then builds optimizer vertices and budgets.
3. It writes HeightMap pointer presence into the context, releases the serialized context and releases a temporary dependency reference.

[Load callback ASM](../../evidence/native/functions/00C62590_World_LoadHeightmapJobCallback.asm) ([annotated C](../../evidence/native/functions/00C62590_World_LoadHeightmapJobCallback.c)); [HeightMap resource load ASM](../../evidence/native/functions/00C28DA0_TerrainData_LoadHeightMap.asm) ([annotated C](../../evidence/native/functions/00C28DA0_TerrainData_LoadHeightMap.c)); [Optimizer presence reader ASM](../../evidence/native/functions/00C22B40_TerrainOptimizerOwner_HasVertices.asm) ([annotated C](../../evidence/native/functions/00C22B40_TerrainOptimizerOwner_HasVertices.c))

The resource loader uses original type `0x2ad195f2`, allocates the HeightMap owner at TerrainData+8 before parsing, and maintains reload-related bytes. A false parse result need not mean that pointer is null. The original allocation-null path also lacks a guard before its refcount access; no graceful allocation-failure contract is inferred. Pointer presence, complete parse success, optimizer readiness and OS memory residency therefore need separate observations.

## Actual callers

The [complete reviewed managed callers](map-view-managed-callers.md#heightmap-loadrelease-owners) establish:

- Edit Town's thumbnail workflow calls ensure(true); its guarded shutdown/exit helper clears its managed loaded flag, builds routing, then calls release(true).
- BlueprintController.Dispose and BuyController.Dispose call release(false).
- FreezeLotLODs is separately used around leaving the world. No direct ordinary LiveMode/world-entry/world-exit unload site was found in the stated managed scan.

Two native contexts add bounded evidence:

- Lot import calls release(false) after manager/object import work. It ignores the Boolean. [Lot import ASM](../../evidence/native/functions/00ACD610_LotImport_ImportManagersAndObjects.asm) ([annotated C](../../evidence/native/functions/00ACD610_LotImport_ImportManagersAndObjects.c))
- A dirty-world flush conditionally prepares missing heightmap data and later calls release(false) only when it introduced that data. Dirty state is cleared first; cleanup's return is ignored. This is not evidence that every map-view transition performs cleanup. [Dirty-world flush ASM](../../evidence/native/functions/00C6BB00_WorldManager_FlushDirtyWorldData.asm) ([annotated C](../../evidence/native/functions/00C6BB00_WorldManager_FlushDirtyWorldData.c))

## Verification and open boundaries

Executed offline checks compare selected complete instruction envelopes to the original PE, verify actual annotated Ghidra exports, virtual target bytes, native call edges and managed bool operands. No gameplay, allocation-failure, concurrent-shutdown, visual, picking, routing-rebuild or save/reload test was executed here.

Open questions include complete cache-entry producers, full sample compression/reader validation, every collider's borrowing lifetime across cleanup, scheduler behavior outside the reviewed callback path, actual cleanup frequency in the memory reference scenario, and allocator/OS residency effects. This evidence supplies a specific CPU terrain-data lifecycle. It does not supply a complete retail texture/model LRU or a measured renderer-memory budget.

