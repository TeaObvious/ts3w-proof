# Floor-pattern message inputs and bounded delivery

The original upper-quarter refresh produces event `0431BFC9`. The captured
message service queues its payload, and a separate pump removes queued records
before dispatching. A floor receiver can then apply the event immediately or
retain it in a second, independent queue. The payload's atomic reference
operations and these local retention paths are established.

The complete outer broadcast body `44D5F0` and the construction of the compared
owner-ID pair remain unresolved. This page therefore supplies a bounded static
join, not a claim that every produced message reaches or updates a renderer.
No original game execution, rendered result or delivery timing was observed.
Reference identity: [original PC 1.67 `ts3w-pc-1.67`](../../evidence/reference.json).

## Captured bodies and static bindings

The [address/name index](../../indexes/floor-pattern-message-delivery.tsv)
resolves **19 complete stored body unions**, containing **5,563 owned bytes and
1,834 instruction starts**, to one canonical ASM/C pair each. Nine nonowned
alignment bytes in `AA3890` and eight in `AA0640` are excluded. Their exact original bytes are
`AA3A27..AA3A2F = 8d a4 24 00 00 00 00 8b ff` and
`AA06B8..AA06BF = 8d a4 24 00 00 00 00 90`; these alignment
no-ops belong to the capture envelopes and are not counted as owned instructions.
The stored body unions describe current Ghidra ownership; they do not establish
that every actual incoming target or undiscovered code region is defined. These are
analyst-assigned names, except that the two existing reviewed floor-event names
are retained. No function boundaries or inferred signatures were changed.
[Source mapping](../../indexes/floor-pattern-message-delivery-sources.tsv)
distinguishes reused reviewed bodies from newly captured original functions.

All 17 new names, 17 function comments and 39 instruction comments were read
back from the existing Ghidra session. The two previously reviewed names and
function plates are retained. The explicit project save reported `saved_files=1`;
no close/reopen persistence test was performed. Original bytes, existing body
boundaries and signature types remain unchanged.

| Responsibility | Concrete bodies |
| --- | --- |
| Dispatcher pointer, construction, registration, queue insertion and pumping | `44C500`, `44CCC0`, `44C640`, `44CF30`, `44CC20`, `44D070`, `44D1C0` |
| Retained eight-byte event records | `C1EC20`, `A6CA70` |
| Shared atomic reference operations | `EC1C10`, `69EE30` |
| Floor owner registration, receiver state, room IDs, input routing and local flush | `AA0640`, `AA3080`, `AA36A0`, `AA1F70`, `AA4350`, `AA3890`, `AA42D0` |
| Conditional pooled-message destruction | `B94770` |

The [original binding data](../../evidence/native/messaging/floor-message-bindings.tsv)
retains selected dispatcher, listener and payload vtable slots and all 18
subscription IDs. It is not a live object snapshot. The physical slots matter:

| Construction/data owner | Slot | Original target | Meaning and limit |
| --- | --- | --- | --- |
| Dispatcher table `00FA2B00`, installed by `44CCC0` | `+1C` | `44CF30` | Queue a message, rather than immediately invoke listeners. |
| Same table | `+24` / `+44` | `44C640` / `44D070` | Build a listener record, then insert it under the exact event ID. |
| Same table | `+38` | `44D1C0` | Pump queued messages. |
| Same table | `+18` | `44D5F0` | Broadcast/target delivery entry; its current Ghidra definition is unavailable. |
| Floor listener table `01064B9C`, installed by `AA3080` | `+4` | `AA4350` | Floor-event callback for the exact registered receiver pointer. |
| Floor payload table `01065F8C`, installed by `A8B070` | `+4` / `+8` | `EC1C10` / `69EE30` | Atomic reference increment / decrement and destroy on zero. |
| Same payload table | `+0` | `B94770` | Conditional message-storage destruction. |

`ExchangeMessageDispatcher` reads the old pointer at `011B2378`, replaces it and
returns the old pointer, without reference operations or locking:
[ASM](../../evidence/native/messaging/dispatcher/0044C500_ExchangeMessageDispatcher.asm)
([C](../../evidence/native/messaging/dispatcher/0044C500_ExchangeMessageDispatcher.c)).
The existing getter returns that same global:
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0044c4f0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0044c4f0.c)).
An arbitrary replacement is not proof that the current global still points to
an instance built by this constructor.

## Queueing and the later count-based pump

