# PC 1.67 state controller and quit request

This is the original 32-bit `TS3W.exe`, SHA-256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
The eleven complete existing function bodies below own 913 original bytes and
385 instructions. Stored Ghidra prototypes remain inferred projections; the
physical register, stack and return observations govern this guide.

## Request and pending publication

The existing registered [quit adapter](../../evidence/native/functions/00EC1350_ScriptCore_GameUtils_GameUtils_TransitionToQuitImpl.c)
checks its controller global before calling
[GameState_RequestQuit original instructions](../../evidence/native/functions/00EC5170_GameState_RequestQuit.asm)
([Pseudocode](../../evidence/native/functions/00EC5170_GameState_RequestQuit.c)).
The request allocates eight bytes with the original `Misc/GameState/GameStateQuit`
label, initializes the nonnull result's vtable and zero word, and calls
[SetPending](../../evidence/native/functions/00EC5240_StateController_SetPending.c) with the result or null
and opaque tag `028D869F`. Both normal request paths write **AL=1 only**;
the upper EAX bytes are not normalized. This proves request admission, not
queue completion or eventual process termination.

SetPending uses ECX for the controller and removes two stack words with RET8.
For a different incoming pointer it invokes incoming virtual `+0x0`, publishes
the pending pointer at controller `+0x2C`, invokes old pending virtual `+0x4`,
then publishes tag `+0x30`. The same-pointer path writes only the tag.
Virtual lifetime effects and callback reentry are not established here.
In particular, these calls alone do not prove reference counting.

## Queue and negotiation

[Construct](../../evidence/native/functions/00EC52A0_StateController_Construct.c) initializes the
controller's dispatch word, queue fields and current/pending pointer/tag slots.
[ExchangeDispatchEnabled](../../evidence/native/functions/00EC52F0_StateController_ExchangeDispatchEnabled.c)
normalizes its low-byte input to 0/1, XCHGs the whole dispatch word at `+0x10`,
and returns the previous word in EAX. That exchange does not establish safety
for the pointer/tag pairs, queue or virtual callbacks.

[AppendQueuedState](../../evidence/native/functions/00EC5400_StateController_AppendQueuedState.c) invokes
incoming virtual `+0x0` before capacity work and appends an eight-byte
pointer/tag record. [ProcessQueuedOrPending original instructions](../../evidence/native/functions/00EC5470_StateController_ProcessQueuedOrPending.asm)
([Pseudocode](../../evidence/native/functions/00EC5470_StateController_ProcessQueuedOrPending.c)) first
checks dispatch `+0x10`. A nonempty queue has priority: it takes the **last**
record, publishes current pointer `+0x24`, invokes old current virtual `+0x4`,
publishes tag `+0x28`, decrements the live end, and rereads the record for
nonnull new-state virtual `+0x18(controller,tag)`. It processes one record and
returns; it does not invoke incoming virtual `+0x0` again on this pop.
The retained record address crosses the old callback, so callback-reentry
safety must not be inferred.

With an empty queue, pending-state negotiation uses current and pending
virtual tag-list providers. [FirstCommonNonzero](../../evidence/native/functions/00EC51C0_StateTagLists_FirstCommonNonzero.c)
returns the first nonzero equality in first-list order; zero terminates the
lists and is not an admitted matching tag. Negotiation may invoke CURRENT
virtual `+0x14(controller,currentTag,otherTag)`, or copy only the pointer using
[StatePointerSlots_AssignVirtualLifetime](../../evidence/native/functions/005A9510_StatePointerSlots_AssignVirtualLifetime.c).
That helper takes a source **slot address**, invokes incoming virtual `+0x0`,
assigns the destination slot, then invokes old virtual `+0x4`; EAX returns the
destination slot. It does not copy a tag or clear the pending slot.
Equal current/pending pointers and tags instead clear pending pointer before
its virtual `+0x4`, leaving the pending tag unchanged. The static direct call
through `00EC5550` to AppendQueuedState remains in the original body behind
contradictory ordinary pending-nonnull/current-null conditions; the exported
edge does not establish ordinary reachability. ProcessQueuedOrPending uses
ECX and RET8; the two unused stack words' meanings remain unproved.

## Retirement and the byte writer

[ClearQueuedStates original instructions](../../evidence/native/functions/00EC5200_StateController_ClearQueuedStates.asm)
([Pseudocode](../../evidence/native/functions/00EC5200_StateController_ClearQueuedStates.c)) repeatedly
invokes last-record virtual `+0x4` without a null guard, decrements the live end
and rechecks the live endpoints. Its existing discontiguous body owns 44 bytes:
`00EC5200..00EC520C` and `00EC5210..00EC522E`. The 47-byte linear envelope
retains three unowned alignment bytes `00EC520D..0F`; no body repair is implied.
[Destroy](../../evidence/native/functions/00EC53A0_StateController_Destroy.c) invokes pending then
current virtual `+0x4` without clearing their slots, frees nonnull queue
storage, calls the base, and additionally frees this when `(flags & 1) != 0`.
It does not itself walk queued records. Its EAX returns the original this
address even after optional free. External clear/destroy sequencing and child
failure or unwinding remain open.

[ByteFlag011CEBC4_WriteLowByte original instructions](../../evidence/native/functions/00588BD0_ByteFlag011CEBC4_WriteLowByte.asm)
([Pseudocode](../../evidence/native/functions/00588BD0_ByteFlag011CEBC4_WriteLowByte.c)) copies the
low byte of a stack argument into `011CEBC4` and uses plain RET. This finite
selection establishes no reader, quit-loop break, process-exit mechanism,
neighbor-byte behavior, watchdog deadline, scheduler cadence or thread guarantee.

## Necessary original data

These are pristine PE-backed bytes, not reconstructed structures. Their roles
are limited to the uses visible in the selected instructions.

| Address | Bytes | Direct role |
| --- | --- | --- |
| `010F4CCC` | `00000000 b0514d00 d0ed6400 20a75100 8070ec00 2051ec00 3051ec00 5051ec00` | Constructor's quit-state vtable pointer is `010F4CD0`; the four-byte prefix is retained distinctly. Targets' effects are not inferred from the table. |
| `010F4CEC` | `4d6973632f47616d6553746174652f47616d65537461746551756974` | 28 bytes of the allocation label `Misc/GameState/GameStateQuit`; this row does not include a terminator. |
| `010F5770` | `82688d02 00000000` | Zero-terminated tag-list bytes retained for comparison; no enum meaning inferred. |
| `010F4D5C` | `7054ec00` | Controller vtable `+0x20` points to ProcessQueuedOrPending `00EC5470`. |

The [native index](../../evidence/native/code-index.tsv) joins each complete
annotated C export to its single original-byte-bearing instruction listing.
The [direct-call index](../../evidence/native/direct-calls.tsv) records direct
E8 edges only; virtual and computed destinations remain outside that index.
