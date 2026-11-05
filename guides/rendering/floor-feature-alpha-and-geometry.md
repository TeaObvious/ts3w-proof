# Original floor-feature alpha and geometry

Reference: original PC1.67 TS3W.exe identified centrally. Names are analyst roles.
Complete actual Ghidra-owned ASM and annotated decompiler output are paired below;
nonowned envelope gaps are explicit. Original FileBytes and selected memory were
verified unchanged and the annotated database saved clean. Static evidence only.

| Entry | Analyst role | Original code |
| --- | --- | --- |
| 00A7D730 | FloorFeatureGeometry_AdvanceAndUpload | [ASM](../../evidence/native/functions/00A7D730_FloorFeatureGeometry_AdvanceAndUpload.asm) ([annotated C](../../evidence/native/functions/00A7D730_FloorFeatureGeometry_AdvanceAndUpload.c)) |
| 00A7DF80 | FloorFeatureGeometry_ApplyTileChange | [ASM](../../evidence/native/functions/00A7DF80_FloorFeatureGeometry_ApplyTileChange.asm) ([annotated C](../../evidence/native/functions/00A7DF80_FloorFeatureGeometry_ApplyTileChange.c)) |
| 00A7FB00 | FloorFeatureGeometry_RebuildDrawGroups | [ASM](../../evidence/native/functions/00A7FB00_FloorFeatureGeometry_RebuildDrawGroups.asm) ([annotated C](../../evidence/native/functions/00A7FB00_FloorFeatureGeometry_RebuildDrawGroups.c)) |
| 00A7E440 | FloorFeatureGeometry_AppendTileGeometry | [ASM](../../evidence/native/functions/00A7E440_FloorFeatureGeometry_AppendTileGeometry.asm) ([annotated C](../../evidence/native/functions/00A7E440_FloorFeatureGeometry_AppendTileGeometry.c)) |
| 00A7E2B0 | FloorFeatureGeometry_InitializeDrawnTiles | [ASM](../../evidence/native/functions/00A7E2B0_FloorFeatureGeometry_InitializeDrawnTiles.asm) ([annotated C](../../evidence/native/functions/00A7E2B0_FloorFeatureGeometry_InitializeDrawnTiles.c)) |
| 00A7F850 | FloorFeatureGeometry_InitializeResources | [ASM](../../evidence/native/functions/00A7F850_FloorFeatureGeometry_InitializeResources.asm) ([annotated C](../../evidence/native/functions/00A7F850_FloorFeatureGeometry_InitializeResources.c)) |
| 00A81720 | LotFloorFeatureRenderer_CreateLevels | [ASM](../../evidence/native/functions/00A81720_LotFloorFeatureRenderer_CreateLevels.asm) ([annotated C](../../evidence/native/functions/00A81720_LotFloorFeatureRenderer_CreateLevels.c)) |
| 00AA0E80 | FloorElevation_SelectCellDiagonal | [ASM](../../evidence/native/functions/00AA0E80_FloorElevation_SelectCellDiagonal.asm) ([annotated C](../../evidence/native/functions/00AA0E80_FloorElevation_SelectCellDiagonal.c)) |
| 00A7DC20 | FloorFeatureGeometry_StartFade | [ASM](../../evidence/native/functions/00A7DC20_FloorFeatureGeometry_StartFade.asm) ([annotated C](../../evidence/native/functions/00A7DC20_FloorFeatureGeometry_StartFade.c)) |
| 00A7DC90 | FloorFeatureGeometry_GetOrAddVertex | [ASM](../../evidence/native/functions/00A7DC90_FloorFeatureGeometry_GetOrAddVertex.asm) ([annotated C](../../evidence/native/functions/00A7DC90_FloorFeatureGeometry_GetOrAddVertex.c)) |

A81720 creates per-level puddle/burnt owners and feature-gated leaves. A7F850 owns
GPU initialization and 64x64/optional256x256 alpha textures; low AL admits success.
A7E2B0 scans existing feature data and seeds on-fades with timer4. A7DC20 finds or
inserts key mask16/z8/x8, overwrites target and resets timer0. A7DF80 uses physical
floor-mask0F for on-fade admission; absent/off changes only fade already drawn cells.

A7D730 uses timer ADDSS, COMISS/JC and finite boundary4; below boundary uses0.25
multiplier, endpoint1. SUBPS/MULPS/ADDPS interpolates complement(target) to target;
MULSS255/CVTTSS2SI/DL truncates alpha. JC also takes unordered to the fractional
branch, contrary to decompiled apparent >= expiry. Full maskFFFF or unsupported
partial mode writes tile bytes; supported partial masks write selected4x4 bits in
256x256 alpha. Off-endpoint virtual98 state absence clears the UInt64 column bit.
The routine also uploads/filter-processes alpha and invokes rebuild; CPU fade
semantics alone do not reproduce its texture/GPU failure and filtering paths.

A7FB00 scans drawn columns, deduplicates3x3 neighbors, validates signed packed
coordinates/live levels/floor0F and applies B49740 exclusion, room and cutout groups.
A7E440 emits platform-aware geometry, including partial-platform topology. Its
complete body is retained; the partial-platform topology is not fully reconstructed
by this guide. AA0E80 uses signed-byte packed coordinates and opposite-corner
ADDSS/COMISS: alternate iff h10+h01<h11+h00 for finite samples; tie/unordered0.
Ordinary corner indices(0,2,1)(1,2,3), alternate(0,2,3)(0,3,1), corner dx+2*dz.
A7DC90 reuses a caller geometry key or produces vertex/cutout UVs. Physical ADDPS
first rounds floorY+binary32 lift0.01, then adds platform lift0.1875 or zero; the
decompiler reverses that arithmetic order. EAX is the vertex index. Native grouping,
platform and cutout producers must be retained before claiming complete geometry.

The original managed World.SetPuddle wrapper and PuddleManager are distinct from
this native render mechanism: script policy selects admission, sound, spread and
evaporation alarms, then invokes native floor-feature hooks. They are not alternate
implementations of this four-second render fade. Original script policy remains
in the loaded assemblies; a native reconstruction must provide mechanisms only.

[Actual puddle virtual query](puddle-initial-feature-query.md) establishes that
initial flag1/mask0 admission differs from the gameplay mask-intersection query.
