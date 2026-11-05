# Native Button press, capture and Click dispatch

This is static PC1.67 analysis of pristine TS3W.exe, identified in the central
[reference overview](../../references/retained-proof-overview.md). Names are analyst responsibility labels,
not recovered symbols. No game/UI input or original runtime was executed.

## Canonical complete bodies and ABI

All nine pairs retain full original instructions and actual annotated Ghidra C.
The instruction ABI is authoritative where indirect calls or reused stack event
records are misprojected by the decompiler. The six handler Boolean returns define AL only;
unspecified upper EAX is not a full-DWORD return contract. The three producers return void.
The nine complete bodies contain377 Listing instructions/1053 owned bytes; the
necessary descriptor/vtable selection adds256 original bytes. No alignment bytes
are included in these contiguous function bodies.

| Entry/name | Complete paired evidence | Instruction ABI |
| --- | --- | --- |
| 005181f0 UiButton_HandleTriggerPress | [ASM](../../evidence/native/functions/005181F0_UiButton_HandleTriggerPress.asm) ([C](../../evidence/native/functions/005181F0_UiButton_HandleTriggerPress.c)) | ECX complete Button; three DWORDs; RET0C |
| 00518250 UiButton_HandleTriggerRelease | [ASM](../../evidence/native/functions/00518250_UiButton_HandleTriggerRelease.asm) ([C](../../evidence/native/functions/00518250_UiButton_HandleTriggerRelease.c)) | ECX complete Button; three DWORDs; RET0C |
| 005182b0 UiButton_HandleCapturePress | [ASM](../../evidence/native/functions/005182B0_UiButton_HandleCapturePress.asm) ([C](../../evidence/native/functions/005182B0_UiButton_HandleCapturePress.c)) | ECX complete Button; four opaque DWORDs; RET10 |
| 00518320 UiButton_HandleCaptureRelease | [ASM](../../evidence/native/functions/00518320_UiButton_HandleCaptureRelease.asm) ([C](../../evidence/native/functions/00518320_UiButton_HandleCaptureRelease.c)) | ECX complete Button; four opaque DWORDs; RET10 |
| 00518390 UiButton_HandleTrackedWindowChange | [ASM](../../evidence/native/functions/00518390_UiButton_HandleTrackedWindowChange.asm) ([C](../../evidence/native/functions/00518390_UiButton_HandleTrackedWindowChange.c)) | ECX complete Button; context/pointer; RET8 |
| 005189a0 UiButton_ActivateAndDispatchClick | [ASM](../../evidence/native/functions/005189A0_UiButton_ActivateAndDispatchClick.asm) ([C](../../evidence/native/functions/005189A0_UiButton_ActivateAndDispatchClick.c)) | ECX complete Button; no stack inputs; RET |
| 00517fb0 UiButton_UpdateStateFlags | [ASM](../../evidence/native/functions/00517FB0_UiButton_UpdateStateFlags.asm) ([C](../../evidence/native/functions/00517FB0_UiButton_UpdateStateFlags.c)) | ECX Button interface+250; mask/low-byte Boolean; RET8; void |
| 005187e0 UiButton_ReplaceStateAndMarkDirty | [ASM](../../evidence/native/functions/005187E0_UiButton_ReplaceStateAndMarkDirty.asm) ([C](../../evidence/native/functions/005187E0_UiButton_ReplaceStateAndMarkDirty.c)) | ECX Button interface+250; stateDWORD; RET4; void |
| 00513e10 UiWindow_PublishControlStateWord | [ASM](../../evidence/native/functions/00513E10_UiWindow_PublishControlStateWord.asm) ([C](../../evidence/native/functions/00513E10_UiWindow_PublishControlStateWord.c)) | ECX IWindow+4; stateDWORD; RET4; void |

The [necessary descriptor/vtable bytes](../../evidence/native/data/ui-button-descriptor-vtables.txt)
retain Button descriptorFBC1D0 (classEEEFE2C3, size2E0 and property-table pointer),
the concrete primary tableFBC418 and Button-interface tableFBC278, plus concrete IWindow+5C entryFBC34C. Primary slots
30/34/3C/40/5C/A4 select the six entries in table order. The independent pristine
[managed selection](../../evidence/managed/selected/ui-authored-surface/authored-ui-properties-and-button-events.cs.txt)
([complete selected CIL](../../evidence/managed/selected/ui-authored-surface/authored-ui-properties-and-button-events.il.txt))
identifies Button.Click287259F6, standard/toggle/radio types1/2/3, Button state
bits1/2/4/8/10hex and Window.Enabled flag2. WindowBase Caption, TextStyle and
Text.TextColor property IDs are retained for the separate presentation comparison;
those forwarding members do not implement the native input state machine.

