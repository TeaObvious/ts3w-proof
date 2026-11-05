# Original placed-footprint leaf selectors

Static original PC1.67 instructions establish eight complete leaf bodies,
444 original bytes. Analyst names describe the reviewed expressions; they are
not recovered symbols. Native arguments, AL versus full-EAX returns and every
selected instruction were checked against the admitted original executable.
No original code, gameplay test or numerical test was run. The complete parent
object-pair validator remains open.

## Complete original pairs

| Entry | Analyst name and scope | Original pair |
| --- | --- | --- |
| `00B3B260` | Select other polygon runtime mask | [ASM](../../evidence/native/functions/00B3B260_Placement_SelectOtherPolygonRuntimeMask.asm) ([annotated C](../../evidence/native/functions/00B3B260_Placement_SelectOtherPolygonRuntimeMask.c)) |
| `00C977C0` | Intersection mask excluding type bit100000 | [ASM](../../evidence/native/functions/00C977C0_Catalog_TestIntersectionMaskWithoutType100000.asm) ([annotated C](../../evidence/native/functions/00C977C0_Catalog_TestIntersectionMaskWithoutType100000.c)) |
| `00C97A00` | Intersection category or D0 mask4 | [ASM](../../evidence/native/functions/00C97A00_Catalog_TestIntersectionCategoryOrD0Bit4.asm) ([annotated C](../../evidence/native/functions/00C97A00_Catalog_TestIntersectionCategoryOrD0Bit4.c)) |
| `00AFBD00` | Yaw to octant with inherited FPU state | [ASM](../../evidence/native/functions/00AFBD00_Placement_QuantizeYawToOctant.asm) ([annotated C](../../evidence/native/functions/00AFBD00_Placement_QuantizeYawToOctant.c)) |
| `00B3AEC0` | Equal yaw and squared unit separation band | [ASM](../../evidence/native/functions/00B3AEC0_Placement_TestEqualYawAndSquaredUnitSeparation.asm) ([annotated C](../../evidence/native/functions/00B3AEC0_Placement_TestEqualYawAndSquaredUnitSeparation.c)) |
| `00B3B2B0` | A4 maskC000 without intersection category or D0 mask8 | [ASM](../../evidence/native/functions/00B3B2B0_Catalog_TestA4C000WithoutIntersectionOrD0Bit8.asm) ([annotated C](../../evidence/native/functions/00B3B2B0_Catalog_TestA4C000WithoutIntersectionOrD0Bit8.c)) |
| `00AFC090` | Catalog A4 mask403F | [ASM](../../evidence/native/functions/00AFC090_Catalog_TestPlacementMask403F.asm) ([annotated C](../../evidence/native/functions/00AFC090_Catalog_TestPlacementMask403F.c)) |
| `00B006C0` | Optional object's Location flag20 | [ASM](../../evidence/native/functions/00B006C0_Object_TestLocationFlag20.asm) ([annotated C](../../evidence/native/functions/00B006C0_Object_TestLocationFlag20.c)) |

## Distinct catalog predicates

The existing [category getter ASM](../../evidence/native/functions/00C97790_Catalog_TestIntersectionCategoryMask.asm) ([annotated C](../../evidence/native/functions/00C97790_Catalog_TestIntersectionCategoryMask.c))
returns true for `(catalog[98] & 0x100000) != 0 OR (catalog[D0] & 0x4000010A) != 0`.
It must not be substituted for every similarly shaped helper:

- `C977C0`: type98 mask100000 must be ZERO, and D0 mask4000010A NONZERO.
- `C97A00`: the existing category predicate OR D0 mask4.
- `B3B2B0`: existing category predicate false, D0 mask8 zero and
  `(A4 & 0xC000) == 0xC000`.
- `AFC090`: `(A4 & 0x403F) != 0` only.

The first three use a nonnull catalog in ECX, no stack arguments and plain RET.
`AFC090` is cdecl with one nonnull catalog pointer on the stack. All four return
full EAX0 or1; they read no high type word at9C and mutate no catalog state.
Semantic names for individual categories are not recovered by these masks.

## Required runtime mask, not a wildcard

