# Original managed SACS client, post-load and waits

## Source identity and selected members

The [central original assembly identities](../../evidence/managed/README.md)
apply. SimIFace, ScriptCore and GameplaySystems bytes were independently extracted
from pristine PC 1.67 package resources and matched before analysis. This is
static metadata/CIL analysis, not gameplay execution. The [selected member
index](../../evidence/managed/selected/sacs-client-postload/method-index.tsv)
pairs 47 complete original methods (4500 CIL bytes) with actual annotated ILSpy
renderings, exact MethodDef tokens, RVAs and typed declarations. Method code sizes
were checked against original PE method headers. [Call/delegate operands](../../evidence/managed/selected/sacs-client-postload/call-edges.tsv)
and [field operands](../../evidence/managed/selected/sacs-client-postload/field-access.tsv)
are finite direct operand indexes, not a complete runtime call graph.

## Original client construction and acquisition

The original parameterless constructor initializes the three persisted dictionaries;
the handle/name/host/queue constructor calls it before assigning those identities.
Original Acquire overloads preserve the default priority-2 and allow-yield choice,
construct the64-bit hashed JAZZ key and call the SACS proxy. Results FFFFFFF7/8
throw distinct host errors; FFFFFFF9 returnsnull; FFFFFFF6 and FFFFFFF3 retry through
the default-yield overload; zero throws. A successful handle gets an event queue,
message filter and async handling. OpenTS3's low-level reacquisition helper does
not reproduce this whole original factory; its parent owns validation/publication.

## Native identity and actor binding

[StateMachineClient](../../evidence/managed/types/Sims3.SimIFace.StateMachineClient.cs)
contains the private DriverHandleWrapper. Read discards the saved version word,
reads a signed table index and stores LoadSaveManager.NativeRead(index) directly
as its handle. PersistPostLoad does not acquire a replacement driver or replay
actors. The original native object table precedes these consumers; synthetic
C0000000-range staging tokens are an OpenTS3 load-order accommodation.

Original SetActor tracks actor GUIDs, actor objects and bridge origins, hashes the
name using the original client method, and forwards to the original SacsProxy.
A saved-native-binding repair that invokes the lower-level proxy is not thereby
equivalent to invoking the high-level setter with its managed side effects.
Hash identity, GUID identity and graph chunk indexes remain distinct.

## Post-load filters and yielding request cleanup

PersistPostLoad reconnects its event queue and toggles the stored asynchronous and
synchronous-support properties through their setters. It adds persistent subtype2,
then, if asynchronous handling was false, wildcard id0 rows: persistent11,10,1,4,5,3
and once8,9. It reinstalls stored handler rows with their actual one-shot policy,
queues VFX fixup and updates timeout time.

RequestState has a real yielding call and finally block. It temporarily disables
asynchronous handling, refuses a simultaneous yielding waiter and installs request
rows. Some rows carry actor/state-specific IDs. Its finally removes those request
rows and restores the *previous* asynchronous flag. Clearing the post-load wildcard
rows and unconditionally enabling async in OpenTS3 recovery is therefore a bounded
abandonment accommodation, not original RequestState success or universal cleanup.

[ScriptCore.EventQueue](../../evidence/managed/types/ScriptCore.EventQueue.cs)
persists mSleepingTask, but marks native handles and callbacks nonpersistent.
GetNextEvent writes the current task before Sleep(uint.MaxValue) and clears it in
finally. OnNativeEvent either dispatches an installed callback or queues the event
and wakes the sleeping task. Installing OnEvent drains queued events. Dispose asks
the proxy to reset a still-sleeping owner, then clears it; it is not synonymous
with merely clearing the saved field. Weak observation and consume-once recovery
registries are OpenTS3 mechanisms; they do not restore the original execution stack.

## Gameplay posture ownership

[Sim.StandingPosture](../../evidence/managed/types/Sims3.Gameplay.Actors.Sim.StandingPosture.cs)
owns high/low-LOD idle acquisition and reset policy. The file preserves its complete
nested type with the unrelated outer Sim body abbreviated, explicitly marked.
[PetStandingPosture](../../evidence/managed/types/Sims3.Gameplay.ActorSystems.PetStandingPosture.cs)
adds its original reset specialization.
[PetSittingOnGroundPosture](../../evidence/managed/types/Sims3.Gameplay.ActorSystems.PetSittingOnGroundPosture.cs)
acquires pet_sitting_on_ground_idle, binds x, installs its idle callback and enters
sitting_on_ground. Its DoReset disposes that machine, reacquires only for a valid
actor object, and stops posture-switch monitoring. OnReset instead returns the
actor's standing posture. These are different original APIs.

An IL adjacency/arity recognizer can locate a candidate original method without
proving path safety, virtual dispatch or that the method ran. Mode integration may
invoke the original lifecycle rather than duplicate its posture/idle policy. Actual
saved-stack continuation and successful recovery require runtime validation.

[Native resource/persistence/status counterparts](resource-loading-save-records-and-status.md)
retain the selected producers, consumers and ABI caveats.


## Current request/parameter wrapper addition

Six fresh complete original ScriptCore.SACS methods06000D84..D88 andD8E add90
CIL bytes, checked against PE headers and authenticated DLL bytes; actual ILSpy
selected renderings and method/call indexes are extended in the existing dossier.
[Retail resource identity](../../evidence/managed/selected/sacs-client-postload/parameter-request-retail-identity.json)
records scripts.package resource key, package hash, assembly version, MVID and SHA.
No loose/prepared/mod/retargeted assembly or original method execution is used.
SetParam overloads forward their exact hash/string/composite inputs, GetParam
returns raw imported UInt32. RequestState maps managed positions2/3/4/5/7/8/9
to seven native inputs: wakeupTimeOffset position6 is not passed to that import.
Its yield branch instead uses CallbackObject.GetCallbackResult; null becomes-1,
otherwise unbox ResultCodes. This wrapper is not the higher StateMachineClient
managed deadline/filter/finally protocol and does not validate saved VM continuation.

[Request and parameter current-host comparison](README.md#current-host-request-and-parameter-boundaries)
joins native counterparts and remaining ownership/cache/error questions.


## Original productive actor-control caller

Six more complete retail controls add135CILbytes: SimIFace.StateMachineClient
CanPause06000A86/PauseA87/ContinueA88 hash a nonnull actor name or choose0,
then call SacsProxy.Instance with actual mDriver.mHandle and hash. There is no
prior walker-membership/HasActor/placement guard. ScriptCore.SACS CanPauseD90/
PauseD91/ContinueD92 directly forward the two arguments to their imports.
This establishes the productive original member/field/call chain for the bounded
Continue-first-use correction, not a reconstructed gameplay policy.

Actual ILSpy selected renderings, complete CIL/metadata/header-byte checks,
call/field indexes and both [retail resource identities](../../evidence/managed/selected/sacs-client-postload/actor-control-retail-identities.json)
are added in the same dossier. ScriptCore/SimIFace come from scripts.package,
with exact resource keys/version/MVID/SHA and package provenance. No prepared,
retargeted/mod/loose DLL or actual original method execution is used. Current
native driver/actor/world/thread/controller/VM continuation remains separate.
