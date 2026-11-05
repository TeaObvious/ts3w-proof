# Registered object-sound entry boundaries

Original PC1.67 `/TS3W.exe`, statically instruction-reviewed in GhidrAssist.
The original registered names and valid registration/managed metadata annotations
are retained. No code bytes changed and no target/game/test was executed.

| Entry | Original binding | Full original pair | Exclusive end / bytes |
| --- | --- | --- | --- |
|`00863A10`|`ScriptCore.Audio::Audio_StartObjectSoundImpl`|[ASM](../../evidence/native/functions/00863A10_ScriptCore_Audio_Audio_StartObjectSoundImpl.asm) ([actual annotated C](../../evidence/native/functions/00863A10_ScriptCore_Audio_Audio_StartObjectSoundImpl.c))|`00863AD7` /199|
|`00863AE0`|`ScriptCore.Audio::Audio_StartObjectSoundWithFlagsImpl`|[ASM](../../evidence/native/functions/00863AE0_ScriptCore_Audio_Audio_StartObjectSoundWithFlagsImpl.asm) ([actual annotated C](../../evidence/native/functions/00863AE0_ScriptCore_Audio_Audio_StartObjectSoundWithFlagsImpl.c))|`00863B9E` /190|
|`00863BA0`|`ScriptCore.Audio::Audio_StopObjectSoundImpl`|[ASM](../../evidence/native/functions/00863BA0_ScriptCore_Audio_Audio_StopObjectSoundImpl.asm) ([actual annotated C](../../evidence/native/functions/00863BA0_ScriptCore_Audio_Audio_StopObjectSoundImpl.c))|`00863C17` /119|
|`00863C20`|`ScriptCore.Audio::Audio_StopAllObjectSoundImpl`|[ASM](../../evidence/native/functions/00863C20_ScriptCore_Audio_Audio_StopAllObjectSoundImpl.asm) ([actual annotated C](../../evidence/native/functions/00863C20_ScriptCore_Audio_Audio_StopAllObjectSoundImpl.c))|`00863C94` /116|

The four complete bodies contain243 instructions/624bytes. Their terminal RET
instructions define the ends above; following INT3 padding is excluded.

## Physical inputs and selected output

All four entries use caller cleanup/plain RET. UInt64 object GUID is the first
two stack words, low at entrySP+4, high at+8. Start entries take managed string
handle at+C and a fourth word at+10. The ordinary variant reads **only that word's
low byte**; the flags variant forwards the full UInt32. Stops take soundId at+C
or no additional word for stop-all. Start returns UInt32 EAX, with0 for failure;
stops return no value. Logical UInt64 is not a truncation to one physical word.
The pristine registered managed declarations retain CallingConventionWinApi metadata.
That metadata does not change these original plain-RET instructions. Exact original
managed/native transition and string/Boolean marshalling require their host boundary.

The ordinary start's host virtual+58 receives ECX host plus **one** stack word
(managed name) and returns16-bit code-unit pointer. Caller does not locally guard
null host or returned buffer. It normalizes loop byte!=0 into flags0/1 and calls
`ObjectSound_StartWideName(component,nameCodeUnits,flags,relatedNULL)`. The flags
variant forwards unchanged flags. The old decompiler's shared param3 spelling
lost the distinct name/loop or name/flags slots across the virtual call.

This leads to the complete
[component admission/replay contract](object-sound-admission-and-replay.md):
flagbit0 influences the early range bypass, inactive/deferred admission and
retained name; it cannot be replaced solely by an unrelated output-loop Boolean.
The64-byte code-unit name conversion and case-sensitive prefix decisions belong
to that downstream component path. Backend loop effects are not established by
this wrapper alone.

Stop-one calls component stop with `(soundId,stopMode0)`. Stop-all calls with
`(stopMode0,rowMaskFFFFFFFF)`. Missing component is a no-op. The original row-mask
scan, input-versus-row bit30 tests, callback-before-retirement and captured-end
iteration remain downstream rules. Passing mode0 does not establish immediate
backend stop completion, fade or every event reason.

## Registry and held-reference lifetime

Each entry obtains the global object registry, performs fullGUID lookup, then
passes the result through `00874FB0` into local reference storage. The exact selector in these calls is the fullGUID and Audio component mask. Missing registry,
selected object or Audio component prevents the child start/stop call; start0
is the failure result. The object reference remains held across host/component
work, distinct from the registry's borrowed lookup result.

Selected release uses LOCK XADD to subtract1 from the object's DWORD+4. If the
old count equals1, XCHG writes1 and virtual+0 receives deleteFlag1. Successful start
preserves the child's sound ID across that release; failure paths release too.
Full `00874FB0` acquisition/exception behavior, virtual deletion implementation,
managed string/GC transport, object destruction scheduling and concurrent count
invariants are not expanded here. No global callee was retyped to improve a caller.

## Validation boundary

Actual annotated MCP C was exported and independently requested again, matching
exactly apart from outer whitespace. Original and modified Ghidra FileBytes both
match the authenticated original EXE; the database was saved. Original wrapper
names retain their managed binding identity. Current project TV admission bypass,
flags storage, Started census and immediate callback forgetting require separate
source comparisons; these wrapper facts do not claim that implementation matches.
