# Component bounding-box corners and transforms

`Bounds_WriteEightComponentCorners` and `Bounds_TransformEightComponentCorners` are analyst names for two existing PC1.67 functions. The component-box consumer selects a specific four-corner polygon; a pivot or union of footprint regions does not describe the same geometry.

## Eight original component corners

The existing `0068C440..0068C4FB` function has 53 instructions and 188 owned bytes. ECX supplies a min/max component bounds receiver; one stack DWORD supplies eight output float4 records; the physical return is `RET 4`. [Original ASM](../../evidence/native/functions/0068C440_Bounds_WriteEightComponentCorners.asm) ([annotated Ghidra pseudocode](../../evidence/native/functions/0068C440_Bounds_WriteEightComponentCorners.c)).

| Index | X | Y | Z | Fourth lane |
| --- | --- | --- | --- | --- |
| 0 | minX | minY | minZ | minX |
| 1 | minX | minY | maxZ | maxX |
| 2 | minX | maxY | minZ | minX |
| 3 | minX | maxY | maxZ | maxX |
| 4 | maxX | minY | minZ | minX |
| 5 | maxX | minY | maxZ | maxX |
| 6 | maxX | maxY | minZ | minX |
| 7 | maxX | maxY | maxZ | maxX |

The SHUFPS-derived fourth lane copies an X bound according to the chosen Z endpoint. It is neither a homogeneous one nor consistently the output corner's X. The transform below consumes only source xyz.

## Original transform arithmetic

The existing `0068D9C0` function owns `0068D9C0..0068D9E9` and `0068D9F0..0068DA3B`: 39 instructions and 118 bytes. The six intervening bytes belong to neither owned range and are not included as instructions. ECX supplies component bounds; two stack DWORDs supply the transform and output pointer; the physical return is `RET 8`. [Original ASM](../../evidence/native/functions/0068D9C0_Bounds_TransformEightComponentCorners.asm) ([annotated Ghidra pseudocode](../../evidence/native/functions/0068D9C0_Bounds_TransformEightComponentCorners.c)).

It calls the eight-corner writer, then emits eight float4 outputs. For each SIMD lane, it multiplies source x by matrix row0, adds translation row3, adds source y times row1, and finally adds source z times row2. The source fourth lane is not multiplied. Preserve the binary32 multiplication/addition sequence when reproducing rounded results; regrouping as a generic homogeneous matrix multiply changes the documented arithmetic expression.

## Polygon producer and roof consumer

The component polygon producer queries the Model interface `011E9FC4` and uses its selected local box when available, otherwise the alternate component interface `011EA290`. It requires Transform interface `011EA158`, calls the transformed-corner helper, and selects transformed X/Z pairs at indices **0, 1, 5, 6**. Corner6 uses maxY, which matters for a tilted box. [Producer ASM](../../evidence/native/functions/00B0EA00_Seasons_GetObjectComponentBoundsPolygon.asm) ([pseudocode](../../evidence/native/functions/00B0EA00_Seasons_GetObjectComponentBoundsPolygon.c)).

The lot-space producer derives an inverse transform from the actual lot angle and origin; its translation is formed before the per-corner dot products. A decompiler `unaff_EBX` expression does not replace the original lot-angle load. [Lot transform ASM](../../evidence/native/functions/00B0EC20_Seasons_TransformObjectBoundsIntoLotSpace.asm) ([pseudocode](../../evidence/native/functions/00B0EC20_Seasons_TransformObjectBoundsIntoLotSpace.c)).

The roof-admission caller applies the component-box polygon to the quarter-cell coverage iterator. Its separate below-ground and greenhouse branches are not established by the corner helpers. [Roof-admission ASM](../../evidence/native/functions/00ABE060_Seasons_UpdateExteriorObjectRoofSnowAdmission.asm) ([pseudocode](../../evidence/native/functions/00ABE060_Seasons_UpdateExteriorObjectRoofSnowAdmission.c)). [Quarter coverage ASM](../../evidence/native/functions/00AD1990_LotGeometry_CollectPolygonQuarterCoverage.asm) ([pseudocode](../../evidence/native/functions/00AD1990_LotGeometry_CollectPolygonQuarterCoverage.c)).

## Evidence status

All 92 original instructions and 306 owned bytes of the two helper functions, exact existing boundaries, actual references, stored ABI/types and SIMD operand order were checked against the pristine PC1.67 executable. The complete original Listing and genuine annotated Ghidra C form the canonical pairs. Stored ABI and decompiler types were retained; analyst names are not recovered source symbols. No runtime test or rendered-weather comparison was performed for these helpers.