## Trigger press/release

005181F0 and00518250 load the first of three stack DWORDs, reject0, and compare it
**signed** against2. Values >=2 require the second word7D8; the third word is
unused by these bodies. A negative nonzero first word therefore bypasses the7D8
gate; an unsigned comparison would differ. Rejection returns AL0. Accepted Press when Depressed2 is
clear requests mask2/value1 through Button+250 virtual28; after that setter it
reads complete+25C bit1 and invokes primary virtualA4 when set. Accepted Release
when depressed requests clear and activates only when the bit is clear. Already
set/clear states bypass both operations. Accepted paths return AL1. The original
upstream event classification of these two slots is not inferred as a specific
key/character/mouse event from constants alone.

## Capture press/release

005182B0 queries service complete+30 virtual60(context1). When the result differs
from complete+4, virtual64(1,this+4,0) acquires capture. Only after this call does
it reload state+78 and request Depressed2 on when depressed is clear and
Highlighted8 is set. The live+25C bit1 then chooses activation on press.
00518320 releases through virtual68(1,this+4,0) only when capture identity matches,
then reloads depressed state independently of that match. When depressed it
requests clear and activates on release when+25C bit1 is clear. Both handlers pop
four opaque stack words and return AL1, without directly consuming their values.
Local Enabled, button-number or pointer-coordinate gates are absent from these
selected bodies; dispatcher admission remains a separate boundary.

## Tracked identity and state publication

00518390 receives context and tracked native-interface pointer. For context1,
matching this+4 requests Highlighted8 on, then queries capture and requests
Depressed2 according to current capture identity. A mismatch requests Highlighted8
off then Depressed2 off. Other context values request Active10hex according to
identity; after that setter callback a mismatch requests Depressed2 off. It uses
SETZ AL then PUSH EAX at two indirect setter sites: high24 bits remain whatever
EAX previously held. The concrete00517FB0 setter tests only the value low byte at
stack+8, so those upper bits do not affect its set/clear decision.
All normal exits return AL1 and RET8. Dynamic setters are not assumed to be
side-effect-free bit stores.

## Concrete state writer, notification and dirty latch

The actual Button-interface+28 target00517FB0 reads state at interface-1D8 =
complete+78 and compares only the low byte of its second stack slot against0.
Nonzero ORs the mask; zero ANDs its inverse. This confirms correct handling of
SETZ/PUSH EAX and the toggle argument's retained upper bits. It passes the full
result to interface+24/005187E0 without an equality gate of its own.

005187E0 compares the supplied full word with current complete+78. Equal skips
all work. A change invokes IWindow+5C/00513E10; only after that callback chain does
it reread dirty latch complete+254. If clear it stores1 **before** IWindow+74(8,1).
Callbacks may change state/latch; neither is assumed unchanged across dispatch.

00513E10 compares old IWindow+74 (=complete+78), writes the new state first, then
submits event12 carrying new and old words through IWindow+118. **After** callback
it reads IWindow+200 (=complete+204) and invokes virtual90 invalidation when nonzero.
There is no rollback, post-callback equality recheck or pure-bit-store equivalence.
Unknown event-prefix fields and dynamic recipients remain unclaimed.

## Activation and two ordered events

005189A0 queries IWindow flags through this+4 virtual28 and tests Enabled2 in AL.
Disabled skips event work but still returns AL1. Enabled toggle type2 requests
Selected4 inversion before Click; radio type3 requests selected1. The toggle's
SHR/NOT DL/AND EDX,FFFFFF01 retains upper argument bits; only its intended low
state bit is normalized by these instructions.

The first event uses ID287259F6, command-ID complete+3C or control-ID+38 fallback,
a handle from IWindow virtual20, and current Selected4. It is submitted through
IWindow virtual118. **After this call** the function rereads type and selected
state. Types2/3 form a second event17 with raw command ID, zero word and selected;
other types form event16 with raw command ID. It dispatches again through118.
The second event does not apply the first event's control-ID fallback.

Ghidra may alias/omit second stack-record stores in the actual C. The annotations
state that defect; the C is exported unchanged rather than hand edited. Instruction
order and stack stores govern the contract. No managed delegate Boolean is used
to determine this native AL1 result. Event-header fields not initialized in the
selected body and concrete event-recipient behavior are not invented.

## Boundaries

This proves selected native state requests, admission, ABI and dispatch order.
It does not complete service capture internals, external handler side effects, full native dispatcher routing, modal/focus policy,
resource retirement, radio-group synchronization or rendering of every button
state. The managed property/event wrappers establish API identities, not those
indirect implementations. No runtime or concurrency result is claimed.
