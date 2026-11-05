# Stair step-placement consumer

Static original PC 1.67 evidence through GhidrAssist explicitly on `/TS3W.exe`.
B230C0 is the direct placement consumer shared by the four-step B298A0 and one-step
B29930 callbacks. Its complete actual annotated C and original ASM cover151
instructions and657 contiguous bytes. Each instruction and both data ranges were
independently compared with pristine original bytes. Database saved clean, original
bytes unchanged; no game execution or product test was performed.

## ABI and scalar meaning

ECX renderer; callee RET0x20 cleans eight four-byte physical stack slots: signed
32-bit direction, binary32 rise, binary32 run, position4, advance4, world-position4,
world-direction4 pointers, final low-byte transform-direction flag. MOVAPS loads/
stores require four-lane vectors aligned to16 bytes; direct callbacks explicitly
align their local stacks. The original output layout must not be changed because
a scalarized C view obscures its fourth lane.

For directions0,2,4,6, advance XYZ respectively is `(run,-rise,0)`,
`(0,-rise,-run)`, `(-run,-rise,0)`, `(0,-rise,run)`. The exact negative-zero data
bits are0x80000000. The fourth advance lane mirrors the X-advance choice in the
selected original SIMD construction; it is not claimed to be meaningful homogeneous
W. Unsupported directions bypass initialization of advance and orientation outputs,
then still consume caller-provided advance data; there is no Boolean rejection.

The consumer adds position4 and advance4, forces the transform input's fourth lane
to1 and applies the lot matrix obtained from ADF630. It initializes cardinal
orientation; when the final byte is nonzero it transforms the direction without
translation and writes final fourth lane1. The function contains no callback loop:
B234B0 owns immediate repetition and updates the caller's shared position after
each callback. This function computes the block's next position before the world
transform, matching that producer/consumer order.

Thus B298A0's .75/1.0 arguments are rise/run, while B29930's .1875/.25 arguments
have exactly one quarter of each. B2AC90 selects the former for total-quarter-step
quotient before selecting the latter for remainder. The main
[collision/render guide](stair-collision-and-render-admission.md) records that
separate callback ordering and the stricter current frontend validation policy.

Independent static vectors, not executed tests: direction0 with rise.1875/run.25
has advance XYZ(.25,-.1875,0); direction2 has(0,-.1875,-.25). With identity lot
matrix and input position XYZ(3,2,7), the former world output is(3.25,1.8125,7,1).
The four-step callback instead advances(1,-.75,0). Unsupported direction preserves
the caller's preexisting advance/orientation values until any requested transforms.
Full asset lookup and rail/material composition remain separate consumers.

## Canonical evidence

- [ComputeStepPlacement ASM](../../evidence/native/functions/00B230C0_ModularStairsRenderer_ComputeStepPlacement.asm) ([C](../../evidence/native/functions/00B230C0_ModularStairsRenderer_ComputeStepPlacement.c))
- [Direction dispatch](../../evidence/native/data/0x00b23354-step-placement-direction-dispatch.bin):
  seven little-endian targets after unsigned direction<=6 guard.
- [Negative zero](../../evidence/native/data/0x00f998f0-step-placement-negative-zero.bin):
  original binary32 sign bit with zero magnitude.

Other caller constants remain in the existing callback evidence; no redundant data
copy, annotation sidecar or probe log is added. This selected consumer completes
the inspected rise/run dependency, not the entire native matrix or renderer system.
