# SACS event delivery and scheduling boundaries

SACS registers a component, binds a retained queue, filters native packets and advances state walkers through a separate manager/watch channel. These are linked operations with different failure and ownership rules. This finite static reference uses the [original PC 1.67 inputs](../../evidence/reference.json) and [identified original S3SA assemblies](../../evidence/managed/reference-inputs.json). It does not establish successful animation, task resumption, elapsed clock units or thread-safe event delivery.

The [search index](../../indexes/sacs-event-scheduling.tsv) joins 44 native entries/contexts, ten original managed methods and eight selected data/global views. The [structured instruction ledger](../../evidence/native/state-machines/event-scheduling/instruction-evidence.json) and [readable instruction views](../../evidence/native/state-machines/event-scheduling/instruction-views.txt) preserve 38 historical non-singleton stored definitions: **6,343 bytes and 2,259 complete instruction starts**. Historical stored ownership is not a current Info query or a claim to every semantic dependency.

Three additional entries, `00766F90`, `00767410`, `00767BB0`, retain **one-byte metadata only**, not complete function listings. Their separate 60/112/179-byte contexts and three 48-byte no-exact-definition contexts at `0094D580`, `0094D2F0`, `0094D4C0` total 495 bytes. The three singleton bytes overlap their contexts; they must not be added as distinct code coverage. Linear context rows include trailing CC without declaring it irrelevant padding. Four precisely identified LLVM F0/XADD display splits retain both rows and the corresponding single physical instruction. This adds **zero canonical native ASM/C pairs** and changes no database names, types, variables or boundaries.

The [descriptor, jump table and selected vtable prefixes](../../evidence/native/state-machines/event-scheduling/descriptor-and-selected-tables.json) preserve 117 original file-backed bytes. The global `011EA0F0` has no original file slice in its virtual section tail: neither zero nor a fresh-registry mask is a live observation. The [189 selected direct E8/E9 transfers](../../evidence/native/state-machines/event-scheduling/selected-transfers.tsv) do not close indirect or incoming calls. The [six registration/name joins](../../evidence/managed/state-machines/event-scheduling/registration-joins.json) and [ten complete original MethodDefs](../../evidence/managed/state-machines/event-scheduling/selected-control-flow.json), also as [full selected IL](../../evidence/managed/state-machines/event-scheduling/selected-control-flow.il.txt), preserve declarations, all 3,095 CIL bytes, referenced operands and EH. Name matching alone does not establish host marshaling or runtime resolution.

## Descriptor registration is not instance allocation

Original descriptor 0117CA14 is named **Sacs**. Its relevant words are:

| Offset | Original word / role | Boundary |
| --- | --- | --- |
| +0 | 01044F0C, ASCII `Sacs` | Exact original name plus NUL. |
| +4 | 0094D580 | Optional **registration hook**, not an allocating constructor. |
| +C | 0094D4F0 | In-place construction callback. |
| +10/+14 | 00932720/00932750 | Separate generic component callbacks; their entire policy is not inferred here. |
| +1C/+20 | 18h / 4 | Component storage size 24 bytes, alignment 4. |

Getter 94D100 returns the descriptor. Default registration 932A30 calls it,
passes the descriptor to 937430, then stores returned EAX to selector global
11EA0F0 at **932AEF**. 937430 stores descriptor/hash/mask, shifts the next mask
and increments registered count **before** invoking optional descriptor +4
with the assigned mask as one caller-cleaned word. It ignores the hook result
and returns the saved assigned mask. The original default order makes Sacs
ordinal 9 and mask 200h only for the documented fresh-registry starting state;
that is not a live mask observation or immutable mask constant.

The bounded 94D580 context has a normal RET at 94D5A2. Its two calls are:

| Object-event selector | Callback context | Raw priority word |
| --- | --- | --- |
| 8 | 0094D2F0 | 80000000h |
| 6 | 0094D4C0 | 00000001h |

