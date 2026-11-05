# Neighborhood point and segment visibility

The reference is retail PC1.67 `TS3W.exe`.
This is a static comparison of complete selected native bodies and original
instructions, not an executed route or scheduler observation. Names below are
analyst descriptions. Existing inferred prototypes remain unchanged; physical
stack slots and AL/ST0 results govern the described ABI.

## World segment and midpoint order

The [world segment test](../../evidence/native/functions/00658E50_NeighborhoodVisibility_TestWorldSegment.asm)
([actual annotated C](../../evidence/native/functions/00658E50_NeighborhoodVisibility_TestWorldSegment.c)) takes eleven
stack words and returns with plain RET/caller cleanup. Its truth result is AL;
unrelated high EAX bits are not a full boolean contract. Sampling step below
binary32 0.1 rejects. World upper-region bounds, bridge membership and component
connectivity can take shortcuts before the ordinary path.

For that ordinary path, enabled ground0x10 is tested first by midpoint recursion
with step1.0 and then cleared. Pond0x20 uses a segment test, outline0x40 checks
component collision and outline edges, and sea0x04 uses current sea level and the
terrain segment test. Each successfully handled bit is cleared before final
midpoint recursion. The complete body retains conditional component and bridge
paths; this sequence must not be generalized to every branch.

The [filter visibility caller](../../evidence/native/functions/00644900_PathFilter_TestSegmentVisibility.asm)
([actual annotated C](../../evidence/native/functions/00644900_PathFilter_TestSegmentVisibility.c)) selects
0x7D ordinarily or0x59 when its smoothing flag at owner+0x71 is set. Both retain
lot0x01, ground0x10 and collision0x40. Smoothing drops BOTH sea0x04 and pond0x20.
The caller supplies step0.25 and additional float context1.0. Its own lot-segment
split/lot-local visibility path remains distinct from off-lot world visibility.
It has six stack words, ECX owner and RET0x18; AL is the truth result.

The [midpoint helper](../../evidence/native/functions/00658CC0_NeighborhoodVisibility_TestRecursiveMidpoints.asm)
([actual annotated C](../../evidence/native/functions/00658CC0_NeighborhoodVisibility_TestRecursiveMidpoints.c)) takes
thirteen stack words and uses caller cleanup. It clears0x40 below half-length0.25,
tests the supplied midpoint with null failure-reason pointer and FLT_MAX height,
then succeeds if half-length is strictly below the supplied termination step.
Thus the midpoint is tested before the leaf guard. Otherwise each split
coordinate uses binary32 ADDSS then MULSS0.5; half-length is multiplied by0.5
through a binary32 x87 store. Left recursion completes before right recursion;
a left failure short circuits. Immediate returns define AL; recursive-success
and recursive-failure exits write full EAX1 or0 respectively.

## Point masks and failures

The [point adapter](../../evidence/native/functions/00658C80_NeighborhoodVisibility_TestPlannerPoint.asm)
([actual annotated C](../../evidence/native/functions/00658C80_NeighborhoodVisibility_TestPlannerPoint.c)) passes
component world+0x0C, auxiliary+0x10, self and the six original point arguments to
the [point test](../../evidence/native/functions/00658830_NeighborhoodVisibility_TestWorldPoint.asm)
([actual annotated C](../../evidence/native/functions/00658830_NeighborhoodVisibility_TestWorldPoint.c)). The adapter
has ECX owner and RET0x18; after caller cleanup of the nine-word inner call,
it leaves AL intact. Its retained void decompiler declaration is not evidence
that AL is absent. The point test itself has plain RET/caller cleanup and
AL truth, not guaranteed full-EAX truth.

The point test first checks a special upper-world region and bridge membership.
Bridge success with FLT_MAX height, or with the verified near-height condition,
can return before ordinary failure-reason writes. Ground admission precedes
lot lookup. The following table gives ordinary enabled checks and reason values;
special-region/bridge branches and masks can bypass later checks.

| Mask | Original condition | Ordinary rejection reason |
| --- | --- | --- |
|0x10|Primary ground test; when sea0x04 is absent an alternate lower-region/height/water path can admit|16|
|0x01|Containing lot pointer is nonnull|1|
|0x04|Outside special upper region, no containing lot and queried surface height at or below current sea|4|
|0x20|Outside special upper region, pond lookup with flag1 returns a pointer|32|
|0x02|Outside special upper region, bridge collision predicate succeeds|2|
|0x40|Outside special upper region, component outline small-disc query or global collision rejects|64|

