# Driver quiescence, component collection and scheduling

These analyst names describe the selected PC 1.67 instructions. They are not recovered symbols. Actual annotated C accompanies every ASM reference. Stored decompiler types remain inferred; instructions establish field widths, short-circuit order and stack cleanup.

- `00800260` `SACS_DriverIsQuiescentAL_800260`: [ASM](../../evidence/native/functions/00800260_SACS_DriverIsQuiescentAL_800260.asm) ([annotated C](../../evidence/native/functions/00800260_SACS_DriverIsQuiescentAL_800260.c)).
- `0094d390` `SACS_ComponentCollectQuiescentSoleRefDrivers_94D390`: [ASM](../../evidence/native/functions/0094D390_SACS_ComponentCollectQuiescentSoleRefDrivers_94D390.asm) ([annotated C](../../evidence/native/functions/0094D390_SACS_ComponentCollectQuiescentSoleRefDrivers_94D390.c)).
- `0094d410` `SACS_ComponentAdvanceAndCollectDrivers_94D410`: [ASM](../../evidence/native/functions/0094D410_SACS_ComponentAdvanceAndCollectDrivers_94D410.asm) ([annotated C](../../evidence/native/functions/0094D410_SACS_ComponentAdvanceAndCollectDrivers_94D410.c)).
- `007fd0c0` `SACS_ManagerProcessComponentAndScheduledDrivers_7FD0C0`: [ASM](../../evidence/native/functions/007FD0C0_SACS_ManagerProcessComponentAndScheduledDrivers_7FD0C0.asm) ([annotated C](../../evidence/native/functions/007FD0C0_SACS_ManagerProcessComponentAndScheduledDrivers_7FD0C0.c)).
- `007f3f90` `SACS_GraphEntriesHaveNoBit0_7F3F90`: [ASM](../../evidence/native/functions/007F3F90_SACS_GraphEntriesHaveNoBit0_7F3F90.asm) ([annotated C](../../evidence/native/functions/007F3F90_SACS_GraphEntriesHaveNoBit0_7F3F90.c)).
- `00767370` `SACS_CreateDriverForComponent_767370`: [ASM](../../evidence/native/functions/00767370_SACS_CreateDriverForComponent_767370.asm) ([annotated C](../../evidence/native/functions/00767370_SACS_CreateDriverForComponent_767370.c)).
- `00804b00` `SACS_DriverConstruct_804B00`: [ASM](../../evidence/native/functions/00804B00_SACS_DriverConstruct_804B00.asm) ([annotated C](../../evidence/native/functions/00804B00_SACS_DriverConstruct_804B00.c)).
- `0094d5b0` `SACS_ComponentRetainAndStoreDriver_94D5B0`: [ASM](../../evidence/native/functions/0094D5B0_SACS_ComponentRetainAndStoreDriver_94D5B0.asm) ([annotated C](../../evidence/native/functions/0094D5B0_SACS_ComponentRetainAndStoreDriver_94D5B0.c)).
- `00889af0` `IntrusiveRefCount_IncrementMinus4_889AF0`: [ASM](../../evidence/native/functions/00889AF0_IntrusiveRefCount_IncrementMinus4_889AF0.asm) ([annotated C](../../evidence/native/functions/00889AF0_IntrusiveRefCount_IncrementMinus4_889AF0.c)).
- `007c9620` `IntrusiveRefCount_ReleaseMinus4_7C9620`: [ASM](../../evidence/native/functions/007C9620_IntrusiveRefCount_ReleaseMinus4_7C9620.asm) ([annotated C](../../evidence/native/functions/007C9620_IntrusiveRefCount_ReleaseMinus4_7C9620.c)).
- `0094d320` `SACS_ComponentReleaseDriverRows_94D320`: [ASM](../../evidence/native/functions/0094D320_SACS_ComponentReleaseDriverRows_94D320.asm) ([annotated C](../../evidence/native/functions/0094D320_SACS_ComponentReleaseDriverRows_94D320.c)).
- `00802530` `SACS_TryProcessPendingDecisionGraphRecords_802530`: [ASM](../../evidence/native/functions/00802530_SACS_TryProcessPendingDecisionGraphRecords_802530.asm) ([annotated C](../../evidence/native/functions/00802530_SACS_TryProcessPendingDecisionGraphRecords_802530.c)).
- `0094d4f0` `SACS_ComponentConstruct_94D4F0`: [ASM](../../evidence/native/functions/0094D4F0_SACS_ComponentConstruct_94D4F0.asm) ([annotated C](../../evidence/native/functions/0094D4F0_SACS_ComponentConstruct_94D4F0.c)).
- `0094d530` `SACS_ComponentDeletingDestructor_94D530`: [ASM](../../evidence/native/functions/0094D530_SACS_ComponentDeletingDestructor_94D530.asm) ([annotated C](../../evidence/native/functions/0094D530_SACS_ComponentDeletingDestructor_94D530.c)).
- `007fcf80` `SACS_QueueOrRevisitDriver_7FCF80`: [ASM](../../evidence/native/functions/007FCF80_SACS_QueueOrRevisitDriver_7FCF80.asm) ([annotated C](../../evidence/native/functions/007FCF80_SACS_QueueOrRevisitDriver_7FCF80.c)).
- `007fd000` `SACS_ScheduleDriverImmediate`: [ASM](../../evidence/native/functions/007FD000_SACS_ScheduleDriverImmediate.asm) ([annotated C](../../evidence/native/functions/007FD000_SACS_ScheduleDriverImmediate.c)).
- `00802690` `SACS_WalkerInstallDestination_802690`: [ASM](../../evidence/native/functions/00802690_SACS_WalkerInstallDestination_802690.asm) ([annotated C](../../evidence/native/functions/00802690_SACS_WalkerInstallDestination_802690.c)).
- `005d3680` `DwordVector_CopyAssign_5D3680`: [ASM](../../evidence/native/functions/005D3680_DwordVector_CopyAssign_5D3680.asm) ([annotated C](../../evidence/native/functions/005D3680_DwordVector_CopyAssign_5D3680.c)).
- `00531f70` `ReadDwordOffset18_531F70`: [ASM](../../evidence/native/functions/00531F70_ReadDwordOffset18_531F70.asm) ([annotated C](../../evidence/native/functions/00531F70_ReadDwordOffset18_531F70.c)).

