# PC 1.67 native SACS proof dossier

This is static analysis of the shipped PC 1.67 `TS3W.exe`. It contains
original instruction listings, annotated Ghidra pseudocode,
registration records, and address-specific interpretation. No retail game was
run. Apply the evidence hierarchy in the bundle's root README before using
this dossier for a behavior change.

## Contents and evidence

- [Request deque and callback ownership](request-deque-and-callback-ownership.md) distinguishes state/flag entries, retained callbacks and managed tasks.

- [Controller registration and notification](controller-registration-and-notification.md) covers the callback table, complete Started/Ending/Completed/removal bodies and submission-mode instructions.

- [Resource loading, save records and status](resource-loading-save-records-and-status.md) covers 35 native pairs with physical ABI, actor flag tables, live persistence and readiness bounds.
- [Managed client post-load and waits](managed-client-postload-and-waits.md) covers original identity binding, filter/queue cleanup and gameplay posture ownership.

- [Actor graph lifetimes and bindings](actor-graph-lifetimes-and-bindings.md) establishes path-query, mirror/prop lifetime, namespace/IK, priority/parameter and event-row contracts with explicit current differences.

- [JAZZ readers and SACS graph/clip selection](resource-graphs-and-selection.md) covers typed resource readers, actual/default dispatch, native Random history, path-selection gates and text/key resolution with explicit current differences.

- [Hosted reset and handle invalidation](host-reset-handle-invalidation.md) establishes reset/drain ordering, typed pointer unpublication and the retained queue-pointer validity consumer.
- [Native driver quiescence and collection](native-driver-quiescence-and-collection.md) establishes intrusive reference operations, rig gating, component removal and manager scheduling with explicit ABI and bounded-release limits.

- `registration-catalog.tsv` records 29 contiguous, eight-byte registration
  pairs at `0x01161DE0–0x01161EC0`, their original bytes and C strings.
  Result: **29 byte/string pairs verified;
  28 unique exact pristine
  ScriptCore metadata matches**. `SACS_SetParamCompositeValImpl` at
  `0x00766E90` has no exact managed method-name or P/Invoke entry-point match;
  do not silently rename it to the
  similarly named `SACS_SetParamCompositeStringValImpl`.
- The [annotated `SACS_RequestStateImpl`
  export](../../evidence/native/functions/007674D0_SACS_RequestStateImpl.c) contains the
  seven-argument x86 stack accounting alongside the pseudocode. Ghidra
  mislabels uses after indirect host lookups.
- `raw/` contains bounded original-executable disassemblies with entry
  addresses in their filenames and instruction listings.
- `../../evidence/native/pseudocode/` contains annotated Ghidra pseudocode
  for all 29 identified SACS functions. The key request, watch, and core bodies
  are [RequestState](../../evidence/native/functions/007674D0_SACS_RequestStateImpl.c),
  [watch constructor](../../evidence/native/functions/00767220_SACS_BridgeWatchConstructor_767220.c),
  [watch callback](../../evidence/native/functions/00769320_SACS_BridgeWatchCallback_769320.c), and
  [core request](../../evidence/native/functions/00803E20_SACS_CoreRequestState_803e20.c). Use the
  [paired code index](../../evidence/native/code-index.tsv) to locate
  the remaining bodies by entry address.

The [registration map](../../evidence/bindings/registration-map.json) retains the original
name/function pairs and exact managed metadata matches. The metadata comes
from retail PC 1.67 `ScriptCore.dll` in `scripts.package`. A static reachable
consumer path from script-host setup through the descriptor list and
name/function binder has since been traced in
`../../evidence/bindings/consumer-trace.md`; this is not a runtime execution trace.
Managed `CallingConventionWinApi` describes metadata, not a proven native
calling convention for every entry. Function prototypes that involve
`UInt64`, `String`, `Delegate`, `ObjectGuid`, or `ResourceKey` need individual
native ABI checks before setting Ghidra parameter storage.

## Native request and watch contract

