# Slider and scrollbar component presentation

Static pristine PC1.67 TS3W.exe analysis; reference identified in the
[central overview](../../references/retained-proof-overview.md). Labels are analyst role names, not recovered
symbols. No original UI/input/render execution was performed.

## Complete canonical bodies

Five actual annotated Ghidra pairs contain1,354 Listing instructions/6,060 owned
bytes. All selected bodies are contiguous; no alignment or adjacent switch-table
bytes are promoted to function ownership. Native Boolean draw returns define AL1
only, not normalized upper return bits. Submission and drawable functions are void.

| Entry/name | Complete evidence | Physical thiscall ABI |
| --- | --- | --- |
|005399A0 UiSlider_DrawComponents|[ASM](../../evidence/native/functions/005399A0_UiSlider_DrawComponents.asm) ([C](../../evidence/native/functions/005399A0_UiSlider_DrawComponents.c))|ECX window, context stack word, RET4;33 instructions/83 bytes|
|00539A00 UiSlider_SubmitComponent|[ASM](../../evidence/native/functions/00539A00_UiSlider_SubmitComponent.asm) ([C](../../evidence/native/functions/00539A00_UiSlider_SubmitComponent.c))|ECX window, context/component, RET8;51/184|
|00536E70 UiScrollbar_DrawComponents|[ASM](../../evidence/native/functions/00536E70_UiScrollbar_DrawComponents.asm) ([C](../../evidence/native/functions/00536E70_UiScrollbar_DrawComponents.c))|ECX window, context, RET4;57/143|
|00536F00 UiScrollbar_SubmitComponent|[ASM](../../evidence/native/functions/00536F00_UiScrollbar_SubmitComponent.asm) ([C](../../evidence/native/functions/00536F00_UiScrollbar_SubmitComponent.c))|ECX window, context/component, RET8;50/180|
|00537880 UiScrollbarDrawable_DrawComponent|[ASM](../../evidence/native/functions/00537880_UiScrollbarDrawable_DrawComponent.asm) ([C](../../evidence/native/functions/00537880_UiScrollbarDrawable_DrawComponent.c))|ECX drawable, context/float4/stateWords pointers, RET0C;1,163/5,470|

The [120 necessary original data bytes](../../evidence/native/data/ui-component-presentation.txt)
retain primary vtable Draw/Submit words, concrete drawable Draw slot, descriptor
class0F034637/size2C, matching class-ID accessor pointer, six-component/four-state
switch tables and six exact binary32 constants. Switch tables start538DE0 and
538DF8, outside the drawable body ending538DDD; intervening alignment is excluded.

[Actual selected UI.dll declarations/indexers](../../evidence/managed/selected/ui-component-images/component-images.cs.txt)
([complete selected original CIL](../../evidence/managed/selected/ui-component-images/component-images.il.txt))
establish original enum identities and image properties. The four indexer accessors
contain74 original CIL bytes; enum/constant declarations are metadata, not CIL bodies.
The raw reader preserves short nested TypeDef names; enclosing Slider/Scrollbar
identity comes from actual pristine decompilation. These wrappers do not implement
native frame, component geometry or missing-image drawing.

## Real call order and state producers

Slider constructor's primary tableFBFF88 slot24 selects005399A0; its+A4 points to
00539A00. Scrollbar primaryFBFBC8 has00536E70 at24 and00536F00 atA4. Draw reads
complete-window+204 drawable: nonnull submits Slider0,2,1 or Scrollbar0,4,3,1,6,2,5,
reloading vtables before calls; null delegates to original base Window00514640.
This orders component submission, not necessarily visible painting of every index.

Slider submission initializes16 bytes with state0, component and copied complete
+200/+1FC words. It queries IWindow+4 Enabled2 before reading hover+264/pressed+265.
Disabled gives state1; enabled matching hover gives2, or3 when pressed also matches.
Orientation+260==2 adds80hex. It invokes current drawable+204 virtual10 with context,
rectangle complete+268+16*component, state pointer. No component range check appears.

Scrollbar submission reads hover+284/pressed+285 first to form0/2/3, then queries
Enabled2 and overrides with1 when disabled. Orientation+280==2 adds80hex. Its
rectangle is complete+2B0+16*component, using native32-bit add/shift. Field reads
and callback order are not rewritten as one common Slider/Scrollbar policy.
Copied state words2/3 have no established higher semantic type in these bodies.

## Concrete drawable switch and atlas

00537880 uses an EBP frame with8-byte-aligned ESP; this matters for every indirect
call's physical arguments. It obtains a renderer through0050EC40 (context inECX,
two zero stack words, helper RET8) then passesFFFFFFFF to renderer virtual4.
Current component image is drawable+10+4*index. Unsigned index-minus1 switch paints
only1,3,4,6;0/2/5 and out-of-range submit no image/geometric output, although that
initial renderer state setup still occurs. The image-array load precedes the
unsigned switch, so this does not establish a safe invalid-index API or prevent
a bad index from faulting before the default return.

For image-backed1/3/6, low3 state bits map0→1/4 (or3/4 when bit8),1→0,2→1/2,3→3/4.
Other low3 values retain initial0. The inspected window producers do not set bit8.
Arrows1/6 draw one quarter horizontally. Thumb3 draws three slices with frame on
the cross UV axis. Container4 uses full cross UV axis and three track slices.
Orientation80hex chooses vertical versus horizontal rectangle/UV construction.

Quarter caps use signed image+1C or+20, CDQ/AND3/ADD/SAR2 division by4 toward zero,
then CVTSI2SS. No float division or destination-half cap clamp is present. Calls
submit leading cap, trailing cap, then middle. A short destination can therefore
produce an inverted middle interval; no normalized rectangle/NaN/overflow policy
is inferred beyond the actual instructions. Every rectangle/UV binary32 operation
and original order remains in full ASM.

## Missing-image paths

Null image is not a skip. Container4 sets FFACA899 and submits filled geometry.
For1/3/6, state3 selects an inset flat-style path; other states submit the original
multicolor bevel geometry. Arrow components additionally use black geometric
primitives, state-dependent1-pixel offsets and original two-sevenths padding.
The exact binary32 constant is3E924925; it is not a rounded decimal replacement.
Other original literals include1/2-pixel inset distances and colorsFF716F64,
FFF1EFE2,FFFFFFFF,FFACA899,FF000000. The renderer's indirect primitive names and
outer tint/opacity composition are not recovered from slot numbers alone.

Ghidra's actual C retains severe indirect-call stack/vector aliases across this
large function. Its annotations identify the defect and physical ABI; C is not
hand edited into a fictitious clean renderer API. Complete instructions govern
vertices, colors, integer conversion, state branches and resource absence.

## Boundaries and comparison

This closes actual native component call order, state/rectangle producers and the
concrete scrollbar drawable's frames, cap arithmetic and missing-image output.
Native dirty-geometry/input producers retain their separate complete contracts in
[slider/scrollbar input](slider-scrollbar-input.md). Polymorphic drawables, concrete
renderer primitive implementations, image metadata loading, outer context state,
full layout transforms, callbacks and GPU/resource retirement remain separate.

Current frontend int/4 matches ordinary signed quarter arithmetic, but its short-
destination cap clamp and start/middle/end draw order differ. Its Texture0 skip,
optional0/2/5 images and CPU gesture/fresh-geometry policy are also separate from
this concrete original path. These observations do not turn current surrogate
rendering into a native parity claim. No codec/backend reconstruction or runtime
performance/pixel result follows from static analysis.
