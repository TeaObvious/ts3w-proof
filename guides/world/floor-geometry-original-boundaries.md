# Original floor subset, thickness and visibility boundaries

This page describes selected original PC1.67 renderer and construction functions.
Analyst names express observed responsibilities; they are not recovered original
symbols. Stored inferred types and prototypes remain intact. The canonical C is
the actual saved annotated Ghidra rendering, including its framing and warnings.
The complete defined bodies contain10080 original bytes and2734 Listing
instructions. Four gaps total28 unowned alignment bytes. The ASM retains the
saved Listing with pristine bytes and explicit unowned .byte records; it is not
a new body definition or a linear objdump rendering.

## Canonical functions

| Entry / analyst responsibility | Complete owned body | Original pair |
| --- | --- | --- |
| `00a9d7a0` FloorRenderer_DrawThicknessEdges | 2165 bytes / 552 instructions | [ASM](../../evidence/native/functions/00A9D7A0_FloorRenderer_DrawThicknessEdges.asm) ([C](../../evidence/native/functions/00A9D7A0_FloorRenderer_DrawThicknessEdges.c)) |
| `00a9e300` FloorRenderer_AddQuarterThicknessEdges | 597 bytes / 172 instructions | [ASM](../../evidence/native/functions/00A9E300_FloorRenderer_AddQuarterThicknessEdges.asm) ([C](../../evidence/native/functions/00A9E300_FloorRenderer_AddQuarterThicknessEdges.c)) |
| `00a9e560` FloorRenderer_RemoveOrRestoreQuarterThicknessEdges | 604 bytes / 169 instructions | [ASM](../../evidence/native/functions/00A9E560_FloorRenderer_RemoveOrRestoreQuarterThicknessEdges.asm) ([C](../../evidence/native/functions/00A9E560_FloorRenderer_RemoveOrRestoreQuarterThicknessEdges.c)) |
| `00a9fd50` FloorRenderer_InitializeLotLevelAndMaterials | 943 bytes / 293 instructions | [ASM](../../evidence/native/functions/00A9FD50_FloorRenderer_InitializeLotLevelAndMaterials.asm) ([C](../../evidence/native/functions/00A9FD50_FloorRenderer_InitializeLotLevelAndMaterials.c)) |
| `00aa0420` FloorRenderer_InitializeContainers | 461 bytes / 89 instructions | [ASM](../../evidence/native/functions/00AA0420_FloorRenderer_InitializeContainers.asm) ([C](../../evidence/native/functions/00AA0420_FloorRenderer_InitializeContainers.c)) |
| `00af7800` FloorQuarter_EncodeThreeOrientedEdges | 332 bytes / 104 instructions | [ASM](../../evidence/native/functions/00AF7800_FloorQuarter_EncodeThreeOrientedEdges.asm) ([C](../../evidence/native/functions/00AF7800_FloorQuarter_EncodeThreeOrientedEdges.c)) |
| `00af7970` FloorEdge_ComputeDirectedEndpoints | 456 bytes / 105 instructions | [ASM](../../evidence/native/functions/00AF7970_FloorEdge_ComputeDirectedEndpoints.asm) ([C](../../evidence/native/functions/00AF7970_FloorEdge_ComputeDirectedEndpoints.c)) |
| `00a87f70` FloorGeometry_InitializeLotLevelResources | 969 bytes / 283 instructions | [ASM](../../evidence/native/functions/00A87F70_FloorGeometry_InitializeLotLevelResources.asm) ([C](../../evidence/native/functions/00A87F70_FloorGeometry_InitializeLotLevelResources.c)) |
| `00a9edc0` FloorRenderer_AssignMaskedQuarterSubsets | 911 bytes / 262 instructions | [ASM](../../evidence/native/functions/00A9EDC0_FloorRenderer_AssignMaskedQuarterSubsets.asm) ([C](../../evidence/native/functions/00A9EDC0_FloorRenderer_AssignMaskedQuarterSubsets.c)) |
| `00a9ebc0` FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState | 207 bytes / 72 instructions | [ASM](../../evidence/native/functions/00A9EBC0_FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState.asm) ([C](../../evidence/native/functions/00A9EBC0_FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState.c)) |
| `00a88460` FloorGeometry_SetQuarterSubsetAndRotation | 301 bytes / 102 instructions | [ASM](../../evidence/native/functions/00A88460_FloorGeometry_SetQuarterSubsetAndRotation.asm) ([C](../../evidence/native/functions/00A88460_FloorGeometry_SetQuarterSubsetAndRotation.c)) |
| `00ca8540` DeckPlacement_QueueFloorVisibilityRectangle | 301 bytes / 95 instructions | [ASM](../../evidence/native/functions/00CA8540_DeckPlacement_QueueFloorVisibilityRectangle.asm) ([C](../../evidence/native/functions/00CA8540_DeckPlacement_QueueFloorVisibilityRectangle.c)) |
| `00cb4560` StairPlacement_QueueFloorVisibilityRegions | 1616 bytes / 366 instructions | [ASM](../../evidence/native/functions/00CB4560_StairPlacement_QueueFloorVisibilityRegions.asm) ([C](../../evidence/native/functions/00CB4560_StairPlacement_QueueFloorVisibilityRegions.c)) |
| `00d23de0` FloorVisibility_ApplyMaskedStateAndAppendRecords | 217 bytes / 70 instructions | [ASM](../../evidence/native/functions/00D23DE0_FloorVisibility_ApplyMaskedStateAndAppendRecords.asm) ([C](../../evidence/native/functions/00D23DE0_FloorVisibility_ApplyMaskedStateAndAppendRecords.c)) |