`SACS_RequestStateImpl` at `0x007674D0` resolves the source driver or returns
`-2`. A nonzero bridge handle is looked up. A resolved destination can create a
retained callback; missing destination or allocation failure submits the source
request with a null callback. Its constructor stores the literal requested
source state hash, destination driver pointer, and destination actor hash. It
does not read the native `simTickTimeout` passed to it. Core submission occurs
at `0x00803E20`. The entry tests **flags** bit `0x200` and dispatches
`EnsureAnimation` after core submission even when the returned result is
negative. The [annotated pseudocode
comment](../../evidence/native/functions/007674D0_SACS_RequestStateImpl.c) records the
exact instruction and stack-position proof.

The core recognizes Reset hash `0x66295BC8`, returning success after
`0x00800FB0`. A missing actor returns `-5`; missing state/graph or Return
pointer returns `-3`; driver error byte `+0x145` can turn a submitted result
into `-12`. Actor hash zero recurses over active placed walkers with the **same
callback pointer**. The registered entry supplies zero for the core's optional
failure-result callback argument. These are static branch observations, not a
claim that every graph request can succeed.

The callback is installed on the selected source walker list at `+0x58` by
`0x00801150`. The pump at `0x00800640` passes the actual source Walker* to
`0x00769320`. A matching current state hash invokes destination release and
consumes the list node. A one-shot source state may retarget the same callback
to the source Return hash. The ordinary fast path at `0x00802BF7–0x00802C05`
may pump a newly attached watch before `RequestState` returns. The walker step
assigns pending state to current, then pumps callbacks at
`0x00803608–0x0080360D` before later event/idle work. Thus this watch follows
**current-state assignment**, not clip completion or the ordinary managed
request task.

Ghidra xrefs for callback address `0x00769320` include both `0x00767248` and
`0x008033C6`. At the second site, raw `0x008033A5–0x00803402` allocates
another `0x28`-byte callback and initializes the same function pointer before
calling `0x00769220`. Therefore the callback function is shared with an
internal construction path; the bridge behavior above is tied specifically to
the registered entry's constructor and populated destination fields.

When the watch fires, `0x007691E0` uses the retained destination pointer and
actor hash to resolve the destination walker, then calls `0x00801BD0`. A
destination in listener status 5 may become ready subject to controller/idle
checks; this marks it and its driver dirty and schedules work. Otherwise the
first queued request with bit `0x20` is cleared and the function returns. If
neither early queued return applies, a nonzero source actor byte `+0x24` is
transferred to the destination actor after clearing the source byte. This
helper does not inspect its Boolean argument. It does not compare actor object
IDs or require an installed destination waiter at initial source admission.

Reset and walker clear set source byte `+0x71`, force-invoke/remove callbacks,
and clear that byte. This route releases a destination even though the watch
callback returns false. Ordinary request interrupt bit `0x1` clears requests
but does not force-clear watch list `+0x58`. `SACS_ReleaseDriverImpl` at
`0x00767410` removes a manager handle and releases a driver reference; final
destruction ordering and callback survival on disposal remain unresolved.

## Limits to retain in downstream work

The 83-byte raw body at `0x00769320` provides the callback proof. The annotated
`SACS_RequestStateImpl` pseudocode still maps bridge driver to timeout and
flags to state hash. Do not use those labels as independent evidence. No
retail runtime execution, serialized callback ownership, complete driver
destruction, or full meaning of actor byte `+0x24` was established here.

The managed [ScriptCore.SACS decompilation](../../evidence/managed/types/ScriptCore.SACS.cs)
provides broader context. The 2250-tick managed deadline and Result event 2
need separate path-specific validation before being treated as native watch
timing.

## Missing requested CLIP and configured fallback

The [play-animation node producer](../../evidence/native/functions/007F8DC0_SacsPlayAnimationNode_SubmitResolvedClip.asm) ([annotated pseudocode](../../evidence/native/functions/007F8DC0_SacsPlayAnimationNode_SubmitResolvedClip.c)) continues constructing and submitting its controller request when the requested CLIP resolver returns null. The null branch skips namespace setup; it does not by itself remove the node.

