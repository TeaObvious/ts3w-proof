# Object-video commands, playback rows and queued completion

These complete selected functions belong to the original PC 1.67 executable
identified in the [reference overview](../../references/retained-proof-overview.md). Names are analyst
assignments. Original instructions govern ABI and arithmetic where stored
metadata or inferred pseudocode is incomplete.

| Entry | Selected responsibility | Original evidence |
| --- | --- | --- |
| `009D6540` | Initialization, subscriptions and named fallback texture | [ASM](../../evidence/native/functions/009D6540_ObjectVideoManager_TryInitializeResources.asm) ([annotated C](../../evidence/native/functions/009D6540_ObjectVideoManager_TryInitializeResources.c)) |
| `009D7570` | End playback, apply fallback and return next iterator | [ASM](../../evidence/native/functions/009D7570_ObjectVideoManager_EndPlaybackAndBindFallback.asm) ([annotated C](../../evidence/native/functions/009D7570_ObjectVideoManager_EndPlaybackAndBindFallback.c)) |
| `006FE440` | Resolve object renderer and apply texture override | [ASM](../../evidence/native/functions/006FE440_ObjectRenderer_ApplyVideoTextureOverride.asm) ([annotated C](../../evidence/native/functions/006FE440_ObjectRenderer_ApplyVideoTextureOverride.c)) |
| `009D7D80` | Playback row timing, loop, restart and completion branches | [ASM](../../evidence/native/functions/009D7D80_ObjectVideoManager_UpdatePlaybackRows.asm) ([annotated C](../../evidence/native/functions/009D7D80_ObjectVideoManager_UpdatePlaybackRows.c)) |

## Initialization and failure state

`009D6540` checks receiver byte `+0x90`, runs an initial gate, then sets that
byte and manager global `011EA998` before subscriptions, settings and allocation
can fail. A later call can therefore return `AL=1` through the initialized path
without a fallback texture. Four literal message identifiers are registered
through two service results: `BADA_F60C`, `635A339E`, `06168BE5`, `1EAB13F0`.
Delivery semantics are not established by those registration calls.

It reads `VideoPauseDistance` and `VideoVirtualLength`, and produces global
`011EA99C` through `Video/BlackTexture` and the existing texture constructor.
Creation receives `1,1,1,0x10,2,DefaultTextures`. A nonnull mapped pointer receives
one zero byte before unmapping. These four selected bodies alone do not establish
the helper's format, mapping success guarantees or visible output.

The initializer has an ECX receiver, no observed explicit stack arguments and
three exits with `RET0` and an AL-only result. Its stored signature is
`undefined ObjectVideoManager_TryInitializeResources(void)`, parameter count zero
and unknown calling convention; the actual decompiler infers
`undefined4 __fastcall(int)`. Neither establishes a fully defined EAX boolean.
Its complete 141-instruction, 433-byte body excludes preceding padding and the
15 following CC bytes.

## Fallback application and resource lifetime

`009D7570` constructs `Video/Message`, copies row `+0x70/+0x74` into payload
`+8/+0xC`, sends `06168BE5`, then loads `011EA99C`. It supplies that texture as
the third actual stack word to `006FE440`, after owner-low and owner-high.
It calls `009D70E0`, unlinks/releases the row and returns the output iterator
pointer in EAX with `RET8`. Its stored undefined return and allocation-null
branches do not establish graceful allocation failure or script delivery.

`006FE440` consumes an ECX receiver and three stack DWORDs with `RET0xC`;
its stored C prototype omits the third texture word. Owner lookup and interface
`017F1D88` precede the 12-byte `Renderer/VideoFixupLOD` allocation. The actual
third word reaches `00725490`. Component virtual `+0x80` receives the fixup and
an opaque eight-byte identifier, then `006DCC00` receives component `+0x210`.
An AL-only success exit can follow a null fixup; complete publication success
requires the unselected consumers.

## Playback arithmetic and limits

`009D7D80` visits playback rows behind a service byte `+0x8D` gate, reads
QueryPerformanceCounter and follows row, resource, loop, restart and end branches.
It consumes the iterator returned by `009D7570`. Actual `RET8` conflicts with
its stored one-argument fastcall signature. The maximum-float constant has bits
`7F7FFFFF`. x87 FCOMIP and SSE COMISS carry/unordered conditions and intermediate
float stores must be read literally. TEST clears carry in the selected
SUB/SBB/JS/JG/TEST/JC sequence; an inferred unsigned low-word time comparison
would not establish the original behavior.

