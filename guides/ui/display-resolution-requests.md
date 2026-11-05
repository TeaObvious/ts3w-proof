# Display mode request, notification and original Keep/Revert

## Authority and physical evidence

Original PC1.67 TS3W.exe SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
All twelve pairs below are actual current annotated Ghidra C plus complete owned
Listing ASM, independently byte-matched to the original image. Their total is
4058 bytes/1215 instructions. Complete receiver functions follow actual function boundaries. Original bytes
are unchanged; the annotated database was saved cleanly. Analyst names describe
proved roles rather than recovered original symbols.

| Entry | Actual name | Bytes | Instructions | Pair |
| --- | --- | ---: | ---: | --- |
| `00769390` | GetGlobalInterfacePointer_11D5BBC | 6 | 2 | [C](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.c) / [ASM](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.asm) ([annotated C](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.c)) |
| `007693a0` | FUN_007693a0 | 6 | 2 | [C](../../evidence/native/functions/007693A0_FUN_007693a0.c) / [ASM](../../evidence/native/functions/007693A0_FUN_007693a0.asm) ([annotated C](../../evidence/native/functions/007693A0_FUN_007693a0.c)) |
| `00779a00` | ScriptCore.UIManager::UIManager_SetUICallbacksImpl | 55 | 16 | [C](../../evidence/native/functions/00779A00_ScriptCore_UIManager_UIManager_SetUICallbacksImpl.c) / [ASM](../../evidence/native/functions/00779A00_ScriptCore_UIManager_UIManager_SetUICallbacksImpl.asm) ([annotated C](../../evidence/native/functions/00779A00_ScriptCore_UIManager_UIManager_SetUICallbacksImpl.c)) |
| `0077a220` | FUN_0077a220 | 94 | 27 | [C](../../evidence/native/functions/0077A220_FUN_0077a220.c) / [ASM](../../evidence/native/functions/0077A220_FUN_0077a220.asm) ([annotated C](../../evidence/native/functions/0077A220_FUN_0077a220.c)) |
| `0077d450` | ScriptCore.UIManager::UIManager_SetResolutionImpl | 139 | 55 | [C](../../evidence/native/functions/0077D450_ScriptCore_UIManager_UIManager_SetResolutionImpl.c) / [ASM](../../evidence/native/functions/0077D450_ScriptCore_UIManager_UIManager_SetResolutionImpl.asm) ([annotated C](../../evidence/native/functions/0077D450_ScriptCore_UIManager_UIManager_SetResolutionImpl.c)) |
| `0077d4e0` | UIManager_UpdateResolutionImpl | 148 | 50 | [C](../../evidence/native/functions/0077D4E0_ScriptCore_UIManager_UIManager_UpdateResolutionImpl.c) / [ASM](../../evidence/native/functions/0077D4E0_ScriptCore_UIManager_UIManager_UpdateResolutionImpl.asm) ([annotated C](../../evidence/native/functions/0077D4E0_ScriptCore_UIManager_UIManager_UpdateResolutionImpl.c)) |
| `0077d580` | FUN_0077d580 | 157 | 64 | [C](../../evidence/native/functions/0077D580_FUN_0077d580.c) / [ASM](../../evidence/native/functions/0077D580_FUN_0077d580.asm) ([annotated C](../../evidence/native/functions/0077D580_FUN_0077d580.c)) |
| `007825f0` | UiHost_HandleServiceMessage | 1824 | 440 | [C](../../evidence/native/functions/007825F0_UiHost_HandleServiceMessage.c) / [ASM](../../evidence/native/functions/007825F0_UiHost_HandleServiceMessage.asm) ([annotated C](../../evidence/native/functions/007825F0_UiHost_HandleServiceMessage.c)) |
| `00783a10` | FUN_00783a10 | 356 | 125 | [C](../../evidence/native/functions/00783A10_FUN_00783a10.c) / [ASM](../../evidence/native/functions/00783A10_FUN_00783a10.asm) ([annotated C](../../evidence/native/functions/00783A10_FUN_00783a10.c)) |
| `00783cd0` | FUN_00783cd0 | 347 | 124 | [C](../../evidence/native/functions/00783CD0_FUN_00783cd0.c) / [ASM](../../evidence/native/functions/00783CD0_FUN_00783cd0.asm) ([annotated C](../../evidence/native/functions/00783CD0_FUN_00783cd0.c)) |
| `007f1dd0` | FUN_007f1dd0 | 228 | 76 | [C](../../evidence/native/functions/007F1DD0_FUN_007f1dd0.c) / [ASM](../../evidence/native/functions/007F1DD0_FUN_007f1dd0.asm) ([annotated C](../../evidence/native/functions/007F1DD0_FUN_007f1dd0.c)) |
| `007f1f60` | UiPresentation_HandleDisplayModeMessages | 698 | 234 | [C](../../evidence/native/functions/007F1F60_UiPresentation_HandleDisplayModeMessages.c) / [ASM](../../evidence/native/functions/007F1F60_UiPresentation_HandleDisplayModeMessages.asm) ([annotated C](../../evidence/native/functions/007F1F60_UiPresentation_HandleDisplayModeMessages.c)) |

