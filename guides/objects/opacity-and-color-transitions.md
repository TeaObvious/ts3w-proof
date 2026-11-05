# Object opacity and color transitions

Static original PC 1.67 evidence. Binary identity is recorded in the
[collection overview](../../references/retained-proof-overview.md). Descriptive internal function and field names below are
analyst-assigned; registered API names retain the original binding identities. Instructions establish the producer, selected event
listeners, renderer state transitions and scene-object consequences described
here. No original-game opacity, rendering or timing test was executed.

Exact original float encodings are retained in [opacity constants](../../evidence/objects/opacity-constants.tsv);
the three reviewed callback registrations and their instruction bytes are in
[opacity listeners](../../evidence/objects/opacity-listeners.tsv).

## Registered entry points and identity

Both bridges resolve the global object registry, look up the **full 64-bit
object GUID**, and select VisualState through the mask stored at `0x011EA2A8`.
A missing registry, object or component is an accepted no-op. Lookup is borrowed;
these wrappers do not retain the object.

| Managed registration | Native input order and complete body | Component call |
| --- | --- | --- |
| `ScriptCore.World::World_ObjectSetOpacity`, token `0x060007C3`, record `0x011635F8` | GUID low/high DWORDs, opacity float32, duration float32; `0x0078D000..0x0078D051`, 82 bytes | `(target, duration, 0.0f, explicitFrom=0)`; [entry ASM](../../evidence/native/functions/0078D000_ScriptCore_World_World_ObjectSetOpacity.asm) ([pseudocode](../../evidence/native/functions/0078D000_ScriptCore_World_World_ObjectSetOpacity.c)) |
| `ScriptCore.World::World_ObjectSetOpacityTransition`, token `0x060007C4`, record `0x01163618` | GUID low/high DWORDs, from-opacity float32, duration float32, to-opacity float32; `0x0078D060..0x0078D0B3`, 84 bytes | `(to, duration, from, explicitFrom=1)`; [entry ASM](../../evidence/native/functions/0078D060_ScriptCore_World_World_ObjectSetOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/0078D060_ScriptCore_World_World_ObjectSetOpacityTransition.c)) |

The managed result is `System.Void`. Native wrappers use caller stack cleanup;
the component receives `this` in `ECX` and removes four stack slots with
`RET 0x10`. Float arguments pass through x87 float32 copies in the wrappers;
exceptional NaN payload-bit identity is not established. The managed parameter
name `translucency` does not establish an inversion: the reviewed producer
uses the supplied value directly for the stored alpha byte.

## Requested color, quantization and duplicate policy

VisualState holds a packed color DWORD at component `+0x0C`: alpha in the high
byte and RGB in the low 24 bits. The opacity producer preserves RGB and
quantizes target and explicit-start alpha using separate float32 operations:

1. Multiply by `255/256` with `MULSS`.
2. Add `49152.0f` with `ADDSS`.
3. Spill with `MOVSS`, reload the **same bits** using integer `MOV`, and add
   `0xB8C00000` modulo 32 bits, equivalent to subtracting bias bits `0x47400000`.
4. Apply signed shift/byte masks to obtain the saturated byte in the reviewed
   finite conversion range.

The apparent numeric float-to-int cast in the pseudocode is a decompiler
artifact. No numeric conversion instruction occurs at that point. Normal
finite inputs in `[0,1]` behave as byte quantization with the ambient MXCSR
rounding mode; the vectors below assume ordinary round-to-nearest-even.
Arbitrary huge values, NaNs and infinities are not assigned a general clamp
contract by this analysis.

| Original data address | Float32 bits | Exact value |
| --- | --- | --- |
| `0x00FB3F64` | `0x3F7F0000` | `255/256 = 0.99609375` |
| `0x01045A80` | `0x47400000` | `49152` |

The producer compares the new **packed, quantized target** with the stored
DWORD. Equality suppresses the ordinary request even if duration changed.
`explicitFrom != 0` bypasses that suppression. On dispatch, it commits the
requested target to component `+0x0C` **before** emitting object event **26**
(`0x1A`). The presented renderer alpha follows separately.
Source: [opacity producer ASM](../../evidence/native/functions/0095DF40_VisualState_SetOpacityTransition.asm) ([annotated pseudocode](../../evidence/native/functions/0095DF40_VisualState_SetOpacityTransition.c)).

The companion tint producer replaces only RGB, preserving the existing alpha.
It emits object event **28** (`0x1C`) only when RGB changes; `explicitFrom`
does **not** bypass equality here. Its explicit-start color combines supplied
start RGB with preserved target alpha. Its downstream tint-specific adapter
is outside the detailed event-26 path below.
Source: [tint producer ASM](../../evidence/native/functions/0095DEE0_VisualState_SetTintTransition.asm) ([pseudocode](../../evidence/native/functions/0095DEE0_VisualState_SetTintTransition.c)).