The four bodies contain 542 instructions and 1,686 instruction bytes. Necessary
[original data](../../evidence/native/data/object-video-selected-data.md) contains
168 file-backed bytes and eight mapped zero-fill bytes. Initial zero-fill values
are not observed runtime pointers.

## Command producers and full-key selection

| Entry | Selected responsibility | Original evidence |
| --- | --- | --- |
| `0078ED20` | Resolve owner/resource, admit paired sound and enqueue play | [ASM](../../evidence/native/functions/0078ED20_ObjectVideo_QueuePlayWithPairedSound.asm) ([annotated C](../../evidence/native/functions/0078ED20_ObjectVideo_QueuePlayWithPairedSound.c)) |
| `009D79E0` | Find/add/replace row or update loop for an equal key | [ASM](../../evidence/native/functions/009D79E0_ObjectVideoManager_StartOrUpdateObject.asm) ([annotated C](../../evidence/native/functions/009D79E0_ObjectVideoManager_StartOrUpdateObject.c)) |
| `009D77C0` | Full-GUID stop request and pending-query branch | [ASM](../../evidence/native/functions/009D77C0_ObjectVideoManager_RequestObjectStop.asm) ([annotated C](../../evidence/native/functions/009D77C0_ObjectVideoManager_RequestObjectStop.c)) |
| `009D72F0` | Sound-key lookup, notification and row/resource retirement | [ASM](../../evidence/native/functions/009D72F0_ObjectVideoManager_HandleSoundStopped.asm) ([annotated C](../../evidence/native/functions/009D72F0_ObjectVideoManager_HandleSoundStopped.c)) |
| `009D6910` | Convert queued GUID and dispatch World callback slot20 | [ASM](../../evidence/native/functions/009D6910_ObjectVideo_DispatchStoppedEvent.asm) ([annotated C](../../evidence/native/functions/009D6910_ObjectVideo_DispatchStoppedEvent.c)) |

`0078ED20` has nine caller-popped stackword lanes: owner GUID low/high,
four resource-key words, low-byte loop and two low-word auxiliary inputs.
It resolves the registry and object, then queries the resource service with the
full key. Either missing lookup returns EAX0 before audio/render submission.
Its `BADA_F60C` request carries full GUID/key, loop, paired sound initially0,
two auxiliary words and `0x100` target dimensions. An existing object audio
component receives `base_tv`, flags1, related object0 and existing sound0 through
`00942D20`. That call occurs **before** render submission and the wrapper returns
its UInt32 result. No audio component leaves paired sound0.

The separate [object-sound admission body](../../evidence/native/functions/00942D20_ObjectSound_StartWithAdmissionChecks.asm)
([annotated C](../../evidence/native/functions/00942D20_ObjectSound_StartWithAdmissionChecks.c)) checks its component
row membership; unsigned count>=8 rejects. This is not proof of backend-started
voice count or permanent allocator uniqueness. The `base_tv` prefix and flag1
have their documented original branches; no replacement audio registry is implied.

`009D79E0` consumes ECX plus eleven stackwords and uses `RET2Ch`. It searches
full GUID words at row+70/+74. All four key words at+60/+64/+68/+6C must match
for the early path: only loop byte+A2 changes, `AL=1` returns, and old paired
sound+90 is retained. Thus sound admission in the earlier producer is not
bypassed by this render-manager deduplication. Different-key cleanup compares
incoming paired sound with old+90 before the cleanup child. New row setup
stores full owner/key/sound before its texture and renderer children. Selected
branches establish low-AL status; inferred whole-EAX Boolean or pointer aliases
are not stronger ABI evidence. Auxiliary flags and child/device policies remain
separate boundaries.

## Registered wrappers and retained linear windows

The registered wrappers already have canonical meaningful annotations:

| Entry | Registered original method | Existing pair |
| --- | --- | --- |
| `0078F260` | Named/product play | [ASM](../../evidence/native/functions/0078F260_ScriptCore_World_World_ObjectPlayVideo.asm) ([annotated C](../../evidence/native/functions/0078F260_ScriptCore_World_World_ObjectPlayVideo.c)) |
| `0078F360` | Supplied resource-key play | [ASM](../../evidence/native/functions/0078F360_ScriptCore_World_World_ObjectPlayVideoFromKey.asm) ([annotated C](../../evidence/native/functions/0078F360_ScriptCore_World_World_ObjectPlayVideoFromKey.c)) |
| `007856C0` | Queued object stop | [ASM](../../evidence/native/functions/007856C0_ScriptCore_World_World_ObjectStopVideo.asm) ([annotated C](../../evidence/native/functions/007856C0_ScriptCore_World_World_ObjectStopVideo.c)) |

