# Roof hip masks and polygon numeric selection

This reference describes selected complete PC 1.67 original functions. Names
are analyst names. It establishes the numeric and mutation boundaries below;
it does not establish the complete roof factory, overlap policy, renderer or
calling domain. The actual annotated decompiler exports retain ABI and
instruction caveats. New original read-only words are collected once in
[roof-numeric-data.tsv](roof-numeric-data.tsv). Shared words 1.0 and 0.5 reuse
[local-light data](local-light-original-data.tsv); 2^32 reuses
[weather constants](../weather-settings-constants.tsv), and 4.0 reuses
[water constants](../water/constants.json). Exact 2.0 and 0.0 reuse
[object transform constants](../../evidence/objects/transform-constants.tsv).

## Complete selected functions

| Entry | Selected responsibility | Original pair |
| --- | --- | --- |
| `00C02CE0` | UInt32 hip diagonal mask | [ASM](../../evidence/native/functions/00C02CE0_RoofHipDiagonalMask_u32.asm) ([C](../../evidence/native/functions/00C02CE0_RoofHipDiagonalMask_u32.c)) |
| `00C02D70` | Half-hip dimension/drag adjustment | [ASM](../../evidence/native/functions/00C02D70_RoofHalfHipDiagonalMask_u32.asm) ([C](../../evidence/native/functions/00C02D70_RoofHalfHipDiagonalMask_u32.c)) |
| `00BF4B20` | Half-hip position conversion | [ASM](../../evidence/native/functions/00BF4B20_RoofHalfHip_MaskAtPosition.asm) ([C](../../evidence/native/functions/00BF4B20_RoofHalfHip_MaskAtPosition.c)) |
| `00BF3150` | Ordinary hip position conversion | [ASM](../../evidence/native/functions/00BF3150_RoofHip_MaskAtPosition.asm) ([C](../../evidence/native/functions/00BF3150_RoofHip_MaskAtPosition.c)) |
| `00BF3230` | Diagonal hip position conversion | [ASM](../../evidence/native/functions/00BF3230_RoofDiagonalHip_MaskAtPosition.asm) ([C](../../evidence/native/functions/00BF3230_RoofDiagonalHip_MaskAtPosition.c)) |
| `00BF0960` | Count property bit 0 | [ASM](../../evidence/native/functions/00BF0960_RoofPolygon_CountFlagBit0.asm) ([C](../../evidence/native/functions/00BF0960_RoofPolygon_CountFlagBit0.c)) |
| `00BF0980` | Count property bit 2 | [ASM](../../evidence/native/functions/00BF0980_RoofPolygon_CountSharedBit2.asm) ([C](../../evidence/native/functions/00BF0980_RoofPolygon_CountSharedBit2.c)) |
| `00C02DE0` | Strict negative-X predicate | [ASM](../../evidence/native/functions/00C02DE0_RoofNormal_IsNegativeX.asm) ([C](../../evidence/native/functions/00C02DE0_RoofNormal_IsNegativeX.c)) |
| `00C02E30` | Strict positive-X predicate | [ASM](../../evidence/native/functions/00C02E30_RoofNormal_IsPositiveX.asm) ([C](../../evidence/native/functions/00C02E30_RoofNormal_IsPositiveX.c)) |
| `00C02E80` | Strict negative-Z predicate | [ASM](../../evidence/native/functions/00C02E80_RoofNormal_IsNegativeZ.asm) ([C](../../evidence/native/functions/00C02E80_RoofNormal_IsNegativeZ.c)) |
| `00C02ED0` | Strict positive-Z predicate | [ASM](../../evidence/native/functions/00C02ED0_RoofNormal_IsPositiveZ.asm) ([C](../../evidence/native/functions/00C02ED0_RoofNormal_IsPositiveZ.c)) |
| `00BF1900` | Two-diagonal selector A | [ASM](../../evidence/native/functions/00BF1900_RoofHippedAtlas_TwoDiagonalA.asm) ([C](../../evidence/native/functions/00BF1900_RoofHippedAtlas_TwoDiagonalA.c)) |
| `00BF1BD0` | Two-diagonal selector B | [ASM](../../evidence/native/functions/00BF1BD0_RoofHippedAtlas_TwoDiagonalB.asm) ([C](../../evidence/native/functions/00BF1BD0_RoofHippedAtlas_TwoDiagonalB.c)) |
| `00BF1F50` | Two-diagonal selector C | [ASM](../../evidence/native/functions/00BF1F50_RoofHippedAtlas_TwoDiagonalC.asm) ([C](../../evidence/native/functions/00BF1F50_RoofHippedAtlas_TwoDiagonalC.c)) |
| `00BF2290` | Two-diagonal selector D | [ASM](../../evidence/native/functions/00BF2290_RoofHippedAtlas_TwoDiagonalD.asm) ([C](../../evidence/native/functions/00BF2290_RoofHippedAtlas_TwoDiagonalD.c)) |
| `00BF23B0` | Conditional normal-frame rotation | [ASM](../../evidence/native/functions/00BF23B0_RoofPolygon_AdjustDiagonalNormalFrame.asm) ([C](../../evidence/native/functions/00BF23B0_RoofPolygon_AdjustDiagonalNormalFrame.c)) |
| `00BF2540` | Triangle polygon base initialization | [ASM](../../evidence/native/functions/00BF2540_RoofPolygon_ConstructTriangleBase.asm) ([C](../../evidence/native/functions/00BF2540_RoofPolygon_ConstructTriangleBase.c)) |
| `00BF2660` | Caller-provided mirror/properties initialization | [ASM](../../evidence/native/functions/00BF2660_RoofPolygon_ConstructThreeProperties.asm) ([C](../../evidence/native/functions/00BF2660_RoofPolygon_ConstructThreeProperties.c)) |
| `00BAA9B0` | Mansard collar cell traversal | [ASM](../../evidence/native/functions/00BAA9B0_RoofMansard_EmitCollarCells.asm) ([C](../../evidence/native/functions/00BAA9B0_RoofMansard_EmitCollarCells.c)) |
| `00C02A90` | Signed pagoda-family interval predicate | [ASM](../../evidence/native/functions/00C02A90_RoofType_IsPagoda.asm) ([C](../../evidence/native/functions/00C02A90_RoofType_IsPagoda.c)) |

