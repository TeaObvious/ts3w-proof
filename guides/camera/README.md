# PC 1.67 TS3W.exe camera dossier

The [gameplay input and rotation guide](gameplay-input-rotation.md) provides the physical middle-mouse binding, cursor capture/recentering, virtual targets, rate/impulse banks and continuous-yaw integration.

The [main frame and ground guide](frame-ground-order.md) provides the full annotated camera frame, its map/follow/ground order and the original descent and eye-sample constants.

This folder is a standalone **static** original-code reference. It can be read
without Ghidra, the retail EXE, or a live game. The shipped input analyzed was
the x86 PC 1.67 `TS3W.exe`, SHA-256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
The managed inputs are original PC 1.67 `ScriptCore.dll` and `SimIFace.dll`.
No binary or managed assembly bytes are included.

## Coverage and how to read it

[registration-catalog.tsv](registration-catalog.tsv) lists **all 44**
`ScriptCore.CameraController` native registrations found in the verified
registration table, plus four CAS camera methods and three adjacent camera
entries: **51 records at 51 addresses**. The machine-readable
[catalog](registration-catalog.json) includes the exact eight-byte native
registration record, record VA/file offset and managed signature/token. Each
disassembly reference is either a legacy bounded original-EXE export or a
reviewed canonical owned-body export. Legacy windows stop at the next known
Ghidra entry or 4 KiB and may include padding or a second routine after `RET`;
that bound does not establish a function extent. Never infer ABI or complete
behavior from a registration name alone.

The three selected entries below use complete canonical owned bodies. Their
catalog rows explicitly supply adjacent pseudocode, start/end-exclusive bounds,
byte length and `bodyComplete=true`; the optional TSV fields are blank on other
rows. The historical `bounded_disassembly`/`boundedDisassembly` field names are
retained for lookup compatibility; these three values point to canonical ASM.

| Selected entry | Complete owned body | Canonical pair |
| --- | --- | --- |
| `Camera_SetControllerType` | `[0x0073d4b0, 0x0073d4d5)`, 37 bytes | [ASM](../../evidence/native/functions/0073D4B0_ScriptCore_CameraController_Camera_SetControllerType.asm) ([annotated pseudocode](../../evidence/native/functions/0073D4B0_ScriptCore_CameraController_Camera_SetControllerType.c)) |
| `Camera_StartFlyThrough` | `[0x0073d7a0, 0x0073d7c6)`, 38 bytes | [ASM](../../evidence/native/functions/0073D7A0_ScriptCore_CameraController_Camera_StartFlyThrough.asm) ([annotated pseudocode](../../evidence/native/functions/0073D7A0_ScriptCore_CameraController_Camera_StartFlyThrough.c)) |
| `Camera_GetCustomFlyThroughIndex` | `[0x0073d7d0, 0x0073d7ee)`, 30 bytes | [ASM](../../evidence/native/functions/0073D7D0_ScriptCore_CameraController_Camera_GetCustomFlyThroughIndex.asm) ([annotated pseudocode](../../evidence/native/functions/0073D7D0_ScriptCore_CameraController_Camera_GetCustomFlyThroughIndex.c)) |

These bounds exclude padding and adjacent routines. They establish the selected
wrapper bodies, not downstream behavior or a prototype inferred by a decompiler.
The 67 selected disassembly inputs remain the catalog/helper union; canonical
pair reuse changes their locations, not that logical coverage count.

The `managed/` directory contains full type decompilations and decoded IL for
both `Sims3.SimIFace.CameraController` and
`ScriptCore.CameraController`. The `native/pseudocode/` directory contains selected
GhidrAssist pseudocode captures for helpers whose captured expression differs
from or is absent in the collection-wide
[annotated pseudocode](../../evidence/native/functions/). The `native/xrefs/` directory retains analyzed static
cross-references. [direct-edges.json](direct-edges.json) indexes direct calls
and jumps decoded in the selected raw inputs, including the three complete
owned bodies above. Its 288 edges and 67 selected-input metadata are unchanged;
each of these three entries' edges names its canonical ASM and adjacent pseudocode.
It omits indirect calls and is a linear-sweep index, not a runtime call graph. The native pseudocode often
misassigns stack variables across indirect host calls; instruction addresses
and bytes control any argument claim.