## Registered producer and message ownership

Registration01163070 binds77D450 to genuine ScriptCore.UIManager SetResolution.
The producer obtains UI service44C4F0; missing service skips. It allocates0x18
UI/SetResolutionMessage, stores raw UInt32 width/height/refresh at+8/+C/+10 and
fourth low-byte fullscreen+14, retains through virtual+4, posts07983246 via
service+1C with message/0/0, releases through virtual+8. Allocation failure still
posts null; no stronger OOM behavior is inferred. Physical stack is four DWORD
slots/plain RET. The preserved stdcall/formal inference is explicitly limited;
the inferred C signature does not establish callee cleanup.

Presentation vtable0101F78C points to7F1F60. This receiver physically uses ECX
plus two DWORD stack slots and RET8/AL status. Event07983246 obtains current
renderer dimensions and replaces each requested FFFFFFFF width/height/refresh;
windowed forces refresh0. It calls7F1DD0 and tests AL. That whole helper resolves
renderer/device, fails if absent or58E920 fails, then updates fullscreen, renderer
dimensions/flags/logical rectangle and public UI extent on success.58E920 is an
external device/backend boundary; selected outer ASM does not establish its
driver error/rollback behavior.

The separate76CBB23D presentation branch performs existing display/window policy,
updates logical UI size and calls77D580 with current device/prior receiver/UI
extent fields, then returns false.77D580 allocates0x30 ChangedResolutionMessage,
calls77A220, retains/posts07983246 via managed-host service and releases. Null
managed host skips, allocation-null post is preserved. Both77A220 and77D580 use
ten stack DWORDs/RET40; constructor EAX is receiver despite old inferred undefined
return. Producer reorders its two four-lane groups into message field order.
The instructions govern these physical inputs and cleanup.

## Managed receiver, callback storage and lifetime

UIHost constructor783CD0 sets secondary vtable0100FBB4 at UIHost+4; slot0100FBB8
points7825F0. It zeroes callbacks/global state and registers five service events,
including07983246. Complete destructor783A10 clears callback slots/global and
unregisters these five events. SetUICallbacks779A00 writes seven supplied words
to UIHost+28/+2C/+30/+34/+38/+3C/+40; no callback is invoked/retained there by this
native body. Existing managed rooting is a separate actual owner.

7825F0 physically uses opaque adjusted ECX(UIHost+4), eventId/payload DWORDs at
entry+4/+8, RET8 and AL status. Missing managed interface returns AL0. Resolution
case reads payload+8/+C/+10/+14,+18/+1C/+20/+24,+28/+2C, converts booleans from
low bytes, builds ten variants with0x20-byte (32-byte) stride. Callback comes from
adjusted receiver+2C=UIHost+30; nonnull callback invokes managed-host+134 with
result area, callback, variant base and count10; result and variants are cleaned,
ALtrue returned. Complete other original event branches remain in the same
export. Their indirect calls retain decompiler stack-inference artifacts; full
ASM is physical authority, not guessed structure types or virtual ABI overrides.

