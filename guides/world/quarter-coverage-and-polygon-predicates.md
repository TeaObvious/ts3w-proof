# Quarter coverage and polygon predicates

Original PC1.67 TS3W.exe, identified centrally. Names are analyst assignments.
Complete original function bodies, actual saved Ghidra C and instruction review
establish static behavior. This is not an executed placement/cutout test, native
FPU initialization proof or complete original placement/floor persistence path.

| Entry | Analyst role | Complete code |
| --- | --- | --- |
| 007CEAA0 | Geometry_PolygonsIntersectWithBounds | [ASM](../../evidence/native/functions/007CEAA0_Geometry_PolygonsIntersectWithBounds.asm) ([C](../../evidence/native/functions/007CEAA0_Geometry_PolygonsIntersectWithBounds.c)) |
| 007CD9E0 | Geometry_PointInPolygonCrossing | [ASM](../../evidence/native/functions/007CD9E0_Geometry_PointInPolygonCrossing.asm) ([C](../../evidence/native/functions/007CD9E0_Geometry_PointInPolygonCrossing.c)) |
| 007CE9A0 | Geometry_PolygonsEqualCyclicTolerance | [ASM](../../evidence/native/functions/007CE9A0_Geometry_PolygonsEqualCyclicTolerance.asm) ([C](../../evidence/native/functions/007CE9A0_Geometry_PolygonsEqualCyclicTolerance.c)) |
| 007CE1C0 | Geometry_GetPolygonXZBounds | [ASM](../../evidence/native/functions/007CE1C0_Geometry_GetPolygonXZBounds.asm) ([C](../../evidence/native/functions/007CE1C0_Geometry_GetPolygonXZBounds.c)) |
| 00AD1990 | LotGeometry_CollectPolygonQuarterCoverage | [ASM](../../evidence/native/functions/00AD1990_LotGeometry_CollectPolygonQuarterCoverage.asm) ([C](../../evidence/native/functions/00AD1990_LotGeometry_CollectPolygonQuarterCoverage.c)) |
| 00B44CE0 | Placement_ValidateTransformedFootprintCoverage | [ASM](../../evidence/native/functions/00B44CE0_Placement_ValidateTransformedFootprintCoverage.asm) ([C](../../evidence/native/functions/00B44CE0_Placement_ValidateTransformedFootprintCoverage.c)) |
| 00A90420 | FloorCutout_CollectRotatedRectangleQuarters | [ASM](../../evidence/native/functions/00A90420_FloorCutout_CollectRotatedRectangleQuarters.asm) ([C](../../evidence/native/functions/00A90420_FloorCutout_CollectRotatedRectangleQuarters.c)) |
| 00AF6BF0 | TilePartRectangleIterator_Construct | [ASM](../../evidence/native/functions/00AF6BF0_TilePartRectangleIterator_Construct.asm) ([C](../../evidence/native/functions/00AF6BF0_TilePartRectangleIterator_Construct.c)) |
| 00AF6490 | TilePartRectangleIterator_IsDone | [ASM](../../evidence/native/functions/00AF6490_TilePartRectangleIterator_IsDone.asm) ([C](../../evidence/native/functions/00AF6490_TilePartRectangleIterator_IsDone.c)) |
| 00AF64E0 | TilePartRectangleIterator_Current | [ASM](../../evidence/native/functions/00AF64E0_TilePartRectangleIterator_Current.asm) ([C](../../evidence/native/functions/00AF64E0_TilePartRectangleIterator_Current.c)) |
| 00AF64A0 | TilePartRectangleIterator_Next | [ASM](../../evidence/native/functions/00AF64A0_TilePartRectangleIterator_Next.asm) ([C](../../evidence/native/functions/00AF64A0_TilePartRectangleIterator_Next.c)) |

## Quarter raster and actual iterator

AD1990 is cdecl with seven DWORD slots: polygon vector, supplied bounds, lot,
low-byte level, output vector, append flag, inset flag. Unless append is true it
clears the output end. Inset selects binary32 bounds +/-.001. FIST/FILD, stored
residue sign-bit comparison with80000001 and ADC/SBB construct floor/ceil-like
integer endpoints, then upper endpoints decrement. It retains only low bytes,
uses signed comparisons and clamps each coordinate to0..lotDimension-1. This
is not a portable guarantee for arbitrary int/NaN/infinite coordinates or every
original FPU rounding/exception state.

