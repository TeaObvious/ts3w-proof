# Thumbnail generation callback branches

Static PC 1.67 evidence from the [identified reference](../../references/pc-167.md).
The four managed entry points select a null-callback path or a callback path;
they do not return the eventual image result directly. The callback branches
continue into separate Ghidra entries with the caller's existing stack and live
EDI. Treating those entries as independent C APIs loses their input context.
No original runtime execution is claimed.

## Evidence and coverage

| Registered entry | Continuation | Preserved code intervals, inclusive | Export limitation |
| --- | --- | --- | --- |
| [00777F30 ASM](../../evidence/native/rendering/thumbnails/00777F30_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateLotThumbnails.asm) ([C](../../evidence/native/rendering/thumbnails/00777F30_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateLotThumbnails.c)) | [00777F74 ASM](../../evidence/native/rendering/thumbnails/00777F74_ThumbnailLotGenerationCallbackContinuation.asm) ([C](../../evidence/native/rendering/thumbnails/00777F74_ThumbnailLotGenerationCallbackContinuation.c)) | 777F30..778091 | Entry body is a singleton with zero Listing instructions; 777F30..777F73 is a qualified original-byte CFG excerpt. Continuation owns 777F74..778091. |
| [007780A0 ASM](../../evidence/native/rendering/thumbnails/007780A0_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateLotThumbnailsForGroup.asm) ([C](../../evidence/native/rendering/thumbnails/007780A0_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateLotThumbnailsForGroup.c)) | [007780E9 ASM](../../evidence/native/rendering/thumbnails/007780E9_ThumbnailLotGroupGenerationCallbackContinuation.asm) ([C](../../evidence/native/rendering/thumbnails/007780E9_ThumbnailLotGroupGenerationCallbackContinuation.c)) | 7780A0..77820F | Two separate defined bodies; follow the branch and shared stack. |
| [00778210 ASM](../../evidence/native/rendering/thumbnails/00778210_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateHouseholdThumbnail.asm) ([C](../../evidence/native/rendering/thumbnails/00778210_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateHouseholdThumbnail.c)) | [00778254 ASM](../../evidence/native/rendering/thumbnails/00778254_ThumbnailHouseholdGenerationCallbackContinuation.asm) ([C](../../evidence/native/rendering/thumbnails/00778254_ThumbnailHouseholdGenerationCallbackContinuation.c)) | 778210..778371 | Entry body is a singleton with zero Listing instructions; 778210..778253 is a qualified original-byte CFG excerpt. Continuation owns 778254..778371. |
| [00778A00 ASM](../../evidence/native/rendering/thumbnails/00778A00_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateHouseholdSimThumbnail.asm) ([C](../../evidence/native/rendering/thumbnails/00778A00_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateHouseholdSimThumbnail.c)) | [00778A5D ASM](../../evidence/native/rendering/thumbnails/00778A5D_ThumbnailHouseholdSimGenerationCallbackContinuation.asm) ([C](../../evidence/native/rendering/thumbnails/00778A5D_ThumbnailHouseholdSimGenerationCallbackContinuation.c)) | 778A00..778B97 | Two separate defined bodies; follow the branch and shared stack. |

The four earlier windows stopped immediately before their callback continuation,
although both the callback branch and the null-manager epilogue leave those
windows. These eight exports preserve the entry/continuation distinction. The
four logical code intervals total 1,484 bytes, including 1,182 continuation bytes
absent from those earlier windows. Retained byte excerpts come from the pristine PE; the six nonempty Ghidra
Listings have the same instruction-start sequences as independent PE disassembly.
Separate live memory readbacks for all eight intervals match all 1,484 pristine
PE bytes. Function ownership remains unchanged; matching bytes do not establish
complete downstream behavior. The four continuation names and 36 instruction
comments are read back from Ghidra. Its C tool preserves function comments but
omits EOL comments, so the canonical C reinserts those exact verified comments
at the corresponding decompiled operations. The project save was acknowledged;
no close/reopen persistence test is claimed.

## Inputs and dispatch

The original ScriptCore declarations identify these argument groups:

| Entry | Managed arguments before callback | Native request target |
| --- | --- | --- |
| 777F30 | UInt64 lotId, UInt64 cacheId, UInt32 sizeMask | D61B00 |
| 7780A0 | UInt64 lotId, UInt64 cacheId, UInt32 sizeMask, UInt32 groupId | D613C0 |
| 778210 | UInt64 householdId, UInt64 cacheId, UInt32 sizeMask | D614F0 |
| 778A00 | ResourceKey key, UInt64 cacheId, UInt32 groupId, UInt32 sizeMask, Byte technique, I1 Boolean invalidate, UInt32 ageGender | D61620 |

