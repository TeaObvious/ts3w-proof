# Original layout and retained-window references

Static original PC 1.67 evidence. Names describe analyst-assigned roles or existing genuine binding identities. Complete physical instruction/ABI/producer/consumer comparison is distinct from original runtime execution or finalizer timing. Reference binary and pristine managed assembly identities belong to the central evidence indices.

| Entry | Established role | Original pair |
| --- | --- | --- |
| `0077f7e0` | complete two-word retained export bridge | [ASM](../../evidence/native/functions/0077F7E0_ScriptCore_UIManager_UIManager_GetWindowByExportIDImpl.asm) ([pseudocode](../../evidence/native/functions/0077F7E0_ScriptCore_UIManager_UIManager_GetWindowByExportIDImpl.c)) |
| `0077a820` | complete layout handle consumption and actual reference finalization | [ASM](../../evidence/native/functions/0077A820_ScriptCore_UIManager_UIManager_DestroyLayoutImpl.asm) ([pseudocode](../../evidence/native/functions/0077A820_ScriptCore_UIManager_UIManager_DestroyLayoutImpl.c)) |
| `007796e0` | complete shared Window/Drawable/Image/HitMask release binding | [ASM](../../evidence/native/functions/007796E0_ScriptCore_UIManager_UIManager_DestroyDrawableImpl.asm) ([pseudocode](../../evidence/native/functions/007796E0_ScriptCore_UIManager_UIManager_DestroyDrawableImpl.c)) |
| `0076a7a0` | complete typed-registration decrement and saved-pointer return | [ASM](../../evidence/native/functions/0076A7A0_ScriptHandle_ReleaseRegistration.asm) ([pseudocode](../../evidence/native/functions/0076A7A0_ScriptHandle_ReleaseRegistration.c)) |
| `0076aad0` | reused complete typed pointer registration producer | [ASM](../../evidence/native/functions/0076AAD0_ScriptHandle_RegisterTypedPointer.asm) ([pseudocode](../../evidence/native/functions/0076AAD0_ScriptHandle_RegisterTypedPointer.c)) |
| `0076a590` | reused complete borrowed typed pointer lookup | [ASM](../../evidence/native/functions/0076A590_ScriptHandle_FindPublishedPointer.asm) ([pseudocode](../../evidence/native/functions/0076A590_ScriptHandle_FindPublishedPointer.c)) |

## Actual global interface and typed registry

The existing [bootstrap/interface reference](../bridge/native-script-object-lifecycle-boundaries.md) identifies global011D5BBC as the actual constructed object+8 and its main vtable0108C6D0. Its constructor excerpt is a bounded producer prefix, not a claimed complete constructor or full object-lifetime reconstruction. The [three necessary actual vtable words](../../evidence/native/data/ui-layout-residency.txt) join this table's+0xC8/+0xCC/+0xD8 to0076AAD0/0076A590/0076A7A0. No unrelated neighboring table bytes are included.

RegisterTypedPointer receives ECX registry, pointer DWORD and type DWORD with RET8. Under critical section+0x9F0 it selects/creates the type bucket, reuses a reverse pointer mapping and increments its forward registration count, or produces a unique low24-bit handle combined with type<<24 and publishes pointer/count1 plus reverse mapping. Type0x30 is supplied by the UI bridge. FindPublishedPointer receives one UInt32 numeric handle/RET4, selects its unsigned high-byte bucket and returns the row pointer DWORD or0. That lookup does not acquire an object reference.

ReleaseRegistration receives ECX registry plus one numeric UInt32 handle, ends in RET4 and returns its saved pointer DWORD in EAX or0 when missing. It decrements the forward row+8 count; at zero it removes forward and reverse entries. A valid release whose row remains still returns the saved pointer. No object virtual Release is performed inside this registry algorithm. Existing SACS/event-queue annotations and both known vtable joins remain; this UI evidence does not relabel every typed registry user as a window.

## Retained GetWindowByExportID

The complete bridge body occupies0077F7E0..0077F877; following INT3 is excluded. Its caller-clean inputs are UInt32 layout handle and signed Int32 exportID. With8 local bytes and two saved registers, original ESP+0x14 reads layout and ESP+0x18 reads the second input. The original second argument is physically present even when actual decompilation aliases its local address or omits it in a map-call expression.

