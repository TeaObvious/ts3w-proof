# Original object-light resource and control boundaries

## Scope

Complete original PC1.67 instructions establish these ten selected component
serialization/parameter/command and source-control bodies. The function envelopes
contain 1,440 bytes: 1,437 function-body instruction bytes plus three preserved
alignment bytes excluded from one Ghidra body. Analyst names describe reviewed
behavior; they are not recovered original symbols. No original process or runtime
light/renderer/save test was executed.

| Boundary | Complete original instructions and actual annotated Ghidra C |
| --- | --- |
| Saved resource/control writer | [947BD0 ASM](../../evidence/native/functions/00947BD0_LightingComponent_WriteSavedResourceAndControls.asm) ([pseudocode](../../evidence/native/functions/00947BD0_LightingComponent_WriteSavedResourceAndControls.c)) |
| Versioned resource/control reader | [947C40 ASM](../../evidence/native/functions/00947C40_LightingComponent_ReadSavedResourceAndControls.asm) ([pseudocode](../../evidence/native/functions/00947C40_LightingComponent_ReadSavedResourceAndControls.c)) |
| Parameter initialization | [947EC0 ASM](../../evidence/native/functions/00947EC0_LightingComponent_InitializeResourceFromParameters.asm) ([pseudocode](../../evidence/native/functions/00947EC0_LightingComponent_InitializeResourceFromParameters.c)) |
| Resource-key command producer | [947CE0 ASM](../../evidence/native/functions/00947CE0_LightingComponent_QueueResourceKey.asm) ([pseudocode](../../evidence/native/functions/00947CE0_LightingComponent_QueueResourceKey.c)) |
| Resource/control replay | [947F20 ASM](../../evidence/native/functions/00947F20_LightingComponent_QueueResourceAndReplayControls.asm) ([pseudocode](../../evidence/native/functions/00947F20_LightingComponent_QueueResourceAndReplayControls.c)) |
| Aligned four-lane color replacement | [6BC550 ASM](../../evidence/native/functions/006BC550_LightSource_ReplaceAlignedColor4.asm) ([pseudocode](../../evidence/native/functions/006BC550_LightSource_ReplaceAlignedColor4.c)) |
| Three-float color input | [6BDC00 ASM](../../evidence/native/functions/006BDC00_LightSource_ReplaceColor3ReplicateRed.asm) ([pseudocode](../../evidence/native/functions/006BDC00_LightSource_ReplaceColor3ReplicateRed.c)) |
| Thresholded dimmer | [6BDE80 ASM](../../evidence/native/functions/006BDE80_LightSource_SetDimmerAboveThreshold.asm) ([pseudocode](../../evidence/native/functions/006BDE80_LightSource_SetDimmerAboveThreshold.c)) |
| Object RGB consumer | [6B0CD0 ASM](../../evidence/native/functions/006B0CD0_ObjectLights_ReplaceRgb.asm) ([pseudocode](../../evidence/native/functions/006B0CD0_ObjectLights_ReplaceRgb.c)) |
| Object dimmer consumer | [6B0C30 ASM](../../evidence/native/functions/006B0C30_ObjectLights_SetDimmer.asm) ([pseudocode](../../evidence/native/functions/006B0C30_ObjectLights_SetDimmer.c)) |

## Component resource and saved fields

The selected Lighting component stores a 16-byte resource key at `+8..+0x14`,
dimmer binary32 at `+0x18` and three color floats at `+0x1C/+0x20/+0x24`.
Parameter initialization uses the existing type3 key getter for hash `0x9CC7E9B2`:
[939690 ASM](../../evidence/native/functions/00939690_ParameterTable_CopyResourceKey16.asm) ([pseudocode](../../evidence/native/functions/00939690_ParameterTable_CopyResourceKey16.c)).
A found key replaces four DWORDs; missing leaves existing fields untouched. It
returns AL1 locally without loading a source or validating the key resource type.
An empty-component constructor default is not established by this initializer.
The [finalized-parameter contract](finalized-component-parameters.md) distinguishes
native input kind, final descriptor type and the unexpanded managed wire producer.

The writer has ECX component and two stack pointers, writer/context, `RET8`:

1. Context `+0x10` service resolves the component key. AX is narrowed to UInt16,
   then passed to the original UInt16 writer.
2. Component dimmer is loaded/stored through x87 and passed to the 32-bit writer
   helper; returned primitive status is accumulated.
3. The vector helper receives component `+0x1C`; final return is the writer's
   raw status byte at `+0x14` in AL.

The existing primitive contract is [4DDE70 ASM](../../evidence/native/functions/004DDE70_Stream_WriteUInt16.asm) ([pseudocode](../../evidence/native/functions/004DDE70_Stream_WriteUInt16.c)).
Key-table lifetime/lookup and the complete vector helper remain separate;
this body has no finite-value gate, early failure branch or rollback. x87
exception/NaN payload behavior is not a promise of bit-preserving arbitrary NaNs.

