# Original editable terrain collision

Reference: [shipped CAW 1.22.10 Common module](../README.md#original-module-identities).
These are original native producers and consumers, with analyst-assigned names. The selected [original data operands](../evidence/native/Sims3Common/terrain-collision-data.tsv) retain exact little-endian bytes; the two mutable flags describe their initialized values.

## Shape selection and adaptive topology

The editor's [raw-mode loader](../evidence/native/Sims3Common/functions/101FFF10_CAW_LoadEditableTerrainRawMode.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FFF10_CAW_LoadEditableTerrainRawMode.c)) calls
[terrain loading](../evidence/native/Sims3Common/functions/101FFBB0_CAW_LoadTerrainDataForMode.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FFBB0_CAW_LoadTerrainDataForMode.c)) with authored collision false. In contrast,
[authored-mode loading](../evidence/native/Sims3Common/functions/101FFEF0_CAW_LoadAuthoredTerrainCollisionMode.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FFEF0_CAW_LoadAuthoredTerrainCollisionMode.c)) requests serialized type `033B2B66`
KD resources. The raw editor path later enters
[all-chunk collision construction](../evidence/native/Sims3Common/functions/1025AD60_CAW_BuildAllEditableTerrainCollision.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025AD60_CAW_BuildAllEditableTerrainCollision.c)); it rebuilds the optimizer
and budgets and visits every tile through
[coarse/fine KD rebuilding](../evidence/native/Sims3Common/functions/10259B80_CAW_RebuildEditableTerrainChunkCollision.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10259B80_CAW_RebuildEditableTerrainChunkCollision.c)). This builds detail 1 coarse KD
first, then detail 0 fine KD. Initial editable height queries therefore do not
unconditionally use a raw grid HeightFieldShape.

The [raster optimizer update](../evidence/native/Sims3Common/functions/101F4240_CAW_RebuildTerrainOptimizerFromRaster.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F4240_CAW_RebuildTerrainOptimizerFromRaster.c)) supplies stored uint16 rows and
height quantum to [optimizer initialization](../evidence/native/Sims3Common/functions/1025E010_CAW_InitializeTerrainOptimizer.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E010_CAW_InitializeTerrainOptimizer.c)), whose
[height copy](../evidence/native/Sims3Common/functions/1025DF60_CAW_CopyHeightSamplesAndBuildErrors.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025DF60_CAW_CopyHeightSamplesAndBuildErrors.c)) feeds
[diamond error construction](../evidence/native/Sims3Common/functions/1025D860_CAW_BuildTerrainDiamondErrors.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025D860_CAW_BuildTerrainDiamondErrors.c)). A midpoint uses the ceiling of
its endpoint heights' mean. Error hierarchy propagates finer errors; diagonal
directions alternate. Padded rows repeat the last authored samples.

The [budget initialization](../evidence/native/Sims3Common/functions/101F4280_CAW_InitializeTerrainTriangleBudgets.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F4280_CAW_InitializeTerrainTriangleBudgets.c)) sets fine global budget
`max(sampleCount/10,40000)` and per-chunk ceiling 35,000; coarse budget
`max(sampleCount/42,10000)` and ceiling 15,000. The
[threshold refresh](../evidence/native/Sims3Common/functions/101F4350_CAW_RefreshTerrainTriangleBudgetThresholds.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F4350_CAW_RefreshTerrainTriangleBudgetThresholds.c)) retains those budgets. The
[threshold search](../evidence/native/Sims3Common/functions/1025E850_CAW_SelectTerrainTriangleBudgetThreshold.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E850_CAW_SelectTerrainTriangleBudgetThreshold.c)) performs at most 16 midpoint iterations over
uint16 thresholds and returns the last midpoint, rather than a repaired upper
endpoint. [all-chunk counting](../evidence/native/Sims3Common/functions/1025E7D0_CAW_CountAdaptiveTerrainChunks.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E7D0_CAW_CountAdaptiveTerrainChunks.c)) rejects any excessive chunk.

