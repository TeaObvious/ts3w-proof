# Original LoadTick and selected pump mechanisms

Nine complete original PC1.67 bodies,651 instruction-envelope bytes, were
checked against the original file and actual annotated Ghidra C. Seven pairs
are new; the two older LoadTick exports now use their complete actual function
envelopes instead of padding/neighbor windows. Analyst names are descriptions,
not recovered symbols. This is static evidence; no original code was run.

## Complete original pairs

| Entry | Selected contract | Original pair |
| --- | --- | --- |
| `00789220` | Registered no-argument void LoadTick entry | [ASM](../../evidence/native/functions/00789220_ScriptCore_World_World_LoadTickImpl.asm) ([annotated C](../../evidence/native/functions/00789220_ScriptCore_World_World_LoadTickImpl.c)) |
| `00C5F5A0` | Set callback and cookie | [ASM](../../evidence/native/functions/00C5F5A0_World_SetLoadPumpCallback.asm) ([annotated C](../../evidence/native/functions/00C5F5A0_World_SetLoadPumpCallback.c)) |
| `00C5F5C0` | Invoke optional callback | [ASM](../../evidence/native/functions/00C5F5C0_World_InvokeLoadPumpCallback.asm) ([annotated C](../../evidence/native/functions/00C5F5C0_World_InvokeLoadPumpCallback.c)) |
| `00ECAB50` | Selected elapsed-gated service callback | [ASM](../../evidence/native/functions/00ECAB50_LoadPump_ThrottleAndDispatchServices.asm) ([annotated C](../../evidence/native/functions/00ECAB50_LoadPump_ThrottleAndDispatchServices.c)) |
| `00ECAAA0` | Selected frame-service sequence | [ASM](../../evidence/native/functions/00ECAAA0_LoadPump_RunSelectedFrameServices.asm) ([annotated C](../../evidence/native/functions/00ECAAA0_LoadPump_RunSelectedFrameServices.c)) |
| `004F37C0` | Read scaled elapsed clock | [ASM](../../evidence/native/functions/004F37C0_ElapsedClock_ReadScaledTicks.asm) ([annotated C](../../evidence/native/functions/004F37C0_ElapsedClock_ReadScaledTicks.c)) |
| `004F39B0` | Construct and optionally start clock | [ASM](../../evidence/native/functions/004F39B0_ElapsedClock_ConstructAndOptionallyStart.asm) ([annotated C](../../evidence/native/functions/004F39B0_ElapsedClock_ConstructAndOptionallyStart.c)) |
| `006E8170` | Read borrowed frame-service global | [ASM](../../evidence/native/functions/006E8170_LoadPump_ReadFrameServiceGlobal.asm) ([annotated C](../../evidence/native/functions/006E8170_LoadPump_ReadFrameServiceGlobal.c)) |
| `007D9C20` | Read registered thread ID | [ASM](../../evidence/native/functions/007D9C20_ThreadIdentity_ReadRegisteredPumpThreadId.asm) ([annotated C](../../evidence/native/functions/007D9C20_ThreadIdentity_ReadRegisteredPumpThreadId.c)) |

## Registered boundary and callback publication

The registered ScriptCore MethodDef `060008A8` entry is exactly five bytes: an
E9 tail jump to `C5F5C0`. The following INT3 padding is not part of the function.
Its Ghidra body now contains the complete five-byte instruction; no original
bytes changed. Thunk decompilation can display the target body rather than a
literal jump. The target's complete envelope is20 bytes, not the former176-byte
window containing neighbors.

The dispatcher loads callback pointer11EDBC8. Null returns. Otherwise push the
cookie at11EDBCC, call the callback, pop one stack word and return. The callback
ABI is `void cdecl(void *cookie)`. LoadTick returns no completion value and the
dispatcher has no queue-drain loop, resource schema or readiness predicate.
Effects of an installed callback are separate.

The two-word cdecl setter writes callback FIRST, cookie SECOND. It performs no
validation, retention, callback invocation, lock or atomic pair publication.
Concurrent registration/dispatch safety is not established. A static setup
callsite atECC644 identifies ECAB50 as a candidate target and its owner cookie;
the full startup caller, installed-target lifetime and reachability are not
admitted as complete contracts here. The following complete callback bodies
are bounded mechanisms, not a complete world-startup contract.