The [upper-quarter producer](floor-pattern-quarter-bit-rebuild.md) changes its
stored support bit before allocating and preparing the message. It then invokes
current dispatcher virtual `+1C` with `(0431BFC9,payload,0,0)`:
[ASM](../../evidence/native/construction/floor-patterns/00A913D0_RefreshFloorUpperQuarterFlags.asm)
([C](../../evidence/native/construction/floor-patterns/00A913D0_RefreshFloorUpperQuarterFlags.c)).

For the captured concrete dispatcher, that slot enters `QueueMessage`:
[ASM](../../evidence/native/messaging/dispatcher/0044CF30_QueueMessage.asm)
([C](../../evidence/native/messaging/dispatcher/0044CF30_QueueMessage.c)).
When option byte `+B4` is enabled, it retains nonnull payload through virtual
`+4` before insertion. It constructs a 24-byte record containing ID, payload,
optional target listener, signed priority and two zero callback fields. The
producer supplies priority0 and target0. Queue locking at dispatcher `+20` is
conditional on byte `+B0`.

`InsertQueuedMessageByPriority` selects a position using signed priority at
record `+0C`:
[ASM](../../evidence/native/messaging/dispatcher/0044CC20_InsertQueuedMessageByPriority.asm)
([C](../../evidence/native/messaging/dispatcher/0044CC20_InsertQueuedMessageByPriority.c)).
Its comparisons select a stable position within an equal-priority group;
actual node insertion/copy and allocation are delegated to `44C970/44CB50`.
The decompiler omits arguments that the original explicitly pushes. A
completed queue operation or allocation-failure rollback is not inferred from
that projection.

`PumpQueuedMessages` computes an unsigned64 frontier from the initial UInt32
queue count plus the shared UInt64 processed counter at `+50/+54`:
[ASM](../../evidence/native/messaging/dispatcher/0044D1C0_PumpQueuedMessages.asm)
([C](../../evidence/native/messaging/dispatcher/0044D1C0_PumpQueuedMessages.c)).
Each iteration copies the head record to locals, unlinks and frees its
32-byte node, increments the processed counter and releases the optional queue
lock **before callbacks**. With target and callback both zero, it invokes
virtual `+18`, whose table target is `44D5F0`. A nonnull target instead receives
its own virtual `+4` callback.

Byte `+B3` enables continued draining; when false, the pump uses the count-based
frontier. This is not a time budget or a snapshot of original message
identities. Reentrant pumping, the shared counter and newly queued priorities
can affect which entries are processed. After delivery, nonnull payload is
released through virtual `+8` when `+B4` is enabled. The retain and release
paths read the option separately; safe balancing across option changes is not
established.

`InitializeMessageDispatcher` defaults option bytes `+B0..+B5` to1 and installs
the concrete table:
[ASM](../../evidence/native/messaging/dispatcher/0044CCC0_InitializeMessageDispatcher.asm)
([C](../../evidence/native/messaging/dispatcher/0044CCC0_InitializeMessageDispatcher.c)).
Its queue and ID-map locks are distinct. Their presence does not prove global
receiver, callback or object-state thread safety.

## Registration is concrete; the outer broadcast remains a gap

`BindFloorMessageOwnerAndRegister` attaches its input renderer record at `+8`,
saves the current dispatcher at `+30`, the same receiver pointer at `+34`, the
ID table at `+38` and count18 at `+3C`:
[ASM](../../evidence/native/construction/floor-patterns/00AA0640_BindFloorMessageOwnerAndRegister.asm)
([C](../../evidence/native/construction/floor-patterns/00AA0640_BindFloorMessageOwnerAndRegister.c)).
It registers each ID using `(this,ID,retainFlag0,priority0)`. The changed-support
ID is index2 at `010649C0`. The constructor installs callback `AA4350` at the
receiver's table `+4` and initially clears enabled byte `+70`, attached state
and counter `+80`:
[ASM](../../evidence/native/construction/floor-patterns/00AA3080_InitializeFloorRenderManager.asm)
([C](../../evidence/native/construction/floor-patterns/00AA3080_InitializeFloorRenderManager.c)).
Registration does not itself enable the receiver.

The dispatcher registration wrapper stores the listener pointer; its optional
reference operation is skipped for the supplied retainFlag0:
[ASM](../../evidence/native/messaging/dispatcher/0044C640_RegisterMessageListener.asm)
([C](../../evidence/native/messaging/dispatcher/0044C640_RegisterMessageListener.c)).
`InsertMessageListenerByPriority` resolves the exact UInt32 event-ID map at
`+58` and selects a signed-priority insertion position:
[ASM](../../evidence/native/messaging/dispatcher/0044D070_InsertMessageListenerByPriority.asm)
([C](../../evidence/native/messaging/dispatcher/0044D070_InsertMessageListenerByPriority.c)).
Its equal-priority comparison selects a position **before** an existing equal
listener; this differs from the queue-position comparison above. Map/list node
allocation, actual insertion helpers, failure and unregister lifetime remain
separate contracts.

