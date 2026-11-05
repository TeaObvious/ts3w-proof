# PC 1.67 TS3W.exe proof audit

This is a static, inspectable evidence collection for the shipped 32-bit
PC 1.67 `TS3W.exe` and its matching managed game code. The original
EXE, DLLs and assets are not redistributed. Every address below is a PE
virtual address unless marked as a file offset.

Each finding separates an **observation** present in retained original-byte
or IL exports from an **interpretation** of that observation and an
**unresolved** boundary. This is the same discipline used in a function-level
reverse-engineering proof: a name, decompiler rendering, or static xref is
never substituted for an instruction or IL witness. The selected paths below
are readable without Ghidra. They are representative audited paths, not a
claim that every registered method has a complete behavioral proof.
The [API owner index](api/README.md) lists all registered names and links to
their managed declarations and original-code exports.

## RA-01 — Native method registration identity

**Observation.** The [registration tables](evidence/bindings/tables.json)
and [1,775 row records](evidence/bindings/registration-map.json) contain
eight-byte native-pointer/name-pointer pairs in 43 tables, each with a zero
sentinel and a descriptor getter. In the retained
[consumer trace](evidence/bindings/consumer-trace.md), the x86 instructions
at `0x00D7EB50–0x00D7EB57` read the two pointers and call
`0x00E82820(name,function)`; `0x00D7EB63` advances eight bytes. The
[API index](API-INDEX.tsv) connects every verified row to its managed
signature and paired native code export.

**Interpretation.** The tables are a native name-to-address bridge for the
managed declarations. A Ghidra label is a navigation aid; the original pair
and managed metadata establish entry identity.

**Unresolved.** The audit traces one descriptor through the script-host
consumer and checks the common table structure. It has not proven that every
descriptor was constructed and consumed in a retail run, nor each entry's ABI.

## AU-01 — Audio start and completion registration

