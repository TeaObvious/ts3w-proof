# Cleanup jobs: allocation, execution and stack context

This is static evidence from the original PC 1.67 `TS3W.exe` identified in the
[proof reference](../../references/retained-proof-overview.md). Names are assigned by analysis. The scope is
the job machinery used by cleanup at `00c63410`, including its dependency and
cancellation boundaries. It does not establish runtime thread affinity,
successful GPU/context acquisition or eventual progress.

## Published interface and allocation ABI

`JobService_ConstructWithEmbeddedManager` constructs a manager at owner `+0x18`;
`JobManager_ConstructInterface` installs vtable `00fda80c` there.
`JobService_InitializeAndPublishInterface` publishes that same embedded pointer
at global `011cf2cc` after its initialization gate. `JobManager_GetInterface`
only reads the pointer. The original UTF16 `JobManager` registration supports
the role; the analyst names are not recovered symbols.

Sources: [service constructor ASM](../../evidence/native/functions/0059A330_JobService_ConstructWithEmbeddedManager.asm)
([pseudocode](../../evidence/native/functions/0059A330_JobService_ConstructWithEmbeddedManager.c)),
[manager constructor ASM](../../evidence/native/functions/00599EB0_JobManager_ConstructInterface.asm)
([pseudocode](../../evidence/native/functions/00599EB0_JobManager_ConstructInterface.c)),
[publication ASM](../../evidence/native/functions/00599C90_JobService_InitializeAndPublishInterface.asm)
([pseudocode](../../evidence/native/functions/00599C90_JobService_InitializeAndPublishInterface.c)),
[getter ASM](../../evidence/native/functions/00599B20_JobManager_GetInterface.asm)
([pseudocode](../../evidence/native/functions/00599B20_JobManager_GetInterface.c)).

Vtable slot `+0x10`, original word at `00fda81c`, targets `00599fe0`:

```c
bool __thiscall JobManager_AcquireJob(void *manager, void **outJob);
```

The manager is in ECX; `outJob` is one stack DWORD; both exits use `RET 4`.
Only AL is the result. This matters for the indirect allocation calls: an
argumentless decompiler prototype shifts the caller's recovered stack and can
turn its output handle into an apparent return-address-derived value.

The allocator reuses a free record or allocates `0x50` bytes. It returns a public
handle eight bytes into that internal record. Allocation failure writes null
and returns false. The caller owns one reference. The
[original allocation-slot and switch words](../../evidence/native/cleanup-job-original-data.tsv)
also retain the infinite-wait word described below.

Source: [acquisition ASM](../../evidence/native/functions/00599FE0_JobManager_AcquireJob.asm)
([pseudocode](../../evidence/native/functions/00599FE0_JobManager_AcquireJob.c)).

| Internal record offset | Proven use |
| --- | --- |
| `+0x08`, `+0x0c` | Scheduler sequence words; also the start of the public handle |
| `+0x10`, `+0x14` | Callback and borrowed context pointer: public `+0x08`, `+0x0c` |
| `+0x24` | State DWORD; initialized to 1 |
| `+0x28` | Worker affinity mask; initialized to `0xffffffff` |
| `+0x30` | Atomic reference count |
| `+0x34` | Owning manager pointer |
| `+0x38`, `+0x40` | Dependency and dependent intrusive lists |
| `+0x48` | Signed scheduling priority |
| `+0x4c`, `+0x4e` | Waiting-caller flag and scheduler-reference flag |

The cleanup caller writes **public `+0x20 = 1`**, therefore internal
`+0x28 = 1`: this is worker affinity, not the state or priority.

## Submission, callback and completion

`Job_Submit` converts public handle to internal handle minus eight. Under the
manager lock, `SubmitInternal` only accepts state 1. A job with dependencies
waits in state 2. An executable callback without pending dependencies receives
a sequence number and enters a ready queue in state 3. Affinity `0xffffffff`
uses the common queue; another mask must match a worker mask, otherwise the job
is retired. Submission takes a separate scheduler reference when needed.

Sources: [public submission ASM](../../evidence/native/functions/0059AD10_Job_Submit.asm)
([pseudocode](../../evidence/native/functions/0059AD10_Job_Submit.c)),
[internal submission ASM](../../evidence/native/functions/0059AB50_JobManager_SubmitInternal.asm)
([pseudocode](../../evidence/native/functions/0059AB50_JobManager_SubmitInternal.c)),
[ready-queue dispatch ASM](../../evidence/native/functions/0059A980_JobManager_MakeJobRunnable.asm)
([pseudocode](../../evidence/native/functions/0059A980_JobManager_MakeJobRunnable.c)).

`ExecuteCallbackAndAdvance` sets state 4, releases the manager lock and calls
the callback with three stack DWORDs:
`callback(publicHandle, borrowedContext, 4)`. Its `ADD ESP, 0x0c` proves cdecl
cleanup. Low AL controls whether execution succeeded. After the callback has
returned and the lock is reacquired:

- Pending dependencies return the job to state 2.
- A reschedule request in state 5 makes it runnable again.
- Successful execution without either condition publishes state 6, wakes
  waiting callers and releases the scheduler reference.
- Callback failure or an already retired state routes through state 7 cleanup.

Source: [execution ASM](../../evidence/native/functions/0059A0E0_JobManager_ExecuteCallbackAndAdvance.asm)
([pseudocode](../../evidence/native/functions/0059A0E0_JobManager_ExecuteCallbackAndAdvance.c)).

`Job_WaitUntilTerminal` locks the owning manager and calls the internal wait.
The latter returns for states **7, 6, 0 or 1**. It does not force an unsubmitted
state-1 job to run. For an active job it can execute queued work on the current
registered worker or join the waiting-caller list, release the lock and wait
on its WaitNode event. The supplied timeout word is `0xffffffff`; the job wait
has no finite timeout argument. Every wake rechecks state under the lock.

