# Window trigger hooks and color-swatch resource loading

This guide describes selected original PC 1.67 code, not the complete UI input
or resource-provider system. Names below are descriptive analyst labels. Inferred
Ghidra signatures remain unchanged; physical stack reads, AL tests and original
instructions govern the qualified ABI observations.

## Trigger registry and delivery

The original Add/Remove/Activate/Deactivate registration targets retain their
existing proof pages. Their window-handle/interface bridge reaches these helpers:

| Operation | Complete selected original body |
| --- | --- |
| Register window hook | [0x007F1250 ASM](../../evidence/native/functions/007F1250_UiTriggerHooks_RegisterWindowHook.asm) ([pseudocode](../../evidence/native/functions/007F1250_UiTriggerHooks_RegisterWindowHook.c)) |
| Activate by handle | [0x007F0E50 ASM](../../evidence/native/functions/007F0E50_UiTriggerHooks_ActivateByHandle.asm) ([pseudocode](../../evidence/native/functions/007F0E50_UiTriggerHooks_ActivateByHandle.c)) |
| Deactivate by handle | [0x007F0EC0 ASM](../../evidence/native/functions/007F0EC0_UiTriggerHooks_DeactivateByHandle.asm) ([pseudocode](../../evidence/native/functions/007F0EC0_UiTriggerHooks_DeactivateByHandle.c)) |
| Remove by handle | [0x007F12F0 ASM](../../evidence/native/functions/007F12F0_UiTriggerHooks_RemoveByHandle.asm) ([pseudocode](../../evidence/native/functions/007F12F0_UiTriggerHooks_RemoveByHandle.c)) |
| Build and dispatch a window record | [0x007F0150 ASM](../../evidence/native/functions/007F0150_UiTriggerHooks_BuildAndDispatchWindowRecord.asm) ([pseudocode](../../evidence/native/functions/007F0150_UiTriggerHooks_BuildAndDispatchWindowRecord.c)) |

Registration uses the receiver's allocator at +0x3C0 and initializer 0x007F1090,
adds bit mask 0x10 to supplied low-byte flags, then registers a window notification
through virtual + 0x108 with receiver + 0x3D0. Mode 1 additionally registers receiver +
0x3D4, queries window virtual + 0x14 then returned-object virtual + 0x54 with literal 2,
and activates only if the returned interface equals the window. Literal2 does
not identify an InputContext enum or prove the full focus transition policy.
The function uses ECX plus six stack DWORD slots and RET 0x18, returning a handle
or zero; initializer failure is tested in AL before registration.

Activate/deactivate/remove enter the same receiver + 0x380 critical section and
look up the supplied stack handle in the receiver + 0x10 table. The first two call
distinct helpers 0x007F01B0/0x007F0210 on success. Removal deactivates, tests bit
mask 0x10 in the found record's byte at + 0x18, unregisters both receiver + 0x3D0/+0x3D4
notifications through the window's virtual + 0x10C when set, then erases the entry.
These three physical paths use ECX plus one stack DWORD/RET 0x4 despite inferred
one-parameter fastcall signatures. Success/failure defines AL only, not all EAX.

The record dispatcher takes three stack values with caller cleanup. A null third
window returns. Otherwise it builds a stack record from the first two values,
asks the window for its system through virtual + 0x14, then invokes system virtual +
0x10 with the same window twice, the record and zero. The record builder's field
mapping and system dispatch/handled/queue policy are not established by this
body. Nor do the selected registry helpers establish exact priority/tie ordering,
modifier matching, held-input storage, release/focus-loss delivery or notification
handler behavior. Those remain concrete producer/consumer boundaries.

## Color resource factory and reader

| Operation | Complete selected original body |
| --- | --- |
| Allocate, zero and load resource | [0x007E2AC0 ASM](../../evidence/native/functions/007E2AC0_ColorPickerSwatches_AllocateAndLoadResource.asm) ([pseudocode](../../evidence/native/functions/007E2AC0_ColorPickerSwatches_AllocateAndLoadResource.c)) |
| Read source into colors | [0x007E28E0 ASM](../../evidence/native/functions/007E28E0_ColorPickerSwatches_ReadResource.asm) ([pseudocode](../../evidence/native/functions/007E28E0_ColorPickerSwatches_ReadResource.c)) |
| Read UInt32 array by byte order | [0x004DD9D0 ASM](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.asm) ([pseudocode](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.c)) |

The factory allocates 0x1B8 bytes, initializes the resource header/vtable, and zeros
0x190 bytes at + 0x28: decimal 100 UInt32 colors. With a source it invokes the factory
receiver virtual + 0x24, tests AL, and only on success writes the resource pointer
to the output. Load failure invokes resource virtual + 0x4. A null-source path
publishes the initialized resource without invoking the reader. Allocation failure
calls source virtual + 0x20; that branch does not establish null-source safety.
The factory uses an ECX receiver and four stack DWORD slots, RET 0x10, AL status.

The resource reader first copies the source key header, then tests resource type
0x2F7D0004. Its image path uses the existing decoded-image service and caps width
and height at decimal 10. It writes row-major colors with row stride decimal 10,
uses three bytes from helper 0x00444160 and forces alpha to 0xFF. The factory's
zeroed storage preserves unwritten colors. Precise helper channel interpretation,
image admission and decode/provider internals remain unproved here.

The other-type branch asks source virtual + 0x18 for a stream. **Null stream locally
skips the UInt32 read, calls source virtual + 0x20 and returns AL = 1.** This is a
verified local branch, not proof that any particular provider can return null,
that a failed raw resource must try PNG, or that a host's null/error policy is
identical. With a nonnull stream, the reader constructs byte order 1 and requests
decimal 100 words. Failed accumulated status calls the source completion method
and returns AL = 0. The reader physically pops four stack DWORD slots via RET 0x10,
although the inferred C prototype exposes two parameters.

The word reader requests count * 4 bytes through stream virtual + 0x30 and compares
the returned byte count. Mismatch returns AL = 0. Exact reads compare the fourth
stack DWORD with 1: literal 1 skips conversion; any other value byte-swaps each
word. This establishes the successful little-endian payload under literal 1 on
x86. It does not supply a complete provider/failure or codec contract. Its actual
cdecl four arguments are not all represented by the inferred three-parameter
prototype; upper EAX is not a defined Boolean.

## Existing color wrapper and fallback limits

The existing [0x0077E8C0 bounded ASM window](../../evidence/native/functions/0077E8C0_ScriptCore_UIManager_UIManager_GetColorPickerSwatchesImpl.asm)
([pseudocode](../../evidence/native/functions/0077E8C0_ScriptCore_UIManager_UIManager_GetColorPickerSwatchesImpl.c)) remains a distinct
bounded export. Its current Ghidra function definition covers one byte, despite
the separately authenticated 752-byte original window. No repaired body extent or
fresh full C/ASM pair is claimed for it.

The window's original byte path identifies resource type 0xE6E34048 with source
0x2F7D0004 and the supplied id, and the fallback seed table at 0x01162D68. For each
of ten seeds the arithmetic emits the seed followed by nine channel subtractions
of floor(seedChannel/10), forcing alpha. The necessary 40 original seed bytes are
retained as a [selected original data excerpt](../../evidence/native/ui-trigger-color-support-data.tsv).
Resource-cache precedence/generations, complete stream/image error propagation,
native handle retirement and original UI callback scheduling are outside these
eight bodies. No decoder internals or runtime/pixel acceptance is inferred.
