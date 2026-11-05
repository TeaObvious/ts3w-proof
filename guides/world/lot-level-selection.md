# Lot level selection from a world position

This guide follows the original PC 1.67 level selectors behind the
[world-to-lot lookup](lot-spatial-lookup.md). The retained original
[ScriptCore.World C#](../../evidence/managed/types/ScriptCore.World.cs) and
[caller IL](../../evidence/managed/callers.il.txt) distinguish
`GetLotLocation` from `GetLotLocationAtFloor`. Both native paths first find a
containing lot and transform the world position into that lot's local frame.
The following conclusions are static instruction evidence; no game or driver
was executed for this guide.

## Two integer selectors

The [ordinary selector](../../evidence/native/functions/00AB5DC0_Lot_SelectLevelByMidpointHeight.asm)
([annotated pseudocode](../../evidence/native/functions/00AB5DC0_Lot_SelectLevelByMidpointHeight.c))
and [at-floor selector](../../evidence/native/functions/00AB61B0_Lot_SelectFloorLevelBelowHeight.asm)
([annotated pseudocode](../../evidence/native/functions/00AB61B0_Lot_SelectFloorLevelBelowHeight.c))
read signed minimum and maximum levels at lot offsets `0x17c` and `0x180`
and walk downward from maximum. A missing level-height object at `0x290`,
an empty range, or exhaustion returns the minimum level. Neither uses a
separate failure sentinel in that branch.

| Contract | Ordinary location | At-floor location |
| --- | --- | --- |
| Height gate | The current sampled height must be at or below local Y. | The current sampled height must be strictly below `local Y + 0.075`. |
| Normal terrain gate above level zero | Y must be strictly above the terrain bound, when sampled. | The same bound applies. |
| Selected level | Current level or current level plus one, split at a height midpoint. | Current level of the first accepted candidate. |
| Registered converter flag | Zero: surface validation is bypassed. | One: surface validation is requested. |
| Return storage | Signed integer in EAX. | Signed integer in EAX. |

The ordinary selector retains the preceding sampled height, initially the
maximum finite float. Its normal midpoint is half the sum of that height and
the current height; at level zero the current height is raised to at least the
terrain bound. Y strictly above the midpoint chooses level plus one; equality
stays on the current level. The bound is terrain height plus the original
float32 `0.075` constant. Exact original words are retained in the
[constant table](../../evidence/native/lot-level-constants.tsv).

The ordinary selector has an alternate branch selected by exact lot fields
`+0x408 == 1 && +0x40c == 0x50`, or when `+0x4b0` is nonzero and the
[next-level predicate](../../evidence/native/functions/00AFF6A0_Lot_TestNextLevelAtLocalLocation.asm)
([annotated pseudocode](../../evidence/native/functions/00AFF6A0_Lot_TestNextLevelAtLocalLocation.c))
returns zero in AL. At level zero this branch raises the midpoint to at least
the preceding height
minus `1.5`, or minus `0.375` when `+0x4b0` is set. The corresponding LDES fields are established by the separate
[classification comparison](lot-classification-admission.md): +408/+40C are
lot type/commercial subtype, with1/80 identifying a commercial diving lot.
The [flag producer](../../evidence/native/functions/00AB76C0_Lot_RefreshSeaBoundaryFlag.asm)
([annotated C](../../evidence/native/functions/00AB76C0_Lot_RefreshSeaBoundaryFlag.c)) clears +4B0,
skips its scan for commercial diving or +4BC restricted-ground, and otherwise
sets it only when a ground-perimeter vertex lies strictly below local sea.
Thus a state produced for a diving lot has a clear flag and takes the1.5
special threshold; geometric shoreline alone does not select .375 for diving.
The separate persisted +4BD boundary-disabled byte is not tested by this producer.
Local sea subtracts the lot Y origin through AB1A90. The AFF6A0 -> AD0D00 support
predicate remains a separate unresolved selector input; the flag identity does
not establish that predicate or permit guessing its result. The at-floor selector uses the exact
`+0x408/+0x40c` case to bypass requested surface checks for levels at most one.

Instruction exits use `MOV EAX,level` or `LEA EAX,[level+1]`, followed by
`RET 8`. Ghidra's former float return was corrected. Its remaining float
casts and `1.4013e-45` comparison in the ordinary pseudocode are documented
artifacts: the original instruction at `0x00ab6109` compares integer EBX with
one, and the return paths perform no float conversion.

## Height data and interpolation

The [level-height sampler](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.asm)
([annotated pseudocode](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.c))
accepts the internal record `LotXZLevel { float x; float z; int level; }`.
The original integer load, signed comparisons and `FILD` establish the third
field's type; the Ghidra pointer type was corrected accordingly. The nominal
source return type remains inferred; original height results use x87 ST0.

Below or above its stored level range, the sampler samples the boundary level
and extrapolates by `3.0` per level. In range, it floors local X/Z and clamps
the last cell index. Fractions below `0.001` in both coordinates use the
[stored-vertex reader](../../evidence/native/functions/0077D7B0_LotLevelHeight_ReadVertex.asm)
([annotated pseudocode](../../evidence/native/functions/0077D7B0_LotLevelHeight_ReadVertex.c)).
Otherwise the [four-corner reader](../../evidence/native/functions/00A8B360_HeightGrid_ReadFourCorners.asm)
([annotated pseudocode](../../evidence/native/functions/00A8B360_HeightGrid_ReadFourCorners.c))
supplies heights `h00`, `h01`, `h10`, `h11`. The sampler chooses its diagonal
from their sums, then chooses a triangle from the fractional X/Z position
and linearly interpolates that triangle. The separate
[terrain-height sampler](../../evidence/native/functions/00AEA470_LotTerrainHeight_SampleLocalXZ.asm)
([annotated pseudocode](../../evidence/native/functions/00AEA470_LotTerrainHeight_SampleLocalXZ.c))
uses the `00` to `11` diagonal and the fractional X/Z comparison. Its result
supplies the terrain bound in the selectors.

The level sampler also has a recursion guard and an outside-lot world-height
fallback. The guard's lifetime and the complete world fallback are beyond the
reviewed local interpolation contract. The leaf corner and vertex readers
have no visible bounds checks; their callers supply the cell range.

## Surface checks and managed consumers

When validation is enabled, the selectors use the
[cell/mask predicate](../../evidence/native/functions/00A8E230_LotLevelSurface_TestCellMask.asm)
([annotated pseudocode](../../evidence/native/functions/00A8E230_LotLevelSurface_TestCellMask.c))
with mask `0x0f` and flag one. Level zero has a distinct dispatch based on lot
field `+0x4bc`. An upper-level candidate also uses the
[lower-level property predicate](../../evidence/native/functions/00ACFBC0_Lot_TestLowerLevelPropertyAtPosition.asm)
([annotated pseudocode](../../evidence/native/functions/00ACFBC0_Lot_TestLowerLevelPropertyAtPosition.c)),
which queries the level below and property indices three and six before
calling the lot subsystem at `+0x2c4`. Selectors consume AL from these
predicates; upper EAX bits in decompiler `CONCAT31` expressions do not define
the boolean result. The property identities and subordinate gate rules remain
open.

The retained original [SimIFace.World C#](../callbacks/managed/Sims3.SimIFace.World.cs)
shows concrete consumers. `SnapToFloor` initializes an invalid location, uses
`GetLotLocationAtFloor`, converts a valid lot location back through
`GetWorldPosition`, adds `0.1875` to Y when `IsOnPlatform` succeeds, and copies
only Y back into its by-value position. If no usable lot ID is returned, it
uses terrain height with bridges. `GetTerrainSurfaceType` uses the ordinary
lookup's level; `GetTerrainType` uses the ordinary lot ID as a presence gate.

These C# consumers come from the already retained decompilation; complete
SimIFace IL for `SnapToFloor` is not retained in this proof. Invalid inputs,
NaN behavior, the named lot/property flags and live floor edits require
additional evidence. No runtime acceptance is claimed.


## Local-height facade, outside source and picking boundaries

The existing A8C690 canonical pair is reused, not exported again. Fresh explicit
/TS3W.exe MCP owned disassembly has279instructions; the existing retained bytes
match the pristine PE. The actual outside/guard instructions now qualify the
genuine C's misleading fStack aliases inline. This is a finite instruction
contract, not execution or full native manager/resource lifetime acceptance.

Guard byte FloorManager+116 nonzero returns x87zero atA8C6A7. Outside inclusive
lot X/Z, null globalworld also returnszero. Otherwise the function sets guard1,
calls AB16E0 for horizontal world coordinates, converts signed level with
CVTSI2SS then MULSS by binary32constant3.0 (1063CA0), and calls C6A090 with
those coordinates and seven zero stackwords. It rounds the returned x87 world
height to float, reads lot virtual64 position, subtracts originY in x87 and
rounds to float, adds the saved float level*3 term via ADDPS atA8C7A9, and
returns that float in ST0. Guard reset atA8C79E describes the normal path;
no exception-safe cleanup or thread-local guard is established.

Below/above stored min/max, the separate in-lot branches use signed Int32
subtraction, FILD/FMUL3.0 and x87 add/subtract around a recursive boundary sample.
Replacing that with one binary32 clamp-and-add may differ in low bits; exact
exceptional/overflow/CW behavior is not proved. In range, both diagonal sums
are ADDSS, COMISS/JBE selects the alternate on a rounded tie, interpolation
then uses x87. Near-vertex coordinates both strictly below0.001 take77D7B0;
the vertex primitive has no new managed finite-result/status contract.

The complete world surface service is separately retained:
[C6A090 ASM](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.asm)
([qualified C](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.c)). Its world/product
bounds and source-service/raw fallback cannot be replaced by clamping arbitrary
coordinates into a decoded terrain grid. AB16E0 transform, concrete world
height provider, missing collision resources and transient live-world lifetime
remain named frontiers. No new global terrain-cache specification follows from
the sampler caller; no host error policy is accepted merely because it is used.

The [registered screen floor pick](floor-pick-window-point.md) has a different
producer/reader chain. Fresh explicit MCP owned listing again has178instructions
and matches its existing630 retained instruction bytes. It normalizes the window
ray, iterates collision-service segments, applies AB1020 then AFDE10 low-AL
policy, advances rejected hits by0.001 and writes XYZ only on success. A pure
height-grid DDA/triangle helper, build locked-level occupied-first selection,
or displayed-level cache is not the same native algorithm. Their exact policy
counterparts require the named collision/child/BuildBuy callers; no guessed
ray cap, epsilon, nearest-level or quarter fallback is derived from this API.

AB5DC0/AB61B0 remain the ordinary/at-floor selectors, with distinct classification,
terrain, support and curved-pool inputs. A caller that copies admitted LDES
classification into prepared context does not establish all AFF6A0/AD0D00 or
ACFBC0 child behavior. The selected reference demonstrates their real input
and numeric roles, not CLR constructor/iterator/callback/cache/GPU equivalence.