UpdateResolution77D4E0 reads only width/height physically, converts UInt32 to
float via signed FILD plus4294967296 correction and sets nineteen actual category
rectangles to0,0,width,height. It does not perform another display mode change.
Original managed import's refresh/fullscreen formals are not extra body reads.

## Original managed workflow

The [selected original metadata](managed/display-resolution-requests/selected-methods.json)
records the three original PC1.67 S3SA resources (UI from gameplay.package;
SimIFace and ScriptCore from scripts.package), package/envelope/DLL SHA256 and
module MVID once per identity. Method tokens belong to those exact assemblies.
Each selected member retains its original signature blob and decoded signature,
flags, parameters and native import/marshal metadata where present. All nineteen
complete method headers, local signatures and exception sections were rechecked
against the resource-decoded pristine DLLs. The [unmodified complete CIL selection](managed/display-resolution-requests/selected.il.txt)
contains1477CILbytes/452instructions and eleven additional runtime/abstract/import
declarations with no CIL body.

[Actual C# excerpts](managed/display-resolution-requests/actual-csharp-excerpts.txt)
preserve the eight selected UIManager methods, the complete small ResolutionRollback
type and the ten-lane delegate declaration exactly as decompiled. The original
[ScriptCore.UIManager](../../evidence/managed/types/ScriptCore.UIManager.cs),
[ScriptCore.DeviceConfig](../../evidence/managed/types/ScriptCore.DeviceConfig.cs)
and [existing caller IL](../../evidence/managed/callers.il.txt) are reused; they are
not duplicate local type exports. SimIFace.DeviceConfig.SaveOptions is a distinct
boundary body, preserved with its full11-byte CIL/signature; no unavailable C#
rendering is reconstructed or substituted with ScriptCore.DeviceConfig.

UIManager.ChangeResolution forwards four lanes. Its ten-lane callback first
updates native UI layout and scene size, stores the prior mode for restore, then
schedules the original one-shot rollback dialog unless rolling back. A rollback
notification saves options. AcceptResolutionChange calls DeviceConfig.SaveOptions
before clearing rollback. Revert sets rollback before requesting restore.
ResolutionRollback has a15-second modal timeout, button result, Tick unsubscribe
and Stopwatch.Stop; Show includes its original finally/disposal region. UIManager's
static constructor roots seven callbacks; ClearEventRegistry clears the original
registries and supplies seven null callbacks, and Shutdown calls it. No separate
host Keep/Revert implementation is inferred or added.

These static original-method checks do not establish native device/backend error
handling, scheduler/marshaller behavior, base-modal lifetime, the native option-file
writer, or Windows/Linux runtime acceptance. No target assembly was loaded or
executed, and no build, test or gameplay run was performed for this publication.

## Data and evidence limits

The [original dispatch/category data](../../evidence/native/data/display-resolution-dispatch.tsv) retains the four required original spans,96 bytes total. Registration01163070 reuses the existing canonical registration map.

Changed-message vtable0106C91C is exactly12 bytes (three function pointers);
the following string bytes are not part of that vtable. The two receiver slots
above are four bytes each. Registration01163070 is eight bytes. UI layout category
array01162C48 is76 bytes/19DWORDs. All were matched to the same original PE.

Current OpenTS3 admission rejects UInt32Max extents whereas original presentation
supports sentinel substitution. Existing profile overlay grammar, default smoothing
fallback8, once-per-Render queue, close abandonment, Vulkan/GLFW and UI-scale extension
are current host policy; no universal retail parity claim. Runtime backend,
marshaller/scheduler children, original native options writer, modal-base lifetime,
Windows/Linux full-screen acceptance and save/quit/reload remain separate gates.
No build, test, game, target or platform operation was executed for this package.

The resolved CALL index contains102 relative CALLs and three statically resolved PE-IAT CALLs (SystemParametersInfoA, GetWindowRect and MoveWindow). Virtual CALL EAX at77D4B0 has no proved immediate destination; JMP EAX at77D4D2 is a tail transfer. Neither is indexed as a resolved direct CALL.
