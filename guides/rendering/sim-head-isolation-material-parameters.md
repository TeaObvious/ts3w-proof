# Sim-head isolation material parameters and modifier lifetime

Reference: original PC 1.67 TS3W.exe, identified centrally in the proof README.
The four names below are analyst assignments. Each pair contains genuine
annotated Ghidra C and the complete owned Listing, totaling 334 instructions
and 1,241 bytes. Existing inferred types, storage and ABI are retained.
These are static original-code findings, without original gameplay execution.

| Entry | Verified responsibility | Complete original pair |
| --- | --- | --- |
| 0069A1C0 | Produce Y threshold and optional Z output from retained model flags | [ASM](../../evidence/native/functions/0069A1C0_SimHeadIsolationModifier_ComputeFadeThresholds.asm) ([annotated C](../../evidence/native/functions/0069A1C0_SimHeadIsolationModifier_ComputeFadeThresholds.c)) |
| 0069A400 | Construct the counted modifier and retain its model | [ASM](../../evidence/native/functions/0069A400_SimHeadIsolationModifier_Construct.asm) ([annotated C](../../evidence/native/functions/0069A400_SimHeadIsolationModifier_Construct.c)) |
| 0069A450 | Release the model and conditionally free the modifier | [ASM](../../evidence/native/functions/0069A450_SimHeadIsolationModifier_DeletingDestructor.asm) ([annotated C](../../evidence/native/functions/0069A450_SimHeadIsolationModifier_DeletingDestructor.c)) |
| 0069A490 | Build material substitutions and publish the retained LOD result | [ASM](../../evidence/native/functions/0069A490_SimHeadIsolationModifier_ApplyMaterialParameters.asm) ([annotated C](../../evidence/native/functions/0069A490_SimHeadIsolationModifier_ApplyMaterialParameters.c)) |

## Threshold inputs and exact scalar interpretation

0069A1C0 receives the modifier in ECX and one stack output pointer, with RET4.
It reads model pointer modifier+0x08 and flags model+0x38. Species bits use mask
0xCF00; zero normalizes to 0x100. For that value, flags & 0x7F select the following
live binary32 globals. The listed defaults are pristine original image values,
not a claim that these globals cannot change. Y returns through x87 ST0;
this branch does not write the output pointer.

| Age-mask value | Global | F32 bits | Approximate image default |
| --- | --- | --- | ---: |
| 0x02 | 01159A30 | 3F570A3D | 0.84 |
| 0x04 | 01159A2C | 3FA147AE | 1.26 |
| 0x08 | 01159A28 | 3FEB851F | 1.84 |
| 0x40 | 01159A24 | 3FE7AE14 | 1.81 |
| Other | 01159A20 | 3FEB851F | 1.84 |

Other recognized species select Y and write Z according to the actual test
`(flags & 0x60) != 0`. Each table cell is `Y / Z`; columns state the two branches
explicitly. These are raw masks, without inferred species or age enum names.

| Species mask | Test false | Test true |
| --- | --- | --- |
| 0x200 | 0.8 / 0.2 | 1.4 / 0.35 |
| 0x300 | 0.06 / 0 | 0.175 / 0.05 |
| 0x400 | 0.07 / 0 | 0.45 / 0.2 |
| 0x500 | 0.06 / 0 | 0.15 / 0.05 |

The nonzero literals above have F32 bits 3F4CCCCD (0.8), 3E4CCCCD (0.2),
3FB33333 (1.4), 3EB33333 (0.35), 3D75C28F (0.06), 3E333333 (0.175),
3D4CCCCD (0.05), 3D8F5C29 (0.07), 3EE66666 (0.45), and 3E19999A (0.15).
At 0069A277, MOVSS reads 00FF404C as bits 3E333333. The genuine C's overlapping
string-symbol/numeric-cast rendering is an analysis artifact; it is not an
integer-to-float conversion performed by the machine instructions.

An unrecognized non-0x100 species returns x87 +0 and leaves the output untouched.
0069A490 initializes its Z output to +0 before calling this helper and narrows
returned x87 Y into a binary32 temporary. This producer contains no bone lookup,
mesh-bounds query, child call or CPU vertex-cutoff operation.

## Material submission and output ownership

0069A490 receives ECX plus four stack DWORDs and returns with RET0x10. It lazily
hashes the exact names FadeYThreshold, FadeZThreshold and PieMenuHeadRadius.
The original parameter identities are 937F9649, 1960A61C and CD4836B4 respectively.
FadeYThreshold is always added as one float. FadeZThreshold is added only when
the normalized species mask is not 0x100. PieMenuHeadRadius is always added from
the live binary32 global 01159A0C multiplied with MULSS by exact F32 3E800000
(0.25). This parameter calculation does not read camera zoom.

The first stack argument is the input LOD. Its byte +0x72 chooses retained
apply-in-place through 006DB170 when nonzero, or clone-with-substitutions through
006DB3D0 when zero. The clone result is tested through AL. Clone failure releases
a nonnull partial local result and cleans scratch state before returning AL0.
Success publishes through the second stack output pointer, invokes the output's
virtual +0, releases the local through virtual +4, cleans scratch state and
returns AL1. No atomic rollback or unexpanded child behavior is implied.

The stored return type remains undefined4. Actual success sets only AL with
MOV AL,1, while failure clears only AL with XOR AL,AL; upper EAX can retain
cleanup residue. The C return expressions are not a four-byte Boolean contract.
Array indexing and temporary structures in decompiled C are inferred layouts;
the original instructions establish the parameter and ownership order.

## Counted modifier construction and retirement

0069A400 receives a newly allocated 12-byte modifier in ECX and one stack model
pointer. It stores transient base vptr 00FF0FDC, zeros refcount +0x04 through XCHG,
stores vptr 00FF409C and initializes retained model +0x08 to zero. Its literal
pointer branch retains a different nonnull input through virtual +0 before
assignment, then releases a nonnull previous pointer through virtual +4.
EAX is this and the physical return is RET4.

0069A450 restores vptr 00FF409C, releases a nonnull model +0x08 through virtual +4,
then stores base vptr 00FA2B80. It calls free only when the supplied flag byte's
bit 0 is set. It does not clear the retained model before release. EAX is this
and the physical return is RET4. The different constructor and destructor base
vptr stores are actual instructions, not normalized to one invented base type.

## Boundaries

These CPU-produced parameters are inputs to material substitution. The four
bodies do not establish the shader-space hardclip/hairfade equation, an exact
screen crop, index/vertex deletion, complete outfit admission, pause-time actor
advancement or rendered head isolation. They must not be replaced by a guessed
CPU cutoff merely because a material parameter is called a threshold.
[CAS material production](../shaders/cas-material-parameter-production.md) describes
a separate material/sampler path; [ghost LOD substitutions](ghost-lod-shader-substitution.md)
describe another modifier. Neither guide substitutes for the unexpanded
sim-head shader consumer. Full child apply/clone semantics and visual parity
remain separate questions.
