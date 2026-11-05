# SACS required events and frame settings

Static original PC 1.67 analysis in `/TS3W.exe`. Names below are analyst roles,
not recovered source symbols. Complete owned instruction bodies and actual
annotated Ghidra C are canonical; inferred C declarations do not replace the
physical register, stack, signedness and floating-point instructions.

## Manager defaults and registration

[ASM 007FCBC0](../../evidence/native/functions/007FCBC0_SacsManager_InitializeState.asm) ([annotated Ghidra C](../../evidence/native/functions/007FCBC0_SacsManager_InitializeState.c)).

ECX is existing manager storage, EAX returns that address, plain RET. Initialize
container/state words and embedded table identities; frame fields +3C=60,
+40=16, +44=35 and enabled byte +48=1. Allocation, global publication and the
rest of the manager lifecycle are outside this initializer.

[ASM 007FCCD0](../../evidence/native/functions/007FCCD0_SacsManager_RegisterSettingsAndDriverType.asm) ([annotated Ghidra C](../../evidence/native/functions/007FCCD0_SacsManager_RegisterSettingsAndDriverType.c)).

ECX manager, no consumed incoming stack words, plain RET; normal AL=1 with
incidental upper EAX. Optional debug service registers UTF-16 names:

| Manager field | Name / role | Physical registration arguments |
| --- | --- | --- |
| +48 | Enable SACS Load/Save | address/name through virtual slot28 |
| +3C | QueueLimitFrames | address/name, then 1,360,1 through slot38 |
| +40 | ScriptReturnFrames | address/name, then 1,60,1 through slot38 |
| +44 | LoopDelayFrames | address/name, then 1,60,1 through slot38 |

The three integers are actual arguments; this function alone does not establish
the debug service's clamp/step interpretation. Settings are registered against
live addresses, so constructor defaults are not immutable runtime constants.
The function also registers the missing-animation command and replaces the
global reflected driver-type descriptor at011D9D48, retaining original identity
`Sims3::SACS::StateMachineDriver`, `SACS/StateMachineDriver`, key2860B6D5.
It is not a per-frame driver update. Direct incoming calls at007FCE8D/007FCE9D
are present; their containing factory is not currently a defined Ghidra function
and is not claimed as a complete exported constructor path.

The scalar at00FC2B9C is original bytes `89 88 08 3D`, binary32 0x3D088889
(approximately 1/30 second). Listener Ending uses signed CVTSI2SS/MULSS;
controller Update uses signed FILD/FMUL and a binary32 FSTP before comparison.
Defaults round to 35 frames→0x3F955556 seconds and16→0x3F088889 seconds.
These are readiness thresholds, not elapsed engine/simulation steps.

## Required event selection and actual payload consumer

[ASM 005801E0](../../evidence/native/functions/005801E0_ClipEventTable_GetLastRequiredEventIndex.asm) ([annotated Ghidra C](../../evidence/native/functions/005801E0_ClipEventTable_GetLastRequiredEventIndex.c)).

ECX event-pointer vector, signed EAX ordinal, plain RET. Cached field+10=-2
means uncomputed. On first access write -1, scan all nonnull event pointers,
and retain the last ordinal whose event dword+1C has bit4. Other flag bits do
not negate it. Empty/no-required lists return -1. Subsequent calls return the
cache without scanning; invalidation is a separate producer responsibility.

[ASM 00568D40](../../evidence/native/functions/00568D40_AnimationClipController_BuildEventPayload.asm) ([annotated Ghidra C](../../evidence/native/functions/00568D40_AnimationClipController_BuildEventPayload.c)).

ECX controller, one physical output pointer, RET4. Payload+14 is set by signed
`lastRequired <= lastProcessed` (CMP/SETLE); null clip writes true. It is not
an all-authored-events flag. Payload+15/+16 copy controller state bytes, and
the retained auxiliary reference has its own atomic retain/release path.

[ASM 00569250](../../evidence/native/functions/00569250_AnimationClipController_Update.asm) ([annotated Ghidra C](../../evidence/native/functions/00569250_AnimationClipController_Update.c)).

After due-event processing, refresh the same required-event comparison. An
infinite cycle count or null clip admits the tick/Ending dispatch directly;
otherwise threshold >= playback remaining admits it. Equality admits; unordered
FCOMIP/JC rejects. The SACS listener's later remaining<threshold test is strict:
equality and unordered do not enter status7. Do not conflate these two gates.
With a next-unprocessed cursor, `next > lastRequired` expresses the same ordinal
boundary. The managed receipt/notification interface remains a projection of
the native controller identity, timing and lifetime.

## Loop callback and downstream boundary

[ASM 008A38B0](../../evidence/native/functions/008A38B0_SacsListener_OnControllerLoopedNoOp.asm) ([annotated Ghidra C](../../evidence/native/functions/008A38B0_SacsListener_OnControllerLoopedNoOp.c)).

Complete body is RET8 only, no state writes. SACS table01021380 uses this as
Looped callback; the stored zero-argument prototype omits two physical words.
The shared target does not make every other table referencing it a SACS table.

[Registration/callback contract](controller-registration-and-notification.md)
closes Started/Ending/Completed/status/completion consumers, including selected
identity,24-byte entry flags, namespace retains and omitted overlay side effects.
This extension verified six complete listing envelopes (1331bytes/426instructions),
preserved stored ABI/body/local metadata and saved the database without changing
original bytes. No original game execution, callback race test, runtime tuning
test or full manager lifecycle equivalence is claimed.