Both call 9355F0; neither result is tested, and the second registration is not
skipped if the first returns false. The assigned-mask word supplied by 937430
is not read by this hook. Neither a descriptor pointer nor a registration hook
return is proof of successful listener installation.

9355F0 returns AL=false when either queried service is absent. Otherwise it
requests 12 bytes, writes `{priority, callback, next}` and links into the
selector-indexed list at 11DD2A8. There is no local null allocation check or
selector-capacity guard. Its **signed JL** comparison orders larger signed
priorities before smaller ones; equal priorities are traversed before insertion.
Thus 80000000h is signed minimum priority here, not a mask or unsigned maximum.
There is no duplicate-callback rejection. Generic event dispatch, removal and
the meaning of selectors 6/8 require their own actual producer/consumer proof.

Both bounded callback contexts resolve the supplied entity through the current
11EA0F0 mask and 934260. Missing entity/component returns AL=1. Selector-8's
callback forwards its second word to 94D170. That complete body walks component
driver rows and returns false at the first **null row** or false 8002B0 result;
an empty row vector returns true. 8002B0 walks actor/walker bindings and calls
listener **805B60 RestoreControllerBinding** for each, stopping on false. This
is not necessarily a pure readiness predicate: the called binding-restoration
body has its separate existing contract. Selector-6's callback instead forwards
to 94D320, whose normal AL is always one after row cleanup. No definition is
invented for either callback context or the hook.

94D4F0 is physically **cdecl(destination, owner)**, plain RET, EAX destination
or zero. It does not allocate. Nonnull destination receives owner +4, component
vtable 01044EDC, zero vector +8/+C/+10 and its label +14; it then calls manager
7FCF30 with the new component. Manager absence is not checked here. The latter
appends a component pointer and restores its rotating cursor by ordinal after
possible vector growth. This is a separate construction/publication path.

## Driver, actor and retained-object owners

Create-driver adapter 767370 allocates 14Ch and calls 804B00, which installs
primary/embedded driver tables and initializes actor bindings, context,
pending-record and filter vectors. Event queue +12C starts zero, countdown
+140 starts FFFFFFFFh, and bytes +145..+148 start zero. The raw low byte of
its supplied mode initializes +144. It does not establish safe allocation
failure: the failed allocation path eventually dereferences the null driver.

The component 94D5B0 physically retains a nonnull driver through its embedded
interface at +8, fills the first null component row or appends it, and performs
no duplicate-driver check. 767370 also registers the driver with host +C8h
using type word 20h, with separate embedded-interface retain/release brackets.
Component, host handle and temporary reference ownership are different.

803B00 allocates a 28h actor instance, sets its base flags to 40000001h, stores
the authored definition at +20 and clears actor bytes +24/+25. It allocates a
B8h walker, replaces its retained entity at +8, and appends an eight-byte
`{definitionHash(+2C), walker}` binding. The definition pointer, entity pointer,
hash and script handle are not interchangeable. Failed allocations are not
sanitized safe-null returns; exact lower allocation semantics stay open.

805850 first resets the listener table, unregisters every nonnull controller
at registration +14 using controller +Ch / 566990, then destroys its 24-byte
row range with 805540 and frees backing storage. 805540 releases controller
+4 with ordinary DWORD decrement/reset-before-delete, but uses LOCK XADD and
XCHG for namespace +10's counter. Neither this mixed protocol nor the other
atomic leaves makes the whole row/list update thread-safe. This body does not
call StopAllAnimation or prove backend playback has retired.

94D320 resets/unpublishes each nonnull driver via 7FFF70, releases its embedded
interface, and, when the observed return is nonzero, asks host +D4h to remove
type-20h registration. A true host result triggers another embedded release.
It clears the component vector end and returns AL=1, even though individual
host removal returned false. No all-or-nothing cleanup success is implied.
The one-byte 767410 release adapter and 767BB0 stop adapter remain separately
qualified contexts; their old inferred declarations are not repaired here.