The table therefore joins the exact receiver pointer, its callback slot and
its subscription ID. The missing complete `44D5F0` broadcast body prevents a
claim that the outer ID lookup, callback selection and their whole lifetime
are closed. Its bounded original-byte contexts are useful follow-up evidence,
not a successful complete Ghidra function export.

Current metadata also has no function definition at `44C5A0`, `44C6A0`,
`588C50`, `588CB0` or `588CC0`. These are explicit unresolved config,
unregister, startup, pump-wrapper and shutdown leads, not evidence that their
native code is absent. No automatic function creation or body repair was made.

## Receiver owner gates and its independent queue

`FloorRenderEvents_HandleOrQueue` first requires enabled byte `+70` and attached
record `+8`. For `0431BFC9`, `AA4394/AA439B` branches to the pair comparison at
`AA45EA`: message DWORDs `+8/+C` must equal attached record DWORDs `+10/+14`:
[ASM](../../evidence/native/construction/floor-patterns/00AA4350_FloorRenderEvents_HandleOrQueue.asm)
([C](../../evidence/native/construction/floor-patterns/00AA4350_FloorRenderEvents_HandleOrQueue.c)).
Mismatch returns handled AL1 without application or queueing. The producer
copied core-lot `+48/+4C`; the construction/equality of that core pair and the
attached renderer pair is not established merely by equal field widths.

For a matched event, counter `+80==0` calls `AA3890`; otherwise the receiver
retains an eight-byte `(eventID,payload)` record in vector `+84/+88`. This queue
is separate from the shared dispatcher queue. Reaching this receiver branch
alone does not prove that outer pumping or installed broadcast completed;
the handler can also be called through a synchronous delivery path.

| Handled event, with owner match | Counter/flush behavior |
| --- | --- |
| `0462AC25` | Add1 to DWORD counter, with ordinary wrap and no saturation guard. |
| `0462AC2E` | Decrement iff nonzero, then flush if the result is zero. An already-zero end event also flushes. |
| `05BB12E9` | If nonzero, store zero and flush. This ID is absent from the inspected 18-ID registration table; a handled branch alone does not establish subscription. |

`InitializeRetainedMessageRecord` writes eight bytes and retains nonnull
payload; it returns the caller-owned destination, not a newly allocated
record:
[ASM](../../evidence/native/messaging/records/00C1EC20_InitializeRetainedMessageRecord.asm)
([C](../../evidence/native/messaging/records/00C1EC20_InitializeRetainedMessageRecord.c)).
`AppendRetainedMessageRecord` advances end by8, copies and retains when capacity
is available, delegating growth to `A6BD10` otherwise:
[ASM](../../evidence/native/messaging/records/00A6CA70_AppendRetainedMessageRecord.asm)
([C](../../evidence/native/messaging/records/00A6CA70_AppendRetainedMessageRecord.c)).
`AA4350` then releases the local temporary. The spare-capacity path leaves one
additional queued payload reference; complete growth/failure behavior is not
inferred.

`FlushDeferredFloorMessages` has **two passes**:
[ASM](../../evidence/native/construction/floor-patterns/00AA42D0_FlushDeferredFloorMessages.asm)
([C](../../evidence/native/construction/floor-patterns/00AA42D0_FlushDeferredFloorMessages.c)).
First it applies the original begin/end snapshot in ascending eight-byte
steps. It then reloads begin/end, releases nonnull payloads through virtual
`+8`, and resets end to begin. Application and release are not interleaved per
record. Callback mutation/reallocation or recursively entered flush is not
proved safe by this code.

## Payload ownership and the concrete consumer

The original message constructor installs table `01065F8C` and sets refcount
`+4` to0:
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00a8b070.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00a8b070.c)).
Its virtual retain and release targets are now explicit:

- `AddAtomicReference` performs `LOCK XADD +1` at object+4 and returns the new
  value: [ASM](../../evidence/native/memory/references/00EC1C10_AddAtomicReference.asm)
  ([C](../../evidence/native/memory/references/00EC1C10_AddAtomicReference.c)).
- `ReleaseAtomicReference` performs `LOCK XADD -1`; new zero invokes current
  virtual0 with argument1. There is no underflow guard, and the pointer is
  dereferenced before its later null test:
  [ASM](../../evidence/native/memory/references/0069EE30_ReleaseAtomicReference.asm)
  ([C](../../evidence/native/memory/references/0069EE30_ReleaseAtomicReference.c)).