## Unsigned masks and position conversion

`00C02CE0` is cdecl with four UInt32 words and an AL result. Let
`h=min(width>>1,height>>1)` using logical shifts and unsigned comparisons.
All subtractions below wrap modulo 2^32.

| Coordinate region | Equality | Returned byte; otherwise zero |
| --- | --- | --- |
| `x<=h, z<=h` | `x==z` | 10 |
| `x<=h, z>h` | `x==height-z-1` | 6 |
| `x>h, z<=h` | `z==width-x-1` | 9 |
| `x>h, z>h` | `width-x-1==height-z-1` | 5 |

There is no coordinate bounds check. `00C02D70` receives six cdecl words and
tests only the low bytes of the two drag words. Unsigned `width<height`
selects width; ties select height. The selected extent becomes `2*n-1`
with UInt32 wrapping. If its drag byte is zero, its coordinate gains
`adjustedExtent>>1`, also wrapping. It then calls the shared mask; this leaf
does not propagate an inward neighbor's mask to a corner.

The three thiscall position queries each consume two binary32 stack words,
return AL and clean eight stack bytes. They first produce stored binary32
coordinates, then use x87 `FIST`/`FILD`/subtraction, store the residual as
binary32 and compare its **bits** to `80000001` before `ADC -1`. On finite
in-range values this produces floor-like coordinates, not nearest rounding.
The decompiler's `ROUND` and float-to-uint spelling hides that distinction.

- Ordinary hip subtracts the origin at `+5C/+60`, multiplies by exact 2,
  and obtains UInt32 dimensions through virtual slots `+10/+14`.
- Half-hip obtains minima and absolute extents from endpoint fields
  `+10/+1C` and `+14/+20`. `COMISS/JA` selects the first endpoint on
  unordered input. Byte `+30` enables subtracting field `+34` from each
  minimum and adding exact 1 to each extent. Extents use temporarily
  truncating `FISTP64`, low32-times-two-plus-one. Drag bytes are `+39/+3A`.
  The original x87 control word is restored.
- Diagonal hip first calls `00A45460` with two output-float addresses,
  multiplies the outputs by exact 4, then uses the same integer conversion.
  That transform and its caller's coordinate frame remain unexpanded.

Global-world versus lot-local interpretation and invalid/nonfinite/overflow
caller domains are not established by these leaves.

## Polygon input, normal frame and state

`00BF2540` receives ECX destination and nine 4-byte stack words, returns the
same pointer in EAX and uses `RET 0x24` (36 cleanup bytes). The selected
initializer stores its input fields, samples three heights from a caller's
grid storage, and requests indexed normal data through `006D0CE0`. AL false
selects its cross-product fallback. Both paths then call `00BF23B0`.