The [controller factory](../../evidence/native/functions/0093D620_AnimationComponent_CreateClipController.asm) ([annotated pseudocode](../../evidence/native/functions/0093D620_AnimationComponent_CreateClipController.c)) tests the nullable request reference and obtains the manager's [configured fallback CLIP](../../evidence/native/functions/00571AD0_AnimationManager_GetConfiguredFallbackClip.asm) ([annotated pseudocode](../../evidence/native/functions/00571AD0_AnimationManager_GetConfiguredFallbackClip.c)) when absent. The manager supplies the exact instance words at +0x40/+0x44, type `0x6B20C4F3` and group zero, caching the resolved reference at +0x14. Controller ownership and setup then continue through the factory. Allocation/resource failure remains distinct from the valid-owner/null-request-reference branch. The fallback asset's name, duration and rendered pose are not inferred from these selected functions.

[Driver graph admission and update](driver-graph-and-update.md) covers graph records, physical ABI, retained watches and manager stepping.

[Actor requests and walker lifetime](requests-and-walker-lifetime.md) covers construction, placement, pending state, pause/continue and destruction.


## Current host request and parameter boundaries

Readonly GhidrAssist explicit /TS3W.exe metadata now reconfirms RequestState
7674D0..767584 (181ownedbytes). The existing192byte bounded canonical window is
reused unchanged, including11paddingbytes after RET, not re-exported/promoted.
Physical stack positions and actual767566 TEST ESI,200 /76757A call7FD000 preserve
core result even on failure; no timeout load becomes a native timer contract.
Core803E20, watch767220/769320 and manager7FD000 retain their canonical boundaries.

Two necessary existing-function pairs add117ownedbytes51instructions, no gaps:
[801B80 setter ASM](../../evidence/native/functions/00801B80_FUN_00801b80.asm)
([actual C](../../evidence/native/functions/00801B80_FUN_00801b80.c)) and
[801B00 slot lookup ASM](../../evidence/native/functions/00801B00_FUN_00801b00.asm)
([actual C](../../evidence/native/functions/00801B00_FUN_00801b00.c)). ECXdriver, setter
paramHash/valueHash RET8; lookup scans16byte rows+20/+24 then machine+C definition
7FD860, lazy801A90 admission and800010 lookup. Absent slot does not call7FD180.
Its concrete key/definition/allocator/lazy publication rules remain below those
named callees, not an invented unrestricted dynamic map. All117bytes and12
reused canonical envelopes match pristine PE/independentdecode; noDBmutation,
reanalysis/annotation/save/original-byte change. Serial async jobs all terminal.

The original7FD180 stores zero after clearing text.801BA0 returns stored+8 when
nonzero, otherwise definition+34; absent slot returns the separate supplied word.
7F3B80 graph-context reader forwards to the same getter. Therefore raw saved0
and effective declared default differ. Current host SacsParameterStore previously
returned0 directly. Bug441 is reproduced through actual compiled native-style
GetParam/SetParam; correction changes effective Get for both actual public and
graph consumers while leaving raw Values/Capture and independent StringValue.
Default/index lookup costs and malformed private resource/index boundaries change;
this bounded correction does not prove full native parameter/text/cache/parity.

Current SacsNativeDriverLifetime owns RequestState plus proxy-invalid counter;
raw SacsHostBridge forwards all seven values plus synchronous event-transport borrow.
Runtime path traces before, refreshes created-CAS actor defaults, resolves optional
bridge driver/runtime, requests, optional flag200 UpdateNow even after failure,
then ordinary log/failure log/trace-after. Placeholder writes ActorStates and0;
missing handle increments shared counter, optionally logs and inspects Sims3 frames,
then-2. Logger/reflection/allocation/private failure and mutable Runtime/Active
observations can interrupt at different points; concurrent dictionary is no whole
transaction or current/generation witness. No local native timeout is implemented.

Current parameters have separate explicit hash/string/composite maps and live
runtime store; hash/string writes can leave competing explicit entries. Composite
key text/null/UTF16/lower/colon and direct native hashes, sorted distinct diagnostic
names/counts vs lazily materialized native16byte rows, replay/save precedence,
CAS defaults vs composite overrides and native source/entity default derivation
remain explicit unaccepted comparisons. SetActor/Enter/Pause/Continue, D049
admission and full frame/event/actor/GPU/retirement remain separate current tasks.
No frozen fixtures/Everything/optional tools/game/native runtime execution.