The [chunk root fan](../evidence/native/Sims3Common/functions/1025E610_CAW_VisitTerrainChunkRootFan.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E610_CAW_VisitTerrainChunkRootFan.c)) starts four binary triangles in left,
bottom, right, top order. [triangle refinement](../evidence/native/Sims3Common/functions/1025E2B0_CAW_RefineTerrainBinaryTriangle.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E2B0_CAW_RefineTerrainBinaryTriangle.c)) uses strict
midpoint error greater than threshold and the original depth condition. Leaves
emit apex, second endpoint, first endpoint. The
[topology emitter](../evidence/native/Sims3Common/functions/1025E6E0_CAW_EmitAdaptiveTerrainChunkTopology.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E6E0_CAW_EmitAdaptiveTerrainChunkTopology.c)) counts, emits and invokes
[identity compaction](../evidence/native/Sims3Common/functions/1025E3B0_CAW_CompactAdaptiveTerrainVertexIdentities.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E3B0_CAW_CompactAdaptiveTerrainVertexIdentities.c));
[identity decoding](../evidence/native/Sims3Common/functions/1025E130_CAW_DecodeTerrainVertexIdentity.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025E130_CAW_DecodeTerrainVertexIdentity.c)) supplies X/Z, with uint16 times height
quantum supplying height. This triangle order is retained into collision.

## Sector placement and packed vertices

The [editor tile initializer](../evidence/native/Sims3Common/functions/10256E90_CAW_TerrainInitializeEditorTiles.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10256E90_CAW_TerrainInitializeEditorTiles.c)) defines each center as
start plus integer half-size. The ordinary sector is256 units with center
start+128. The [sector builder](../evidence/native/Sims3Common/functions/101F69C0_CAW_TerrainBuildSectorCollision.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F69C0_CAW_TerrainBuildSectorCollision.c)) subtracts that center from
optimizer X/Z before collision packing. Separate lot clipping and secondary
vertex displacement branches remain in this builder.

The [collision builder initializer](../evidence/native/Sims3Common/functions/101F6150_CAW_TerrainInitializeCollisionBuilder.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F6150_CAW_TerrainInitializeCollisionBuilder.c)) chooses axis scales
`(1/64,heightQuantum,1/64)` and placement Y equal to half the unsigned terrain
height range. The [quantizer](../evidence/native/Sims3Common/functions/101F63D0_CAW_TerrainPackCollisionVertices.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F63D0_CAW_TerrainPackCollisionVertices.c)) rearranges optimizer
`(X,Z,height,X)` into packed XYZ. Coordinates are:

- X: `floor(binary32(.5 + 64*(X-centerX)))`;
- Y: `floor(binary32(.5 + invHeightQuantum*(height-halfRange)))`;
- Z: `floor(binary32(.5 + 64*(Z-centerZ)))`.

`invHeightQuantum` is the stored binary32 reciprocal of the quantum.
Each arithmetic instruction rounds as binary32 before the original floor call.
Coordinates saturate to signed16; fourth short is zero. A source count above
FFFF is rejected. The [first-index remap](../evidence/native/Sims3Common/functions/101F5C90_CAW_RemapTerrainVerticesInIndexOrder.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F5C90_CAW_RemapTerrainVerticesInIndexOrder.c)) compacts vertices in
first occurrence order without changing triangles.

