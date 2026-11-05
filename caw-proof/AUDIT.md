# CAW 1.22.10 original-code proof audit

This audit follows the shipped 32-bit CAW editor and its matching managed
assemblies. It uses PE export records, original CLI metadata and IL, original
DLL bytes, and annotated Ghidra pseudocode. Each finding separates a direct
**observation** from an **interpretation** and an **unresolved** boundary.
Addresses are virtual addresses in the named native module. These are selected
reviewed paths; the [API index](API-INDEX.tsv) is the complete named-export
lookup, not a claim that every API's behavior has been reviewed.

## CA-01 — Managed-to-native identity

**Observation.** The [export index](API-INDEX.tsv) retains 2,723 named Common
exports and eight pipeline-helper exports with module, ordinal and entry
address. The original [managed import index](evidence/managed/IMPORT-INDEX.tsv)
retains 2,822 P/Invoke MethodDefs and their CLI metadata. A managed
declaration's native entry name is matched to an exact export or a unique
stdcall-decorated candidate; 141 declarations are listed as
[unresolved](evidence/managed/unresolved-imports.md).

**Interpretation.** The matched rows are a navigable identity bridge from an
original managed method to an original native entry address. Multiple export
names can share one address.

**Unresolved.** Name matching alone does not establish ABI, successful loading,
or execution. The 141 unmatched names are a bounded static name comparison,
not evidence of a CAW runtime failure.

## CA-02 — Editable project load result

**Observation.** The [original editor path](guides/project-io/README.md)
enters the [WorldWrap_Load export](api/Sims3Common/WorldWrap/2679.md) via a
managed `LPWStr` path declaration. The [native bytes](evidence/native/Sims3Common/functions/10997BD0_WorldWrap_Load.asm) ([annotated pseudocode](evidence/native/Sims3Common/functions/10997BD0_WorldWrap_Load.c))
at `0x10997BD0–0x10997BE4` put the world pointer in `ECX`, pass the path to
the [wide-path helper](evidence/native/Sims3Common/functions/102426C0_CAW_WorldLoadFromWidePath.c),
and normalize its byte result to integer `0` or `1`. The helper rejects a
null or empty UTF-16 path. The managed wrapper creates world component
wrappers only when the result is `1`.

**Interpretation.** A successful native load result gates managed component
construction; the path is a wide string at this boundary.

**Unresolved.** The helper's subordinate resource reader, sidecar order,
failure cleanup and a successful file load are not established by this short
chain.

## CA-03 — Save task and return code

**Observation.** The [managed Save wrapper](api/Sims3Common/WorldWrap/2692.md)
tests native result `1`. The [WorldWrap_Save instructions](evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.asm) ([annotated pseudocode](evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.c))
copy the world, path and endian words into a task context, call the
[pre-save gate](evidence/native/Sims3Common/functions/10999970_CAW_WorldPreSaveGate.c), submit
the task and pump world/scene updates. The branch at `0x10999BDA–0x10999BDF`
leaves the pump for numeric states `6` or `7`; the return at
`0x10999C7A–0x10999C9A` yields `1` only for state `6`.

**Interpretation.** This export presents a synchronous success/failure integer
over an internal task loop. The original editor's Save As path and separate
settings-sidecar operation are described in the
[project guide](guides/project-io/README.md).

**Unresolved.** The task-state enum names, native writer format, atomicity,
disk result and fresh-process reopen have not been established by this static
entry trace. State `7` is an observed non-success exit, not an assigned error
cause.

## CA-04 — Height brush gate

**Observation.** The [managed declaration](api/Sims3Common/WorldTerrainWrap/2552.md)
passes a terrain pointer and `ref HeightMapBrushParameters`. The
[export instructions](evidence/native/Sims3Common/functions/10996630_WorldTerrainWrap_ApplyBrush.asm) ([annotated pseudocode](evidence/native/Sims3Common/functions/10996630_WorldTerrainWrap_ApplyBrush.c))
follow pointer fields `+0x64` and `+0x8`; only a nonzero nested value leads to
the [brush worker](evidence/native/Sims3Common/functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.c).
The worker initializes and writes brush bounds, normalizes an angle, derives
a direction from two points and checks the converted position against terrain
dimensions. The original managed brush/undo sequence is in the
[terrain guide](guides/terrain/README.md).

**Interpretation.** The native export has a concrete terrain-readiness gate
before applying a brush parameter block.

**Unresolved.** The wrapper has no outer-pointer null guard. This trace does
not prove a completed height mutation, its complete raster kernel or the
undo data format; subordinate brush actions need separate inspection.

## CA-05 — Road spline return hidden by the decompiler

