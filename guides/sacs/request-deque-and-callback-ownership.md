# Original SACS request deque and callback ownership

Static PC1.67 TS3W.exe evidence. The state/flags deque and retained callback list
are different objects in the original actor wrapper. The complete selected
producers/consumers below were annotated directly in Ghidra, exported as canonical
pairs and compared with pristine original bytes; the database was saved clean.
No retail execution or managed continuation was performed.

## SacsWalker_PopQueuedRequest

[ASM 00802870](../../evidence/native/functions/00802870_SacsWalker_PopQueuedRequest.asm) ([annotated Ghidra C](../../evidence/native/functions/00802870_SacsWalker_PopQueuedRequest.c)).

ECX walker, plain RET. Empty deque clears destination+24, flags+20=40 and leaving+72=0. Otherwise oldest eight-byte state/flags pair is passed to00802690, deque head advances by8 with256-byte segment rollover/release, leaving cleared. Original pointer/flags queue is distinct from managed TaskCompletionSource ownership.

## SacsWalker_QueueOrInstallRequest

[ASM 008028E0](../../evidence/native/functions/008028E0_SacsWalker_QueueOrInstallRequest.asm) ([annotated Ghidra C](../../evidence/native/functions/008028E0_SacsWalker_QueueOrInstallRequest.c)).

ECX walker,two physical words RET8. With no destination+24 call00802690 immediately; otherwise append8-byte state/flags pair, allocating deque storage through007276D0 if required. Queued branch sets walker dirty+C and driver+146, then schedules through007FCF80 when manager exists. No .NET Task or continuation in native pair.

## SACS_AttachWalkerCallback_801150

[ASM 00801150](../../evidence/native/functions/00801150_SACS_AttachWalkerCallback_801150.asm) ([annotated Ghidra C](../../evidence/native/functions/00801150_SACS_AttachWalkerCallback_801150.c)).

ECX walker, native retained callback inserted into list+58. This producer is separate from queued state/flags deque+34. Actual registered bridge watch can be shared across walkers; project TaskCompletionSource completion/follow logic is not native callback ABI. Existing full original callback comments retained.

## SACS_PumpWalkerCallbacks_800640

[ASM 00800640](../../evidence/native/functions/00800640_SACS_PumpWalkerCallbacks_800640.asm) ([annotated Ghidra C](../../evidence/native/functions/00800640_SACS_PumpWalkerCallbacks_800640.c)).

ECX source walker; selected normal callback-list pump passes actual source Walker identity through callback dispatch and conditionally consumes list entries. Callback ownership/list mutation follows native retained objects, not .NET completion queues. Existing original bridge state-watch annotations remain valid; no runtime dispatch execution claimed.

## SACS_ForceClearWalkerCallbacks_8006a0

[ASM 008006A0](../../evidence/native/functions/008006A0_SACS_ForceClearWalkerCallbacks_8006a0.asm) ([annotated Ghidra C](../../evidence/native/functions/008006A0_SACS_ForceClearWalkerCallbacks_8006a0.c)).

ECX walker with callback list+58; forced cleanup invokes callback with actual source Walker and removes/releases entries including callbacks whose result is false, with optional retained notification target. Original body includes disjoint owned instruction ranges with explicitly nonowned alignment in the envelope. This is not proof that current project task cancellation or completion has identical event/VM semantics.

## Managed task boundary

Original managed RequestState yields through ScriptCore.EventQueue and simulator
execution context. [Original managed consumers](managed-client-postload-and-waits.md)
retain that path. .NET queued/installed/reached TaskCompletionSource objects,
ExecuteSynchronously continuation forwarding and shared exception propagation in
OpenTS3 are project mechanisms. They must not be treated as the native callback
representation, serialized VM stack or a proof that a request completed in-game.

Native queue install/pop ordering, callback retention, state-watch mutable hashes
and script event delivery have independent owners. Forced cleanup can consume a
callback whose predicate is false; task cancellation alone does not establish the
same state/event/retained-object semantics. The disjoint force-clear instruction
ranges are retained with nonowned alignment explicitly marked in the full envelope.