Both producer payloads occupy 16 bytes:

| Offset | Width | Meaning |
| --- | --- | --- |
| `+0x00` | Float32 | Duration, with no validation by these producers |
| `+0x04` | Byte | Explicit-start flag |
| `+0x05..+0x07` | Three bytes | Unspecified padding |
| `+0x08` | DWORD | Packed start ARGB |
| `+0x0C` | DWORD | Packed target ARGB |

For opacity, both packed payload colors retain the current RGB. Stack lifetime
of the producer payload does not authorize consumers to retain its raw pointer.
The padding is copied by subsequent code but does not define extra flags.

## Event listeners and renderer message

Direct event-26 registrations and their selected consumers are:

| Component | Registration instruction | Consumer and result |
| --- | --- | --- |
| Model | `0x0094C3C8` | Resolve mask global `0x011E9FC4`, then forward owner `+4` and payload; [Model listener ASM](../../evidence/native/functions/009490F0_Model_OnOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/009490F0_Model_OnOpacityTransition.c)) |
| Sim | `0x0094FBC2` | Resolve mask global `0x011EA0FC`, then use the Sim forwarding method; [Sim listener ASM](../../evidence/native/functions/0094F320_Sim_OnOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/0094F320_Sim_OnOpacityTransition.c)) |
| Tree | `0x0095CF20` | Resolve mask global `0x011EA290`, then forward owner `+4` and payload; [Tree listener ASM](../../evidence/native/functions/0095A3D0_Tree_OnOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/0095A3D0_Tree_OnOpacityTransition.c)) |

Null objects or missing components are accepted no-ops. Listener Boolean
results are defined in `AL`; upper `EAX` bytes are not an independent status.
This establishes these three registrations, without claiming that a bounded
search excludes every other possible consumer.

The [Sim forwarding method ASM](../../evidence/native/functions/0094F200_Sim_ForwardOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/0094F200_Sim_ForwardOpacityTransition.c))
passes its component owner and payload to the same common publisher used by
Model and Tree. The [common publisher ASM](../../evidence/native/functions/0095F210_VisualState_PostOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/0095F210_VisualState_PostOpacityTransition.c))
forms renderer message `0x048A2325`, copies the full owner GUID to message
`+0x08/+0x0C` and all four payload DWORDs to `+0x10..+0x1F`, calls `0x00693380`,
and releases its message companion when present. Message transport ownership,
threading and scheduling latency are not established here.

The receiver copies the complete 16-byte payload and forwards both GUID words
to the opacity decoder in its `0x048A2325` branch at
`0x00703DD8..0x00703E15`.
Source: [renderer notification dispatcher ASM](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm) ([pseudocode](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)).

The decoder reads **unsigned alpha bytes** at payload `+0x0B` and `+0x0F`,
converts each with `CVTSI2SS`, and multiplies by float32 `1/255`
(`0x00FAE564`, bits `0x3B808081`). Target is clamped to `[0,1]`; start is already
in that range from byte normalization. Duration comes from `+0`, and the flag
from byte `+4`. Consequently, renderer interpolation receives normalized
**quantized bytes**, rather than the original unquantized managed arguments.
Source: [opacity decoder ASM](../../evidence/native/functions/00702A80_Renderer_DecodeOpacityTransition.asm) ([pseudocode](../../evidence/native/functions/00702A80_Renderer_DecodeOpacityTransition.c)).

## Renderer request, immediate application and retargeting

The renderer request receives `this` in `ECX`, then six stack slots: GUID
low/high, target alpha, duration, explicit-start byte and start alpha. It ends
with `RET 0x18`; its success/failure Boolean is in `AL`. An absent scene object
returns false.

The immediate branch requires ordered `duration < binary32(0.01)`;
`0x0106E6EC` contains bits `0x3C23D70A`. Equality takes the timed branch. This
immediate branch applies target alpha and publishes an endpoint, ignoring the
explicit-start value. It only looks up an existing transition: if found, it
replaces alpha in target/start/sampled vectors, preserving RGB, durations and
elapsed times. It neither creates nor erases a transition node.

For a timed request:

1. An explicit start first applies the supplied start alpha and publishes an
   endpoint.
2. Find or insert the GUID's transition node.
3. Clear **all four elapsed lanes**, including RGB lanes.
4. For an existing node without explicit start, copy sampled alpha to start
   alpha; preserve RGB target/start/sample and RGB durations.
5. For a new node or explicit start, seed target/start/sample from current
   scene RGBA and set all four durations to `1.0f`.
6. Replace target alpha and alpha duration with the requested values.