**Observation.** The pristine [managed import](api/Sims3Common/WorldTerrainWrap/2560.md)
returns `IntPtr` for four `Vector2` knots and three integer flags. The
[original x86 wrapper](evidence/native/Sims3Common/functions/10996C50_WorldTerrainWrap_CreateRoadSpline.asm) ([annotated pseudocode](evidence/native/Sims3Common/functions/10996C50_WorldTerrainWrap_CreateRoadSpline.c))
reads knot words at `[EBP+0x0C]` through `[EBP+0x28]`, tests the flags at
`[EBP+0x2C]`, `+0x30`, `+0x34`, calls
[road-network insertion](evidence/native/Sims3Common/functions/10146A20_CAW_RoadNetworkCreateSplineAndInsert.c)
at `0x10996D3D`, then immediately tears down the frame and returns. The
[annotated export pseudocode](evidence/native/Sims3Common/functions/10996C50_WorldTerrainWrap_CreateRoadSpline.c)
currently infers `void`, `__fastcall` and separate scalar parameters.

**Interpretation.** The helper's `EAX` value crosses the wrapper's plain `RET`
to the managed `IntPtr` declaration. Its decompiler prototype is unsuitable
as the API signature; the raw stack accesses and managed declaration govern
the argument layout. This is the same kind of decompiler-flow warning noted
in the game proof, now verified independently for CAW.

**Unresolved.** The first terrain-handle stack word is not read by this
wrapper, but global road-network selection and lifetime still need the
internal call chain. Static construction does not prove successful placement
in an editor session.

## CA-06 — Sea-level propagation

**Observation.** The [SeaWrap import](api/Sims3Common/SeaWrap/2297.md) takes a
sea pointer and float level. The [entry bytes](evidence/native/Sims3Common/functions/1098F8B0_SeaWrap_SetSeaLevel.asm) ([annotated pseudocode](evidence/native/Sims3Common/functions/1098F8B0_SeaWrap_SetSeaLevel.c))
place the sea pointer in `ECX` and forward the float plus literal zero to
[the internal setter](evidence/native/Sims3Common/functions/101D9860_CAW_SeaSetLevelAndPropagate.c).
That setter writes the level into object and global state, marks scene state
dirty when present and iterates child updates. The original command flow is
in the [water guide](guides/water/README.md).

**Interpretation.** The export propagates a changed sea level beyond its
managed `SeaWrap` object. The wrapper pseudocode's apparent unused pointer is
an implicit-this rendering issue; the raw `ECX` move is decisive.

**Unresolved.** Water tessellation, rendered appearance and save/reopen
behavior are separate from these static writes.

## CA-07 — Projection result and outer success

**Observation.** The [managed wrapper](api/Sims3Common/WorldWrap/2651.md)
returns a bool from the native integer. The
[entry instructions](evidence/native/Sims3Common/functions/10999FF0_WorldWrap_GetScreenCoordinates.asm) ([annotated pseudocode](evidence/native/Sims3Common/functions/10999FF0_WorldWrap_GetScreenCoordinates.c))
return zero when scene or camera is absent, otherwise call
[projection helper `0x105C2D00`](evidence/native/Sims3Common/functions/105C2D00_CAW_ProjectWorldToScreenPixels.c),
copy two floats to the caller's `Vector2`, and return one. The raw instructions
do not test the helper's own return before that outer `1`. The helper maps
normalized coordinates with viewport or client-rectangle dimensions.

**Interpretation.** The export's `1` indicates an available outer scene/camera
path; by itself it is not proof that the inner projection succeeded.

**Unresolved.** Coordinate parity under actual CAW camera states or a visible
editor viewport requires runtime comparison.

## CA-08 — Pipeline conversion dispatcher

**Observation.** The [pipeline module](evidence/native/Sims3PipelineHelper/README.md)
contains eight named exports. The original `Sims3Pipeline.MeshUtils`
[ConvertArray declaration](api/Sims3PipelineHelper/Standalone/0001.md) links
to [raw dispatch bytes](evidence/native/Sims3PipelineHelper/functions/10036120_ConvertArray.asm) ([annotated pseudocode](evidence/native/Sims3PipelineHelper/functions/10036120_ConvertArray.c))
and [annotated pseudocode](evidence/native/Sims3PipelineHelper/functions/10036120_ConvertArray.c).
The entry branches on destination vertex-element type to different native
conversion routines; unsupported visible cases return without conversion.

**Interpretation.** The entry is a typed conversion dispatcher used by the
original managed pipeline. It does not itself define every numeric conversion
rule in the subordinate routines.

**Unresolved.** Five separately declared `TS_*` imports lack named exports in
this shipped helper. The bounded mismatch says nothing about whether they
were executed. Full per-type precision and mesh output need further code and
runtime checks.
