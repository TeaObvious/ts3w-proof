# UI drawable state selection and image geometry

Reference: pristine PC1.67 TS3W.exe, centrally identified in this directory.
Names below are analyst-assigned roles. Findings are static; no original-game
execution or pixel equivalence is claimed.

- [Border-slice original ASM](functions/00510A70_UiDrawable_DrawBorderSlices.asm) ([actual annotated C](functions/00510A70_UiDrawable_DrawBorderSlices.c)):
  cdecl eight stack words; signed image dimensions become binary32 and multiply
  per-axis scale. Leading inner edge adds lowerFraction*scaledSize; trailing
  subtracts(1-upperFraction)*scaledSize. Crossing edges collapse to their midpoint,
  preserving asymmetric borders. Optional mask changes renderer dispatch.
- [ImageDrawable original ASM](functions/00532060_UiImageDrawable_Draw.asm) ([actual annotated C](functions/00532060_UiImageDrawable_Draw.c)):
  physical thiscall receiver plus context, bounds and an opaque unused
  third stackword, RET0C. Bits1/2 independently
  fix width/height from signed texture dimensions times authored scale. Axis1
  starts,2 ends,3 centers. Flags0 retains the requested bounds. Mask is separate;
  unmasked scale1 tiles,2 uses alternate borders,other values draw directly.
  The decompiler still omits geometry after unresolved indirect renderer stack
  recovery; read the complete instructions0053208B..00532164 for those operations.
- [StdDrawable original ASM](functions/0053DD70_UiStdDrawable_Draw.asm) ([actual annotated C](functions/0053DD70_UiStdDrawable_Draw.c)):
  physical thiscall receiver plus context,bounds,state, RET0C. State selects both
  image and mask. Scale1 plain,2 asymmetric borders,3 tile,4 alternate borders.
  Missing image draws a native fallback frame. A secondary image/color has its
  own state gate and centered scale. The actual C misidentifies later state and
  bounds after indirect renderer calls; its float casts are not original logic.
  Complete body and three referenced switch tables are retained together.
- [State-image selector original ASM](functions/0053DC40_UiStdDrawable_SelectStateImage.asm) ([actual annotated C](functions/0053DC40_UiStdDrawable_SelectStateImage.c)):
  two stack inputs, RET8, ECX unused. Flags&7 choose normal0,disabled1,hover2,active3;
  selected bit8 chooses the upper array half. Missing checked-disabled tries
  disabled then base. Missing checked-hover/active tries checked normal, matching
  unselected row, then base. Other low states return base. It never tries every
  nonnormal image when base is null. Four-entry switch table and padding retained.

The current frontend's0.5 native-size tolerance, alpha-bound fitting,1.5 threshold,
Logo-specific188x173 placement and broad missing-image fallback are not established
by these native bodies. ImageDrawable and StdDrawable have different scale enums;
one class's scale1 must not be generalized to the other class. Their geometry and
state consumers do not establish GPU image retirement, managed snapshot coherence,
portable font layout or original IconDrawable's separate placement semantics.

The shared context accessor0050EC40 was inspected read-only: its existing physical
thiscall two-stack/RET8 prototype is correct. It is not the cause established for
the remaining decompiler stack artifacts. No speculative downstream prototypes
were changed to make the C appear cleaner. No original bytes were changed.