## Established scope

The driver quiescence result defines AL only. Pending decision-graph-record endpoints +11C/+120 and twelve-byte record removal are directly established; +124 as capacity is an inferred conventional vector role, with no admitted capacity compare/reallocation writer. The graph helper tests bit0 on traversed nonnull values; it does not prove container emptiness or all accepted-track retirement.

Both component collectors use the Animation rig-resource gate, count==1 plus quiescence, swap-last replacement, end decrement/reload, release and recheck of the same position. The advancing collector advances each nonnull driver first. The manager rotates one component, calls advancing collection then collection, copy-assigns pending pointers into processing storage, clears pending end, schedules copied entries and clears processing end. This is not a reverse or stable sweep.

The constructor, component retain and generic intrusive increment/release establish driver+4 as an intrusive count. [Hosted reset/drain and typed handle invalidation](host-reset-handle-invalidation.md) establishes the manager+D4 pointer operation; broader script/manager/table/watch ownership remains open. The immediate scheduler retains its bounded ten-advance/revisit behavior. No equivalence to the authored weak-witness/finalizer queue, immutable receipts or all-driver Tick policy follows.

The manager `007FD0C0` and drain `0094D320` consume one stack word with RET4 despite stored prototypes omitting it; no prototype/storage correction was made. AL-only results do not normalize upper EAX bits.

## Bounded reused evidence

The existing registered release entry `00767410` remains [bounded ASM](../../evidence/native/functions/00767410_ScriptCore_SACS_SACS_ReleaseDriverImpl.asm) ([annotated C](../../evidence/native/functions/00767410_ScriptCore_SACS_SACS_ReleaseDriverImpl.c)). Its canonical original window is 112 bytes. The current database body metadata is one byte and its function ASM reports zero instructions; the wider decompilation does not establish a fresh whole-body boundary or ABI. This entry was reused without repair and is outside the nineteen complete bodies above.

Other canonical registration, Animation constructor/runtime/rig assignment and walker evidence is reused rather than duplicated. The [hosted reset contract](host-reset-handle-invalidation.md) includes complete `007FFF70`/`00805770` listener traversal and typed handle operations; deeper controller mutation remains bounded. The incoming `00D820D5` window has no containing database function; complete caller extent is unproved. Runtime threading, callback/finalizer retirement, alternate-map mutation invariants and gameplay/save/mod acceptance are unproved.
