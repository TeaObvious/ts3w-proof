# Terrain sculpting and painting

The original editor lists `kToolPaintTerrain` and `kToolTerrainAutoPaint` in the
[18-tool index](../../TOOL-INDEX.tsv). The managed path below explains how a
sculpt stroke crosses into `Sims3Common.dll` and how its command handles Undo.

[TerrainSculptBrush.BeginApply](managed/TerrainSculptBrush.cs) records the first
terrain height, brush modifier ID, opacity-derived strength, size-derived width,
falloff, and shape. It creates `SculptingBrushCmd`, then calls `ApplyBrushAndUpdate`.
Further samples update the current point and call that method again. Its
`WorldTerrain.ApplyBrush` call passes through the original
[WorldTerrain managed class](managed/WorldTerrain-sculpt.cs.txt) and reaches the declared
`WorldTerrainWrap_ApplyBrush` import in the
[CSHost wrapper excerpt](managed/WorldTerrainWrap-brush.cs.txt).

[TerrainSculptBrush.FinishApply](managed/TerrainSculptBrush.cs) submits the
command. The [command excerpt](managed/SculptingBrushCmd.cs) backs up current
height data in its constructor, backs up updated data after execution, and
calls the `WorldTerrain` Undo/Redo height methods. Its `ModifyTerrain` routine
also visits overlapping lot edges and rebuilds Sea water geometry for the
dirty rectangle; optional object-height adjustment is guarded by
`mbUpdateObjectsYPos`. These are managed calls, not proof of native brush math,
pixel values, or successful resource publication.

[TerrainAutoPaintTool](managed/TerrainAutoPaintTool.cs) merely opens and closes
the auto-paint form. Its existence alone does not establish the form's blend
calculation or the native mutation path. The original brush modes, masks,
texture layers, routing paint, and serialization require separate code paths.

## Native evidence

`WorldTerrainWrap_ApplyBrush` at `0x10996630` follows nested terrain fields and
calls `0x1006aad0` only when the worker pointer is nonzero: [export
instructions](../../evidence/native/Sims3Common/functions/10996630_WorldTerrainWrap_ApplyBrush.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10996630_WorldTerrainWrap_ApplyBrush.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10996630_WorldTerrainWrap_ApplyBrush.c),
[worker instructions](../../evidence/native/Sims3Common/functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.c)),
[worker pseudocode](../../evidence/native/Sims3Common/functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.c).
The worker computes brush bounds and writes an affected rectangle into the
parameter block. The subordinate brush actions must be followed to establish
the height-write algorithm.