The initialization value `1.0f` uses the same units as the supplied transition
clock; seconds or simulation ticks are not established by this callee.
Source: [renderer request ASM](../../evidence/native/functions/007021A0_Renderer_RequestObjectOpacityTransition.asm) ([annotated pseudocode](../../evidence/native/functions/007021A0_Renderer_RequestObjectOpacityTransition.c)).

The ordered tree uses the full unsigned 64-bit GUID. Its find-or-insert result
is a node pointer DWORD followed by an inserted byte at output `+4`, not a
Boolean embedded in the GUID. The native ABI consumes **three** stack slots
with `RET 0x0C`: output pointer, GUID pointer and an unused word. A decompiled two-parameter signature would omit this required cleanup slot.
Source: [transition tree lookup/insertion ASM](../../evidence/native/functions/00701710_Renderer_FindOrInsertColorTransition.asm) ([pseudocode](../../evidence/native/functions/00701710_Renderer_FindOrInsertColorTransition.c)).

## Per-lane tick and completion

The primary transition tree starts at renderer `+0x10F0`, with sentinel
`+0x10F4` and count DWORD `+0x1104`. Node vectors are aligned 16-byte groups of
four float32 values:

| Node offset | Vector |
| --- | --- |
| `+0x20` | Target RGBA |
| `+0x30` | Start RGBA |
| `+0x40` | Sampled RGBA |
| `+0x50` | Per-lane duration |
| `+0x60` | Per-lane elapsed time |

Each tick adds the supplied delta to all elapsed lanes, applies `MAXPS(0)`
then `MINPS(duration)`, divides elapsed by duration per lane, and interpolates
`start * (1-fraction) + target * fraction` with separate float32 multiply/add
instructions. Integer-looking casts in the pseudocode's node accesses are
storage-type artifacts.

For ordinary finite inputs, completion uses the **four-lane** aggregate
`(fraction.W + fraction.Y) + (fraction.Z + fraction.X)`, with each addition
rounded to float32, compared against float32 `3.99`
(`0x00FFB20C`, bits `0x407F5C29`). On completion it applies the **exact target
vector**, publishes an endpoint, decrements the count, unlinks and frees the
node. Otherwise it applies the sampled vector. A missing scene object also
removes its node, without applying a color.

The later scalar transition tree in the same function uses float32 `0.98`;
that threshold does not govern this RGBA tree. Alpha reaching one is not
sufficient for removal if RGB fractions have not contributed enough.
`COMISS/JBE` also takes the completion branch for unordered NaN; the routine
does not provide a general invalid-value rejection policy.
Source: [transition tick ASM](../../evidence/native/functions/007010D0_Renderer_AdvanceObjectVisualTransitions.asm) ([annotated pseudocode](../../evidence/native/functions/007010D0_Renderer_AdvanceObjectVisualTransitions.c)).

The reviewed direct caller loads float global `0x011CEDA0`, supplies the same
value to `0x00693B90` and the renderer transition tick, and performs other
renderer updates. The global's writer, units and relationship to pause or
simulation speed remain open.
Source: [render-driver update ASM](../../evidence/native/functions/006E3240_RenderDriver_UpdateObjectVisuals.asm) ([pseudocode](../../evidence/native/functions/006E3240_RenderDriver_UpdateObjectVisuals.c)).

## Scene-object application, effective alpha and bands

The scene setter stores presented RGB/alpha at scene object
`+0x1D0..+0x1DC`. The SIMD sum is `B + (G + R)`, with binary32 rounding after each addition;
the pseudocode loses this grouping. For ordinary finite RGB, a sum at least float32 `2.99` snaps
RGB to `(1,1,1)` and clears byte `+0x208` mask `0x02`; otherwise it retains RGB
and sets that mask. Alpha is stored as supplied.

For both old and new alpha, the effective value used for band notification is
`factor[+0x1E8] * (presentedAlpha[+0x1DC] * factor[+0x1E4])`, unless byte
`+0x208` mask `0x20` forces `1.0f`. The meanings and producers of both factors
are not established here. `MULPS` first forms alpha times factor `+0x1E4`,
then multiplies that rounded result by factor `+0x1E8`; the pseudocode also
reassociates this product. The setter notifies a possible band change, then
visits descendant visual callbacks.
Source: [scene tint/opacity setter ASM](../../evidence/native/functions/006FD260_SceneObject_SetTintOpacity.asm) ([pseudocode](../../evidence/native/functions/006FD260_SceneObject_SetTintOpacity.c)).

For finite effective alpha, the band function uses these float32 boundaries:

| Range | Band |
| --- | --- |
| `< binary32(0.001)` | 0 |
| `>= binary32(0.001)` and `< binary32(0.3)` | 1 |
| `>= binary32(0.3)` and `< binary32(0.999)` | 2 |
| `>= binary32(0.999)` | 3 |