- `DestroyPooledFloorMessage` resets the base table and conditionally returns
  storage through `ADF1A0` when mask01h is set; EAX is the old pointer, not a
  surviving ownership lease:
  [ASM](../../evidence/native/construction/floor-patterns/00B94770_DestroyPooledFloorMessage.asm)
  ([C](../../evidence/native/construction/floor-patterns/00B94770_DestroyPooledFloorMessage.c)).

Under stable enabled dispatcher retention and successful spare-capacity local
append, the message has a broker reference while queued, and a separate
receiver-queue reference if deferred there. Pump release can leave that local
reference alive until flush releases it. This does not prove allocation
recovery, safe option changes or the whole object's thread safety.

`FloorRenderEvents_ApplyEvent` has another gate: `0431BFC9` requires attached
byte `+1E` or `ADF640`. It then calls `UpdateFloorQuarterRoomIds` first, followed
by `ApplyFloorQuarterInputs` with **17 stack words**, physical `RET44h`:
[ASM](../../evidence/native/construction/floor-patterns/00AA3890_FloorRenderEvents_ApplyEvent.asm)
([C](../../evidence/native/construction/floor-patterns/00AA3890_FloorRenderEvents_ApplyEvent.c)).
The consumer does not enforce a single-quarter mask; that restriction comes
from `A913D0` in this path.

The conditional room updater changes selected UInt16 lanes in optional grid
`+7C`; mask bit10h changes its level selection. Actual grid write and optional
lot service notification occur only if a lane changed:
[ASM](../../evidence/native/construction/floor-patterns/00AA36A0_UpdateFloorQuarterRoomIds.asm)
([C](../../evidence/native/construction/floor-patterns/00AA36A0_UpdateFloorQuarterRoomIds.c)).

The [field join](../../evidence/native/messaging/floor-message-field-join.tsv)
records each producer origin and actual reader offset. Message support byte
`+5B` reaches `AA1F70` parameter7:
[ASM](../../evidence/native/construction/floor-patterns/00AA1F70_ApplyFloorQuarterInputs.asm)
([C](../../evidence/native/construction/floor-patterns/00AA1F70_ApplyFloorQuarterInputs.c)).
That function first chooses an admitted per-level renderer, performs a
distinct first-key comparison, then uses `A8AE70` to test the complete key
quad against the live null quad. `A8AE70` returns **inequality**, not
true-on-equality:
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00a8ae70.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00a8ae70.c)).
A quad different from the null input goes directly to the existing subset
consumer with its support argument fixed0. The new support byte instead
selects branches within the null-quad path, together with level and attached
state. It is not a universal floor visibility command. Full child subset,
edge, material and geometry behavior is retained in the existing
[floor-geometry contract](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/floor-geometry-original-boundaries.md).

The optional payload tail remains a concrete initialization boundary.
`A8B070/A913D0` do not establish default values for `+70..83` when the optional
source is absent. `AA3890` loads `+78` through x87 **before** the child call;
selected `AA1F70` paths forward or load the tail. The downstream material gate
and live default-key values do not prove these reads are zero or harmless.
Neither a native bug nor safe ignored defaults are claimed without their
actual initialization/use evidence.

## Remaining closure points

The complete outer broadcast, startup/config/unregister/teardown bodies,
core-to-renderer owner-ID production, enabled-state producers, generic queue
insertion/growth/failure, reentrant callbacks and optional-tail semantics remain
explicitly open. The [direct-call index](../../indexes/floor-pattern-message-delivery-calls.tsv)
records selected static direct edges; it does not claim all virtual targets,
all event subscribers or runtime reachability complete.

## Acceptance and persistence

The 73 applied annotation operations comprise 17 analyst names, 17 function
plates and 39 instruction comments. Live readback checked all 19 current names,
all plates and instruction comments, unchanged signature types and stored body
unions. Independent original-PE review matched all 5,563 owned bytes and 1,834
instruction starts; the two nonowned alignment gaps remain documented above.
The explicit project save reported `saved_files=1`. No database close/reopen
persistence test and no original-runtime observation were performed. These
checks establish this bounded static package, not full outer delivery or
complete Building coverage.

The [concrete manager/renderer owner-binding chain](floor-message-owner-identity.md) joins this message filter to one shared core-lot pointer and its copied owner words. It preserves the distinction between live manager reads and renderer snapshots; later writes and whole-object lifetime remain open.