CA8600 and CB48A0 are owned tails inside CA8540 and CB4560, not additional
functions. The three A9D7A0 ranges have6/3 gap bytes, CA8540 has6 and CB4560 has13.
See [necessary original data](../../evidence/native/floor-geometry-data.tsv) for
the border/depth constants, switch destinations, rotation masks/shifts and texture
name used below. Those data bytes are outside function ownership.

## Producer and subset consumer

AA0420 initializes renderer fields and its ThicknessGeomEdges,
MustRemoveThicknessGeomEdges and IDToSubsetSpecMap containers. Their labels
identify roles without establishing an entire C++ object/container ABI.
A9FD50 binds lot, lot+230 floor manager, selected level, input flag and dimensions,
creates FloorGeometry and configures floor/exterior-floor and supporting render
services. A87F70 records lot/renderer/manager, query/partition level and flags,
spatial bounds/scale4, vertex declarations and floor-grid/paint resources. The
flag-false path selects level-1 for part of that setup; it is not an independent
current render-elevation domain specification.

A9EDC0 builds a subset specification from input fields and room-set membership,
optionally modifies material state, interns its two-word key and visits the four
bits in the supplied tile mask. Old subset state chooses thickness edge updates
and optional visibility before the key/rotation reaches A88460. Rotation is read
from the respective two bits of the supplied byte using masks03/0C/30/C0 and
shifts0/2/4/6. Material flag, room and UV child meanings are limited to these
observed calls; this does not decode the whole child material/vertex workflow.

A88460 lazily allocates SubsetQuads storage, passes signed-byte X/Z/quarter,
new key, old-key output and rotation to A82FE0, handles the absent-key sentinel
FFFFFFFFFFFFFFF8 and updates key tracking/dirty state. Optional partition data
receives its existing child notification. A9EBC0 is a separate masked-quarter
visitor whose A87A30 status and prior subset select edge updates; its optional
flag requests visibility. The child operation is not named removal without its
own established contract.

## Quarter edge codec and incremental state

AF7800 reads signed-byte tile X/Z and a selector byte. x86 shift-count masking
applies to1<<selector; only resulting masks1/2/4/8 select output. Other results
write no records. Each selected path emits three16-byte records: signed integer
X/Z at offsets0/4, type at8 and orientation byte at12; padding is not initialized.
There is no new selector-range or general integer-coordinate validation.