## Elapsed gate and call order

ECAB50 uses one process-shared clock at1200BC0 and initialization bit1 at1200BD8.
On first use, set the bit before constructing clock(mode5,start1) and registering
the original exit callback. Read elapsed value in x87 ST0. Compare against the
original binary32 word `0x3D088889`, value `0.03333333507180214`, reused from
[original reference data](../../evidence/animation/controller-reference-data.tsv).

FCOMIP compares threshold against elapsed; JA skips ONLY ordered
`threshold > elapsed`. Equality and unordered comparison continue. Actual
Ghidra `threshold <= elapsed` omits this unordered branch; the correction is
annotated in the C itself. No finite-input claim is inferred.

For an admitted invocation:

1. Clear the clock's start and accumulated64-bit values; replace start from
   RDTSC when mode1, otherwise QueryPerformanceCounter. This occurs BEFORE
   service calls and thread admission. QPC's success result is not checked here.
2. Query50AF90. A nonnull service receives ECX virtual calls24 then28.
   Their complete effects remain unexpanded.
3. Compare GetCurrentThreadId with the UInt32 global read by7D9C20. Mismatch
   returns AFTER the timer reset and those two optional calls.
4. On match, invoke global11CEBD0 virtual8C without a local null guard. Move the
   cookie to ECX, restore the frame and tail-jump to ECAAA0.

Mode5's calibration/unit and complete clock setup remain open. The numeric
threshold alone does not prove30Hz or a simulation-time interval. There is no
Sleep or explicit readiness wait in this callback; child calls may have work
and blocking behavior outside this selected scope. Shared clock/init updates
have no explicit synchronization in these bodies.

## Selected frame-service sequence

ECAAA0 receives the opaque cookie in ECX with no stack arguments:

1. Query9E0120. If nonnull and9DAB50 returns AL true, call9DC700 on that receiver
   with callbackECA830 and cookie as two callee-popped stack words.
2. Read global11D2860 via6E8170; nonnull receives6EBA00.
3. If global11D2530 is nonzero, callECA590 with cookie inECX and stack word1.
4. The SAME previously captured nonnull service receives6E8640.
5. Restore saved registers and tail-jump589280.

The read-global helper returns its borrowed pointer without retain or readiness
check. Full UI/render/task semantics, global lifetime and each child are open;
the sequence is not evidence that all assets are decoded or GPU-resident.

## Clock arithmetic and ABI

The24-byte clock stores startUInt64 at0, accumulatedUInt64 at8, modeUInt32 at10
and scaleFloat32 at14. Constructor uses ECX, two stack arguments and RET8,
returns the receiver inEAX. It zeroes start/accumulator/mode, sets scale1, calls
the unexpanded mode configurator4F34E0, then optionally samples the selected
counter when requested and start is still zero.

The read helper takes ECX, no stack arguments and returns extended floating
value inST0. It does not mutate the clock. If start is nonzero, compute unsigned
64-bit counter delta. Delta<=global64-bit overhead adds ONE tick to the saved
accumulator; larger delta adds delta-overhead. Preserve carries and modular
64-bit arithmetic. Zero start uses only the saved accumulator.

Unsigned conversion uses signed FILD of the low63 bits plus negated signed
FILD of the isolated high bit: the latter contributes positive2^63. It is not
negative elapsed time. Multiply by the stored binary32 scale in x87 and return
ST0. Scale/overhead initialization, units, calibration and exceptional clock
behavior are separate contracts. These bodies read OS/cycle counters, not a
managed simulation clock.

## Open staging questions

LoadTick's void callback boundary does not establish queued parse/decode work,
material preparation, mesh generation, GPU upload completion, asynchronous
drain or the condition admitting simulation. The full world-manager load
phases, callback installation and original managed producers need separate
complete evidence. Preserve this distinction when comparing a CPU world-load
result, later GPU publication and original simulation readiness. No performance
benefit, executed loading trace or host regression is established here.