## Verified managed-to-native example: zoom

1. Original `SimIFace.dll` static `CameraController.GetZoom`, token
   `0x06001707`, loads the `ICameraController` instance from the AppDomain and
   `callvirt`s `ICameraController.GetZoom` (`0x060016CD`). The IL is in
   [Sims3-SimIFace-CameraController.il.txt](managed/Sims3-SimIFace-CameraController.il.txt),
   method `0x06001707`; its static constructor shows the AppDomain lookup.
2. Original `ScriptCore.dll` implementation `CameraController.GetZoom`, token
   `0x0600071D`, calls native declaration `Camera_GetZoom`, token
   `0x060006F0`. Its constructor stores the implementation under AppDomain key
   `CameraController`. See [ScriptCore-CameraController.il.txt](managed/ScriptCore-CameraController.il.txt),
   tokens `0x06000715` and `0x0600071D`, and the associated C# capture.
3. Original EXE registration record `0x0115EC70` contains pointer
   `0x0073D800` and the `ScriptCore.CameraController::Camera_GetZoom` string
   pointer. The exact bytes, PE offset and managed match are in
   [registration-catalog.json](registration-catalog.json).
4. At native `0x0073D800`, the original instructions resolve the active
   controller, return x87 zero on missing controller, or jump at `0x0073D833`
   to `0x00970E60`. The latter computes the Euclidean distance between three
   base-position floats at controller `+0x770..+0x778` and base-target floats
   at `+0x780..+0x788`. Read
   [the wrapper](../../evidence/native/functions/0073D800_ScriptCore_CameraController_Camera_GetZoom.asm) ([annotated pseudocode](../../evidence/native/functions/0073D800_ScriptCore_CameraController_Camera_GetZoom.c)),
   [the calculation](../../evidence/native/functions/00970E60_MainCamera_GetBaseZoomDistance.asm) ([annotated pseudocode](../../evidence/native/functions/00970E60_MainCamera_GetBaseZoomDistance.c))
   and [its pseudocode](native/pseudocode/0x00970e60-ghidra.txt). This establishes the
   returned quantity on the resolved main-controller path; it does not establish
   a universal zoom scale for other controller types.

The same chain is available in the catalog, IL and raw exports for native
`Camera_SetPositionAndTarget` (`0x0073D620`),
`Camera_RequestLerpToTarget` (`0x0073D910`),
`Camera_RequestLerpToZoomAndRotation` (`0x0073DB70`) and
`Camera_LoadTuning` (`0x0073D680`). Their pseudocode captures are provided as
inspection aids; their complete parameter mapping and all downstream effects
have not been proven.

## Native camera preset path

The native input dispatcher `0x009806B0` recognizes event family
`0x5ECE0000`. Its cases `0x042C0000..0x042C0004` call the five preset slots
with smooth recall, `0x042C0FF0..0x042C0FF4` call them with immediate recall,
and `0x042C00F0..0x042C00F4` call slot capture at `0x009804D0`. These are
direct call sites in
[the dispatcher disassembly](../../evidence/native/functions/009806B0_CameraPreset_DispatchInput.asm) ([annotated pseudocode](../../evidence/native/functions/009806B0_CameraPreset_DispatchInput.c)),
with a [pseudocode switch](native/pseudocode/0x009806b0-ghidra.txt) and
[static xrefs](native/xrefs/0x0097f9a0-ghidra.txt). `CameraPreset_SaveSlot` and
`CameraPreset_DispatchInput` are analytical names in this folder; Ghidra's
the canonical annotated exports name these routines `CameraPreset_CaptureCurrentPose` and `CameraPreset_DispatchInput`. Their external switch tables are retained as [original data](../../evidence/native/camera-preset-dispatch-tables.tsv).
The source of this input event was not traced to a particular physical key.

The capture routine at `0x009804D0` writes the selected 64-byte slot's
position and target, camera-specific fields, and an occupancy byte, then calls
`0x0097FD20`. This is a memory capture path; the downstream call has not been
established as a disk save. See
[capture instructions](../../evidence/native/functions/009804D0_CameraPreset_CaptureCurrentPose.asm) ([annotated pseudocode](../../evidence/native/functions/009804D0_CameraPreset_CaptureCurrentPose.c)) and
[pseudocode](native/pseudocode/0x009804d0-ghidra.txt).