See the retained [complete caller IL bodies](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/callers.il.txt)
([annotated original managed type](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/types/ScriptCore.ThumbnailManager.cs))
and matching [API registration records](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/api/ScriptCore.ThumbnailManager).
These are reused published evidence, not a new original-assembly extraction.
The four complete caller bodies are ScriptCore MethodDefs 060001A5 (46 IL bytes),
060001A6 (50), 060001A8 (46), and 060001AE (64). Each has the null-callback
`ldc.i4.1; ret` branch and a separate `GetCallbackResult; unbox.any` result branch.
The managed wrappers pass null and return true immediately for `wait == false`.
With `wait == true`, they check the yielding context, supply `CallbackDelegate`,
and cast `GetCallbackResult()` to Boolean. An immediate managed true therefore
cannot establish successful native request admission or a rendered thumbnail.

All four native entries read the manager pointer at 011EEC30 once. With a null
callback, a nonnull manager receives the request with a null notifier, and its
return value is ignored. A null manager returns through the later shared epilogue.
There is no fallback callback when no delegate was supplied. The frontend performs
no local size-mask/group-ID range validation before forwarding; downstream
acceptance remains the selected request helper's responsibility.

The HouseholdSim entry converts the 16-byte managed ResourceKey through 76C0E0
before D61620, in both branches. The actual converter's independently reviewed
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0076c0e0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0076c0e0.c))
reorders TypeId/GroupId/InstanceLow/InstanceHigh to
InstanceLow/InstanceHigh/TypeId/GroupId and returns the output pointer. The
frontend passes that local pointer immediately to D61620. It does not validate
resource existence. Byte/I1 declarations do not establish a compact byte-only
native stack layout; the original frontend moves four-byte stack slots.

## Callback contract and lifetime boundary

For a nonnull delegate, all four continuations perform this order:

1. Get the scripting interface through 769390, then invoke vtable+118, retaining
   its EDX:EAX result as a two-word token. The interface is dereferenced without
   a local null guard.
2. If the previously captured thumbnail manager is nonnull, allocate 0x38 bytes
   with the `Scripting/ScriptThumbnailNotifier` allocation label, construct through
   777C70 with token and delegate, and call notifier vtable+4 when nonnull.
   Allocation failure passes a null notifier to the request rather than skipping
   the request.
3. Invoke the selected request helper with the captured manager. Test only AL.
   A nonzero AL invokes scripting vtable+120 with token, -1, delegate, 0; then
   vtable+11C; then notifier vtable+8 when nonnull. No immediate +130 callback
   occurs on this branch.
4. A zero AL invokes notifier vtable+8 when nonnull and reaches the immediate
   callback path. An absent manager reaches the same path without allocation.
   Build a stack temporary using vtable 00FBA6F4, two UInt16 stores (higher-address word 1, then lower-address word 0),
   and a zero payload byte; invoke scripting vtable+130 with delegate, token,
   temporary address, 0. Afterwards mask 0x04 in the temporary's stack flag byte
   gates 4F5760 cleanup.

These are physical call and ordering guarantees. The typed zero temporary is
consistent with the managed Boolean-result consumer. The variant implementation
and scripting slot contracts require separate proof before assigning those host
slots a stronger scheduler/threading interpretation. The generated continuation
C may label inherited stack state as formal parameters, or render the actual
stack-byte ownership test as `unaff_EBX`; use the annotated instruction evidence.
Do not call these continuations through the inferred standalone C signatures.
The frontend epilogues restore their local allocation and use plain `RET`, with
no immediate argument-pop count. Generated calling-convention labels do not
override this physical cleanup evidence.

| Relationship | Established here | Still open |
| --- | --- | --- |
| Frontend to continuation | Conditional jump with existing stack; inherited EDI manager; epilogue shared with null-manager entry branch | Ghidra singleton/undefined entry ownership remains unchanged. |
| Frontend to request helper | Concrete target, physical forwarding, nullable notifier, AL admission branch | Helper queue/cache policy, retention, failure causes and eventual output. |
| Frontend to notifier | Allocate/construct, conditional +4, conditional +8 in the stated order | Proven retain/release implementations, final delegate invocation, cancellation and teardown. |
| Frontend to scripting host | +118 two-word token; +120 then +11C on nonzero admission; immediate +130 on failed admission/absent manager | Token identity, thread affinity, scheduler lifetime and exact host ownership. |

No inspected frontend proves eventual callback delivery, image publication,
persistent cache insertion, rendering success or resource lifetime after the
request helper returns. Those unresolved dependencies remain relevant.
