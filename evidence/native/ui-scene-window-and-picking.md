# Scene-window drawing and native point picking

Reference: original PC1.67 TS3W.exe, identified centrally. Names are analyst-assigned;
all findings are static. Complete native bodies are paired below; no original game
execution or frontend pixel parity is claimed.

- [SceneMgr draw ASM](functions/007EC1D0_UiSceneWindow_DrawRenderables.asm) ([actual annotated C](functions/007EC1D0_UiSceneWindow_DrawRenderables.c)):
  thiscall window plus context, RET4, AL1 regardless of allocation success. Binary32
  differences of stored bounds yield width/height. A20-byte renderable receives
  scene pointer and extents, then goes to the supplied draw context. A separate
  optional renderable is handled independently. No base fill/drawable pass or
  retained-forest/world-loading admission policy appears in this body.
- [Native picker ASM](functions/0050B330_UiWindow_PickAtScreenPoint.asm) ([actual annotated C](functions/0050B330_UiWindow_PickAtScreenPoint.c)):
  ECX preserved for recursion; complete window, screen-float2 pointer, opaque query
  word and optional output-float2 pointer are stack inputs, RET10. Visibility bit1
  gates the branch; bit10 suppresses self; bit1000 skips children. Transform or
  local-hit failure plus bit400 rejects the whole branch; otherwise self clears
  but descendants remain eligible. Linked children at+210 are searched before
  self and the first nonzero result wins. Original screen coordinates and opaque
  query word are forwarded unchanged. Local outputs need not be defined for
  every failed transform: state4 below does not write them.
- [Screen-to-local ASM](functions/00515210_UiWindow_ScreenPointToLocal.asm) ([actual annotated C](functions/00515210_UiWindow_ScreenPointToLocal.c)):
  thiscall window interface at complete-object+4, two stack floats and output pair,
  RET0C, AL Boolean. Stored transform evaluation uses separate SSE multiply/add
  lanes. Significant Z basis subtracts its projected contribution. Significant
  final W uses reciprocal1/W followed by X/Y multiplication. Finite interval
  [-2^-23,+2^-23] is inclusive for the near-zero checks. Transform state4 returns
  false without writing output; near-zero final W writes0,0 then false. COMISS
  unordered/NaN behavior is defined by the actual branch flags, not a generalized
  finite abs predicate. Six unowned alignment bytes remain explicit in the pair.
- [Local hit ASM](functions/00514310_UiWindow_HitLocalPoint.asm) ([actual annotated C](functions/00514310_UiWindow_HitLocalPoint.c)):
  same interface receiver, two stack floats, RET8, AL only. Local bounds are
  inclusive. Optional inset fields can reject or tighten them. Complex-hit
  settings invoke event13 with local coordinates and a mutable hit byte through
  the window callback. The recipient determines that byte; the body does not
  fabricate an image-mask or shape result. The C's temporary float-bit reuse is
  stack reuse, not mutation of caller coordinates.

[Necessary original transform constants](data/ui-picking-transform-constants.txt)
retain binary32 bits34000000/B4000000 for exact ±2^-23 and3F800000 for reciprocal
one. These data are not rounded decimal replacements.

The native picker answers one supplied point. It does not implement the current
frontend's center/5-by7 synthetic candidate sampling, virtual-record provider,
control-ID matching or list overlap order. SceneMgr extent production likewise
does not establish frontend snapshot/CPU-load admission, visibility hierarchy,
full modal policy, callback recipients or GPU resource retirement.
