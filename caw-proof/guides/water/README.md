# Sea level and ponds

The original tool IDs are `kToolChangeSeaLevel` and `kToolPond` in the
[tool index](../../TOOL-INDEX.tsv). They are separate state paths.

[ChangeSeaLevelTool.MouseDown](managed/ChangeSeaLevelTool.cs) picks the ground
at the clicked screen position. On a hit it submits `SeaLevelCommand` with
the picked Y value and the previous Sea level. The
[command](managed/SeaLevelCommand.cs) calls Sea `BeginEditMode`,
`SetSeaLevel`, and `EndEditMode` for Execute, and restores the previous level
through the same sequence on Undo. The original
[Sea managed class](managed/Sea.cs) forwards those methods to its
[native wrapper](managed/SeaWrap.cs), which
declares those calls and `SeaWrap_RebuildWaterGeometry` in
`Sims3Common.dll`. It passes a whole-world flag of `1` and zero rectangle
coordinates for this command. The declaration and managed ordering do not
prove how native water geometry is tessellated or persisted.

[PondTool.MouseDown](managed/PondTool.cs) looks for a pond at the picked
terrain vertex. If none exists and deletion mode is off, it requires a Sea
object and terrain above the Sea level, then asks the world to create a pond
with initial water level `terrainHeight + 2`. Deletion mode removes an
existing pond. The [World methods](managed/World-water.cs.txt) and
[Pond managed class](managed/Pond.cs) show the next forwarding layer. The
tool's per-frame path adjusts water level while active. This
managed path does not make pond creation equivalent to a global Sea rebuild;
the corresponding native ownership and save path require separate inspection.

## Native evidence

`SeaWrap_SetSeaLevel` at `0x1098f8b0` forwards the Sea pointer and level to
`0x101d9860`: [export instructions](../../evidence/native/Sims3Common/functions/1098F8B0_SeaWrap_SetSeaLevel.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1098F8B0_SeaWrap_SetSeaLevel.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/1098F8B0_SeaWrap_SetSeaLevel.c),
[helper instructions](../../evidence/native/Sims3Common/functions/101D9860_CAW_SeaSetLevelAndPropagate.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/101D9860_CAW_SeaSetLevelAndPropagate.c)),
[helper pseudocode](../../evidence/native/Sims3Common/functions/101D9860_CAW_SeaSetLevelAndPropagate.c).
The helper stores the level, marks scene water state dirty when available,
and updates children. This does not prove tessellation or persistence.
Pond lookup and creation have separate native entries:
`WorldWrap_GetPondAtVertex` [instructions](../../evidence/native/Sims3Common/functions/10997F00_WorldWrap_GetPondAtVertex.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10997F00_WorldWrap_GetPondAtVertex.c))
and [pseudocode](../../evidence/native/Sims3Common/functions/10997F00_WorldWrap_GetPondAtVertex.c);
`WorldWrap_CreateNewPond` [instructions](../../evidence/native/Sims3Common/functions/10997F20_WorldWrap_CreateNewPond.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10997F20_WorldWrap_CreateNewPond.c))
and [pseudocode](../../evidence/native/Sims3Common/functions/10997F20_WorldWrap_CreateNewPond.c).
For pond lookup, Ghidra infers `void` although the original
[managed declaration](../../evidence/managed/declarations/CSHostWrap/0x060004CA.cs.txt)
returns `IntPtr`. The raw wrapper calls `0x10234ce0`
and returns without overwriting `EAX`; its
[instructions](../../evidence/native/Sims3Common/functions/10997F00_WorldWrap_GetPondAtVertex.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10997F00_WorldWrap_GetPondAtVertex.c))
and managed signature govern this return, not the decompiler prototype.
