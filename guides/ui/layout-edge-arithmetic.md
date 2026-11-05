# Anchor and proportional layout edge arithmetic

Original PC1.67 static instruction evidence. Function names below are descriptive
analyst labels. Actual class-name literals, class IDs, physical pointers and
virtual-table joins establish the selected ownership; inferred C types do not
replace those original instructions.

| Selected role | Complete original pair |
| --- | --- |
| Selected reference-rectangle/math-interface wrapper005330F0 | [ASM](../../evidence/native/functions/005330F0_FUN_005330f0.asm) ([actual C](../../evidence/native/functions/005330F0_FUN_005330f0.c)) |
| SimpleLayout anchor additions00533170 | [ASM](../../evidence/native/functions/00533170_SimpleLayout_ApplyAnchoredEdges.asm) ([annotated C](../../evidence/native/functions/00533170_SimpleLayout_ApplyAnchoredEdges.c)) |
| SimpleLayout inverse00533230 | [ASM](../../evidence/native/functions/00533230_SimpleLayout_RemoveAnchoredEdges.asm) ([annotated C](../../evidence/native/functions/00533230_SimpleLayout_RemoveAnchoredEdges.c)) |
| ProportionalLayout edge additions00533360 | [ASM](../../evidence/native/functions/00533360_ProportionalLayout_AddParentFractions.asm) ([annotated C](../../evidence/native/functions/00533360_ProportionalLayout_AddParentFractions.c)) |
| ProportionalLayout inverse005333D0 | [ASM](../../evidence/native/functions/005333D0_ProportionalLayout_RemoveParentFractions.asm) ([annotated C](../../evidence/native/functions/005333D0_ProportionalLayout_RemoveParentFractions.c)) |

## Actual class and interface joins

[Necessary original byte excerpts](../../evidence/native/data/ui-layout-edge-math.txt)
join the selected class registration rows to their ID writer, allocator/factory
and class-name getter. The name getters return the original NUL-terminated ASCII
SimpleLayout and ProportionalLayout literals. Their registration-ID writers
produce2F418D72 and AF3DF411, respectively. Their class-interface virtual slots
also select the corresponding constant getters.

The selected Simple factory stores class vtable00FBEAE0 at complete object+4
and math vtable00FBEAC4 at complete+10 hex. The corresponding Proportional stores
00FBEA78 and00FBEA5C. Apply/inverse slots at math-vtable+14/+18 therefore select
00533170/00533230 and00533360/005333D0. The Simple math receiver+4 is the byte
containing the anchor bits; Proportional receiver+4/+8/+C/+10 contain its four
binary32 fractions. These support joins are bounded instruction/data excerpts;
they do not claim complete allocator, registration registry or object lifetime
contracts. No unrelated factory/getter function definitions were added.

## Simple anchor transform

00533170 receives ECX math interface plus two stack DWORD pointers: reference
rectangle and in/out edge rectangle. RET8 consumes those pointers. Right8 and
left4 select X; bottom2 and top1 select Y. A selected far anchor adds reference
far-minus-near to the corresponding current far edge; it adds the same extent
to the near edge only when the near anchor is absent. When both anchors are
absent, it subtracts the reference near origin from both edges. A near-only
axis is unchanged. The full leaf contains51 instructions/191bytes and two RET8
paths. No status return or inversion clamp is established in that leaf.

00533230 reverses the same contributions: anchored far subtracts the reference
extent, including near when the near anchor is absent; neither anchor adds the
reference origin to both edges. It contains57instructions/211bytes. Both RET8
paths write AL1; upper EAX retains other bits and is not a full-width Boolean.
Neither leaf allocates, acquires references, enters a lock or calls a child.

## Proportional transform

00533360 has the same ECX/two-stack-pointer/RET8 boundary. It subtracts reference
near from far with SUBSS, multiplies the selected fraction with MULSS, adds the
current edge with ADDSS and stores MOVSS. Fraction offsets+4/+8/+C/+10 are
left/top/right/bottom. Actual edge update order is left,right,top,bottom. Its
23instructions/107bytes contain no fused multiply-add or inversion clamp and
do not establish a consumed status result.

005333D0 subtracts each corresponding reference extent times fraction from the
current edge in the same left,right,top,bottom order. It has28instructions/
125bytes and returns AL1 through RET8. This is a two-rectangle inverse leaf;
the selected evidence does not establish a separate three-rectangle reflow API
or the scheduling order of an entire collection of layout procedures.

## Wrapper and ordered inversion clamp

005330F0 obtains a rectangle through its supplied context's virtual+10 then
the returned object's virtual+38. It copies all four32-bit words to a local
reference rectangle and calls the selected math interface virtual+14 with the
local reference and original in/out rectangle. The full38-instruction/128byte
wrapper has ECX outer receiver plus two stack words/RET8. The concrete context
callback implementations and their lifetimes remain separate boundaries.

After the math call it compares nearX with farX using COMISS and branches JBE;
only ordered nearX>farX writes nearX to farX. It repeats that operation for Y.
Equality and unordered comparisons skip the write. An equal negative-zero far
value is therefore retained rather than replaced by an equal positive-zero near
value; a finite far value is not replaced when near is NaN. This states the
selected branch/store behavior, not a generic maximum operation or complete
floating-point exception/rounding environment policy.

## Coverage

The five complete paired exports contain197 Listing instructions/762owned bytes,
with no owned padding. All instructions and necessary original-data excerpts
match the pristine original executable. The four newly defined bodies use their
already existing Listing instructions; adjacent functions, padding and other
reviewed annotations remain intact. Actual annotated C retains physical ABI
notes, including inverse AL-only results.

These finite transforms do not establish the complete native window/procedure
dispatcher, notification order, parent/reference callback behavior, clipping,
centering/HUD/Grow algorithms, concurrency or rendered UI acceptance. Arithmetic
clamping and binary32 rounding can lose information; the inverse is not a proof
that every possible input has an exact round trip. No original runtime execution
or performance measurement is claimed.
