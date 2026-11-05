# Native to managed callback bridges in retail TS3W.exe

This dossier is an offline proof package for callback paths in the original PC
1.67 `TS3W.exe`. It needs neither Ghidra nor the executable or assemblies to
review the evidence. `native-witnesses.json` describes 19 native code witnesses, their original
disassembly, PE virtual addresses and file offsets, and eight native registration
records with the original name strings. The selected finished-audio witnesses
link to their complete canonical function pairs; other witnesses retain their
original bounded bytes.
The witness index links each disassembly; the remaining bounded exports are in
`native/`. The original EXE SHA-256 is
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Selected native bridge helpers have annotated
[Ghidra pseudocode exports](../../evidence/native/annotation-index.json)
paired with [original-byte windows](../../evidence/native/code-index.tsv).
The raw native witnesses below are the independent instruction evidence for
those annotations.
Exact original IL and decompiled managed type exports are included here.
Decompiler output is explanatory. The IL,
metadata tokens and native instruction bytes are the primary evidence.

`native-witnesses.json` records original code extents and links, registration
pointer/name pairs and source identity; the managed IL and derived event maps
are provided beside them for independent inspection.
This is a static audit and does not execute the game.

## What crosses the boundary

`callback-bridge.json` joins eight exact native table entries to the pristine
`ScriptCore.dll` MethodDef tokens and same-assembly IL callsites. The shared
registration table consumer is independently documented by the parent proof.
The following chains have further native evidence:

| System | Managed side | Registered native entry | Native continuation / result |
| --- | --- | --- | --- |
| World named events | `SimIFace.World.RegisterAllCallbacks` → `IWorld.RegisterCallbackMethod` → `ScriptCore.World` | `0x00796550` | `0x00796510` stores type/method names; `0x0078F670` dispatches through the host's named-method path at vtable `+0x138` |
| World delegate events | `SimIFace.World` constructs routing delegates → `IWorld.RegisterCallbackDelegate` | `0x00786580` | stores a delegate in the event slot; `0x0078F670` reads that slot and calls the host delegate path at vtable `+0x134` |
| Camera events | `SimIFace.CameraController.RegisterAllCallbacks` → `ICameraController.RegisterCallbackMethod` → `ScriptCore.CameraController` | `0x0073E7A0` | stores type/method names; `0x0073E460` reads them and calls host vtable `+0x138` |
| Animation finish | `SimIFace.Animation` static constructor creates `PMAAnimationFinishedCallback` delegate → `ScriptCore.Animation` | `0x0073A250` | stores the delegate at global `0x011D4E34 + 8`; reads at `0x0073A969` and `0x0073AEC8` attach it through `0x00576E80` |
| Animation missing | `ScriptCore.Animation::Animation_SetMissingAnimationCallback` | `0x004B40C0` | one-byte `RET`; this build supplies no implementation at that address |
| Audio finish | `ScriptCore.Audio.StartSound*` passes a sound ID and finished delegate | `0x00863330` | `0x008662C0` keeps the first pair per ID; `0x008659F0` removes it before host invocation; [full finished-sound contract](../audio/finished-callbacks.md) |
| Audio modifiers | `Gameplay.Core.AudioManager.Init` passes four delegates through `SimIFace.Audio` and `ScriptCore.Audio` | `0x00863750` | native entry conditionally wraps and installs non-null delegates; this dossier does not establish each later invocation site |
| World save | `SimIFace.LoadSaveManager.SaveWorld` → `ScriptCore.LoadSaveManager.SaveWorld` creates a `bool` callback closure | `0x00743880` | `0x00743670` schedules save work; `0x00742FC0` delivers a Boolean result through host vtable `+0x124` |

The `0x004B40C0` one-byte no-op is shared by several unrelated registration
names. The animation registration row and managed declaration establish that
specific name; the shared address must not be treated as a distinct callback
implementation.

`event-map.json` makes the high-value inbound map explicit. The pristine
`SimIFace.WorldEvent` enum has 76 IDs (`0`–`75`). `RegisterAllCallbacks`
registers 73 type/method names and two routing delegates. `OnPortalLocked`
registers its delegate when a managed event subscriber is added or removed.
All 73 named targets and both delegate targets resolve to exact `SimIFace.dll`
MethodDef tokens in `managed-callback-target-candidates.json`. The native World wrappers accept
IDs through `0x4B` and index 36-byte slots. `CameraEvent` has five actual
events (`0`–`4`) plus a `CameraEventMax` sentinel; all five are registered as
named methods and resolve to exact MethodDef tokens. The 80 retained target
rows cover these World and camera registrations. The camera wrapper bounds
the ID at `4` and indexes 32-byte slots.

The managed caller scan examined 165,766 method bodies in ten retail
assemblies with zero parse failures. The retained evidence contains 25
relevant method bodies and 103 **candidate** callsites: 87 event registration
calls, ten audio start calls on the callback-bearing `SimIFace` bridge, three
audio modifier registrations, two `SaveWorld` calls and one animation-finish
registration. Unrelated gameplay and UI sound-play callers from the broad
scan are omitted. These are static IL references, not confirmed
native-to-managed invocations. Cross-assembly MemberRefs are name candidates;
same-assembly MethodDefs are exact. The retained callsite metadata and original
IL are in `managed-registration-callers.json` and
`managed-registration-callers.il.txt`; selected `ScriptCore` boundary IL is in
`managed/native-bridge-callers.il.txt`.

## Evidence boundaries

The native register/store/dispatch instruction chains above establish that
the executable contains inbound callback mechanisms and their static control
flow. They do not show an event actually firing in a retail process, nor its
thread, scheduling, ownership or failure behavior under all inputs. The host
vtable slots are identified by their use in the selected instruction spans;
their full interface implementations are outside this dossier. The generic
audio modifier callbacks, animation adapter's exact managed invocation
contract and complete save lifecycle remain open. In particular, a managed
method name or a decompiled signature alone is not proof of native argument
positions; consult raw instructions at the listed addresses before asserting
an ABI. The [finished-sound contract](../audio/finished-callbacks.md) verifies its selected stack argument widths and variant tags against original instructions; the other paths do not gain an ABI proof from their decompiler prototypes.

The files in `managed/` are exports of selected types from the verified
package-extracted `SimIFace.dll` and `Sims3GameplaySystems.dll`, plus exact IL
from all ten verified assemblies. The retained event and crossing maps record
the derived joins with their underlying byte or IL witnesses. Every
conclusion above has a local byte or IL witness, so readers can inspect the
callback boundary without opening a disassembler.

[Original managed music policy](../audio/managed-music-policy.md) joins the retained AudioManager registration callers to selected mode, speed, world and song-completion consumers. It establishes managed call order, not backend completion or callback threading.