It requires handle high byte0x30, resolves the actual layout through service+0xCC and searches that layout's real export map at+0x44 using00A5B9B0. Missing iterator or null stored object returns0. A found actual object receives virtual0 acquisition, then virtual+0x0C is queried for IWindow0xEEEE8218. Its returned pointer is registered as type0x30 through service+0xC8. PUSH0x30 before the query is the later typed-registration argument; it is not a second QueryInterface input. Actual annotated C preserves the decompiler's unresolved indirect-call/stack aliases; original PUSH/MOV/RET remain authoritative. No unrelated map/callee prototype was guessed to make the C cleaner.

A returned native reference belongs to this acquisition independently of whether managed code creates a new wrapper or returns one already cached. Layout disposal and returned window disposal are separate consumers. The bridge adds no unsigned export-ID range filter or current authored-map/fallback-map precedence policy.

## Shared window release and layout destruction

007796E0 is genuinely registered for DestroyWindow, DestroyDrawable, DestroyUIImage and DestroyUIHitMask. Its complete one-word cdecl body ends at00779717; following padding and routine00779720 are excluded. It rejects a null global service or wrong handle kind, consumes a typed registration through service+0xD8, and tail-calls returned object's virtual+4 Release when nonnull. Every valid saved-pointer return reaches that object operation, including a release whose forward registration row still exists. Typed registration counts and actual object reference counts must remain distinct.

0077A820 similarly takes one UInt32 caller-clean word, guards service/kind/pointer and consumes the typed registration. For the selected returned actual layout it forms interface object+0xA0, decrements DWORD interface+4 (object+0xA4), and at zero restores1 before calling interface virtual0 with argument1. Plain RET ends0077A86E, before INT3. The selected derived destructor/finalizer behind that virtual slot is a separate static boundary; this bridge does not describe a CLR released-layout dictionary or attachment-based collection policy.

The [actual hosted-layout shutdown reference](window-subtree-lifetime.md) separately proves root destruction before retained-root release and final clear/release of the retained host. The [event reference](window-event-lifetime.md) proves real retained event receivers and original managed release consumption. Those separate native producers/consumers are not replaced by a shared numerical counter merely because each uses the word reference.

## Original managed lifetime consumer

[Actual managed members](../../evidence/managed/selected/ui-layout-retention/layout-retention.cs.txt) ([complete original CIL](../../evidence/managed/selected/ui-layout-retention/layout-retention.il.txt)) establish13 complete selected methods totaling689 CIL bytes, with raw headers and the Layout finalizer's complete exception section.

Layout stores its uint handle and separately forwards GetWindowByExportID and Shutdown. Dispose(bool) checks nonzero, calls UIManager.DestroyLayout, then clears its handle. A throwing call skips that clear. Successful non-finalizer disposal suppresses finalization; Finalize invokes Dispose(true) and finally Object.Finalize. UIManager forwards layout/window handles to original IUIManager.

WrapperFromHandle queries custom identity and original class maps. It creates a custom wrapper when appropriate or consumes the extra reference when returning an existing cached custom instance. RetrieveWindowInstance similarly uses original pools/constructors and consumes the extra returned reference when an existing cached wrapper is selected. A popped pooled wrapper follows the new-acquisition branch: Revive installs its incoming handle, then the wrapper is cached and subscribed; it skips that cached-wrapper DestroyWindow release. These caches, pools, custom constructors and script disposal policies remain original managed code, not inferred native registry data.

## Coverage and limits

Four refreshed complete native pairs contain175 Listing instructions and482 owned/envelope bytes with no gaps.12 necessary table bytes and all11 direct E8 operands were checked against the pristine executable. Existing two complete registry pairs are reused without duplicate publication. Canonical C is actual annotated Ghidra output; prior binding/SACS annotations remain. The database was saved clean with unchanged original bytes.

This evidence closes selected bridge argument counts, return values, ownership transfer and typed-registration/object-reference distinction. Full actual layout destructor, all retained UI handle producers, native scheduler/finalizer races and user-visible lifecycle acceptance remain explicit further boundaries. Original runtime execution and measured contention/GC behavior are not claimed. Current project migration history, local reports and scripts do not belong to this original-only guide.
