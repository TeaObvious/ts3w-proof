# PC 1.67 loading controller and readiness boundaries

## Reference and complete evidence

Reference TS3W.exe SHA256 `694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Original UI.dll SHA256 `d38676dc2b953c03f3d764b7c2d531c1f2a08c0232580b40a8880c188f659b89`
comes from gameplay.package S3SA F7C3ADE896D4E765; GameplaySystems SHA256
`f9b2e5ef2ebd09ff26ec5d173ff8b72752573f741430972edc8fdbb3c6bc93fd`
from gameplay.package 03D6C8D903CE868C; SimIFace SHA256
`6ddedb668e1b6da037e346cd5cf6f500f37407dca633b428e7ec410daa00fcb2`
from scripts.package C356DF69B70ADD42; ScriptCore SHA256
`1ac13ea63f60ceb7ba3a91053da85358aa25635aba5d13053904a8e7c1278115`
from scripts.package 78CF6CF5304D0C4F. All type/group keys use S3SA073FAA07/group0.
No retargeted DLL is normative. External review evidence retains whole original
LoadingScreenController/ToInWorldState C#/IL, selected wrapper raw CIL and complete
CallbackObject; 60 complete bodies / 7,891 CIL bytes / 2,503 instructions were
independently matched to authenticated MethodDef/header/EH/raw bodies. Three
PInvoke imports and one abstract declaration are separate, not extra CIL bodies.
The actual managed transition identity is ToInWorldState.

## Managed producer and consumer

ToInWorldState.Startup installs four World load event subscriptions, removed by
Shutdown. Finished schedules SceneReadyTask. That whole task waits in order for
frame evaluation, detailed lots, then scene readiness mask0x200000, changes game
state and destroys the simulator object. Failure schedules WorldLoadFailed: it
requests loading-screen Unload, shows the original dialog, shuts down pre-world
initializers and returns to the main menu. The status handler is empty. Wrapper
forwarders use the real gGameUtils interface, ScriptCore imports and existing
CallbackObject delegate; none is a new OpenTS3 callback API.

The complete LoadingScreenController owns its original layouts, static/controller
state, tips/interactive findable selection, ticks and teardown. Reset starts at
zero with increment.75, slowdown.5, shutdown false; instance stop.98 and release
counter5. OnTick adds increment, halves it at successive slowdown thresholds and
caps at500*stop. Requested shutdown advances over remaining ticks, then schedules
UnloadNow after.5 seconds. Unload itself only requests shutdown. UnloadNow shuts
layout down, disposes and clears it before the HUD notification. ShowNextLoadScreen
performs original replacement then clears its separate managed swap callback.
Init/Dispose own original Tick, TriggerDown and trigger hooks; disposal of existing
tip/reward stopwatches does not establish release of every button subscription or
all stopwatches. No host fraction weighting is derived from these original bodies.

## Current whole native physical evidence

| Entry | Complete owned bytes / instructions | Role |
| --- | --- | --- |
| [EC10A0](../../evidence/native/functions/00EC10A0_ScriptCore_GameUtils_GameUtils_SwapLoadScreen.asm) ([actual annotated C](../../evidence/native/functions/00EC10A0_ScriptCore_GameUtils_GameUtils_SwapLoadScreen.c)) |5/1|Registered five-byte tail JMP to7F1B50; no adapter RET/CALL|
| [7F1B50](../../evidence/native/functions/007F1B50_DirectTargetOf_GameUtils_GameUtils_SwapLoadScreen.asm) ([actual annotated C](../../evidence/native/functions/007F1B50_DirectTargetOf_GameUtils_GameUtils_SwapLoadScreen.c)) |36/12|One callback stack word, service-null gate, store then schedule|
| [7F1880](../../evidence/native/functions/007F1880_GameUtils_DispatchPendingLoadScreenSwap.asm) ([actual annotated C](../../evidence/native/functions/007F1880_GameUtils_DispatchPendingLoadScreenSwap.c)) |88/25|Consume live pending slot, interface-null retains; cleanup then clear|
| [EC1D70](../../evidence/native/functions/00EC1D70_ScriptCore_GameUtils_GameUtils_WaitForSceneReadiness.asm) ([actual annotated C](../../evidence/native/functions/00EC1D70_ScriptCore_GameUtils_GameUtils_WaitForSceneReadiness.c)) |255/101|Scene mask+callback stack words, event/notifier create/register/wait|
| [EC1920](../../evidence/native/functions/00EC1920_SceneReadyNotifier_Construct.asm) ([actual annotated C](../../evidence/native/functions/00EC1920_SceneReadyNotifier_Construct.c)) |101/21|ECX constructor, event low/high+mask, plain RET0xC|
| [EC26C0](../../evidence/native/functions/00EC26C0_ScriptCore_GameUtils_GameUtils_WaitForFrameEvaluation.asm) ([actual annotated C](../../evidence/native/functions/00EC26C0_ScriptCore_GameUtils_GameUtils_WaitForFrameEvaluation.c)) |222/75|Frame command+event enqueue and callback wait/fallback|
| [EC25F0](../../evidence/native/functions/00EC25F0_FUN_00ec25f0.asm) ([actual annotated C](../../evidence/native/functions/00EC25F0_FUN_00ec25f0.c)) |170/59|Existing generic-named command consumer, event-pair message posting|
| [769390](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.asm) ([actual annotated C](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.c)) |6/2|Global managed interface pointer getter|

Each Listing is paired with the **actual current annotated Ghidra C** at the same
address under evidence/native/pseudocode. They total883 bytes/296 instructions,
with no nonowned gaps in these selected bodies. No manual C normalization or
synthetic replacement source was used. EC10A0 decompiler follows/inlines its tail
target while its physical body remains one JMP. The preserved stored adapter
prototype remains an inference artifact; no unrelated ABI/type metadata was changed.

[The swap slot contract](../bridge/gameutils-load-screen-swap.md) describes original
single-slot overwrite and service/interface null gates. Consumer clears after
dispatch/conditional cleanup, so reentrant replacement may be erased. It does not
prove queue cadence, thread, strong delegate retention or exception handling.
Original pending slot011D9C4C is initial image zero-fill (four bytes), not invented
raw file bytes. Registration records011972E8/C8/C0 are each eight original bytes
and bind Swap/Frame/Scene respectively. 72 bytes at010F31E8 retain the notifier's
observed vtable words; not every pointed target has an admitted function definition.
EC1A30/EC24B0 were observed read-only as adjustor thunks; no scene predicate claim
or new definition follows from them.

Scene wrapper EC1D70 takes mask and callback at physical entry stack+4/+8, obtains
an event64 through host+118, constructs a0x28 notifier carrying event+18/+1C and
mask+20, retains, registers eventB577AA16 with adjusted interface pointers, waits
through host+120 with event64/FFFFFFFF/callback/0, resumes through+11C and releases.
Allocation/constructor failure uses host+130 callback-result fallback. The wrapper
plainRET leaves its own two stack words to the caller. Constructor EC1920 uses
ECX plus three DWORDs and RET0xC. Physical host virtual ABI remains opaque beyond
these proved call sites; odd decompiler stack variables do not define field types.

Frame wrapper EC26C0 takes the callback at entry stack+4 (EBP+8 after prologue),
constructs tag0489122F plus event pair and EC25F0 command callback, enqueues through
693380 and tests AL. Success waits/resumes via+120/+11C; enqueue failure uses+130.
Both branches retain existing conditional result cleanup; final plainRET is not
an x64 host ABI. EC25F0 obtains7693A0 interface, skips null, allocates0x38 and passes
the command's DWORD+8/+C event pair to5ADDC0. It retains a nonnull result, posts
030290F0 through interface+1C, releases and conditionally cleans the local result.
Full scene predicates, detailed-lot wait, virtual scheduler/marshaller/allocator
children and callback execution guarantees remain explicit unresolved boundaries.

## Evidence limits

The selected original controller, transition and native callback paths establish
ordering and physical ABI. Virtual readiness predicates, detailed-lot evaluation,
callback marshalling and scheduler guarantees remain external boundaries. Static
byte/CIL review and a saved clean database do not establish runtime or gameplay
acceptance. The existing adapter's five-byte body and annotated actual C are
retained without changing the original bytes or inferring a global interface type.
