# Camera height, terrain, water, and preset supplement

This supplement extends the [camera dossier](README.md) with original PC 1.67
native paths that determine camera height and with the native preset file path.
The reference is the shipped x86 `TS3W.exe` (SHA-256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`,
image base `0x00400000`). Addresses below are virtual addresses. These findings
are **static code observations**. No comparative execution of the retail EXE
is claimed.

The [evidence index](height-terrain-water/index.json) gives 35 bounded
original-byte exports and matching readable x86 disassemblies, 26
decompiler captures, and two original resource headers.
Each native window runs from the named entry to the next identified Ghidra
function entry. It may include padding or embedded data; it is not a
proof of the function's control-flow extent. The `.bin` files are direct slices
from the original EXE's `.text` section (`file offset = VA - 0x00400000`), while
the adjacent `.asm.txt` files show the same window with instruction bytes.
Pseudocode is supporting interpretation: its guessed return types, arguments,
and stack variables are particularly unreliable around indirect calls and x87
returns. Use raw instructions for ABI or exact branch claims.

## Height selection and camera frame

The main frame routine at `0x009758D0` calls the target/eye preparation routine
at `0x00972CD0`, which calls the shared world/lot query at `0x00971480` twice.
The main routine also performs a four-iteration eye-surrounding query loop:
`0x0097856D` loads a count of four and `0x0097857C` calls `0x00971480` inside
it. This separates target height from eye clearance; a single heightmap sample
cannot represent the frame contract. See [frame instructions](../../evidence/native/functions/009758D0_GameplayCamera_UpdateNativeFrame.asm) ([annotated pseudocode](../../evidence/native/functions/009758D0_GameplayCamera_UpdateNativeFrame.c)),
[preparation instructions](height-terrain-water/native-asm/00972cd0.asm.txt) ([annotated pseudocode](height-terrain-water/pseudocode/00972cd0.c.txt)),
and [query pseudocode](../../evidence/native/functions/00971480_GameplayCamera_QueryGroundHeight.c).

The lot floor wrapper `0x00AB7B30` converts world coordinates to lot-local
coordinates, applies only a `0.01`-unit edge correction, checks inclusive lot
bounds, selects one of two FloorManager queries, adds lot Y to a successful
sample, and otherwise retains the `-100` sentinel. Its true branch uses
`0x00A96720`: positive floors descend from the requested/stored maximum and
may be accepted by either high support flags or floor presence. Its false
branch uses `0x00A8EB80`: positive floors require ordinary floor presence, and
a negative floor also requires actual floor presence. Both ultimately sample
`0x00A8C690`. Compare [floor wrapper code](height-terrain-water/pseudocode/00ab7b30.c.txt),
[true query](height-terrain-water/pseudocode/00a96720.c.txt),
[strict query](height-terrain-water/pseudocode/00a8eb80.c.txt), and
their original-byte windows in the [index](height-terrain-water/index.json).

`0x00971480` has a distinct active-basement branch. It first asks the queried
lot with the **strict/false** wrapper for either target or eye. If a target
misses, it retries the active lot with the true wrapper at the original point,
then at its center. An eye miss keeps `-100`; this branch does not mix in
terrain, sea, or regional water. For an ordinary non-basement lot, target and
eye first use the true floor wrapper. Only the eye path calls `0x00AB7CF0` for
roof clearance, starting one level below the **requested** level; the roof hit
is raised by `1.5` plus lot Y. The relevant calls and branch order are visible
in [the shared query](../../evidence/native/functions/00971480_GameplayCamera_QueryGroundHeight.c)
and [roof-call instructions](../../evidence/native/functions/00971480_GameplayCamera_QueryGroundHeight.asm) ([annotated pseudocode](../../evidence/native/functions/00971480_GameplayCamera_QueryGroundHeight.c)).

The same query does **not** add global sea height to every ordinary dry lot.
Its eligible lot branch composes lot terrain (`0x00AB7DC0`), conditionally sea
(`0x00C61090`), then regional water (`0x00C60E20`). The sea condition is
diving-lot classification or the computed WaterLot flag. `0x00AB76C0` clears
that flag and checks ground-elevation **boundary** vertices against sea minus
lot Y; a vertex must be strictly lower. Equality and low interior-only points
do not set it. See [WaterLot pseudocode](height-terrain-water/pseudocode/00ab76c0.c.txt)
and [original instructions](height-terrain-water/native-asm/00ab76c0.asm.txt) ([annotated pseudocode](height-terrain-water/pseudocode/00ab76c0.c.txt)).
Off-lot normal ground takes the world-ground/sea/regional-water path. The
diving-lot off-lot target has a separate distance-gated sea rule; the eye does
not use it. These branches are visible in the shared query, but the complete
world-ground implementation lies beyond this supplement.

## Authored terrain collision

`0x00C29080` locates a terrain collision owner, casts a downward ray from
`HeightRange + 10`, returns the ray hit's world height, and returns `-100` on
absence or miss. It does **not** bilinearly interpolate a world heightmap.
The owner installer `0x00C29350` constructs a `KDTreeShape` when it receives
the collision resource; only without that resource does it construct a
`HeightFieldShape` from a `257 × 257` raw window. See [ray query](height-terrain-water/pseudocode/00c29080.c.txt),
[shape selection](height-terrain-water/pseudocode/00c29350.c.txt), and
their [original-byte exports](height-terrain-water/index.json).

The world terrain loader `0x00C2D7A0` requests resource type `0x033B2B66`,
group `1`, with instance `second owner coordinate × 65536 + first owner
coordinate`. The WTXT owner reader at `0x00C2C770` identifies those coordinates
as start Z and start X respectively, yielding `StartZ × 65536 + StartX`;
for aligned 256-unit blocks this is `(chunkZ << 24) | (chunkX << 8)`.
The loader passes half the terrain height range as the collider's Y placement
offset. See [loader pseudocode](height-terrain-water/pseudocode/00c2d7a0.c.txt),
[WTXT reader](height-terrain-water/pseudocode/00c2c770.c.txt), and
the [original WTXT header bytes](height-terrain-water/data/sunset-wtxt-first-64.bin).
This X/Z mapping follows the owner reader and loader instructions.

The KD resource reader `0x00680590` accepts body versions `0x100..0x1FF`.
Its 40-byte header precedes 8-byte nodes, 6-byte signed-short XYZ vertices,
and unsigned-short triangle indices. `0x0067EC10` transforms and clips a ray
into stored coordinates, `0x0067E8D0` traverses the tree, and `0x0067E440`
performs a two-sided triangle test with a determinant threshold of binary32
epsilon and barycentric tolerance `1e-5`. Their [pseudocode](height-terrain-water/pseudocode/00680590.c.txt)
and [instruction windows](height-terrain-water/index.json) permit an
offline review. A genuine KD-ray miss remains `-100`; a fallback heightfield
is selected by missing collision resource, not by a missed triangle.

The copied [first WTXT bytes](height-terrain-water/data/sunset-wtxt-first-64.bin)
identify a version-11 resource. The full KD payloads are not included, so this
folder does not establish numerical camera heights for that world.

## Regional water

The later [Sea and WaterGeometry proof](../water/README.md) closes the shared
geometry reader/writer, the meaning of the two post-vertex counts, and the
global Sea container and regeneration paths. It also retains the packed
vertex producer and homogeneous-coordinate consumer. Global Sea and regional
water have distinct outer formats even though they share WaterGeometry.

`0x00C60E20` first checks the world's rectangular bounds, then scans the
loaded local-water planes in order and returns the height of the **first**
accepted plane, or `-100`. `0x00B5E390` accepts a plane only when its spatial
cell is wet (`0x00B5E200`), world terrain at the point is strictly below the
plane, and the requested lot-exclusion check does not reject it. The terrain
call is a world query that can inspect lots under its flags; it is not a
blind texture-height lookup. See [plane selection](height-terrain-water/pseudocode/00c60e20.c.txt),
[acceptance filter](height-terrain-water/pseudocode/00b5e390.c.txt),
and [cell lookup](height-terrain-water/pseudocode/00b5e200.c.txt).

The persisted water-cell reader `0x00B5C120` and writer `0x00B5C050`
exchange 16 bytes of bounds, three byte flags, one 32-bit value, and four
32-bit child indices: **39 serialized bytes**, despite 40-byte in-memory
stride. `0x00B5C9F0` chooses the first child whose inclusive bounds contain
the point. Compare [reader instructions](height-terrain-water/native-asm/00b5c120.asm.txt) ([annotated pseudocode](height-terrain-water/pseudocode/00b5c120.c.txt)),
[writer instructions](height-terrain-water/native-asm/00b5c050.asm.txt) ([annotated pseudocode](height-terrain-water/pseudocode/00b5c050.c.txt)),
and [child-selection pseudocode](height-terrain-water/pseudocode/00b5c9f0.c.txt).
The copied [Twinbrook resource header](height-terrain-water/data/twinbrook-local-water-first-64.bin)
identifies one `0x707CA200:0:0` resource of 631,003 bytes. It is an original
resource excerpt, not a gameplay test or proof for other worlds.

## Native camera presets

The [reader at `0x009800A0`](height-terrain-water/pseudocode/009800a0.c.txt)
and [writer at `0x0097FD20`](height-terrain-water/pseudocode/0097fd20.c.txt)
construct a `WorldPresets.ini` path through a host-provided directory and use
`Camera%d_%ls` sections. Each of nine groups has five slots; the main-camera
branch stores an additional sky flag/pitch, while another branch stores roll
and FOV. [Save slot](native/pseudocode/0x009804d0-ghidra.txt)
calls the writer; [input dispatch](native/pseudocode/0x009806b0-ghidra.txt)
routes fixed save/restore codes. [Restore slot](native/pseudocode/0x0097f9a0-ghidra.txt)
passes a `2.0`-second duration into the main and fly camera recall paths.
The separate [camera dossier](README.md) contains the managed bridge and
selected fly/main interpolation exports. A string found in the EXE or a test
fixture alone is not evidence that presets are an immutable installation
asset: the reader/writer and save call establish runtime file access.

## Limits and reproducibility

The machine bytes, disassembly, and decompiler captures establish branch and
resource contracts but do not prove that every branch executed in a retail
session. The Sunset and Twinbrook headers are original resource excerpts;
the original full resources are not bundled here. Dynamic
restricted-ground/houseboat transforms, every roof
family, all WTXT and water versions, optional world-size flags, general camera
collision, and exact intermediate sky motion remain outside this bounded
analysis. The [selected native code index](../../evidence/native/code-index.tsv)
provides further paired original-byte and pseudocode exports; this supplement
follows the producer paths needed to interpret camera height and presets.


## Current host preparation boundary

CameraGroundSurfaceQuery consumes typed CameraGroundLotInputs, LotId/FloorLevel,
WorldXZ/WorldHeight and CameraGroundSample. CaptureCameraGroundLots supplies the
actual Game CameraRoofHeightInventory.TrySample delegate (source filename
CameraRoofHeightQuery.cs). Rendering queries load no package; publisher Update
can cold-load and capture roofs. Inputs borrow lot/elevation/presence/grid/delegate
references; records and read-only lists are not deep immutable/native manager ABI.

Current restricted-ground rejects the unsupported dynamic transform. Basement
target retries, ordinary eye roof at requested-1 plus1.5, conditional sea/regional
water and off-lot diving distance remain distinct; previous selected windows and
roof-height manager body define the finite native coverage. Host Boolean means
availability and nullable roof result means hit/miss, unlike original AL hit.
Cache keys, static rows, partial failure retry and lease publication/retirement
have no inferred native monitor/epoch/GPU-equivalence. The selected x87 provider
comparison and all roof geometry remain bounded by the existing roof guide.