For a true orientation, AF7970 maps the six local types as follows; false
orientation reverses each pair. Integer tile X/Z is then added to both endpoints.
An unknown type leaves prior outputs in place before that coordinate addition.

| Type | Start | End |
| --- | --- | --- |
| 0 | (0,0) | (1,0) |
| 1 | (0,1) | (0,0) |
| 2 | (0.5,0.5) | (0,0) |
| 3 | (0.5,0.5) | (1,0) |
| 4 | (0.5,0.5) | (1,1) |
| 5 | (0.5,0.5) | (0,1) |

Quarter0 emits (x,z,0,false),(x,z,2,false),(x,z,3,true).
Quarter1 emits (x+1,z,1,true),(x,z,3,false),(x,z,4,true).
Quarter2 emits (x,z+1,0,true),(x,z,4,false),(x,z,5,true).
Quarter3 emits (x,z,1,false),(x,z,5,false),(x,z,2,true).

A9E300 packs type and14-bit coordinates with orientation in bit31. It removes
an existing opposite-orientation edge or inserts the current edge, then marks
the state dirty. A9E560 removes a matching same-orientation edge, or inserts the
opposite orientation when the key is absent and its flag is zero. Both apply the
original ground border predicate: for level0 border tiles, at least one endpoint
must be at absolute distance at least float32(1/65536) from all four lot-border
lines. The predicate is not a general point-in-rectangle check. A current exact
border test agrees on admitted integer/half-grid values but not arbitrary nearby
coordinates; current whole-snapshot neighbor cancellation has a different lifetime.

## Thickness geometry, height and resource identity

A9D7A0 walks the active edge set and excludes pending removals. AF7970 supplies
endpoints, and the existing
[AA0B90 sampler ASM](../../evidence/native/functions/00AA0B90_WallFloor_SampleLevelGridHeight.asm) ([C](../../evidence/native/functions/00AA0B90_WallFloor_SampleLevelGridHeight.c))
supplies their heights. That sampler has its own signed-level, bounded-XZ,
three-unit extrapolation and grid/interpolation behavior. It does not establish
an entire current elevation-provider domain or lot-level join.

The thickness vertices use endpoint Y and Y-minus-float32(0.15), whose original
bits are3E19999A. Native normal indices derive from edge direction/orientation;
ground and other levels use different index ordering. Room-selected one/two draw
lanes, pending state and texture/render children remain part of the original
workflow. The current two-sided outward-normal snapshot band is not complete
normal/winding/room-lane or pixel equivalence.

A9FD50 parses UTF16 floorThicknessTall as DDS00B2D882/group0 through
[ResourceKey_ParseWideName ASM](../../evidence/native/functions/004AEE40_ResourceKey_ParseWideName.asm) ([C](../../evidence/native/functions/004AEE40_ResourceKey_ParseWideName.c)).
Its nonnumeric name path reaches
[folded UTF16 FNV1 ASM](../../evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.asm) ([C](../../evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.c)).
From basisCBF29CE484222325 it multiplies by00000100000001B3 modulo64 before XOR
each CRT-lowered UTF16 unit. For this ASCII name the instance isFBA82E67AD908A74.
This is not UTF8/FNV1a or a general invariant-Unicode rule. Native resource
retention/completion is separate from a current package cache or cached-null Lazy.

## Visibility producers and shared state consumer

CA8540 builds/binds a FloorVisibility undo helper and, only when its second
argument is zero, visits a rectangle with mask0x0F and desired state derived
from fifth-argument-low-byte==0. Native queue/release children follow. This body
does not establish all caller-dependent pool/fountain catalog or level selection.

CB4560 branches on signed DWORD levels at endpoint+8, with float X/Z, direction
and region/level iteration. Its ground-to-negative branch extends regions by four
for directions0/2/4/6. Selected tile masks and caller-dependent state reach
D23DE0. Other adjacent-level and error branches, and null-eighth-argument success,
are part of the complete function. A current ground-stairwell run-tile proxy
alone does not reproduce its complete region/admission or child-manager policy.