## Queue binding, filters and host delivery

766F90's separate original context physically takes two caller-cleaned DWORDs.
It resolves both through host +CCh, even when the first resolves null. A nonnull
driver passes the resolved queue **pointer** (possibly null) to 7FFFA0. The
setter compares pointer identity; when changed it retains the new nonnull queue
through slot 0, stores driver +12C, then releases the old nonnull queue through
slot +4. Equal pointers are a no-op. It neither receives nor stores a raw script
queue handle in that driver field.

The selected concrete queue table prefix 010022D0 is:
`B31790 / EC7190 / 51A720` at offsets 0/4/8. The first two already have current
canonical bodies, names and saved annotations. They are **non-atomic shared
counter helpers**, not event dispatchers. Their decrement zero path resets the
counter to one before calling slot +8 with word one. The last target remains
a qualified NoFunction context; no complete destructor/allocator policy is
manufactured. The packet table 01021018 shares the counter pair but has a
different selected slot +8 target, 800500. Shared slot values do not make their
receivers or complete lifetimes identical.

767160 physically consumes five caller-cleaned words: driver handle, type,
subtype, id and operation. Unsigned operation >3 does nothing after lookup.
The actual jump table maps 0/1 to append (one-shot/persistent), 2/3 to first
exact removal. The old four-formal C projection shifts argument roles and is
not an original ABI. The wrapper initializes only the low byte of a pushed
flag word; its other bytes are not a proved Boolean contract.

802030 appends duplicate 16-byte rows `{type, subtype, id, low-byte once}`.
801870 removes the first exact triple, with no wildcard behavior; it consumes
four words via RET10h although the fourth is unread. These are different from
8018E0's event-admission wildcard rules:

* Retain a nonnull incoming event, then require bound queue +12C before reading
  its type/subtype/id at +8/+C/+10. A null event is **not** safe with a bound
  queue: no event-null guard precedes those loads in that branch.
* A zero row field independently matches any corresponding event value.
  Scan all rows, not just the first match. Every matching one-shot is removed
  by left shift and the current row is rechecked. Persistent matches remain.
* At least one match triggers **one** 742900 call, regardless of match count.
  The one-shots are already removed before that call. No rollback/reinsert
  follows a callback absence or error. Finally release the incoming event.

742900 physically receives queue ECX and event pointer stack word (RET4).
Null event returns. Otherwise it retains the event and tests **queue +8's
opaque callback word**, then builds four contiguous 20h-byte variants only if
that word is nonzero. The first three copy event +8/+C/+10 DWORDs through the
complete 4F5F20 UInt32 assigner and 4F64B0 copy helper. For these initialized
locals, assigner uses type word **000Ah** and payload DWORD +10h. The fourth is
copied from a default-initialized type-zero variant; this function does not
load the event's text fields to supply a fourth string value.

It obtains the host and calls +134h with the actual output-block address,
callback word, argument-block address and count **4**. It cleans output/argument
variants using mask **04h**, then releases the event. The output block is not
tested to retry delivery or report success. This proves a real native forwarding
edge, **not** the host's CLR delegate conversion, exception policy, error
translation, callback retention or a guaranteed nonnull/empty managed message.
With a nonnull bound queue but zero callback word, matching one-shots can be
consumed without any host callback invocation in this selected path.

8004C0's complete 64-byte packet constructor writes type 50h, supplied subtype
and id, selected packet table, count zero and empty text-storage pointers. It
does not itself add a reference. Step/update allocation failure branches can
forward null packets into the admission path; no generic OOM safety is inferred.

## State publication and retained watches are another channel

803500 first calls listener 805B60. False emits an event packet
`{type=50h, subtype=1, id=FFFFFFF9h}` (signed -7) and returns; walker readiness
801E30 is a later gate. It applies/clears interrupt mask 02h, clears walker
dirty +C, assigns differing pending +1C to current +10, and **then** invokes
800640. Pending is cleared and entered byte +68 set only after this callback
pump returns. Thus watches observe the newly assigned current state before
later graph/event processing; they are not simply AnimationDone callbacks.

