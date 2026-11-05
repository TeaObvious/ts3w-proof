# Hit-mask and control coordinates

Original PC1.67, static instruction evidence. Analyst names are descriptive roles.
Complete actual Ghidra listings/pseudocode follow the saved clean database; no
original bytes changed. Six envelopes total4,251bytes/1,004instructions.

| Entry / analyst role | Complete original pair |
| --- | --- |
| 00539b70 WinSlider_UpdateComponentGeometry | [ASM](../../evidence/native/functions/00539B70_WinSlider_UpdateComponentGeometry.asm) ([pseudocode](../../evidence/native/functions/00539B70_WinSlider_UpdateComponentGeometry.c)) |
| 00539ef0 WinSlider_ValueAtPointer | [ASM](../../evidence/native/functions/00539EF0_WinSlider_ValueAtPointer.asm) ([pseudocode](../../evidence/native/functions/00539EF0_WinSlider_ValueAtPointer.c)) |
| 00539ac0 WinSlider_PickComponent | [ASM](../../evidence/native/functions/00539AC0_WinSlider_PickComponent.asm) ([pseudocode](../../evidence/native/functions/00539AC0_WinSlider_PickComponent.c)) |
| 00537130 WinScrollbar_UpdateComponentGeometry | [ASM](../../evidence/native/functions/00537130_WinScrollbar_UpdateComponentGeometry.asm) ([pseudocode](../../evidence/native/functions/00537130_WinScrollbar_UpdateComponentGeometry.c)) |
| 00536fc0 WinScrollbar_PickComponent | [ASM](../../evidence/native/functions/00536FC0_WinScrollbar_PickComponent.asm) ([pseudocode](../../evidence/native/functions/00536FC0_WinScrollbar_PickComponent.c)) |
| 0053e160 Drawable_TestMappedHitMask | [ASM](../../evidence/native/functions/0053E160_Drawable_TestMappedHitMask.asm) ([pseudocode](../../evidence/native/functions/0053E160_Drawable_TestMappedHitMask.c)) |

0053E160 was decoded but had no function owner. The exact reachable body is one
711-byte range ending0053E426,210instructions, three RET0C exits and incoming
VTable pointer00FC0854. No overlapping function or original instruction was
removed. ECX is drawable, three physical stack words; first gives float bounds,
second signed integer point; inferred signature does not recover the unused word.
Return admission is AL, including no-mask true and out-of-bounds false paths.

Signed local point must be nonnegative and strictly below float extent. Mask78
absent admits. Present mask's virtual10 gives dimensions. Mode1 multiplies in
32bits before floating division/truncation;3 uses signed remainder.2/4 use four
border fractions, stretch/tile the middle and truncate collapsed midpoint before
integer division by2. The undersized-height branch adjusts horizontal seam again,
while retaining earlier vertical middle extent. Mask virtual14 receives mapped
integer coordinates; deeper mask sampling/alpha admission is not established here.

Slider00539AC0 priority is thumb1/track2/background0, else-1, half-open.00539EF0
refreshes live geometry, uses SSE clamp/divide, signed32 range subtraction, x87
multiply and floor/conversion with no managed invalid-range/zero-travel guard.
00539B70 has dirty/metadata/fallback/value-setter/invalidation effects beyond a
pure snapshot geometry helper. Scrollbar00537130 likewise has live state effects;
00536FC0 priority is3/5/2/6/1/4/0, else-1. Current captured helpers' wider arithmetic,
background Bounds, guards and resource admission differ locally as already bounded
by the gesture/metadata contracts. No runtime or bitwise FP parity is claimed.