Lot lookup is requested only when mask0x05 is nonzero. Ordinary success writes
reason0 when a pointer is supplied. Sidewalk mask0x7C used by street analysis
omits lot rejection0x01; it still includes ground, sea, pond and outline checks.
The component outline arm converts grid coordinates using explicit x87
truncation control-word changes, visits three candidate cells and uses the
stored binary32 radius at00FEE42C. Exact polygon/global collision behavior is
still the subordinate query's contract.

The [primary ground admission](../../evidence/native/functions/00C6B8F0_WorldSurface_TestGroundAdmission.asm)
([actual annotated C](../../evidence/native/functions/00C6B8F0_WorldSurface_TestGroundAdmission.c)) checks
lower-inclusive X/Z and upper-exclusive X/world+C0+C4 bounds. The
[alternate ground admission](../../evidence/native/functions/00C6BA00_WorldSurface_TestLowerRegionGroundAdmission.asm)
([actual annotated C](../../evidence/native/functions/00C6BA00_WorldSurface_TestLowerRegionGroundAdmission.c)) instead
uses world+C0 as upper Z. Both have ECX world/two float stack words/RET8 and
may require lot membership when the terrain material query reaches threshold
0.5 or1.0 respectively. Their coordinate conversion uses FIST with inherited
x87 rounding, then stored float residual sign-bit adjustment. Decompiler ROUND
does not specify that arithmetic. The descriptive lower-region name describes
the alternate bounds without assigning an unverified terrain classification.

## Lot, terrain and sea producers

The [lot lookup guide](../world/lot-spatial-lookup.md) follows candidate bins,
inverse transforms and inclusive local lot bounds. The native finder returns
the first containing pointer or null in EAX. Its bucket reader uses origin
subtraction,16-unit spacing and truncation toward zero; bucket membership alone
does not establish containment.

The [surface-height body](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.asm)
([actual annotated C](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.c)) contains
separate lot-floor, bridge-mesh and terrain paths, nullable output flags and
-100 sentinel behavior. The point sea test supplies its particular lot-disabled,
mesh-enabled tuple. The [terrain/sea producer guide](../camera/height-terrain-water-supplement.md)
records the terrain collision query and loader/resource-selection boundaries.
The collider query returns a downward-ray hit height or-100, and resource
installation chooses the collision resource when available, otherwise its raw
heightfield. Raw-grid interpolation is not the same operation.

The [sea getter](../../evidence/native/functions/00C61090_WorldWater_GetSeaLevel.asm)
([actual annotated C](../../evidence/native/functions/00C61090_WorldWater_GetSeaLevel.c)) returns
Sea+0x14 when world+0x60 is nonnull, otherwise exact-100 in x87ST0. The
[plane segment predicate](../../evidence/native/functions/00C6C650_WorldSurface_IsSegmentAbovePlane.asm)
([actual annotated C](../../evidence/native/functions/00C6C650_WorldSurface_IsSegmentAbovePlane.c)) has ECX
world/six stack words/RET0x18 and AL truth. With terrain+0x54 it requires both
endpoint surface heights strictly above the supplied plane, traverses terrain
collider windows/hit fractions and queries subsequent points. Without terrain
owner it returns true. Virtual collider dispatch remains an explicit original
owner boundary, not an inferred generic heightmap sampler.

## Separate route tuning producer

The [minimum car-distance setter](../../evidence/native/functions/00829F90_RouteManager_SetMinimumCarTravelDistance.asm)
([actual annotated C](../../evidence/native/functions/00829F90_RouteManager_SetMinimumCarTravelDistance.c)) is an ECX
route-manager operation with one float stack word and RET4. MOVSS copies the
same binary32 bits into manager+0x968 and, if planner+0x960 is nonnull, its+0x8C.
Street analysis0065A010 reads planner+0x8C. This setter performs no finite check,
clamp, default substitution or startup policy. No thread scheduler, complete
world retirement protocol or concurrent planning guarantee follows from these
synchronous native bodies.