The existing canonical pairs are retained unchanged, including their registration
annotations and decompiler qualifications. Their historical linear windows are
256,112 and80bytes respectively. Current selected defined owned bodies are
254bytes/96instructions,107/46 and74/25:435ownedbytes/167instructions total.
The13extra bytes in the historical envelopes are not newly claimed function
ownership. Do not treat these older linear windows or inferred C parameter
counts as exact current function boundaries or physical ABI. The actual named
and key producers resolve the owner before forwarding the full GUID. The named
wrapper's unaffiliated register/return-address expressions are stack-recovery
artifacts, not original inputs. Stop builds `635A339E` with the full GUID and
enqueues it; its current full owned body is74bytes.

## Stop, sound completion and queued callback

`009D77C0` takes ECX plus two GUID stackwords, `RET8`. No matching row changes
nothing. A nonnull row+78 whose `F1C750` query returns0 sets pending byte+A3=1
and returns. Otherwise the existing end/fallback path runs. This does not define
the unexpanded query producer or justify a synthetic readiness predicate.

`009D72F0` takes one UInt32 sound-key stackword, `RET4`; the inferred pointer
type is an alias, not ownership of an input pointer. Its auxiliary sound-map
branch is checked first and has its original cleanup/audio-message path.
Otherwise row paired sound+90 is matched. A `Video/Message` receives full GUID
from row+70/+74 and `06168BE5` is sent **before** fallback, selected resource and
renderer releases, unlink and row deallocation. Those child calls do not establish
the complete audio backend or event-consumer thread schedule.

The bounded message-handler branch at `009D80E4..009D80F4` routes `06168BE5` to
`009D6910`. That defined callback body takes one message pointer, `RET4`.
Null input skips dispatch but still returns AL1. Nonnull input supplies the UInt64
at message+8 to the variant constructor, dispatches event`0x14` with one argument,
and cleans returned/argument variants afterward. Only AL1 is established;
upper EAX cleanup artifacts in inferred C do not define another result.

The [existing original callback map](../callbacks/event-map.json) identifies event20
as `Sims3.SimIFace.World.OnObjectVideoStopped`. The existing
[managed original World decompilation](../callbacks/managed/Sims3.SimIFace.World.cs)
registers this event and shows its listener authority: `060005CC` checks the
EventHandler, passes `gWorld.GetType()` and constructs event args from the full
UInt64. Constructor`060007AD` wraps that same value in ObjectGuid and stores
`mObjectId`. This native adapter does not duplicate those listeners or establish
that native send is a synchronous managed invocation.

[Incoming selected transfers](../../evidence/native/object-video-control-incoming.tsv)
retain exact physical call sites and known containing functions; an undefined
handler's owner stays empty. [The direct-call index](../../evidence/native/direct-calls.tsv)
contains50physically encoded E8 edges. The separately indexed
[register-indirect flow](../../evidence/native/object-video-control-indirect-calls.tsv)
at009D7437 is CALL EAX (`FFD0`): its recorded00EC1C10 target is an analyzed
reference, not an encoded direct destination or proof of all dynamic dispatch.
The five defined control bodies contain693instructions/2085ownedbytes.

## Bounded clock/message evidence and limits

[The window index](../../evidence/native/object-video-control-windows.tsv) links
112bytes at`009D5C60..009D5CCF` and240bytes at`009D80B0..009D819F`.
These are existing Listing/data windows, not function extents, and have no
invented pseudocode. The clock window includes a separately defined neighboring
`009D5C80`; no new function definition or whole-function C follows from the window.
Its final`009D5CCE` RET8 unit is partial: only two of the three existing instruction
bytes lie inside the window. The message window contains the complete callback
branch above, but its object-stop branch continues outside the window.

At`009D5C60`, clear byte+68 returns Float32 field+70; set byte+68 loads the
constant at`00FAB218`, bits`BF800000` (-1), already retained as
[original data](../../evidence/native/data/0x00fab218-side-negative-one.bin).
The neighboring existing Listing accumulates a supplied Float32 delta into+34
under its existing lock and clears+68 when set. This is not closure of the
producer of+70, completed device buffers, hold/rate mapping or `009D6070`.

Decoder and visibility producers, other global writers, the readiness query,
audio component-row/device ownership and full event scheduling remain unresolved.
These selected bodies do not establish a three-slot frame ring, previous-frame-only
decoding, opaque RGBA8, GPU staging/fence lifetime or equivalence to a portable
clock/decoder/audio policy. No original target, audio device or GPU execution
is part of this static evidence.