The restore routine `0x0097F9A0` tests slot occupancy, can invoke managed
`Sims3.Gameplay.Core.Lot.UpdatePresetLevel` through an indirect host call, and
selects the current camera group. The main smooth branch calls `0x00974300`
at instruction `0x0097FBC0`; the fly smooth branch calls `0x009676F0` at
`0x0097FC95`. The main immediate branch calls `0x0096FF80` for stored sky
pitch when its flag is set. The smooth call loads binary32 **2.0** from
`0x0103FD88`, confirmed by
[retained bytes](native/disassembly/0x0103fd88-float-constant-ghidra.txt).
Read the [restore instructions](../../evidence/native/functions/0097F9A0_CameraPreset_RestoreSlot.asm) ([annotated pseudocode](../../evidence/native/functions/0097F9A0_CameraPreset_RestoreSlot.c))
with [pseudocode](native/pseudocode/0x0097f9a0-ghidra.txt) and the helper exports.
`0x00769390` in this path is the cross-domain
`GetGlobalInterfacePointer_11D5BBC` (`MOV EAX,[0x011D5BBC]; RET`), not a
SACS-specific manager. The preserved Ghidra capture uses its corrected name.

The shared camera pose lerp at `0x00963060` advances elapsed time, deactivates
duration on completion and computes a cubic ease-out weight
`1-(1-fraction)^3` for pose components. The exponent is binary64 **3.0** at
`0x00FAE538`, retained as [bytes](native/disassembly/0x00fae538-double-constant-ghidra.txt).
The [raw instructions](../../evidence/native/functions/00963060_CameraPoseLerp_TickCubicEaseOut.asm) ([annotated pseudocode](../../evidence/native/functions/00963060_CameraPoseLerp_TickCubicEaseOut.c))
and [pseudocode](native/pseudocode/0x00963060-ghidra.txt) support the primitive itself.
They do not by themselves establish the visible trajectory of every preset.

## Limits

The [height, terrain, water and preset supplement](height-terrain-water-supplement.md)
adds independently retained original-byte windows and pseudocode for main
camera vertical motion, floor/roof selection, collision terrain, regional
water, and native preset persistence. Its evidence index maps native windows
to readable disassembly and pseudocode. The catalog records each registration
record's eight original bytes for inspection.

This is static PC 1.67 evidence. No game execution, frame comparison, user
input replay, callback completion, or persistence round trip was performed for
this dossier. Most of the 51 registered entries have only identity, metadata
and bounded instruction coverage; the selected exports and paths above have
deeper analysis. The camera preset dispatcher is a native path with no managed
caller identified in these inputs. Any implementation should resolve the
specific remaining path from original instructions before importing these
observations as a complete contract.

## Complete registered wrapper boundaries

The three canonical pairs below cover the complete contiguous registered wrapper
bodies, excluding trailing `CC` padding. The original PC 1.67 instruction stream
is authoritative for stack and return behavior; stored Ghidra prototypes were
preserved and are not newly verified physical calling conventions.

| Registered wrapper | Complete inclusive body | Bytes / instructions | Ordinary paths |
| --- | --- | --- | --- |
| [ASM](../../evidence/native/functions/0073D7A0_ScriptCore_CameraController_Camera_StartFlyThrough.asm) ([Camera_StartFlyThrough pseudocode](../../evidence/native/functions/0073D7A0_ScriptCore_CameraController_Camera_StartFlyThrough.c)) | `0073D7A0..0073D7C5` | 38 / 14 | Calls `00969BD0`; a nonzero result supplies `ECX` to `00F21FF0`. Either zero lookup returns directly. Otherwise forwards the caller's first and second stack words to `0096B230`, pushing the second before the first. The wrapper ends in plain `RET`, without popping the caller's two words. |
| [ASM](../../evidence/native/functions/0073D4B0_ScriptCore_CameraController_Camera_SetControllerType.asm) ([Camera_SetControllerType pseudocode](../../evidence/native/functions/0073D4B0_ScriptCore_CameraController_Camera_SetControllerType.c)) | `0073D4B0..0073D4D4` | 37 / 14 | The same ordered lookups gate a call to `0096B060` with the caller's first word and literal zero. Every ordinary path reaches `MOV AL,1; RET`, including either missing lookup. This proves low-byte true; it does **not** prove `EAX == 1` or a child result. |
| [ASM](../../evidence/native/functions/0073D7D0_ScriptCore_CameraController_Camera_GetCustomFlyThroughIndex.asm) ([Camera_GetCustomFlyThroughIndex pseudocode](../../evidence/native/functions/0073D7D0_ScriptCore_CameraController_Camera_GetCustomFlyThroughIndex.c)) | `0073D7D0..0073D7ED` | 30 / 11 | The same ordered lookups; either zero reaches `XOR EAX,EAX; RET`. Success moves the second result to `ECX` and uses an `E9` tail transfer to `00969EF0`, preserving the caller's return address. The tail target is identified only as a transfer destination here. |

