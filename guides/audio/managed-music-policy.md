# Original managed world music policy

Selected pristine `Sims3GameplaySystems` evidence covers twelve complete
`Sims3.Gameplay.Core.AudioManager` methods, 1,179 CIL bytes. Ten additional typed
IL bodies contribute 1,046 bytes; the complete Init/Shutdown bodies (133 bytes)
are reused from the existing callback evidence. No assembly or game was run.
Original managed artifact identity is retained in the [central managed evidence](../../evidence/managed/README.md).

The [one annotated C# type](../callbacks/managed/Sims3.Gameplay.Core.AudioManager.cs)
is explanatory ILSpy output. Its original code is unchanged; the actual four
missing-UI-reference warnings remain visible. They do not imply invalid original
IL: selected offsets/opcodes, direct branches and two switch tables were checked
against pristine bytes. The [twelve-member index](managed/AudioManager.methods.tsv)
records exact tokens, RVAs, lengths and the two reused bodies.

## Lifetime and ownership

- The static constructor initializes pause=false, handle=0 and mode=None,
  then creates four modifier delegates targeting Sim sim/skill and GameObject
  quality/material methods. It does not implement those target policies.
- Init creates and retains `SongComplete`, subscribes speed and camera events,
  installs all four modifier delegates and selects Theme. Shutdown selects None,
  unsubscribes those two events and clears all four modifiers. Neither method
  establishes a backend stop/drain fence or callback thread.
- LoadWorld selects Load only when not travelling. EnterWorld selects None only
  when not travelling, then always calls InitWorld; its returned bool is popped.
- ExitWorld submits hard StopGroup for **393239870, 1470391838, 543694036,
  671786287**, in that order; selects Theme only when not travelling; then calls
  ShutdownWorld. Managed order is established; completion of native stop work is
  not implied by returning from these commands.

These are original managed gameplay/mode decisions. A replacement native host
must preserve the bridge contracts without independently owning a second copy
of this workflow. The original native world/command consumers still need their
own contracts; this managed method does not specify output-device lifetime.

## Music selection and completion

SetMusicMode returns immediately when the requested mode already equals the
stored mode. Theme/Load, CAS, Map, EditTown, InGameStore, five travel-load modes,
Build/Buy and Flyby select authored event names. Map and Flyby select some names
by `GameUtils.GetCurrentWorld`; the complete strings and branches are in the
496-byte method, not inferred from mode names.

Build→Buy and Buy→Build suppress stopping/restarting the current track. Other
transitions with a nonzero handle stop it and zero the stored handle before a
nonempty selected event is started. The final stored mode is the requested mode,
including None or unmatched values with no selected event. This does not verify
successful playback or establish every caller's accepted mode domain.

SongComplete only handles stopReason=0 and a handle equal to the retained music
handle. It starts `music_mode_buy` when mode=Buy, or `music_mode_build` when
mode=Build, with the retained delegate. Other modes/reasons/handles do not restart
here. The UInt64 object-ID argument is unused. This is a managed music restart
policy, separate from native duplicate-key callback storage/consumption.

## Speed and map state

The speed callback changes pause state only on Pause/non-Pause edges. Each edge
pauses/unpauses groups **671786287** and **543694036**. While not paused, Normal
writes pitch value bits `3F800000`; Double writes `3F88F5C3`; Triple/Skip write
`3F99999A`, using property **1908158473** on groups **543694036** and **393239870**.
The `locked` parameter is not used. This method does not establish native
multi-group gain/pitch aggregation or voice stealing.

The camera callback returns immediately in IsPlayFlowState. Otherwise enabling
map view selects Map only from None; disabling selects None only from Map.
Other stored modes stay unchanged. Whether another caller changes these states
or lifetime concurrently requires that caller; no runtime event firing is
claimed.

## Finite evidence and open static paths

| Member | Whole original body |
| --- | --- |
| get_MusicMode | [060077CF](managed/AudioManager.get_MusicMode.0x060077cf.il.txt), 6 bytes |
| set_MusicMode | [060077D0](managed/AudioManager.set_MusicMode.0x060077d0.il.txt), 7 bytes |
| Init / Shutdown | [Existing complete registration callers](../callbacks/managed/registration-callers.il.txt), tokens 060077D1/D2, 83/50 bytes |
| LoadWorld / EnterWorld / ExitWorld | [D3](managed/AudioManager.LoadWorld.0x060077d3.il.txt), [D4](managed/AudioManager.EnterWorld.0x060077d4.il.txt), [D5](managed/AudioManager.ExitWorld.0x060077d5.il.txt), 14/20/63 bytes |
| GameSpeedChangedCallback | [060077D6](managed/AudioManager.GameSpeedChangedCallback.0x060077d6.il.txt), 244 bytes |
| OnCameraMapViewEnabledEvent | [060077D7](managed/AudioManager.OnCameraMapViewEnabledEvent.0x060077d7.il.txt), 40 bytes |
| SongComplete | [060077D8](managed/AudioManager.SongComplete.0x060077d8.il.txt), 69 bytes |
| SetMusicMode | [060077D9](managed/AudioManager.SetMusicMode.0x060077d9.il.txt), 496 bytes |
| .cctor | [060077DB](managed/AudioManager._cctor.0x060077db.il.txt), 87 bytes |

[Calls and function pointers](managed/AudioManager.calls.tsv) contain 59 selected
instructions. Same-assembly MethodDefs are exact; original MemberRefs retain
typed ILSpy signatures without claiming their target body has been expanded.
[Eight state fields](managed/AudioManager.fields.tsv) and
[36 field-access instructions](managed/AudioManager.field-uses.tsv) describe
reads/writes within these selected methods; they do not inventory every writer
or consumer in the assembly. No whole-assembly behavioral admission is claimed.

Full startup/shutdown callers, travel reentry, backend command completion,
modifier invocation sites, handle reuse and callback scheduling/GC/lifetime
remain static research questions. Audible/device acceptance follows separately.