AF6BF0 copies start/end packed3byte x,z,level, sets current=start and mask1.
AF64E0 returns a borrowed mutable current descriptor at receiver+6. AF64A0 shifts
mask1/2/4/8 then increments z, x, level with signed-byte bounds and byte storage.
AF6490 tests signed currentLevel>endLevel. Normal domain order is quarter, z, x,
level. Iterator overflow and initially invalid coordinate ranges are not managed
int-enumeration semantics. Each quarter is passed to the already reviewed triangle
producer, gets a real XY AABB, and calls7CEAA0 with supplied polygon bounds.
Overlap appends the packed4byte tilepart, not an allocated managed tuple.

## Bounds, intersections, containment and cyclic match

7CE1C0 returns ALfalse on an empty vector without writing bounds. Nonempty starts
from the first Float2 and writes minX,minZ,maxX,maxZ using ordered scalar selections.
NaN/signed-zero behavior should not be inferred from a generic vector min/max API.
7CEAA0 requires strict AABB overlap, rejects empty polygons after that gate, and
uses determinant threshold `max(min(widthAX,widthBX)*binary32(.001),2^-23)`.
Segment parameters admit both endpoints0..1. Important arithmetic:7CEC21 computes
one DIVSS reciprocal;7CEC5D/65 multiply each numerator by it. Two direct divisions
are not necessarily bit-equivalent. Determinant admission includes x87 FABS/FCOMI;
original nonfinite/unmasked-exception behavior is not reduced to a finite formula.

7CD9E0 tries containment with previous=last and ordered vertexZ>=pointZ sides;
when sides differ it compares the two cross products and toggles on side equality.
It reads the last vertex before count-zero gate. No universal boundary inclusion
or epsilon follows. Intersection fallback tests containment in both directions
then equal-count cyclic matching through7CE9A0.

7CE9A0 chooses the FIRST B vertex strictly within the squared tolerance of A[0].
Once selected, a later forward cyclic mismatch immediately returns false at
7CEA8D; it never resumes scanning for another nearby initial vertex. It does not
reverse winding. Equal-count empty inputs return false. Lazy global tolerance
initialization is a plain flag/cache, not a proven synchronization primitive.
A managed retry-every-near-start algorithm therefore differs for repeated or
near-duplicate vertices, even if ordinary well-separated polygons agree.

Exact original threshold operands are in
[footprint constants](../../evidence/objects/footprint-constants.tsv). Inset
address01066BA8 stores6F12833A, the same binary32 bits as the distinct determinant
multiplier atFB35B4. These meanings remain separate despite equal numeric values.

## Selected placement and cutout producers

B44CE0 transforms authored footprint, computes bounds, checks selected category/
lot/level gates and callsAD1990 with append0/inset0. It continues through existing
terrain/special-floor and validation children; these selected bodies do not close
all placement failure, support, routing or managed tool policy.

A90420 constructs four rectangle corners from half-extents, uses FSIN/FCOS and
transform helpers, reduces bounds then computes floor(min+.001) and
ceil(max-.001). Here the arithmetic remains x87 until conversion to the double
external MSVCR80 floor/ceil calls, with float stores afterward. Original import
references confirm the external targets. It callsAD1990 with the rounded rectangle
bounds and append0/inset0. A caller adding epsilon in binary32 before floor/ceil
has a potentially different boundary. Quarter collection alone does not write a
floor cutout resource or prove persistence.

## Evidence and limits

All11body envelopes and owned instructions match pristine input, annotations were
saved clean with unchanged original FileBytes, and canonical pairs/indexes/links
were checked. Four earlier geometry pairs now use complete actual owned listings
with gap bytes. The iterator/selected callers extend their contract; no duplicate
ASM/pseudocode or annotation sidecars are retained. Original allocation failures,
full transformed polygon production, FPU setup, complete downstream placement and
floor resource writer/reader remain separate contracts rather than invented defaults.

## Ordered bound selection closure

7CE1C0 COMISS/JA at7CE228/231 and7CE3AE/3B7 selects incoming minimum only
whenold>incoming. Maximum selection at7CE256/259 and7CE3DC/3DF selects incoming
only whenincoming>old. Otherwise the existing rawFloat32 is retained,including
signedzero equality and quietNaN/unordered selection. The four-entry unrolled
loop and scalar tail use the same rules. This is not MathF/Vector2 Min/Max's
NaN/zero selection contract. Actual x87 signalingNaN quieting,exceptionmask and
payload propagation are not newly established as a portable runtime profile.
The full annotated body is updated in its canonical pair above;original bytes
remain pristine and the database savedclean. Static evidence,no executed vectors.