The reader likewise has two stack pointers and `RET8`. Unsigned context WORD
`+6 >= 14` selects UInt16 index reading followed by context-service key resolution;
older values select the direct key reader. Unsigned context WORD `+4 >= 2` reads
the dimmer word and invokes the color-vector reader. Earlier component
versions leave those existing control fields untouched. Return is reader status
byte `+0x14` in AL. The selected body accumulates primitive status but does not
roll back earlier writes or sanitize nonfinite controls. Complete malformed-read
acceptance and key-table/primitive helper behavior are not established here.

## Command packets and replay

Resource-key publication is a producer, not a complete light-source constructor.
It has one physical stack word, unused in its body, and `RET4`. The packet is:

| Packet byte offset | Value |
| --- | --- |
| `+0` | Opcode `0x1361A133` |
| `+4` | Temporary-destructor pointer, initially zero |
| `+8/+0xC` | Full owner UInt64 GUID, low/high DWORD |
| `+0x10..+0x1C` | Component key, four DWORDs |

It enqueues the 32-byte packet, then invokes a supplied destructor on payload
storage if nonnull. Local AL1 does not acknowledge resource loading, renderer
consumption or an existing dispatcher.

Replay has another unused physical stack word and `RET4`. It first calls this
producer with explicit zero, then:

- Compares dimmer with binary32 one using UCOMISS/LAHF. Ordered equality skips;
  ordered inequality and unordered NaN enqueue opcode `0xB361CC42`, the same
  16-byte header plus one float.
- Requires each RGB value to compare ordered nonnegative with zero. Any negative
  or NaN skips color; negative zero passes. The packet opcode is `0x966EC80A`,
  the same header plus three floats, 28 bytes total.
- Runs any packet destructor after each enqueue and returns AL1 locally.

These comparisons are not universal finite checks or upper clamps. Constructor,
event timing, opcode registration/dispatch, resource completion and draw
consumers remain separate end-to-end questions.

## Source vectors and color replacement

The selected source stores its control vector at `+0x10`, replacement source
vector at `+0xF0` and effective vector at `+0xE0`. Source flag byte `+0x100` bit
`0x20` gates whether effective lanes are `control * replacement` or all zero.

The four-lane setter reads a complete 16-byte aligned pointer using MOVAPS and
replaces all source lanes. It does not multiply the new color by the prior
source color. The three-scalar setter reads RGB individually with MOVSS and
constructs `(R,G,B,R)`; its fourth lane is red, not literal alpha one. Both update
effective lanes using SIMD multiplication and have no local finite/sign/range
gate. Neither writes the distinct word at `+0x130`; its authored meaning and
downstream intensity use need their own producer/consumer contract.

The object RGB method takes ECX manager plus five stack words: GUID low/high and
three floats, `RET0x14`. It performs GUID map lookup and traverses the selected
node's source-pointer range `+0x20..+0x24`, constructing aligned `(R,G,B,R)` for
the four-lane setter. It calls the selected downstream helper after the loop,
including an empty range. Missing iterator/sentinel or integer node `0xFFFFFFF0`
returns AL0; an accepted object path returns AL1. The map and downstream helper
semantics remain unexpanded.

Its actual annotated C retains stack-slot reuse artifacts: apparent UInt32-to-float
casts, float iterator comparisons and `-NAN`. Raw MOV instructions preserve GUID
DWORD bits; raw CMP compares integer addresses and ADD10/JZ checks node arithmetic.
There is no numeric GUID conversion or floating NaN predicate in those instructions.
The plate and localized comments identify these expressions; actual C was not
hand rewritten into a purported recovered source implementation.

## Dimmer threshold and notification

The scalar setter has ECX source and two stack words: dimmer float and a notify
word whose low byte is tested, `RET8`. SUBPS subtracts the splatted new dimmer
from the existing four-lane control vector. Only the low lane chooses the
difference/negated-difference and comparison. It updates only for an ordered
strictly greater result than binary32 `0x3C23D70A`:
`0.009999999776482582`. Equality, smaller differences and unordered NaN do not
change control/effective lanes or invoke notification. There is no finite guard;
an ordered infinite difference can update, while infinity minus itself is unordered.

An accepted update splats the new dimmer into all four control lanes, recomputes
the gated effective vector and, when notify's low byte is nonzero, invokes source
virtual `+0x44`. It returns Boolean in AL. The selected constant bytes are reused
from [opacity constants](../../evidence/objects/opacity-constants.tsv); zero/one
are already retained in [transform constants](../../evidence/objects/transform-constants.tsv).

The object dimmer method takes GUID low/high and the float, `RET0xC`. Each source
gets notify1. Only any setter ALtrue triggers the selected downstream helper.
An existing object's empty list or all-no-change list still returns AL1; missing
lookup returns AL0. Thus object acceptance is distinct from any source update,
and exact host-value replacement is not this native threshold contract.

## Remaining boundary

No complete LITE factory/decoder, spatial placement, power/visibility producer,
manager-map ownership, opcode registration, source retirement, room/environment
solver, scalar-intensity consumer or renderer completion was established by
these ten bodies. Direct constructor leads and dispatcher call sites remain
external research. Do not turn local status bytes, AL1, a matching key or a
scalar source field into a whole lighting initialization/rendering guarantee.
