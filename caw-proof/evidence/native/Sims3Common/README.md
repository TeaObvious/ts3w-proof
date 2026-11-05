# CAW 1.22.10 Sims3Common native code

The original 32-bit `Sims3Common.dll` has 2,723 named PE exports at 2,626
distinct virtual addresses. Each distinct export entry has one
[original-byte/disassembly window](functions/) and one [Ghidra pseudocode
export](functions/); aliases share the address pair. One hundred fifty-three selected internal
helpers are included to follow editor operations beyond their exported entry.
Use the [name-sorted API index](../../../API-INDEX.tsv) or
[address-bearing export pages](../../../api/Sims3Common/README.md) to find a
function. Addresses refer to this module's image base `0x10000000`.

| Editor path | Exported entry | Relevant internal helper |
| --- | --- | --- |
| Project load | [WorldWrap_Load](functions/10997BD0_WorldWrap_Load.c) · [bytes](functions/10997BD0_WorldWrap_Load.asm) ([annotated pseudocode](functions/10997BD0_WorldWrap_Load.c)) | [wide-path loader](functions/102426C0_CAW_WorldLoadFromWidePath.c) · [bytes](functions/102426C0_CAW_WorldLoadFromWidePath.asm) ([annotated pseudocode](functions/102426C0_CAW_WorldLoadFromWidePath.c)) |
| Project save | [WorldWrap_Save](functions/10999AF0_WorldWrap_Save.c) · [bytes](functions/10999AF0_WorldWrap_Save.asm) ([annotated pseudocode](functions/10999AF0_WorldWrap_Save.c)) | [pre-save gate](functions/10999970_CAW_WorldPreSaveGate.c) · [bytes](functions/10999970_CAW_WorldPreSaveGate.asm) ([annotated pseudocode](functions/10999970_CAW_WorldPreSaveGate.c)) |
| Height brush | [WorldTerrainWrap_ApplyBrush](functions/10996630_WorldTerrainWrap_ApplyBrush.c) · [bytes](functions/10996630_WorldTerrainWrap_ApplyBrush.asm) ([annotated pseudocode](functions/10996630_WorldTerrainWrap_ApplyBrush.c)) | [brush worker](functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.c) · [bytes](functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.asm) ([annotated pseudocode](functions/1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.c)) |
| Road spline | [WorldTerrainWrap_CreateRoadSpline](functions/10996C50_WorldTerrainWrap_CreateRoadSpline.c) · [bytes](functions/10996C50_WorldTerrainWrap_CreateRoadSpline.asm) ([annotated pseudocode](functions/10996C50_WorldTerrainWrap_CreateRoadSpline.c)) | [network insertion](functions/10146A20_CAW_RoadNetworkCreateSplineAndInsert.c) · [bytes](functions/10146A20_CAW_RoadNetworkCreateSplineAndInsert.asm) ([annotated pseudocode](functions/10146A20_CAW_RoadNetworkCreateSplineAndInsert.c)) |
| Road-square rotation | [RoadSquareWrap_Rotate](functions/1098C780_RoadSquareWrap_Rotate.c) · [bytes](functions/1098C780_RoadSquareWrap_Rotate.asm) ([annotated pseudocode](functions/1098C780_RoadSquareWrap_Rotate.c)) | [rotation method](functions/1013B5A0_CAW_RoadSquareRotateInternal.c) · [bytes](functions/1013B5A0_CAW_RoadSquareRotateInternal.asm) ([annotated pseudocode](functions/1013B5A0_CAW_RoadSquareRotateInternal.c)) |
| Sea level | [SeaWrap_SetSeaLevel](functions/1098F8B0_SeaWrap_SetSeaLevel.c) · [bytes](functions/1098F8B0_SeaWrap_SetSeaLevel.asm) ([annotated pseudocode](functions/1098F8B0_SeaWrap_SetSeaLevel.c)) | [level propagation](functions/101D9860_CAW_SeaSetLevelAndPropagate.c) · [bytes](functions/101D9860_CAW_SeaSetLevelAndPropagate.asm) ([annotated pseudocode](functions/101D9860_CAW_SeaSetLevelAndPropagate.c)) |
| World-to-screen | [WorldWrap_GetScreenCoordinates](functions/10999FF0_WorldWrap_GetScreenCoordinates.c) · [bytes](functions/10999FF0_WorldWrap_GetScreenCoordinates.asm) ([annotated pseudocode](functions/10999FF0_WorldWrap_GetScreenCoordinates.c)) | [projection](functions/105C2D00_CAW_ProjectWorldToScreenPixels.c) · [bytes](functions/105C2D00_CAW_ProjectWorldToScreenPixels.asm) ([annotated pseudocode](functions/105C2D00_CAW_ProjectWorldToScreenPixels.c)) |

The PE export names and managed P/Invoke declarations establish identity. All
2,626 export addresses have Ghidra plate comments recording that identity;
the reviewed editor entries above also have behavior-specific comments. The
selected internal helpers are individually named and commented in the Ghidra
project. A name or generic export comment alone is not a behavioral proof.

Each raw file contains original DLL bytes and an independently decoded GNU
objdump listing for a window from the entry to the lesser of the next defined
Ghidra function entry and 8 KiB. The entire byte window was checked against
the original PE's `.text` section and the disassembler's bytes. It can include
padding or miss noncontiguous code. The `.c` file retains the Ghidra
decompiler rendering and analyst plate comment; stack parameters, calling
convention and returns need instruction-level verification. In particular,
the road-spline export's `void`/`__fastcall` rendering conflicts with its
managed `IntPtr` return and raw x86 call/return sequence; its comment explains
the observed stack slots. No retail editor run is inferred from these static
exports.

[Original native binding contracts](../../../guides/native-binding-contracts.md) and the [internal helper index](../../../INTERNAL-INDEX.tsv) cover the additional reviewed terrain, resource, road and camera producers. Newly reviewed pairs export the complete defined Ghidra function instruction body; every emitted instruction byte was compared with the original DLL and an independent GNU disassembly. Legacy exports retain their bounded linear-window format described above.

The complete [camera/picking contract](../../../guides/render-camera/picking-and-projection.md) retains the custom register ABI, binary32 sign-bit threshold, conditional water comparison and external output-preservation rules. The [shared host no-op exports](../../../guides/shared-host-noop-exports.md) have one canonical single-RET body despite distinct import signatures.

[Transform quaternion and Euler projection](../../../guides/render-camera/transform-euler.md) retains complete pose/copy/angle/export bodies, returned-pointer ABI, original numeric words and precise output widths. The linked pose lookup remains unexpanded.