800640 walks the retained list at walker +58. For a nonnull payload it calls
payload slot +10 to obtain a callback target, then calls that target with the
actual retained payload and source walker. Meaningful result is AL. True
releases the payload through slot +8, advances and unlinks/frees the list node;
false advances while retaining it. A non-sentinel node with **null payload has
no local progress**: its null branch reaches the loop comparison without
advancing the node. Producer invariants and mutation/reentrancy must remain
explicit; a local mutex/snapshot/termination guarantee is not present.

8010B0 applies synchronized master current/return to eligible followers.
Differing current is stored and watches pumped **before** copying the master's
return state and clearing eligible follower pending/loop. It does not clone the
master's request deque or acquire all master ownership.

The constructor-bound watch table at 01007DFC points its +10 slot to the
complete four-byte getter **9DE7F0**, which returns receiver +10 and uses plain
RET. Thus the concrete 767220 watch reaches stored callback **769320** through
the actual pump, without guessing a uniform callback class. The constructor consumes
ten physical stack words (RET28h), but only selected incoming words initialize
the saved callback/context, target hash and retained bridge-driver/actor fields.
769320 returns AL=1 for null watch/source, AL=0 after source byte +71 cleanup,
or on an unmatched/no-current state. A matching one-shot state with a return
retargets watch +18 to the return hash and returns false; a matching ordinary
state calls 7691E0 and returns true. 7691E0 can resolve/create a destination
walker, forward current-state data and release the wait; it is not proof of
complete source task wakeup or clip termination. These complete bodies do not
locally compare a deadline. Whole generic callback update/removal ownership
and the saved VM stack remain separate dependencies.

## Manager scheduling and the unresolved clock boundary

Dirty propagation 7FFD90 ORs the incoming low byte with walker +C and driver
+146; a dirty driver with manager calls 7FCF80. Clearing pending does not clear
existing dirty state. 7FCF80 coalesces pointer identity: a selected current-driver
branch sets revisit +18, otherwise scans pending +1C/+20 for a duplicate before
appending. Its selected mode/flag branch calls 7FFE10. It does not add a driver
retain at insertion and is not an off-thread FIFO or lock.

7FD000 admits a nonnull driver only when manager current +14 is null. It sets
current/mode, clears revisit before each 8040D0 call, and permits **at most ten
advances per invocation**. Another advance requires revisit, nonnull current
and unsigned original-driver count >1. On exit it clears current/mode and can
deduplicate/requeue the original pointer. A direct invocation while already
busy does nothing here; that does not prove the higher request was lost, since
its other dirty/queue producers are separate. Reentry fields are not locks.

7FD0C0 rotates **one** component row, calls 94D410 then 94D390, copy-assigns
pending pointers to a processing vector, clears pending end, schedules each
copied nonnull driver with mode zero, then clears processing end. The physical
RET4 consumes one word that this body does not read. The component 94D410 first
requires owner Animation component and a nonnull resource through its actual
interface. It advances every admitted nonnull driver, then swap-last collects
count==1/quiescent rows and rechecks the replacement position. Complete
quiescence/count helpers and the existing 94D390 contract are reused; this is
neither stable-order removal nor a tick of every registered driver.

8040D0 handles deferred byte +147 first, clears it, marks dirty and schedules a
revisit, returning immediately. Otherwise stepping needs empty pending graph
records and ready graph context. Sync master is exclusive while mode survives;
clean stateful walkers generate two subtype-4 Heartbeats (actor/sync ID, then
current-state hash), dirty walkers call 803500. Ordinary bindings have stride 8
and traversal stops if sync becomes active. Finite countdown +140 decrements
once whenever its countdown block is reached; the early +147 branch bypasses
it. Reaching zero emits Heartbeat id zero and resets -1. It is **not established to be elapsed seconds or one decrement per outer
frame**: immediate scheduling can invoke 8040D0 repeatedly. In particular,
entering value zero decrements to FFFFFFFFh and does not emit at that compare.
Pending graph records are processed separately when context readiness permits.