The [KD shape builder](../evidence/native/Sims3Common/functions/10477AF0_CAW_BuildPackedTerrainKdShape.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10477AF0_CAW_BuildPackedTerrainKdShape.c)) copies three shorts from stride8.
The [KD initializer and bounds](../evidence/native/Sims3Common/functions/10477760_CAW_TerrainBuildPackedKdBounds.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10477760_CAW_TerrainBuildPackedKdBounds.c)) initializes faces in triangle
order and starts partition bounds at signed16 extrema. It also derives the
world-scaled min/max box: center `(max+min)*.5`, span `max-min`, half extents
`span*.5 + max(span*.01, length(span)*.0001)` componentwise. Dot accumulation
is Z, then Y, then X. The [shape installer](../evidence/native/Sims3Common/functions/101FAC80_CAW_TerrainPublishSectorCollision.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FAC80_CAW_TerrainPublishSectorCollision.c)) adds the sector
center to the builder placement. Its null-KD branch and
[coarse height-field build](../evidence/native/Sims3Common/functions/10258CF0_CAW_BuildCoarseTerrainHeightField.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10258CF0_CAW_BuildCoarseTerrainHeightField.c)) instead install a live257x257 raw
HeightFieldShape; shape mode is a producer decision.

## KD ordering and height/normal results

The [KD partition](../evidence/native/Sims3Common/functions/104766F0_CAW_BuildTerrainKdPartition.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/104766F0_CAW_BuildTerrainKdPartition.c)) creates leaves below 21 triangles.
Otherwise it clamps measured raw bounds to child bounds, chooses largest
world-scaled extent with X/Y/Z tie preference, and uses arithmetic integer
midpoint. Unstable maximum-then-minimum partitions duplicate straddlers.
Adjacent children are appended; right recursion precedes left. Rejected splits
retain the mutated face order. Node low2 bits encode leaf0 or X/Y/Z1/2/3;
internal `word>>2` is left child and right is left+1. Leaf first face is
`(word>>2)&FFFFF` and count is `word>>22`.

The [height query](../evidence/native/Sims3Common/functions/101FA9B0_CAW_TerrainCollisionHeight.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FA9B0_CAW_TerrainCollisionHeight.c)) and
[normal query](../evidence/native/Sims3Common/functions/101FAB10_CAW_TerrainCollisionNormal.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FAB10_CAW_TerrainCollisionNormal.c)) select absolute `floor(X/Z)>>8` sectors.
Their downward ray starts at unsigned height range plus 10, rounded to binary32
only after addition, then subtracts shape placement. The
[KD shape dispatch](../evidence/native/Sims3Common/functions/10476350_CAW_TerrainKdShapeRayDispatch.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10476350_CAW_TerrainKdShapeRayDispatch.c)) calls
[scaled world-ray consumer](../evidence/native/Sims3Common/functions/10475FF0_CAW_TerrainKdRayWorld.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10475FF0_CAW_TerrainKdRayWorld.c)), which uses
[padded box clipping](../evidence/native/Sims3Common/functions/1046F440_CAW_TerrainRayClipPaddedBox.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1046F440_CAW_TerrainRayClipPaddedBox.c)). In the zero-direction branch, the
original compares the negative origin coordinate to half extent; there is no
additional symmetric positive-origin check in that helper.

Inverse scales transform origin/direction. SQRTPS normalizes direction and
scales the interval. Near-zero direction reciprocals use signed 1e10 at
absolute value at most 2^-23. The [tree traversal](../evidence/native/Sims3Common/functions/10475CE0_CAW_TerrainKdTraverseRay.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10475CE0_CAW_TerrainKdTraverseRay.c)) walks
front-to-back with strict split interval tests. The
[triangle test](../evidence/native/Sims3Common/functions/10475880_CAW_TerrainKdTriangleRay.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10475880_CAW_TerrainKdTriangleRay.c)) requires absolute determinant above2^-23,
barycentric lower bound-1e-5 and upper bound1.00001, and distance at least 0.
Dot accumulation is Z+Y+X. Leaf distance tests are inclusive: the last
qualifying equal-distance face replaces the normal. The first visited leaf with
a hit returns; a global first-triangle search has different tie behavior.

The raw cross normal is multiplied by inverse scales and normalized with
RSQRTPS plus two Newton refinements. Each uses the original binary32 operation
order, including `.5*inverse` before the correction product. World distance is
raw distance divided by scaled direction length. Height is unsigned range+10
minus that float distance through the x87 result; the bridge rounds to
binary32. Misses retain -100/up. World bounds, water and covering-lot admission
are separate outer contracts described in [native bindings](native-binding-contracts.md).