The native registrations bind these bodies to pristine ScriptCore declarations
`06000712` (UInt32/Boolean to Void), `060006EB` (UInt32 to Boolean), and
`06000713` (no arguments to UInt32). Their managed implementation consumers
`0600073F`, `06000718`, and `06000740` respectively forward those arguments and
returns. The registration rows retain their reviewed names and metadata.
The complete wrappers establish eight direct `E8` call edges (3 + 3 + 2);
the `E9` transfer is separate. Child contracts must be read independently of this finite wrapper selection;
current selected canonical internal bodies are listed below or in their focused guides. Lookup-object ownership,
child transitions and callback effects, exceptional exits, and successful tail
result production remain separate child contracts. No execution was performed.


## Authored fly-through resource and curve consumption

The following complete original bodies connect the named INI callback,
map/control construction, per-playback start state and actual update consumer.
Stored prototypes are qualified by instruction-level physical arguments.

| Entry | Boundary | Evidence |
| --- | --- | --- |
| 00969650 | 398 owned bytes / 134 instructions. INI section callback, three physical stack arguments, plain RET and AL status. swscanf section with %u_%f requires at least2 conversions, Position andRotation virtual34 require at least3, FOV requires positive conversion count; Type exactlyzero status supplies0. Rotation multiply uses original binary32 degrees-to-radians word. Formats/default/source grammar remain INI/CRT children, not host finite/type/size guards. Third callback argument points to INI+map context; stack locals/padded vectors in C are representation artifacts. | [ASM](../../evidence/native/functions/00969650_FUN_00969650.asm) ([actual C](../../evidence/native/functions/00969650_FUN_00969650.c)) |
| 009697E0 | 484 owned bytes / 143 instructions. ECX camera path owner. Clears map and active selection, constructs INI source CameraFlyThroughPath.ini then enumerates sections with969650 callback and context. Sorts each path through969360, appends final48byte control copying the last data and time+1. Captures custom index separately, optionally reselects and restarts an already active path. Full source/mount/factory/sort failure and callback ordering remain separate. | [ASM](../../evidence/native/functions/009697E0_FUN_009697e0.asm) ([actual C](../../evidence/native/functions/009697E0_FUN_009697e0.c)) |
| 009693E0 | 367 owned bytes / 92 instructions. ECX owner startup. Missing active path calls finish. From-authored inserts first duplicate at time-1 and starts0; from-current supplies current position/rotation and FOV conversion, inserts two controls at-1 then subtracts1 from first, starts-1. Publishes state, unwraps via968200, requires at least4controls then sets world imposter mode if bound. Allocation/helpers/full callback/ground and exception remain separate. | [ASM](../../evidence/native/functions/009693E0_FUN_009693e0.asm) ([actual C](../../evidence/native/functions/009693E0_FUN_009693e0.c)) |
| 00968B60 | 1555 owned bytes / 401 instructions. Physical virtual update ECX plus two stack words RET8; stored one-float prototype incomplete. ADDSS elapsed before current alternate-curve branch. Ordinary interval traversal uses a byte index, compares selected time, and destination control type1 linear/type2 copied endpoint/other cubic; scalar9677A0 receives t,t2,t3 and four scalar controls in seven caller-popped words. Vector cubic8565C0 is distinct. Later yaw/pitch/roll trigonometry, horizontal FOV, ground+1.5 and camera writes precede end comparison/finish. Full alternate receiver, numeric bit equivalence/large interval/nonfinite behavior remains open. | [ASM](../../evidence/native/functions/00968B60_FUN_00968b60.asm) ([actual C](../../evidence/native/functions/00968B60_FUN_00968b60.c)) |
| 00967EC0 | 186 owned bytes / 51 instructions. Actual stack two aligned-vector pointers, RET8. Repeated binary32 subtraction/addition of2pi adjusts only Y while differences exceedpi. SSE shuffle writes preserve other lanes. COMISS/JBE preserves unordered branch behavior. Three disjoint owned ranges exclude6alignment bytes. Host ceiling shortcut is not proved bit-identical to repeated native loops. | [ASM](../../evidence/native/functions/00967EC0_FUN_00967ec0.asm) ([actual C](../../evidence/native/functions/00967EC0_FUN_00967ec0.c)) |
| 009677A0 | 109 owned bytes / 36 instructions. Seven physical cdecl Single stack words t,t2,t3,a,b,c,d, x87 ST0 result and RET0. Literal x87 stack instructions govern coefficient combinations and extended-precision rounding; the caller stores binary32. Pristine coefficients0,2,3,5,4,.5 yield the Catmull-Rom polynomial, but host binary32 expression/order and lower vector helper are not verified bit-equivalent. Do not infer coefficient signs from DAT names. | [ASM](../../evidence/native/functions/009677A0_FUN_009677a0.asm) ([actual C](../../evidence/native/functions/009677A0_FUN_009677a0.c)) |