Only a changed band requests dirty-list insertion when needed, conditionally
visits descendants under byte `+0x208` mask `0x10`, and calls `0x006FC7B0`.
Source: [opacity band-change ASM](../../evidence/native/functions/006FC840_SceneObject_NotifyOpacityBandChange.asm) ([pseudocode](../../evidence/native/functions/006FC840_SceneObject_NotifyOpacityBandChange.c)).

The descendant traversal follows the intrusive child list rooted at `+0x194`,
invokes each child's virtual slot `+0x5C`, then recursively visits descendants.
Concrete virtual targets and complete graph invariants remain open.
Source: [descendant visual callbacks ASM](../../evidence/native/functions/006FC800_SceneObject_VisitDescendantVisualCallbacks.asm) ([pseudocode](../../evidence/native/functions/006FC800_SceneObject_VisitDescendantVisualCallbacks.c)).

Endpoint publication is a separate call used for immediate application,
explicit-start application and primary-transition completion. If its service
exists, it computes a Boolean from scene-object flags at `+0x44`, mask `0x01`,
and **presented alpha** `+0x1DC > binary32(0.001)`, then forwards that Boolean
and GUID through `0x006B0E30`. The existing analyst name
`GetNativeDescriptorTypeName_Field44` in the pseudocode does not establish
string/type-name semantics: the inspected use is a flags getter. Intermediate
sample application does not directly call this endpoint helper. Full service
semantics remain open. At exactly binary32 `0.001`, band selection has already
entered band 1, while this endpoint predicate still fails its strict comparison.
Source: [opacity endpoint publisher ASM](../../evidence/native/functions/006FDC60_SceneObject_PublishOpacityEndpoint.asm) ([pseudocode](../../evidence/native/functions/006FDC60_SceneObject_PublishOpacityEndpoint.c)).

These are renderer color and band contracts. The VisualState flag channels
used for wall hiding have a separate [wall-object visibility contract](../world/wall-mounted-object-visibility.md).

## Derived boundary vectors

These are instruction-derived examples under ordinary float32
round-to-nearest-even, not executed original-game observations. Hex inputs
identify exact float32 values.

| Quantizer input bits | Description | Alpha byte |
| --- | --- | --- |
| `0xBF800000` | `-1` | 0 |
| `0x00000000` | `0` | 0 |
| `0x3B008081` | Nearest float32 to `0.5/255` | 0 |
| `0x3BC0C0C1` | Nearest float32 to `1.5/255` | 2 |
| `0x3C20A0A1` | Nearest float32 to `2.5/255` | 2 |
| `0x3EFFFFFF` | Float immediately below `0.5` | 127 |
| `0x3F000000` | `0.5` | 128 |
| `0x3F800000` | `1` | 255 |
| `0x40000000` | `2` | 255 |

For stored color `0x7F123456`, target `0.5`, start `0`, duration `2` and
explicit-start true, the requested target becomes `0x80123456`; payload start
is `0x00123456` and payload target is `0x80123456`. An ordinary repeat of the
same quantized target emits no event. An explicit-start repeat does.

Duration bits `0x3C23D709` take the immediate branch; `0x3C23D70A` take the
timed branch. For RGBA fractions `(0.2,0.2,0.2,1)` the float32 aggregate is
approximately `1.60000002`, so the node remains despite completed alpha.
Fractions `(1,1,1,binary32(0.99))` meet the `3.99f` threshold. Pairwise rounding
also permits alpha bits `0x3F7D70A3`, just below nominal `0.99`, to complete
when the other three fractions are one; a scalar alpha threshold loses this
detail.

For RGB input bits `R=0x3F7E46BE`, `G=0x3F7FBF71`, `B=0x3F7F6A73`,
original `B + (G + R)` gives sum bits `0x403F5C29`, exactly the `2.99f`
threshold, and snaps RGB to one. Reassociating as `(B + G) + R` gives
`0x403F5C28`, one ULP below, selecting the opposite branch. This finite
instruction-derived example has not been executed in the original renderer.

For presented alpha bits `0x3F469F43`, factor `+0x1E4` bits `0x3EDFC442`
and factor `+0x1E8` bits `0x3F627D54`, original grouped multiplication gives
`0x3E99999A` (exact binary32 `0.3`, band 2). The decompiler's reassociated
product gives `0x3E999999` (one ULP below, band 1). All inputs are finite in
`[0,1]`; this is another instruction-derived example, without runtime execution.

## Open boundaries

The reviewed path establishes neither transition clock units nor pause/speed
behavior, arbitrary invalid-input policy, full event-28 renderer handling,
message transport scheduling, factor producers, all descendant virtual targets,
nor final shader/material blending and GPU output. No runtime or visual test
has established those behaviors. Requested VisualState alpha, sampled scene
alpha, effective band alpha and endpoint notification are distinct values and
operations in the original code.
