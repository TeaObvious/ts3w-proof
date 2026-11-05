# Hosted driver reset invalidates published handles

PC 1.67 TS3W.exe; analyst names describe reviewed instructions, not recovered
symbols. No runtime execution is claimed by this static reference.

## Selected functions and the bounded import extent

| Entry | Canonical evidence |
| --- | --- |
| 00767BB0 StopAllAnimation import | [ASM](../../evidence/native/functions/00767BB0_ScriptCore_SACS__SACS_StopAllAnimationImpl.asm) ([annotated C](../../evidence/native/functions/00767BB0_ScriptCore_SACS__SACS_StopAllAnimationImpl.c)) |
| 0094D490 component reset and drain | [ASM](../../evidence/native/functions/0094D490_SacsComponent_ResetAndUnpublishDrivers.asm) ([annotated C](../../evidence/native/functions/0094D490_SacsComponent_ResetAndUnpublishDrivers.c)) |
| 0094D320 component row drain | [ASM](../../evidence/native/functions/0094D320_SACS_ComponentReleaseDriverRows_94D320.asm) ([annotated C](../../evidence/native/functions/0094D320_SACS_ComponentReleaseDriverRows_94D320.c)) |
| 0076A6D0 unpublish typed pointer | [ASM](../../evidence/native/functions/0076A6D0_ScriptHandle_UnpublishTypedPointer.asm) ([annotated C](../../evidence/native/functions/0076A6D0_ScriptHandle_UnpublishTypedPointer.c)) |
| 0076A590 resolve published handle | [ASM](../../evidence/native/functions/0076A590_ScriptHandle_FindPublishedPointer.asm) ([annotated C](../../evidence/native/functions/0076A590_ScriptHandle_FindPublishedPointer.c)) |
| 0076AAD0 register typed pointer | [ASM](../../evidence/native/functions/0076AAD0_ScriptHandle_RegisterTypedPointer.asm) ([annotated C](../../evidence/native/functions/0076AAD0_ScriptHandle_RegisterTypedPointer.c)) |
| 00767480 queue validity import | [ASM](../../evidence/native/functions/00767480_ScriptCore_SACS__SACS_IsEventQueueValidImpl.asm) ([annotated C](../../evidence/native/functions/00767480_ScriptCore_SACS__SACS_IsEventQueueValidImpl.c)) |
| 007FFF70 detach driver listeners | [ASM](../../evidence/native/functions/007FFF70_SacsDriver_DetachControllerListeners.asm) ([annotated C](../../evidence/native/functions/007FFF70_SacsDriver_DetachControllerListeners.c)) |
| 0076A7A0 release temporary registration | [ASM](../../evidence/native/functions/0076A7A0_ScriptHandle_ReleaseRegistration.asm) ([annotated C](../../evidence/native/functions/0076A7A0_ScriptHandle_ReleaseRegistration.c)) |
| 00766F90 set queue import | [ASM](../../evidence/native/functions/00766F90_ScriptCore_SACS__SACS_SetEventQueueImpl.asm) ([annotated C](../../evidence/native/functions/00766F90_ScriptCore_SACS__SACS_SetEventQueueImpl.c)) |
| 007FFFA0 retain queue pointer | [ASM](../../evidence/native/functions/007FFFA0_SacsDriver_SetRetainedEventQueue.asm) ([annotated C](../../evidence/native/functions/007FFFA0_SacsDriver_SetRetainedEventQueue.c)) |
| 00805770 detach controller receipts | [ASM](../../evidence/native/functions/00805770_SacsListener_DetachRegisteredControllers.asm) ([annotated C](../../evidence/native/functions/00805770_SacsListener_DetachRegisteredControllers.c)) |

## Producer, state changes and consumers

The StopAllAnimation import resolves the host's SACS component and calls
0094D490. That function resets all nonnull driver rows through 00800FB0, then
pushes zero and calls 0094D320. It does not finish after walker reset.