**Observation.** Original
[ScriptCore.Audio C#](evidence/managed/types/ScriptCore.Audio.cs)
and [decoded IL](guides/audio/managed/ScriptCore.Audio.il.txt) show
`StartSound(string, Delegate)` calling `Audio_StartSoundImpl`, then
`Audio_SoundFinishedCallbackImpl` only when the returned handle is nonzero.
[The audio registration catalog](guides/audio/audio-native-exports.json)
records table rows `0x01167760` and `0x011677B8`, binding those names to
`0x008630D0` and `0x00863330`. The
[start wrapper instructions](evidence/native/functions/008630D0_ScriptCore_Audio_Audio_StartSoundImpl.asm) ([annotated pseudocode](evidence/native/functions/008630D0_ScriptCore_Audio_Audio_StartSoundImpl.c))
have a zero return when the global interface is missing. The
[callback wrapper instructions](evidence/native/functions/00863330_ScriptCore_Audio_Audio_SoundFinishedCallbackImpl.asm) ([annotated pseudocode](evidence/native/functions/00863330_ScriptCore_Audio_Audio_SoundFinishedCallbackImpl.c))
call internal `0x008662C0`; the
[finished-sound contract](guides/audio/finished-callbacks.md) establishes first-registration wins, removal before delegate/host checks and invocation, unsigned callback value widths and selected retirement ordering.

**Interpretation.** The managed call sequence and native table bindings
establish a conditional callback-registration path for a started sound.

**Unresolved.** The concrete virtual audio interface, sound output, and full
delegate ownership/lifetime are not established by this static chain.

## CA-01 — Camera zoom through the managed interface

**Observation.** [SimIFace IL](guides/camera/managed/Sims3-SimIFace-CameraController.il.txt)
calls the `ICameraController.GetZoom` interface member;
[ScriptCore IL](guides/camera/managed/ScriptCore-CameraController.il.txt)
calls native `Camera_GetZoom`. Its
[registration record](guides/camera/registration-catalog.json) binds
`0x0073D800`. The [original wrapper
instructions](evidence/native/functions/0073D800_ScriptCore_CameraController_Camera_GetZoom.asm) ([annotated pseudocode](evidence/native/functions/0073D800_ScriptCore_CameraController_Camera_GetZoom.c))
return x87 zero when no active controller is found and otherwise jump to
`0x00970E60`. The [calculation
instructions](evidence/native/functions/00970E60_MainCamera_GetBaseZoomDistance.asm) ([annotated pseudocode](evidence/native/functions/00970E60_MainCamera_GetBaseZoomDistance.c))
and [Ghidra pseudocode](guides/camera/native/pseudocode/0x00970e60-ghidra.txt)
show a three-component Euclidean distance between base position and target.

**Interpretation.** On the resolved main-camera path, this getter returns
base position-to-target distance.

**Unresolved.** The result is not established as a universal zoom unit for
other controller types. Runtime camera motion and visual output were not
observed.

## AN-01 — Animation controller lifetime and managed completion

**Observation.** Original [SimIFace IL](guides/animation/managed/Sims3-SimIFace-Animation.il.txt)
and [ScriptCore IL](guides/animation/managed/ScriptCore-Animation.il.txt) bind the
managed play request to the registered native bridge. The [complete original
bridge ASM](evidence/native/functions/0073A870_ScriptCore_Animation_Animation_PlayAnimation.asm) ([annotated pseudocode](evidence/native/functions/0073A870_ScriptCore_Animation_Animation_PlayAnimation.c))
creates clip/time controllers and optional PMA completion registration. The
[controller contract](guides/animation/controller-lifecycle.md) follows actual
track attachment, queue/replacement, event forwarding, stop/expiry and deferred
listener removal to the native completion adapter and managed sleeping-task wake.

**Interpretation.** The original static path defines controller/resource
ownership and a completion-to-wake chain. Missing resource preserves FLT_MAX
lifetime; a successful void bridge return is not asset or playback acceptance.

**Unresolved.** Actual clip availability, frame output, callback latency, task
scheduling and routing waits were not executed in the original game. Full blend,
synchronization and clip-parser policies remain open.

## LO-01 — Managed resource access and script package startup

**Observation.** [Original DataFactory
C#](evidence/managed/types/ScriptCore.DataFactory.cs) calls native
`DataFactory_GetPrototypeResourceImpl`.
[Registration record `0x0115EDF0`](guides/loading/registered-boundaries.json)
binds it to `0x00740030`. The
[native instructions](evidence/native/functions/00740030_ScriptCore_DataFactory_DataFactory_GetPrototypeResourceImpl.asm) ([annotated pseudocode](evidence/native/functions/00740030_ScriptCore_DataFactory_DataFactory_GetPrototypeResourceImpl.c))
resolve a global interface, then call vtable slots `+0x17C` and `+0x34`.
The [pseudocode](guides/loading/native/pseudocode/00740030.c.txt)
is included, but its `void` return conflicts with the managed `IntPtr`
declaration. Separately, [original package-name
bytes](guides/loading/native/string-witnesses.json) and the
[startup disassembly](evidence/native/functions/00D77820_MonoScriptHost_InitializeAndMountPackages.asm) ([annotated pseudocode](evidence/native/functions/00D77820_MonoScriptHost_InitializeAndMountPackages.c))
show a call to package setup `0x00769730` at `0x00D77907`.

**Interpretation.** The managed loader crosses a registered native resource
boundary, and startup has a static route to script package setup.

**Unresolved.** The virtual resource implementation, DBPF index/read path,
managed image extraction and runtime package order remain open. A package
string xref does not prove a successful load.

## SA-01 — Save dispatch and paired writer/reader evidence

**Observation.** [Original LoadSaveManager
C#](evidence/managed/types/ScriptCore.LoadSaveManager.cs) calls
`LoadSaveManager_SaveGame_Impl`; registration record `0x011611E0`
binds it to `0x00742C40` in the
[64-row catalog](guides/persistence/registered-boundaries.json). Its
[original instructions](evidence/native/functions/00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.asm) ([annotated pseudocode](evidence/native/functions/00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.c))
resolve a manager and call `0x00AAF6C0`, leaving `EAX` as the successful
path return. The [Ghidra wrapper
rendering](guides/persistence/native/pseudocode/00742c40.c.txt)
prints `void`, which is inconsistent with the original managed `uint`
declaration and instruction flow. The [save
dispatcher](evidence/native/functions/00AAF6C0_LoadSaveManager_DispatchSave.asm) ([annotated pseudocode](evidence/native/functions/00AAF6C0_LoadSaveManager_DispatchSave.c))
has a DBPF-related path. The original
[writer](guides/persistence/managed/ScriptCore_PersistWriter.cs) writes
version `1280` and signature `0x534A424F`; the
[reader](guides/persistence/managed/ScriptCore_PersistReader.cs) checks
these values on its corresponding version path.

**Interpretation.** Saving crosses a registered native dispatcher, while
managed writer and reader code give a paired format contract rather than a
one-sided assumption.

**Unresolved.** Return-code meanings, callback completion, exact file
operations and a successful save/restart/reload cycle were not proven.

## CB-01 — Native-to-managed callback paths

**Observation.** [Callback registration
records](guides/callbacks/callback-bridge.json) join exact native entries to
managed tokens. [Camera registration
instructions](evidence/native/functions/0073E7A0_ScriptCore_CameraController_Camera_RegisterCallbackMethod.asm) ([annotated pseudocode](evidence/native/functions/0073E7A0_ScriptCore_CameraController_Camera_RegisterCallbackMethod.c))
store the named method; [dispatch
instructions](evidence/native/functions/0073E460_Camera_DispatchRegisteredEventCallback.asm) ([annotated pseudocode](evidence/native/functions/0073E460_Camera_DispatchRegisteredEventCallback.c))
invoke the host's named-method slot `+0x138`. The
[managed callsite IL](guides/callbacks/managed/registration-callers.il.txt)
and [native witness bytes](guides/callbacks/native-witnesses.json) are
retained. The [domain dossier](guides/callbacks/README.md) lists world,
animation, audio and save callback paths with their individual bounds.

**Interpretation.** The executable contains static inbound callback
mechanisms, not merely outbound managed-to-native calls.

**Unresolved.** Event firing, scheduling, thread context and lifetime in a
retail process were not observed. A cross-assembly name candidate is weaker
than an exact same-assembly token match.

## SC-01 — SACS request argument recovery

**Observation.** [Raw request
instructions](evidence/native/functions/007674D0_SACS_RequestStateImpl.asm) ([annotated pseudocode](evidence/native/functions/007674D0_SACS_RequestStateImpl.c)),
the seven-argument stack accounting in the pseudocode comment, the
[registered entry](guides/sacs/registration-catalog.tsv), and
[annotated Ghidra pseudocode](evidence/native/functions/007674D0_SACS_RequestStateImpl.c)
are retained together. The original stack sequence places `flags` in
argument 4, `simTickTimeout` in argument 5, `bridgeDriverHandle` in
argument 6 and `bridgeActorHash` in argument 7. The decompiler's indirect
host-call stack flow misassigns some displayed parameter uses.

**Interpretation.** Use the original stack positions for this entry's ABI.
The `flags & 0x200` branch schedules `EnsureAnimation` after core
submission, including negative core results.

**Unresolved.** Neither request completion nor animation completion follows
from this entry alone. [The detailed SACS
dossier](guides/sacs/README.md) separates state-watch and managed task paths.

## PK-01 — Sims3Pack manifest and entry-stream ownership

**Observation.** The [container guide](guides/loading/sims3pack.md) follows
[header/manifest transfer](evidence/native/functions/009C4290_Sims3Pack_CopyHeaderAndManifest.asm) ([annotated pseudocode](evidence/native/functions/009C4290_Sims3Pack_CopyHeaderAndManifest.c)),
[XML entry fields](evidence/native/functions/009C5A00_Sims3Pack_ParsePackagedFileFields.asm) ([annotated pseudocode](evidence/native/functions/009C5A00_Sims3Pack_ParsePackagedFileFields.c)) and
[bounded child reads](evidence/native/functions/009C4590_Sims3PackEntryStream_Read.asm) ([annotated pseudocode](evidence/native/functions/009C4590_Sims3PackEntryStream_Read.c)).
Original type-string and vtable data tie the selected producers and consumers
together. Field names use case folding; content-type values compare exactly.
Instruction-verified virtual-call signatures correct lost stack arguments and
false decompiler return/alias expressions.

**Interpretation.** The game has a separate manifest reader and relative entry
stream. Header-copy success alone is not complete container validation. Native
entry bounds and initialization preconditions cannot be inferred from a modern
launcher's defensive parser.

**Unresolved.** Full XML configuration/defaults, numeric error/overflow policy,
container-wide offset validation, shared parent lifetime/concurrency and complete
content installation remain open. No runtime package acceptance was executed.

## NG-01 — native name/GUID maps

The [NGMP contract](guides/loading/name-guid-maps.md) follows the factory into
the [actual resource reader](evidence/native/functions/00934090_NameGuidMapResource_ReadVersion1.asm) ([annotated pseudocode](evidence/native/functions/00934090_NameGuidMapResource_ReadVersion1.c)),
[UTF-16 hashing](evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.asm) ([annotated pseudocode](evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.c)) and
[first-found lookup](evidence/native/functions/0059D730_NameGuidMaps_FindFirstByHash.asm) ([annotated pseudocode](evidence/native/functions/0059D730_NameGuidMaps_FindFirstByHash.c)).
Version-one rows, full-hash duplicate retention, mapped-zero stopping, first-NUL
termination and selected stream ABI are instruction verified. The parser's
unchecked final row status and high-bit position arithmetic are explicit limits.
Physical provider precedence, effective CRT locale and concurrent reload remain
open. These are static findings; no runtime acceptance is claimed.

## RF-01 — resource reference-table versions and handles

The [REFS contract](guides/loading/reference-store.md) follows the
[payload reader](evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.asm) ([annotated pseudocode](evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.c)),
[writer](evidence/native/functions/007D6940_ReferenceStore_WriteResource.asm) ([annotated pseudocode](evidence/native/functions/007D6940_ReferenceStore_WriteResource.c)) and
[context constructor](evidence/native/functions/007D6BE0_ResourceReferences_ConstructContext.asm) ([annotated pseudocode](evidence/native/functions/007D6BE0_ResourceReferences_ConstructContext.c)).
Version three reads its width flag; older versions retain caller configuration.
Handles are unsigned, duplicate handles replace earlier keys and the optional
version-dependent local-handle collection is a set. Payload return, accumulated
stream status and wrapper return are distinct; unsupported-version false can be
ignored by the wrapper. Legacy caller policy, reverse-map duplicate ordering,
key allocation and enclosing bounds remain open. No runtime acceptance was run.

## Scope and verification boundary

The 2,991 [annotated native pseudocode
exports](evidence/native/annotation-index.json) include names, comments
and Ghidra-inferred prototypes. Each is paired by address with an
[original-byte/disassembly window](evidence/native/code-index.tsv).
These raw windows are original instructions, not a separate pre-annotation
Ghidra pseudocode snapshot. System guides supply longer original-byte
windows for the claims above. The
[selected call index](evidence/native/direct-calls.tsv)
omits virtual, computed and other indirect destinations. For each claim,
read the managed IL and registration pair first, then the instruction window,
then the pseudocode; treat the pseudocode as an interpretation.

The retained record bytes, managed IL, native instruction windows and annotated
pseudocode make each static claim inspectable without the original binaries.
No retail execution was performed for this audit.

## Find Good Location boundary chain

The [reviewed contract](guides/routing/find-good-location.md) joins the original managed declaration and callers to the full registered wrapper, zero-depth adapter, lot request builder and selected candidate-search consumers. Raw instructions establish full-word facing default versus byte storage, borrowed UInt64 array/count transport, output gates, signed direction and two float rounding stores, plus COMISS unordered radius behavior. Full world search, child status meanings and all candidate policies remain open; no gameplay execution is claimed.

## SPT section producer and fallback chain

The [section contract](guides/vegetation/spt-section-readers.md) joins the complete source dispatch caller with raw byte readers, map records/banks, leaf mesh producer and texture-control consumer. Original switch bytes establish indirect token dispatch. Instructions distinguish reserve from actual append, signed collection counts, twelve zeroed vertex float lanes versus two unwritten UV lanes, seven controls per explicit/default branch, and absence-only complete44-byte inheritance. Constructor defaults, full source/header admission and generated/rendered acceptance remain open.

## Tattoo property output

The [packed-word contract](guides/cas/tattoo-opacity-word.md) joins the UInt32 managed declaration to the original five-byte jump, full target and two property readers. Instructions establish actual out-buffer mutation and result preservation across destruction, replacing a false constant-zero C projection. Initial type2 is overwritten and ignored; normalized alpha/channel interpretation and full parser/value-reader acceptance remain open.

## Character UV stream producer

The [UV contract](guides/cas/character-uv-packing.md) follows the thirteen-stackword packer and CAS drawable caller. Instruction-checked wrapping, first matched UV atlas state and float32/FISTP packing are distinct from decompiler predicates and unconditional nearest-even. Full original bodies, actual annotated C and necessary switch/constants are retained; FP-mode setup, other attributes and GPU decoding remain open.

## Local light candidate and bank finalization

The [bank contract](guides/rendering/local-light-bank-finalization.md) joins the room state tuple, dispatch, candidate producer, selected sort passes, bank writes, response/ratio/scaling and opposing fill. It distinguishes mutable tuning/global factors from constants and restores nonstandard EAX-input/XMM0-result dataflow. Full sort stability, source admission, thread ownership and GPU acceptance remain unestablished.

## Swarm collection wire boundary

The [collection contract](guides/rendering/swarm-collection-wire.md) follows the registered factory tables, count/ownership gates, description memory writes, raw byte strings and lookup tails. Static instructions establish exact header2, mixed endian flags, low-byte widening and signed sentinels while preserving the distinction between parser completion and successful I/O. No decoder/effect test or complete factory/name policy is claimed.