The older manager defaults 60/16/35 and binary32 frame-to-seconds scale are
readiness settings with their own mutable-registration contracts. They are not
the elapsed clock consumed by these selected procedures. The observed incoming
call at D820D5 has no proved complete caller extent. The real outer update
source, units, reentry/thread discipline and generic manager lifecycle remain
concrete evidence gaps, rather than being guessed from a `Tick` or timeout name.

## Original managed delivery and waiting

Original ScriptCore EventQueue constructor retains its delegate field and
registers it through the actual import chain already documented in the current
callback-frontier guide. OnNativeEvent **060005F1** creates an event, invokes
the optional permissive handler first, then either invokes the main handler
and returns, or enqueues and conditionally calls Simulator.Wake(owner,false).
There is no catch around these handlers: if an earlier call throws, later
enqueue/wake statements in this method are not executed. No cross-thread queue
safety or successful wake follows solely from the native host forwarding call.

GetNextEvent **060005F6** dequeues first when data exists. With no data and no
wait request it writes a null output and returns **true**. With waiting enabled
but an already valid sleeping owner it writes null and returns **false**.
Otherwise it stores CurrentTask, calls Sleep(FFFFFFFFh), clears sleeping owner
in a finally, then invokes its own nonwaiting path. It can therefore return
true/null after a wake with no queued event; false does not simply mean empty.
Dispose(bool) **060005F5** asks a still-sleeping proxy to reset, clears the field,
disposes/clears the native handle, and conditionally suppresses finalization.
If a called operation throws, later normal-path cleanup is not guaranteed.

Original SACS wrappers **06000D81** and **06000D93** directly forward two/five
UInt32-sized inputs to imports **06000D5F/06000D70**, matching the physical
native arguments above. The retained original raw CIL for **06000D8E** forwards
managed positions 2/3/4/5/7/8/9 to native RequestState: **wakeupTimeOffset at
position 6 is not passed**. The yield flag affects subsequent CallbackObject
result retrieval; null becomes -1, otherwise unbox ResultCodes.

Native 7674D0 resolves the primary driver (missing → full EAX=-2), optionally
resolves a bridge and constructs a watch, then calls core 803E20. Mask **200h**
causes immediate 7FD000 scheduling **without testing the signed core result**;
that result is restored to EAX afterward. The optional watch call explicitly
supplies FLDZ zero and a timeout word, but its complete local constructor and
callback do not establish a deadline check. The high-level SimIFace
StateMachineClient RequestState **06000A7E** and PersistPostLoad **06000AB5**
retain their separate filter/deadline/finally policy, as in the existing
original 47-method dossier. Neither a native count return nor a timeout-named
input certifies that a managed request completed or a saved task resumed.


## Current projection and dependency gaps

Eight selected current C reconciliations remain pending: `00742900`, `009355F0`, `00937430`, `0094D170`, `00767160`, `00803B00`, `00805850`, `008010B0` (1,364 historical owned bytes). Six current Info boundary checks remain pending: the three singleton entries and the three no-exact-definition contexts listed above. Neither missing evidence category is silently supplied by this instruction ledger. A genuine existing [803500 caller projection](../../evidence/native/bridge/callback-reference-words/captured-caller-projections.json) is reused only with its existing projection qualification; it is not a newly maintained canonical pair.

Exact host conversion/exception behavior and callback retention; generic selector dispatch/removal; partial registration and allocation failure; all count/handle owners; filter/list mutation and null-payload producer invariants; outer manager ingress at D820D5; countdown producers/units; generic watch update/removal and VM task restoration remain open. No particular lock, safe-null rewrite, retry/rollback or eventual wake is inferred. Static examples below describe branches, not observed runtime experiments.