D23DE0 checks four tile-mask bits against the manager reached through bound
lot+290, calls
[LotTile_ChangeStateAndEmitMessage ASM](../../evidence/native/functions/00A96920_LotTile_ChangeStateAndEmitMessage.asm) ([C](../../evidence/native/functions/00A96920_LotTile_ChangeStateAndEmitMessage.c))
when queried and desired low-byte states differ, then appends a packed five-byte
record with the desired state. Capacity growth is a child boundary. Records are
not described as prior-state snapshots. Flag meaning, event effects, undo replay,
allocation failure and synchronization remain narrower than a whole workflow.

The original [eRoomDefinition](../travel/managed/eRoomDefinition.cs) ([IL](../travel/managed/eRoomDefinition.il.txt))
defines LightBlocking0, LoadBearing1, PlacementBlocking2, Platform3, Unspecified-1
and Default2. Selector identity does not prove whole native subset/room lanes equal
to a current loaded room grid or its authored-level join.

## Physical ABI and static limits

A9EDC0 has ECX receiver plus nineteen stack DWORD slots and RET0x4C. A88460 has
ECX plus four and RET0x10. A9FD50 returns successful AL1 with RET0x0C; CB4560's
result is in AL with caller cleanup. Their stored inferred return metadata is
retained, without treating upper EAX as a general full-width Boolean/status.
Other physical parameter/cleanup observations are annotated at their entries.
No function IDs, prototypes/types, body ranges, instructions, original bytes or
flow are changed to improve decompiler display.

This selected original evidence does not establish current roof-centroid
suppression, fallback ceilings, finite-elevation rejection, sorted material
publication or partial-pattern skipping as retail rules. Native material/room/
partition/storage children, exact UV/normal generation, manager data domains,
resource lifetime, full undo and runtime/platform/render acceptance remain bounded.
Static original analysis is not observed execution or pixel parity.


## Storage, material and resource ownership must stay distinct

The existing [floor-key guide](floor-pattern-support.md) follows A8FA90→A8EE40:
the UInt16 cell query's zero selects the implicit default64-byte key quad,
whereas every nonzero ID includingFFFF uses ordinary reverse lookup. AA5490
persists full32-bit map indices and updates the first default key. This query
does not by itself establish whether a renderer emits a triangle for cell0;
trace the actual grid→subset producer and A9EDC0/A88460 draw admission. Do not
replace that question with an unconditional zero-is-empty rule or infer that
saved map indices have the narrower cell width.

The existing [CWAL guide](../construction/wall-floor-and-terrain-brush-fields.md)
establishes C9A220's20-byte preset rows, full32-bit ID and full selected16-byte
material key, resolved through93B730 for requested type01D0E75D. Those are reader
and typed-resource facts. They do not establish a complete floor swatch-selection
algorithm, one-diffuse/identity-color policy, TXTC fallback, normal-map scale/UV
admission or a reconstruction's cache identity. A9EDC0's interned pair, optional
material payload, selected mask and two-bit rotation still lead to native child
material/vertex operations. Exact native MATD/TXTC/shader/normal binding and their
resource references/readiness/retirement remain separate follow-up paths.

In particular, a native resource reference or material key is not evidence for
a cache key containing merely programs-present, nor for sticky null values after
source changes. Native threading/reference ownership and actual shader variant
selection must be established before parallelization, freshness or pixel parity
can be inferred. No original execution or current implementation correction is
certified by these static original boundaries.

The [floor pattern/message input contract](floor-pattern-message-inputs.md)
now closes selected16-bit cell ID resolution,64-byte key interning and hashing,
message initialization and signed pending-location refresh. These numeric cell
IDs are not the UInt32 foundation products handled by AB67D0. The high-quarter
flag reader and low-quarter setter also remain distinct; complete high-bit
rebuilding, message delivery and GPU consumption are not certified by the helpers.
