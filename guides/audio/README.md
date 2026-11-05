# Audio in the original PC 1.67 TS3W.exe

This dossier is readable without Ghidra or the original executable. It includes
the original-byte disassembly of every identified audio-related registered
native entry, independently decoded `ScriptCore.Audio` CIL, and selected
internal native disassemblies, decompiler pseudocode and cross-references.
The sources are the original PC 1.67 `TS3W.exe` and matching
`ScriptCore.dll`. No original PE or DLL is enclosed.

## What is actually covered

| Evidence | Coverage |
| --- | ---: |
| ScriptCore.Audio native registration rows and original-byte bounded disassemblies | 25 / 25 |
| Additional sound-related RouteManager and UIManager registration rows | 2 |
| Selected internal/bridge code exports, with retained cross-references where available | 23 |
| Managed `ScriptCore.Audio` declarations and caller bodies | complete type decompilation and CIL |
| Reviewed finished-callback path | [12 full function pairs](finished-callbacks.md), including map consumption, variants and object retirement |
| Reviewed outside sampling and occlusion | [Four complete outside bodies and one complete occlusion body](outside-sampling-and-occlusion.md), matched tuning, point producer and consumer |

`audio-native-exports.json` is the registration/function index: each row
contains the exact eight-byte `(function VA, name VA)` original record, its
file offset, the verified ASCII name, managed metadata token/signature,
the path to the original disassembly. Several Ghidra body readouts are truncated even where the
original-byte exports contain ordinary machine instructions; use those bytes
to assess implementation. Most registration disassemblies end at the next listed Ghidra
function entry, an upper bound rather than an independently proven exact
function boundary. The reviewed finished-callback wrapper and the four
[object-sound entry wrappers](object-sound-script-entry-boundaries.md) use their
complete bodies ending immediately after RET; their rows record that boundary. `wrapper-call-index.json` lists visible direct calls,
indirect call sites and returns from those bounded linear decodes. Its
unresolved virtual calls are not silently treated as known callees.

The original ScriptCore.Audio registration table starts at `0x01167750`,
contains 25 eight-byte rows, and has a zero pair at `0x01167818`.
The descriptor vtable at `0x01028F10` points at the literal type-name
getter `0x00863080` in slot `+0x0C` (returns ASCII `Audio`) and table
getter `0x00864420` in slot `+0x10`. Original getter bytes
`8B 44 24 04 C7 00 50 77 16 01 C2 04 00` store the table address
`0x01167750` through the passed output pointer. The table, descriptor,
getter and row bytes are recorded in `audio-native-exports.json`; the full
static registration-consumer path is
documented in the bundle's `evidence/bindings/consumer-trace.md`.
This establishes a native name/address binding route, not a runtime call
observation.

## Managed caller to native function: ordinary sound and callback