Sources: [public wait ASM](../../evidence/native/functions/0059AEC0_Job_WaitUntilTerminal.asm)
([pseudocode](../../evidence/native/functions/0059AEC0_Job_WaitUntilTerminal.c)),
[wait loop ASM](../../evidence/native/functions/0059ABE0_JobManager_WaitForInternalJob.asm)
([pseudocode](../../evidence/native/functions/0059ABE0_JobManager_WaitForInternalJob.c)),
[worker pump ASM](../../evidence/native/functions/0059A820_JobManager_PumpWorkerQueue.asm)
([pseudocode](../../evidence/native/functions/0059A820_JobManager_PumpWorkerQueue.c)).

The current-worker identity comes from a cached TLS thread handle. The event
wait helper passes `0xffffffff` directly to `WaitForSingleObject`; ordinary
nonzero deadlines instead use remaining `GetTickCount` time. Its result is
ignored by the job wait, which tests the job state again.

Sources: [thread identity ASM](../../evidence/native/functions/004E1780_ThreadIdentity_GetCurrentCachedHandle.asm)
([pseudocode](../../evidence/native/functions/004E1780_ThreadIdentity_GetCurrentCachedHandle.c)),
[event wait ASM](../../evidence/native/functions/004E2C70_SyncEvent_WaitUntilDeadline.asm)
([pseudocode](../../evidence/native/functions/004E2C70_SyncEvent_WaitUntilDeadline.c)).

## Dependencies, cancellation and the precise lifetime boundary

The public dependency wrapper subtracts eight from both handles. The internal
operation admits states 1, 2, 4 and 5. A completed dependency in state 6 needs
no link. A retired dependency or failed JobLink allocation can retire the
current job. A new dependency during callback execution can request another
execution after that dependency completes.

Sources: [dependency wrapper ASM](../../evidence/native/functions/0059B230_Job_AddDependency.asm)
([pseudocode](../../evidence/native/functions/0059B230_Job_AddDependency.c)),
[dependency insertion ASM](../../evidence/native/functions/0059B0A0_JobManager_AddInternalDependency.asm)
([pseudocode](../../evidence/native/functions/0059B0A0_JobManager_AddInternalDependency.c)).

Cancellation handles state 1/2/3 by retirement. For state 4/5 it propagates
through dependent jobs and can wait; this cancellation entry does not mark a
running callback complete early. Retirement publishes state 7 **before** an
optional callback with event 7, and suppresses that notification for prior
state 4/5. Thus observing state 7 is not a general barrier proving that every
event-7 callback has returned.

Sources: [cancellation ASM](../../evidence/native/functions/0059B3E0_JobManager_CancelInternalJob.asm)
([pseudocode](../../evidence/native/functions/0059B3E0_JobManager_CancelInternalJob.c)),
[retirement ASM](../../evidence/native/functions/0059AF00_JobManager_RetireInternalJob.asm)
([pseudocode](../../evidence/native/functions/0059AF00_JobManager_RetireInternalJob.c)),
[dependent retirement ASM](../../evidence/native/functions/0059A270_JobManager_RetireDependentJobs.asm)
([pseudocode](../../evidence/native/functions/0059A270_JobManager_RetireDependentJobs.c)).

For the inspected cleanup caller, its stack context is borrowed until the
immediately following job wait returns. Its callback accesses that context
only for event 4 after acquiring the required context. That successful branch
returns before state 6 is published. The failed-acquisition branch adds a
dependency and does not dereference the stack context; event 7 also leaves it
untouched. This is the bounded explanation for keeping the caller's context on
the stack. It does not prove arbitrary shutdown behavior, eventual context
acquisition, or safety of other callbacks using the same job API.

Cleanup sources: [caller ASM](../../evidence/native/functions/00C63410_World_ReleaseHeightmapRelatedData.asm)
([pseudocode](../../evidence/native/functions/00C63410_World_ReleaseHeightmapRelatedData.c)),
[callback ASM](../../evidence/native/functions/00C626C0_World_ReleaseHeightmapJobCallback.asm)
([pseudocode](../../evidence/native/functions/00C626C0_World_ReleaseHeightmapJobCallback.c)).

## References and reuse

`Job_AddReference` and `Job_ReleaseReference` use atomic XADD on internal
`+0x30`. The public release returns the new count; at zero it locks the manager
and recycles the record. Recycling clears sequence words, releases an optional
retained interface and inserts the record into the manager free list with
state 0. It does not free the `0x50` storage on each last release. Neither a
reference increment nor submission retains or copies the callback's context.
These public wrappers are not null-safe despite their printed null branches.

Sources: [reference increment ASM](../../evidence/native/functions/00599E20_Job_AddReference.asm)
([pseudocode](../../evidence/native/functions/00599E20_Job_AddReference.c)),
[reference release ASM](../../evidence/native/functions/0059B350_Job_ReleaseReference.asm)
([pseudocode](../../evidence/native/functions/0059B350_Job_ReleaseReference.c)),
[record recycle ASM](../../evidence/native/functions/0059B010_JobManager_RecycleInternalJob.asm)
([pseudocode](../../evidence/native/functions/0059B010_JobManager_RecycleInternalJob.c)).

## Evidence limits

The function envelopes, original data words, stack effects and shown state
transitions were checked statically against the original instructions. No
original-game or OpenTS3 execution, scheduler timing test, cancellation race
test or context-acquisition acceptance was performed. Worker creation,
whole-service shutdown and arbitrary client callback contracts remain outside
this bounded investigation.
