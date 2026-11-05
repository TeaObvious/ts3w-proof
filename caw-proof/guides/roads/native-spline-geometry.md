# Original road spline geometry and validity

Reference: [shipped CAW 1.22.10 Common module](../../README.md#original-module-identities).
The geometry below is the native validity cache, separate from rendering.

## Construction and knot mutation

The [spline constructor](../../evidence/native/Sims3Common/functions/1013D140_CAW_RoadSplineConstruct.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013D140_CAW_RoadSplineConstruct.c)) installs vtable `10ABF190`,
sets walkway/dirt/bridge flags and starts unlocked. It passes authored knots to
[the absolute setter](../../evidence/native/Sims3Common/functions/1013C7A0_CAW_RoadSplineSetKnotsWhenUnlocked.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013C7A0_CAW_RoadSplineSetKnotsWhenUnlocked.c)). When unlocked, the setter
copies all four knots and then performs these planar checks in order: coincident
endpoints add binary32 0.01 to end X; a first handle coincident with start adds
0.01 times the adjusted endpoint chord; a last handle coincident with the
adjusted end adds 0.01 times the reverse chord. Geometry refresh follows.
A locked setter leaves the knots unchanged.

The [delta worker](../../evidence/native/Sims3Common/functions/1013D2E0_CAW_RoadSplineTranslateKnotsAndValidate.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013D2E0_CAW_RoadSplineTranslateKnotsAndValidate.c)) instead adds the supplied deltas
directly. It does not call the absolute setter or perform those nudges. Mutation
and refresh precede endpoint-curvature and self-overlap validation. On false,
the retained managed [CmdTranslateSplineKnots](managed/CmdTranslateSplineKnots.cs)
restores its saved absolute knots. Constructor rejection and command rollback
are distinct operations.

## Adaptive samples and width quads

The [geometry refresh](../../evidence/native/Sims3Common/functions/1013F340_CAW_RoadSplineRefreshCoefficientsAndGeometry.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013F340_CAW_RoadSplineRefreshCoefficientsAndGeometry.c)) updates cubic coefficients,
bounds and straight flag +28. Both handle/chord planar cross magnitudes below
binary32 0.01 select the straight path. The
[polyline producer](../../evidence/native/Sims3Common/functions/1013ECC0_CAW_RoadSplineBuildAdaptivePolyline.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013ECC0_CAW_RoadSplineBuildAdaptivePolyline.c)) creates exactly two samples on
that path, using the normalized endpoint chord. Otherwise it appends the start,
subdivides over parameter [0,1], then appends the end.

The [subdivision worker](../../evidence/native/Sims3Common/functions/1013C460_CAW_RoadSplineSubdividePolyline.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013C460_CAW_RoadSplineSubdividePolyline.c)) preserves left recursion,
midpoint append, right recursion. It stops for parameter span below 0.0001,
depth at least 20, existing count at least 100, or strict flatness: squared sum
of absolute handle/chord crosses is below chord length squared times 0.1.
Midpoint tangent comes from the right subdivision handle minus midpoint.
Normalization uses RSQRTPS followed by two binary32 Newton refinements.
Samples are neither uniformly spaced in parameter nor in distance.

Each sample occupies 64 bytes: parameter +0, planar point +10, tangent +20,
length fields +30/+34 and index metadata +38. The
[width-quad producer](../../evidence/native/Sims3Common/functions/1013F010_CAW_RoadSplineBuildWidthQuads.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013F010_CAW_RoadSplineBuildWidthQuads.c)) emits one 64-byte quad per
consecutive sample pair. Offset direction is (-tangentY,tangentX), with half
width 6 for roads and 1 for footpaths. Two cross-sign tests choose corner order.
The original readonly width operands are at `10C0F38C` and `10C0F390`.

## Self-overlap predicate

The [self-overlap method](../../evidence/native/Sims3Common/functions/1013E5D0_CAW_RoadSplineHasSelfOverlap.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013E5D0_CAW_RoadSplineHasSelfOverlap.c)) compares every pair of
cached quads. The [edge expansion](../../evidence/native/Sims3Common/functions/1013BE90_CAW_RoadQuadExpandEdges.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1013BE90_CAW_RoadQuadExpandEdges.c)) applies distance
-0.05 with mask F, using normalized original edge deltas and summed corner
movements. It is not scaling around the quad center.

Strict planar AABB overlap admits the pair. The
[outcode worker](../../evidence/native/Sims3Common/functions/10141150_CAW_RoadQuadPointOutcode.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10141150_CAW_RoadQuadPointOutcode.c)) marks a negative directed-edge
cross as outside; zero remains inside. All subject corners inside accept;
a shared outside bit rejects. Otherwise
[quad clipping](../../evidence/native/Sims3Common/functions/10148070_CAW_RoadClipPolygonAgainstQuad.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10148070_CAW_RoadClipPolygonAgainstQuad.c)) visits edge bits 1,2,4,8 through
[edge clipping](../../evidence/native/Sims3Common/functions/10146D10_CAW_RoadClipPolygonAgainstQuadEdge.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10146D10_CAW_RoadClipPolygonAgainstQuadEdge.c)) and
[segment clipping](../../evidence/native/Sims3Common/functions/10145E40_CAW_RoadClipSegmentAgainstQuadEdge.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10145E40_CAW_RoadClipSegmentAgainstQuadEdge.c)). Crossing vertices use
[edge/segment intersection](../../evidence/native/Sims3Common/functions/10141870_CAW_RoadIntersectEdgeAndClipSegment.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10141870_CAW_RoadIntersectEdgeAndClipSegment.c)) and have their outcodes
recomputed against the full quad. Any nonempty final output accepts, without an
invented positive-area threshold. One cached quad has no pair to test.