The pristine managed C# export shows `Audio.StartSound(string,
Delegate)` calls the native declaration `Audio_StartSoundImpl(name)`,
registers `Audio_SoundFinishedCallbackImpl(handle, callback)` only if the
returned handle is nonzero, then returns that handle. The exact original CIL
for caller token `0x060011F6` has `call 0x060011D7` at `IL_0001`,
`brfalse.s` at `IL_0008`, and `call 0x060011E1` at `IL_000C`;
the latter two tokens are the P/Invoke declarations. See
`managed-ScriptCore.Audio.il.txt` and the shared
[managed type export](../../evidence/managed/types/ScriptCore.Audio.cs).

In the original executable, record `0x01167760` has bytes
`D0 30 86 00 10 90 02 01`: little-endian
`Audio_StartSoundImpl -> 0x008630D0`, name pointer
`0x01029010`. Record `0x011677B8` has bytes
`30 33 86 00 0C 92 02 01`: callback entry `0x00863330`
and name pointer `0x0102920C`. The [start wrapper ASM](../../evidence/native/functions/008630D0_ScriptCore_Audio_Audio_StartSoundImpl.asm) ([pseudocode](../../evidence/native/functions/008630D0_ScriptCore_Audio_Audio_StartSoundImpl.c)) and [callback wrapper ASM](../../evidence/native/functions/00863330_ScriptCore_Audio_Audio_SoundFinishedCallbackImpl.asm) ([pseudocode](../../evidence/native/functions/00863330_ScriptCore_Audio_Audio_SoundFinishedCallbackImpl.c)) preserve those native paths.
`Audio_StartSoundImpl` checks global `0x011D9C40` and returns zero on
its null branch; its ordinary branch reads its input, calls
`GetGlobalInterfacePointer_11D5BBC` (`0x00769390`), then uses several
virtual dispatch slots. The concrete object type and the semantics of
every virtual slot remain unresolved. At `0x0086334D`, the callback
wrapper directly calls the [delegate store ASM](../../evidence/native/functions/008662C0_Audio_StoreSoundFinishedDelegate.asm) ([annotated pseudocode](../../evidence/native/functions/008662C0_Audio_StoreSoundFinishedDelegate.c)). The
[finished-callback contract](finished-callbacks.md) follows unique insertion,
lookup and erase-before-invoke dispatch, the three correctly typed callback
values and selected object-sound retirement ordering. Its full bodies supersede
the earlier bounded callback windows. Delegate rooting, thread and shutdown
remain unresolved.
The [annotated accessor pseudocode](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.c)
records why the old `SACS_GetManager` name was corrected: the
[original six bytes](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.asm) ([annotated pseudocode](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.c))
simply load a global pointer also used in audio.

The managed `StopSound(uint)` caller (token `0x060011F8`) returns
true immediately for handle zero; otherwise CIL calls
`Audio_StopSoundImpl` (token `0x060011DE`). Its registration points
to `0x00862F20`. Original instructions pass the handle and zero to
`0x008608E0`, then put `1` in `AL` before returning. The internal
`0x008608E0` body is exported. Thus the native P/Invoke's one-byte
boolean result is true on this wrapper path; that does not establish
whether an underlying voice existed or stopped successfully.

## Object sound, listener and voice paths

The managed object-sound overloads call the registered
`Audio_StartObjectSoundImpl` (`0x00863A10`) or
`Audio_StartObjectSoundWithFlagsImpl` (`0x00863AE0`).
The selected native Audio-component lifecycle is established in the
[admission, deferred-row and replay contract](object-sound-admission-and-replay.md).
The complete wide-name bridge and admission bodies supersede their earlier
bounded exports. The eight-entry cap counts rows including deferred requests;
activation, retained names and completion retirement are distinct from confirmed
backend voice starts. All other producers and gameplay acceptance remain open.

The listener chain is supported by the exported `AudioListener_LoadTuning`
(`0x0086C790`), `AudioListener_UpdateFromCamera` (`0x0086C840`),
`AudioCurve_LoadProperty` (`0x008AA3B0`), and
`AudioCurve_EvaluateLinear` (`0x008A9B70`). Raw instructions in the
tuning loader push resource pair `7FB30F8A:5DDF6D75` and property
IDs `F8DEB1C3`, `0A1495CB`, `16074FA6`. The curve loader seeds an
identity curve before replacing knots when a property loads; the
evaluator interpolates knot records. The audio emitter constructs a
default curve, then `AudioEmitter_UpdateSpatialProperties`
(`0x008A1290`) emits `6EB7A717` for pan distance and
`CE78D695` for pan size on the multi-channel path. These IDs are
instruction operands; the semantic labels derive from the linked
data flow and remain scoped to these paths.

The voice path has separate root and property-interface vtables in
`AudioVoice_Construct` (`0x008AF960`). Manager registration
`0x008B7650` inserts the latter into the handle map, and
`0x008B5210` looks up a handle before invoking the property interface.
`AudioVoice_PropertyInterfaceSet` (`0x008AD840`) dispatches ordinary
scalar values to `AudioVoice_SetScalarProperty` (`0x008AD940`).
The latter compares property ID `25DF0108` at `0x008ADA8C` and
stores the supplied float at voice offset `+0x70` on its matching
branch. `AudioVoice_LoadAuthoredProperties` (`0x008AEE90`) also
references `25DF0108` at `0x008AF0C7`. Other dynamic-property
branches are present; this dossier does not equate every property
route with the scalar one.

All 23 internal exports are indexed in `internal-native-exports.json`
with assembly and decompiler paths, and retained cross-references where
available. The reviewed callback store links to its canonical pair; its selected
outgoing calls are in the shared direct-call index. Other already shared
pseudocode bodies also use the annotated native export directory. The
decompiler is an aid to navigation. Where indirect calls distort stack
analysis, raw instructions control argument and branch conclusions.

## Limits

Everything above is static original-code evidence. No game process was
run, no audio output was measured, no complete virtual-call target set
was recovered, and delegate rooting, callback thread/shutdown and authored resource
contents remain unresolved. The two related RouteManager/UIManager
entries are identity/bounded-code exports, not completed subsystem
traces. Readers can inspect every cited text/JSON file without Ghidra.
The exact registration-pair hex, descriptor and getter addresses, table
sentinel, original-byte spans and decoded CIL are retained for independent
inspection. The CIL listing comes from metadata, not execution of game
methods.

## Intro gain and local ambience accounting

[Intro movie gain and resource request](intro-movie-gain.md) retains the original MusicMute/MusicLevel/intro-factor order, x87 result and selected four-word movie-open ABI. It also records the global ambience tick's unconditional submission accounting; timer reset alone does not prove playback success.

## Original managed music and world policy

[Managed music policy](managed-music-policy.md) retains twelve complete selected AudioManager bodies: mode changes, travel guards, pause/pitch commands, world entry/exit and song-completion restart. Ten typed IL bodies supplement two reused callback bodies; one existing annotated C# type remains canonical. Native command completion and device lifetime are separate questions.

## Outside sampling and occlusion

The [outside contract](outside-sampling-and-occlusion.md) retains constructor/tuning units, thirteen-point generation, call-count cadence, lot/floor/room sampling and one final publication store. The complete occlusion pair retains six physical stack words, three placement candidates and repeated floor attenuation. Scheduler, resource/property readers, place producers and backend acceptance remain separate.

- [Filtered view segments and roof collision registration](filtered-view-segments-and-roof-collision.md): original query masks, AL/output ABI, transform arithmetic and selected roof producer.