The drain detaches listeners, releases the component's intrusive reference, and,
when another reference remains, calls global interface virtual +D4 with the
driver pointer and type 0x20. A successful unpublish is followed by another
intrusive release. It clears the component end to begin. A stale numeric script
handle does not keep its pointer published.

The virtual target is established by these original PE data words:

| Vtable base | +C8 register | +CC lookup | +D4 unpublish |
| --- | --- | --- | --- |
| 01008960 | 01008A28 → 0076AAD0 | 01008A2C → 0076A590 | 01008A34 → 0076A6D0 |
| 0108C6D0 | 0108C798 → 0076AAD0 | 0108C79C → 0076A590 | 0108C7A4 → 0076A6D0 |

Unpublish locks registry+9F0, selects the low-byte type bucket, finds the reverse
pointer-to-handle entry, erases it, then clears forward handle-row+4 to zero.
It does not wait for the registration count to become zero. Lookup selects the
type from the handle's unsigned high byte and reads that pointer, so an existing
row with a cleared pointer resolves null. Register may instead reuse a live
reverse mapping and increment its count; explicit unpublish remains distinct.

The queue-validity import first resolves the driver via +CC. For a live driver
it passes its retained +12C queue pointer to +C8 registration with type 0x22,
then releases the temporary numeric registration through +D8 (0076A7A0). This
is not a lookup of a saved numeric queue ID. 00766F90 resolves driver and queue
handles separately; 007FFFA0 retains the new pointer and releases the old pointer.
0076A7A0 decrements the registration count and erases forward/reverse rows only
at zero, unlike explicit pointer unpublication. Thus hosted reset/drain makes the
validity query false at its first driver lookup. Complete native queue ownership
is distinct from storing a local callback handle.

007FFF70 enumerates wrapper listeners and 00805770 detaches their controller
receipts, resolving/retaining objects where possible and otherwise using the
stored controller pointer. These functions do not clear a queue field; handle
invalidation comes from the separate registry operation above.

## Widths, ABI and bounds

Handle and pointer map fields are 32-bit; type selection is one byte. Unpublish
consumes two physical stack words (RET8), lookup one (RET4). Boolean results
define AL, not all of EAX. Component drain consumes a physical word (RET4)
omitted by its simplified stored prototype. The import's simplified prototype
does not establish its two-word ObjectGuid ABI.

The selected functions, owned instruction ranges and envelope bytes were checked
against the pristine executable before export. Complete generic map internals,
all external reference owners, callbacks reentering component traversal, and
concurrent manager mutation remain outside this bounded result.


## Corrected import evidence qualification and failure ordering

The prior heading incorrectly included767BB0 among complete Ghidra bodies.
Fresh readonly metadata remainsONEBYTE[767BB0,767BB0] and its Listing has0owned
instructions. That metadata has not been repaired or promoted. Paired ASM now
retains a necessary independent original179byte/73instruction CFG window,
GhidrAssist get_data_at byte-matched to pristine PE, excluding13CCpadding and
next routine. All non-call branches stay within it and3plainRET paths close.
No completed export script was rerun, noDBmutator/analysis/prototype repair/save.

Two caller-cleaned GUID words feed937F80; missing object returnsEAXFFFFFFF7 at
767C2D..34. A found object is retained. SACS token11EA0F0 ->94D490 happens first,
then Animation token11DD484. Animation absence releases object and returns
FFFFFFF8 at767C25..2C; successful reset can precede that failure. Animation
interface+8 virtual18 occurs before ordinary release and EAX0 at767C5E..62.
Only the physical instructions establish this ABI/result/order, not stored C.

Current raw host clears rig/interruptibility caches then scene StopObjectAnimations
and always0, including missing objects. New English Bug443 records two actual
compiled public calls returning0 where original expects-9; no game/timeout/
save/GPU acceptance. Product fix needs actual object/component witness and must
preserve partial reset-before-missingAnimation failure, not blanket prevalidation.