`B3B260` takes cdecl `(nonnull context, optional otherCatalog)` and returns full
UInt32:

1. Context byte2D nonzero, nonnull catalog and `C977C0` true: `0xFFFFFFFF`.
2. Otherwise context byte2C zero: `5`.
3. Otherwise nonnull catalog and `C977C0` true: `5`.
4. Otherwise: `6`.

The first branch precedes the byte2C branch. The helper neither mutates the
context nor resolves a catalog. Exact producers/meaning of context2C/2D are open.

At reviewed caller `B42E94`, the returned word is preserved into the original
polygon iterator call at `B42F08`, with requireAll byte1. The existing
[complete iterator ASM](../../evidence/native/functions/00945080_FootprintComponent_NextPolygonByRuntimeFlags.asm) ([annotated C](../../evidence/native/functions/00945080_FootprintComponent_NextPolygonByRuntimeFlags.c))
tests `(runtimeFlags & requestedMask) == requestedMask`. It has no special
`0xFFFFFFFF` sentinel branch. Calling that selector "all polygons" or replacing
it with any-bit admission is not established. Cursor/output/layer details are
covered separately by the [footprint contract](../objects/footprint-queries.md).

## Yaw quantization and FPU state

`AFBD00` accepts one binary32 yaw stack word and returns UInt32 in0..7.
DIVSS divides by the exact original word `0x3F490FDA`, value
`0.7853981256484985`, then stores the quotient to binary32. x87 FLD/FISTP converts
that stored quotient to signed Int32 under the INHERITED x87 rounding-control
and exception state. A signed remainder sequence is followed by final AND7;
the result equals the converted DWORD's low three bits.

There is no local FLDCW. Actual Ghidra `ROUND` is not evidence of a fixed
`Math.Round`, floor, ties-to-even or ties-away policy. Global FPU initialization,
exceptional inputs and caller angle ranges remain open. Do not replace the
original width by a newly calculated pi/4 value without checking its bits. The
word is reused from [original direction constants](find-good-location-constants.tsv).

## Equal yaw and squared separation

`B3AEC0` is cdecl with six stack words: yawA, pointer to two X/Z floats A,
yawB, pointer B, unused word, low-byte expansion flag. Only AL is defined as the
Boolean return; old decompiled upper-EAX/pointer expressions were artifacts.

Compute SSE binary32 `dz=B[1]-A[1]`, `dx=B[0]-A[0]`, their two squares, then
`dzSquared + dxSquared`; store this sum to binary32. Reload into x87, subtract
original1 and take absolute value. Require STRICTLY
`abs(storedSum - 1) < (expansionFlag ? 1 : 0) + epsilon`, using the original
binary32 epsilon `0.009999999776482582` and x87 addition/comparison. Equality at
the bound and unordered results reject. This is a band on SQUARED separation,
not a direct distance tolerance. The additional necessary
[original data word](../../evidence/objects/placement-pair-original-data.tsv)
is retained; existing [unit constants](../../evidence/objects/footprint-constants.tsv)
are reused.

Then UCOMISS yawB/yawA followed by LAHF, TEST AH44 and JP accepts only ORDERED
EXACT equality. NaN rejects, signed zeros compare equal. There is no yaw
tolerance, octant conversion or wrap here. Selected parent call sites reverse
the two positions/yaws according to their catalogD0 mask40/80 branch; complete
parent policy and the sixth-byte producer remain open.

## Optional Location flag

`B006C0` takes an optional object stack pointer. Null object or missing component
returns full EAX0. Resolve the dynamic component mask at11EDF08; the matching
[Location descriptor](../../evidence/objects/component-descriptors.tsv) identifies
the component family. Return1 iff its DWORD2C mask20 is nonzero. This helper
does not read yaw, refresh derived transforms or establish object validity,
generation, lifetime or thread ownership.

## Limits

These leaves do not close `B42180`, its wall/vertical/polygon branches, context
construction, the complete native/managed callback chain, global FPU setup or
executed placement acceptance. The [held-footprint contract](held-footprint-gates.md)
remains a distinct side of the pair. All selected pointers are borrowed; no
new retention, snapshot or parallel-safety guarantee follows from pure masks.