The latter receives one aligned writable 16-byte float vector. Only when
both `abs(X)` and `abs(Z)` are strictly greater than stored exact `2^-23`
does it modify the vector. Equal and unordered comparisons reject. It
loads binary32 angle `3F490FDB`, obtains x87 sine and cosine, stores each
as binary32, then performs ordered SSE multiply/add operations. This is an
approximately 45-degree Y-frame rotation, not normalization. All four lanes
are written; the fourth is not an invariant homogeneous coordinate.
Caller FPU setup/control state and exceptional-domain parity remain static
research questions. Hardware and rendered acceptance are separate checks.

`00BF2660` receives ECX plus thirteen words and uses `RET 0x34` (52 bytes).
After calling the base initializer, it copies the low byte of caller word
11 into mirror field `+44`, sets index DWORD `+40` to 60, and initializes
or copies six property words at `+4C..+60`. Mirror is caller-provided.
Neither complete producer population nor retirement/lifetime follows from
this initializer alone.

`00BF0960` counts low bit 0 in bytes `+4C/+54/+5C`; `00BF0980` counts bit 2
in DWORDs at those offsets. Neither changes index or mirror. Selected
variant-A vtable words bind slots `+30/+34/+44` to these two counters and
`00BF1900`; other variants' complete dispatch domains remain open.

The normal predicates inspect just X or Z against signed stored
`0.0010000000474974513` (`3A83126F`, negative `BA83126F`). They are strict;
equality and NaN reject. They neither normalize nor validate the other lanes.

The four selectors are void thiscall mutations. Each calls virtual `+30`
then `+34`, sets index `+40` to zero, and uses its two normal predicates,
the second virtual result and bit-2 property words to select 8, 44 or 82
and mirror 0/1. Some branches return without writing mirror `+44`.
Incoming mirror must therefore survive those branches. Variant-specific
property offsets differ; the annotated C records their complete branches.

## Mansard collar traversal

`00BAA9B0` consumes ECX and four words, cleaning 16 bytes. Its roof owner
provides dimensions through virtual `+10/+14` and origins at `+5C/+60`.
The signed `00C02A90` predicate admits exactly roof type `12..1D` inclusive;
those types select a nine-cell collar, all others seven.

For each cell, the emitter calls `00BAA390` when
`z<collar || x<collar || height-collar-1<=z || width-collar-1<=x`, with
unsigned comparisons/subtractions. Dimension 1 suppresses its corresponding
loop; no general zero-dimension safety contract is established. Initial
parity is the complemented low bit of the low byte produced by
`FISTP64(binary32((originX+originZ)*2))`. It toggles per cell and row. Do not
replace this with `Floor(v+0.5)` without proving the calling domain and FPU
rounding state. Unsigned coordinate conversion uses signed `FILD` plus an
exact binary32 2^32 correction when needed, with half-cell pitch 0.5.

The nested cell factory, complete height/normal channel producers, overlap
admission, material/atlas binding, all derived constructor dispatch, FPU
initialization and caller-domain constraints remain unexpanded static work.
No executed roof/render acceptance is claimed by this reference.


## Dome and generic overlap are separate unresolved producers

The selected hip/position/normal/Mansard functions above do not establish a
complete dome mesh, UV atlas, generic triangle/eave clipper or cross-level roof
owner policy. The entry lead `00B9C340` is not defined as a function in the
current database. A read-only192-byte original window `00B9C340..00B9C3FF`
was matched to the PC1.67 executable; the complete instruction at `00B9C372`
is `PUSH 0xB23B2B38`. This is an operand observation, not a recovered material
identity, UV ratio, hemisphere algorithm or full owned function. The window
ends within an instruction: its trailing partial decode is not a CFG edge.
No canonical complete ASM/pseudocode pair is claimed for that undefined entry.

The remaining comparison must follow its actual factory/callers and complete
producer, establish the ring/normal/index/texture writers and consuming renderer,
and keep coverage/height virtuals (`B94BB0`, `B99F90` receivers) separate from
render geometry. Cross-level owner, overlap and eave decisions around `BA8700`
and `B9D900` need their actual receivers, inputs, tie/error branches and resource
lifetimes. Neither the Mansard collar traversal at `BAA9B0` nor the conditional
normal rotation at `BF23B0` establishes those broader policies.