The [selected original words](../../evidence/native/data/camera-path-selected-words.json)
establish actual binary32 radians-per-degree, degrees-per-radian, pi,2pi,-1,1,
1.5 and scalar coefficient image values. They do not establish every runtime
writer, CRT locale/rounding mode or all numeric edge cases.

969650 first calls the imported scanner with section format%u_%f and requires
at least two conversions. Its INI virtual+34 returns formatted field conversion
counts: Position andRotation need at least3; FOV needs a signed-positive count.
Type becomes0 only on exactlyzero status, not every failure or negative result.
It appends the packed row only after FOV admission. No complete host-style
finite/time/FOV/type-range/1MiB/4096-key validation occurs in this body. Complete
INI enumeration, failed conversion storage, CRT grammar and969180 insertion/
969360 sorting/duplicates must be traced before assigning malformed-content parity.

9697E0 reads CameraFlyThroughPath.ini, clears previous map/selection, enumerates
the callback and sorts paths. It copies the final48-byte control and increments
its time by1 before appending. Custom path+19C remains separate from selected
path+190. An already active owner selects/restarts through9693E0 after rebuilding.
9693E0 inserts an authored duplicate at-1/start0 or two current controls at-2/-1
with start-1. It marks active, checks at least4controls and conditionally enables
bound world imposters; helper/reset/allocation/callback effects remain distinct.

968B60 has a two-word RET8 virtual ABI despite stored one-float inference. It
adds elapsed time using ADDSS, then chooses an alternate curve interface or an
ordinary48-byte-control interval. Ordinary traversal's byte index and actual
COMISS branch behavior must not be replaced by assumed unlimited Int32/finite
sampling semantics. Destination control type1 interpolates linearly, type2 copies
the destination and other values use cubic. Vector cubic8565C0 is a distinct
child. Scalar9677A0 receives t,t-squared,t-cubed followed by four controls; its
x87 stack polynomial uses selected image coefficients. Mathematical polynomial
equality does not establish host binary32 order/FMA/x87-bit equality.

967EC0 repeatedly subtracts/adds2pi to Y only when the corresponding difference
exceeds pi. It preserves X/Z/W with SSE shuffles. Its three disjoint owned ranges
exclude six alignment bytes; the complete owned Listing contains51instructions/
186bytes within a192-byte envelope. Closed-form ceiling adjustment is not proved
bit-identical for every finite angle, huge magnitude, unordered or singular input.

The update writes selected horizontal FOV, produces yaw/pitch/roll orientation,
queries967E50 ground, applies ground+1.5, performs camera/LOD writes and only then
checks last authored time and calls finish968A80. Ground/resource/world/scheduler,
all transformed/normalized vectors, alternate curve interface, consumer delivery
and callback reentry are separate contracts. These six selected complete bodies
contain857instructions3099ownedbytes. Static evidence does not assert original
execution, whole manager lifetime or a successful current gameplay/camera test.
