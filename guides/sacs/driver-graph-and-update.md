# Driver graph admission and update

Static original PC 1.67 analysis. Names are analyst roles; no original game run
or C# runtime equivalence is implied. The database was saved without byte changes.

| Original entry | Physical ABI and bounded role | Complete original pair |
| --- | --- | --- |
| 008022F0 | ECX driver, walker stack word, RET4; admission/queue procedure | [ASM](../../evidence/native/functions/008022F0_SacsDriver_AdmitAndQueueGraphWalk.asm) ([pseudocode](../../evidence/native/functions/008022F0_SacsDriver_AdmitAndQueueGraphWalk.c)) |
| 00801CF0 | ECX driver, record stack word, RET4, result AL | [ASM](../../evidence/native/functions/00801CF0_SacsDriver_ProcessGraphWalkRecord.asm) ([pseudocode](../../evidence/native/functions/00801CF0_SacsDriver_ProcessGraphWalkRecord.c)) |
| 00802530 | ECX driver, no stack inputs, result AL | [ASM](../../evidence/native/functions/00802530_SACS_TryProcessPendingDecisionGraphRecords_802530.asm) ([pseudocode](../../evidence/native/functions/00802530_SACS_TryProcessPendingDecisionGraphRecords_802530.c)) |
| 00803500 | ECX driver, walker stack word, RET4; step procedure | [ASM](../../evidence/native/functions/00803500_SACS_StepWalker_803500.asm) ([pseudocode](../../evidence/native/functions/00803500_SACS_StepWalker_803500.c)) |
| 008040D0 | ECX driver, no stack inputs, RET or tail jump | [ASM](../../evidence/native/functions/008040D0_SACS_AdvanceDirtyWalkers.asm) ([pseudocode](../../evidence/native/functions/008040D0_SACS_AdvanceDirtyWalkers.c)) |

Stored/inferred prototypes are preserved. In particular 008022F0's database
prototype lacks recovered formals; actual pseudocode uses in_ECX and one stack
word. The observed instruction ABI above takes precedence. 00802530's upper EAX
bits are incidental, not an integer counter. 00803500 has no managed progress
Boolean result. The exact 008022F0 body comprises three owned ranges, 563 bytes /
195 instructions; nine intervening alignment bytes are explicitly nonowned.
00803500 ends at 008039D0, excluding the following alignment. Together these five
exports contain 2,857 owned bytes / 984 instructions, in 2,866 envelope bytes.

## Admission and graph context

Driver vtable slot 0102114C identifies 008022F0. State join byte +4D checks all
bound walkers holding current or pending state. A different current state holds
the arriving walker in status4 and still admits that walk. All-at-join admission
queries blocking controllers, component priority and noninterruptible tail time;
only admitted actors are readied. It establishes driver sync byte +3C and master
+40. The calculated local maximum tail time does not establish a later scheduling
policy by itself. Nonjoin/non-synchronized state clears existing sync mode.

A state graph at +38 is dispatched with driver context +44, phase0, then represented
by a 12-byte {graph, walker, phase2} record. Context readiness may permit immediate
00801CF0; otherwise append to vector begin/end +11C/+120, with +124 capacity used
by the producer. A successful admission is not proof that the walk finished.

[Phase dispatch ASM](../../evidence/native/functions/007F4B50_SacsDecisionGraph_DispatchPhase.asm) ([pseudocode](../../evidence/native/functions/007F4B50_SacsDecisionGraph_DispatchPhase.c))
selects node virtual offsets +24/+28/+30/+2C for phases0/1/2/3 and owns its visited
work order. [Group flush ASM](../../evidence/native/functions/007F45E0_SacsDecisionGraph_FlushAnimationGroups.asm) ([pseudocode](../../evidence/native/functions/007F45E0_SacsDecisionGraph_FlushAnimationGroups.c))
flushes/releases groups +CC/+D0 and clears master +D4 before phase2/3 cleanup.
A managed lane loop is not that native group ABI.

## Completion and pending records

00801CF0 accepts driver error byte +145 as complete. It undoes a differing retained
graph state +78; phase1 dispatch depends on the record tag or retained identity.
Tag2 clears +78 before phase2 dispatch. Public-state completion emits StateEntered;
an inactive actor is dirtied, then OverlayLevel and AnimationDone follow. Sync
completion uses actor0. Final readiness compares walker iterators +84/+94; no
additional container layout is inferred.

00802530 rejects reentry through byte +148. It walks the original 12-byte records:
true AL removes the current record by ordered left shift and rechecks that slot;
false advances and clears aggregate success. Finally clear reentry and return AL.
It supplies no thread-safe collection contract.

## State and manager update

00803500 reports Result -7 on binding/readiness failure, applies then clears the
interrupt bit, clears dirty, assigns pending to current and immediately pumps
retained state watches through 00800640. Only afterwards clear pending, set entered,
and continue path/loop/request/event processing. Watches are not AnimationDone.
Loop entry may set driver +147 and defer the following update.

008040D0 handles +147 first: clear it, set dirty +146 and request manager revisit
with low-byte true, then return. Otherwise stepping requires empty pending vector
and ready graph context. Synchronized master runs exclusively while sync survives.
Clean stateful actors emit two Heartbeats (actor/sync id, then state hash); dirty
actors call step. Ordinary binding vector stride is8 and iteration stops if sync
activates. Finite countdown +140 decrements to Heartbeat0 then resets -1. Pending
records run only when context readiness permits.

Current managed script-turn holds, update serial, 512/4096 guards, subscribed-only
heartbeats and duration-only fixture sinks are project scheduling adaptations.
The original controller clock and script task scheduler are separate owners.
Complete active-task persistence, all join tail-readiness behavior and concurrent
native manager callbacks are not established by these five functions.