| Concrete input/state | Established local consequence | Boundary |
| --- | --- | --- |
| First hook registration returns false | The second registration is still attempted; the registry returns its assigned mask. | No complete installation or rollback guarantee. |
| Priority 80000000h versus 1 | Signed ordering puts 1 ahead of signed minimum. | Not an unsigned priority/mask interpretation. |
| Two matching one-shots and one persistent row | All matching one-shots are removed; at most one selected forwarding call follows. | Mutation/host failure does not reinsert them. |
| Bound queue with callback word zero | Admission can consume one-shots while forwarding omits the host call. | Not guaranteed managed delivery. |
| A non-sentinel watch node with null payload | The selected pump path does not advance the node. | Producer/liveness invariant is unproved. |
| Countdown entering zero | Decrement yields FFFFFFFFh, not the decrement-to-zero event case. | Count is not proved time or one outer frame. |
| Empty nonwaiting managed queue | GetNextEvent returns true and null output. | Boolean does not mean event-present. |
| Request with wakeupTimeOffset | The selected raw wrapper does not pass that position to native RequestState. | Higher-level managed deadlines remain separate. |

## Existing evidence relationships

The [EventQueue callback frontier](../bridge/event-queue-and-sim-saved-callback-frontier.md) supplies current canonical shared counter helpers and the separately qualified unowned slot+8 context. The selected table prefixes do not turn every shared helper into an event dispatcher or a uniform lifetime protocol. The immutable [managed client/postload dossier](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/sacs/managed-client-postload-and-waits.md) and [controller registration/notification contract](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/sacs/controller-registration-and-notification.md) retain the wider dependencies. Historical pairs below remain immutable evidence; each ASM link is immediately followed by its C projection. Their observed names/formals are historical, not newly applied annotations.

| Native entry | Historical ASM and C projection |
| --- | --- |
| `00766F90` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00766f90.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00766f90.c)) |
| `00767160` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00767160.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00767160.c)) |
| `00803B00` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00803b00.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00803b00.c)) |
| `00805850` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00805850.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00805850.c)) |
| `008010B0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x008010b0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x008010b0.c)) |
| `007674D0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007674d0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007674d0.c)) |
| `00767410` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00767410.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00767410.c)) |
| `00767BB0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00767bb0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00767bb0.c)) |
| `00803500` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00803500.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00803500.c)) |
| `008040D0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x008040d0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x008040d0.c)) |
| `00800640` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00800640.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00800640.c)) |
| `00742900` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00742900.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00742900.c)) |
| `00801870` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00801870.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00801870.c)) |
| `00802030` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00802030.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00802030.c)) |
| `008018E0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x008018e0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x008018e0.c)) |
| `007FFFA0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007fffa0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007fffa0.c)) |
| `007FCF80` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007fcf80.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007fcf80.c)) |
| `007FD000` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007fd000.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007fd000.c)) |
| `007FD0C0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007fd0c0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007fd0c0.c)) |
| `0094D4F0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0094d4f0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0094d4f0.c)) |
| `0094D5B0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0094d5b0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0094d5b0.c)) |
| `0094D410` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0094d410.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0094d410.c)) |
| `00767370` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00767370.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00767370.c)) |
| `00804B00` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00804b00.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00804b00.c)) |
| `00932A30` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00932a30.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00932a30.c)) |
| `00937430` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00937430.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00937430.c)) |
| `009355F0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x009355f0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x009355f0.c)) |
| `007FFD90` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007ffd90.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007ffd90.c)) |
| `004F5F20` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004f5f20.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004f5f20.c)) |
| `0094D320` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0094d320.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0094d320.c)) |
| `00767220` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00767220.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00767220.c)) |
| `007691E0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007691e0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007691e0.c)) |
| `00769320` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00769320.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00769320.c)) |
| `009DE7F0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x009de7f0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x009de7f0.c)) |
