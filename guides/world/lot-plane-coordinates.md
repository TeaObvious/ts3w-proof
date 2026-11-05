# Authored lot plane and pose transforms

Static instructions from original PC 1.67 TS3W.exe, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Names are analyst descriptions. Complete paired original Listing/decompiler
outputs accompany the three functions below; names/comments alone are not ABI
or runtime equivalence. Their bodies total 156 instructions / 553 owned bytes,
with no nonowned gaps.

| Function and pair | Physical contract and arithmetic |
| --- | --- |
| [Lot_LocalPositionToWorldVector ASM](../../evidence/native/functions/00AB7040_Lot_LocalPositionToWorldVector.asm) ([annotated C](../../evidence/native/functions/00AB7040_Lot_LocalPositionToWorldVector.c)) | ECX lot; aligned input/output four-float pointers; RET8. Reads all input before publishing all four output lanes. FSIN/FCOS read stored angle +0x1A0. Both signs of the x87 sine are separately stored binary32. For horizontal input x/z, X is z*sin+(cos*x+originX), Z is x*negativeSin+(cos*z+originZ), with origin at +0x190/+0x198. MULPS precedes ADDPS of cosine product plus origin, then cross product. Decompiled unparenthesized sums do not supersede that grouping. |
| [Lot_TransformPositionByResolvedPose ASM](../../evidence/native/functions/00AB7110_Lot_TransformPositionByResolvedPose.asm) ([annotated C](../../evidence/native/functions/00AB7110_Lot_TransformPositionByResolvedPose.c)) | ECX lot; two aligned four-float pointers; RET8. AB1E10 supplies two stack-local four-float values. Shuffle/product/subtract/add sequences apply quaternion-style cross products; the second cross product is multiplied by binary32 2, then input and the second returned value are added. All four output lanes are stored. The AB1E10 producer, frame direction and pose lifetime remain child/caller boundaries. This body is not a translation-free scalar angle rotation. |
| [Lot_WorldXZToLocalXZWithMovingPose ASM](../../evidence/native/functions/00AB6F60_Lot_WorldXZToLocalXZWithMovingPose.asm) ([annotated C](../../evidence/native/functions/00AB6F60_Lot_WorldXZToLocalXZWithMovingPose.c)) | ECX lot; two float inputs/two output pointers; RET16. If byte +0x444 is zero, calls AB6E40 with unchanged arguments. Otherwise AB20B0 supplies a matrix; evaluate x*row0+row3+zero*row1+z*row2 through ordered MULPS/ADDPS, extract X/Z, then invoke AB6E40. The matrix producer and moving-pose lifetime remain separate. This adapter is an inverse route. |

The original [registered World_GetWorldPosition ASM](../../evidence/native/functions/0078EE40_ScriptCore_World_World_GetWorldPositionImpl.asm) ([annotated C](../../evidence/native/functions/0078EE40_ScriptCore_World_World_GetWorldPositionImpl.c)) joins the first transform at
0078EEBE after ADC750 supplies a local position/height. Its missing-world/missing-lot
branch retains initialized zero output. This caller establishes a horizontal
forward producer, not the meaning of every unused fourth lane or all height paths.

Existing [scalar inverse ASM](../../evidence/native/functions/00AB6E40_Lot_WorldXZToLocalXZ.asm) ([annotated C](../../evidence/native/functions/00AB6E40_Lot_WorldXZToLocalXZ.c)) uses ECX lot, two float
inputs/two output pointers and RET16. Subtract origin X/Z. Store FSIN and FCOS
of +0x1A0 to binary32; subtract sine from the negative-zero constant, then compute
localX=negativeSin*dz+cos*dx and localZ=sin*dx+cos*dz. The
[containing-lot finder ASM](../../evidence/native/functions/00C687D0_LotSpatialIndex_FindContainingLotAtWorldXZ.asm) ([annotated C](../../evidence/native/functions/00C687D0_LotSpatialIndex_FindContainingLotAtWorldXZ.c)) invokes it at 00C68824 and
checks inclusive zero-to-signed-dimension bounds in bucket order. It does not
add a 0.75 margin in those instructions.

The [four-lane inverse ASM](../../evidence/native/functions/00AB71A0_Lot_WorldPositionToLocalVector.asm) ([annotated C](../../evidence/native/functions/00AB71A0_Lot_WorldPositionToLocalVector.c)) subtracts all four origin
lanes and applies inverse horizontal signs, with RET8 and four-float output.
Its original ADC860/ADC980 consumers calculate signed local level separately;
see [lot lookup](lot-spatial-lookup.md). The complete LDES reader
[AC5A40 ASM](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([annotated C](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c)) publishes position/angle
under its preserve flag and subsequently conditionally reduces a large positive
angle. Field provenance does not establish a new universal normalization domain.

[Selected constant words](../../evidence/native/lot-plane-coordinate-data.tsv)
record actual original-memory reads: F998F0 is negative zero (80000000), F998F8
is one (3F800000), and 0103FD88 is two (40000000). Exact x87 transcendental
results, ambient FPU/SSE control state, NaN payload/denormal behavior, pose
producer lifetimes, direction-only/yaw operations and runtime results remain
unproved by these static functions. No original executable execution is claimed.
