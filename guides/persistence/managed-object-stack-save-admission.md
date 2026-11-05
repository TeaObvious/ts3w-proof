# Original managed object-stack save admission and restoration

Two complete original PC 1.67 ScriptCore methods establish the proxy-miss return
and the task-index producer. The [method index](../../evidence/managed/selected/save-object-stack/method-index.tsv)
pairs 77 complete CIL bytes with actual annotated C#. Tokens and RVAs identify
members within the original ScriptCore module, not native entry addresses.
The [central managed identity](../../evidence/managed/README.md#matching-original-assembly-identities)
identifies the pristine scripts.package S3SA assembly; its module MVID is
`da71f9d5-3a90-44c6-8f98-5bafd2fca18a`. No prepared assembly or original execution
is used as authority.

## Proxy admission before task-state access

[SaveObjectStack complete CIL](../../evidence/managed/selected/save-object-stack/LoadSaveManager.il.txt)
([annotated whole LoadSaveManager C#](../../evidence/managed/types/ScriptCore.LoadSaveManager.cs))
is MethodDef `0x06000219`, RVA `0x4708`, 51 bytes and 18 instructions, with two
locals and no exception region. Its argument is raw UInt64 and its return is Int32.

It reads `AppDomain.CurrentDomain.GetData("Simulator")`, performs `castclass`
to the concrete `ScriptCore.Simulator`, constructs `ObjectGuid` from the argument
and calls that concrete service's `GetProxy`. A null proxy takes the exact signed
`-1` return at IL0025–0026. Only the nonnull arm reads the current `sTaskStates`
field at IL0027 and calls `AddTaskState(objectId)`, returning that result unchanged.
There is no task-state null guard, local catch, retry, normalization or range
clamp. Wrong service type, null receiver and invoked-call faults propagate at their
actual operations. A replacement interface-only service cannot be passed through
this concrete cast merely because its members have similar names.

## Append, reread and signed result

[AddTaskState complete CIL](../../evidence/managed/selected/save-object-stack/TaskStateCollection.il.txt)
([actual annotated selected C#](../../evidence/managed/selected/save-object-stack/TaskStateCollection.cs.txt))
is MethodDef `0x0600069D`, RVA `0x8CFA`, 26 bytes and 10 instructions, with no
locals or exception region. It first reads `this.mTasks` and calls the existing
`ChunkedList<UInt64>.Add(taskId)`. It then reads `this.mTasks` again. IL0012 is
`ldfld Int32 Count`: the C# spelling `mTasks.Count` represents a field, not a
getter. IL0018 is ordinary `sub`, not `sub.ovf`; the result is signed Count minus
one and is returned without admission or a nonnegative guarantee.

If Add succeeds and a later operation fails, this method has no rollback. The
second field observation is real even though the normal case may see the same
collection. This selection does not expand ChunkedList.Add, allocation, count
maintenance, capacity, callbacks, reentrancy, overflow or concurrent mutation.
An assumed collection invariant must not replace an explicit caller result gate.
The UInt64 argument is appended as supplied; no default/zero-ID refusal is added
by either selected body.

## Scope of the persistence claim

These methods establish stack-ID admission and index production, not the full
PreSave enumerator/getter policy, native component task-index wire format, stack
capture or subsequent task resumption by themselves; the additional complete restoration selections below establish their own bounded contracts. No PreSave C# is synthesized or included
here. The existing [object-group writer](object-group-writing.md) and
[table/reader preparation](../objects/managed-object-table-preparation.md) retain
their independent boundaries. The whole LoadSaveManager C# is reused once;
its unrelated methods are context, not newly authenticated CIL selections.

Both IL files retain complete byte sequences and all decoded instructions from
the matching original assembly. The C# is the actual decompiler rendering with
analyst comments added inline; the
original IL controls field access, signed arithmetic, branches and return values.
This is static reference evidence, with no gameplay, save/quit/reload, scheduler,
ABI or native implementation acceptance.

## Successful restoration and the distinct failed-stack path

The [restoration method index](../../evidence/managed/selected/save-object-stack/restoration-index.tsv)
adds fourteen complete original managed bodies, decoded instructions, raw CIL,
tokens/RVAs/signature blobs, local-signature tokens and exception regions. This
selection reuses the canonical LoadSaveManager and ScriptProxy C# above; it does
not duplicate those whole types. Fresh extraction from original scripts.package
and gameplay.package matches the central pristine SHA256/MVID identities.
ScriptCore is version1.0.5129.30674/MVIDda71f9d5-3a90-44c6-8f98-5bafd2fca18a;
GameplaySystems is version1.0.0.0/MVIDe8701302-f3cd-4f23-9387-d9d17a68ff9e.

[LoadObjectStack/RestoreObjectStack/failed-event/request complete CIL](../../evidence/managed/selected/save-object-stack/ScriptCore.LoadSaveManager.restoration.il.txt)
([canonical annotated LoadSaveManager C#](../../evidence/managed/types/ScriptCore.LoadSaveManager.cs)):
LoadObjectStack0600020B/69bytes marks mResetSavedObject for missing table, negative
or out-of-range index. TakeState0600069E/41bytes returns false for an already-null
slot: **LoadObjectStack then returns true without installing a new context**.
The invalid-context sentinel is instead consumed as true/null, causing reset and
false. A valid context is assigned at IL003E. Thus “every take failure resets”
is incorrect. [TakeState/WriteTask CIL](../../evidence/managed/selected/save-object-stack/ScriptCore.TaskStateCollection.restoration.il.txt)
([annotated actual selected C#](../../evidence/managed/selected/save-object-stack/TaskStateCollection.restoration.cs.txt))
retains this distinction.

RestoreObjectStack0600020C/83bytes obtains GetProxyPreInit, calls Restore on an
existing context, disposes it, clears the field, and returns Restore's Boolean.
There is no finally: Restore/Dispose faults can prevent later cleanup. Missing
proxy/context returns false. SendObjectFailedEvent0600020E/66bytes captures the
event delegate then visits its invocation list until a handler returns true;
no handler/none accepting returns false; faults propagate.

[ScriptProxy selected CIL](../../evidence/managed/selected/save-object-stack/ScriptCore.ScriptProxy.restoration.il.txt)
([canonical annotated C#](../../evidence/managed/types/ScriptCore.ScriptProxy.cs)):
PreSimulate060006DA/77bytes first handles mResetSavedObject, disposing and clearing
any saved context. Only an unhandled failed-object event clears the flag, calls
SetObjectToReset060006D6/33bytes and Sleep(1). With no resetflag but a saved context,
it takes RestoreSavedTaskContext060006DB/36bytes. That method clears the proxy
field **before** RequestTaskRestore, sleeps UInt32.MaxValue, then calls OnReset if
that suspended path returns. Its context is transferred, not copied into a fresh
Interaction.Run invocation. RequestTaskRestore0600021C/54bytes captures actual
Simulator.CurrentTask.Value plus the supplied context and sends that pair to the
existing LoadSaveManagerTask.

[LoadSaveManagerTask Add/Simulate CIL](../../evidence/managed/selected/save-object-stack/ScriptCore.LoadSaveManagerTask.restoration.il.txt)
([annotated whole C#](../../evidence/managed/types/ScriptCore.LoadSaveManagerTask.cs)):
Add06000221/43bytes appends and wakes its task only when the resulting Count==1.
Simulate06000222/106bytes captures the current count, traverses those requests,
wakes a target only if its context Restore returns false, then disposes its
context. Finally it clears the request list and sleeps UInt32.MaxValue before
repeating. There is no local exception region. This is a cooperative original
task, not evidence of a parallel worker or an atomic all-requests transaction.

[SavedTaskContext Restore/Dispose CIL](../../evidence/managed/selected/save-object-stack/ScriptCore.SavedTaskContext.restoration.il.txt)
([annotated whole C#](../../evidence/managed/types/ScriptCore.SavedTaskContext.cs)):
Restore06000691/235bytes patches each frame/field-object set; a false Patch result
returns false before installation. IL004A calls TaskControl.SetTaskContext with
the target task and stored context by reference. An existing native-yield wrapper
is disposed and mNativeYieldCall zeroed **before** the result is tested. On true,
the method writes every saved field/reference (SetFieldValue/SetFieldReference),
then returns true. There is no rollback or local catch if a later field write
throws. Dispose06000692/32bytes disposes the native-yield wrapper when present
and zeros the raw yield handle; it does not null the wrapper field.

WriteTask060006A2/882bytes calls GetTaskContext(methodsOnly=false). Failure returns
Failed; a null frame array returns NotSleeping. The native-yield Valid/CanBeSaved
predicate and exact mSleepTicks==-2 gate precede writing. It serializes sleep,
yield references, native yield save index, frame method identity and IP/SP/VTSP/
return/argument offsets, fields and evaluation objects; it does not merely save
an interaction class name. GetMethodId's complete save-safety implementation and
native context installation remain separate unexpanded dependencies. Do not infer
the meaning of every negative sleep value from this managed gate alone.

## Reset consequences and implementation boundary

[InteractionQueue.OnReset complete CIL](../../evidence/managed/selected/save-object-stack/Sims3.Gameplay.ActorSystems.InteractionQueue.restoration.il.txt)
([annotated selected C#](../../evidence/managed/selected/save-object-stack/InteractionQueue.OnReset.cs.txt))
is GameplaySystems060092A0/283bytes. It clears head flags and transition fields,
pops running interactions, then up to three times visits a snapshot of queued
interactions through ImmediatelyStopInteraction, cleans remaining collected
entries, and finally clears mInteractionList. Cleanup may invoke original code;
the complete Sim reset caller chain and every interaction's side effects are
not established by this one body.

A reset is therefore a distinct failure recovery, not equivalent to successful
saved continuation. Restarting a previously entered Run at its beginning also
does not establish continuation: saved durable effects may already exist. The
native bindings remain explicit leads:
[GetTaskContext D84200 API](../../api/ScriptCore.TaskControl/0x0108d648.md) and
[SetTaskContext D84790 API](../../api/ScriptCore.TaskControl/0x0108d650.md).
Their registration, retained exports and managed wrappers do not themselves prove
every native Mono frame/layout/error/lifetime rule. No native mutator/export/save,
gameplay or Save/Reload execution accompanies this managed-only review.