## Dirty updates and threshold refresh

The [world terrain update](../evidence/native/Sims3Common/functions/1025A0B0_CAW_WorldTerrainUpdateVisibleAndDirtyTiles.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025A0B0_CAW_WorldTerrainUpdateVisibleAndDirtyTiles.c)) first unions an eligible raster
dirty rectangle into pending bounds, acknowledges it and sets pending flag 20.
The first later clean update clears that flag and starts a 1000-millisecond
deadline. Rebuild requires no new eligible rectangle and current performance
counter strictly greater than that deadline; equality remains deferred.
The [terrain collision state initializer](../evidence/native/Sims3Common/functions/10257BE0_CAW_InitializeWorldTerrainCollisionState.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10257BE0_CAW_InitializeWorldTerrainCollisionState.c)) selects timer
unit4 through [timer construction](../evidence/native/Sims3Common/functions/10926CA0_CAW_InitializeCounterTimer.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10926CA0_CAW_InitializeCounterTimer.c)) and
[unit selection](../evidence/native/Sims3Common/functions/109267D0_CAW_SetCounterTimerUnit.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/109267D0_CAW_SetCounterTimerUnit.c)). The
[counter conversion initializer](../evidence/native/Sims3Common/functions/10926450_CAW_InitializePerformanceCounterUnitConversions.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10926450_CAW_InitializePerformanceCounterUnitConversions.c)) computes milliseconds per
tick as the extended x87 reciprocal of QueryPerformanceFrequency times binary32
1000, then rounds the conversion to binary32.
[deadline setup](../evidence/native/Sims3Common/functions/10926BE0_CAW_SetCounterTimerDeadline.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10926BE0_CAW_SetCounterTimerDeadline.c)) divides the unsigned interval by that
conversion, uses [x87 integer conversion](../evidence/native/Sims3Common/functions/10A90966_CAW_TruncateX87ValueToInt64.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10A90966_CAW_TruncateX87ValueToInt64.c)) and adds the ticks
to the current performance counter. Its apparent no-argument helper consumes ST0.


Eligible pending bounds update optimizer errors through
[the raster-only rebuild](../evidence/native/Sims3Common/functions/101F4240_CAW_RebuildTerrainOptimizerFromRaster.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F4240_CAW_RebuildTerrainOptimizerFromRaster.c)), retaining initialized thresholds.
The separate [combined optimizer/budget rebuild](../evidence/native/Sims3Common/functions/101F5000_CAW_RebuildTerrainOptimizerAndBudgets.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F5000_CAW_RebuildTerrainOptimizerAndBudgets.c)) explicitly
refreshes both. Detail index0/1 selects retained budgets through
[budget lookup](../evidence/native/Sims3Common/functions/101F41C0_CAW_GetTerrainDetailTriangleBudgets.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F41C0_CAW_GetTerrainDetailTriangleBudgets.c)) and threshold/counts through
[threshold lookup](../evidence/native/Sims3Common/functions/101F41F0_CAW_GetTerrainDetailThresholdAndCounts.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101F41F0_CAW_GetTerrainDetailThresholdAndCounts.c)).

A failed adaptive chunk build invokes threshold refresh and marks every tile
+57 for retry. After successful eligible rebuilds, the dispatcher measures the
maximum current packed vertex-buffer byte count divided by8. A different fine
threshold or negative cached count initializes threshold/count cache+70/+6C.
Otherwise, only absolute signed maximum-vertex-count change strictly greater
than 10,000 refreshes thresholds. Changes below the limit do not advance the
cached maximum, so the next comparison retains that baseline. A changed threshold
marks all tile+57. This timer/budget policy is separate from the dispatcher's
view/lot/tool gates and coarse HeightFieldShape transitions.
