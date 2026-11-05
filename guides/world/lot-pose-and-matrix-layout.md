# Lot pose, inversion and matrix field layout

Reference: [PC 1.67 identity](../../evidence/reference.json). Analyst names and
provisional C types remain distinct from original instructions.

| Function | Input | Output | Meaning |
| --- | --- | --- | --- |
| AB1360 | ECX lot, aligned32B output | Quaternion XYZW `(0,sin(theta/2),0,cos(theta/2))`, translation Float4 from lot+190 | Forward pose; theta at lot+1A0. |
| AB1440 | Lot/output | Conjugate quaternion divided by squared norm; translation `-rotate(qInverse,t)` | Inverse pose; rotation precedes translation negation. |
| AB1540 / AB1610 | Lot, aligned64B output | Four consecutive Float4 rows from forward/inverse pose | Local-to-world / world-to-local pose matrices. |
| 76C220 | Native aligned source, destination | Copy16 fields at identical offsets | Marshaling only, no transpose/inversion/conversion. |

## Canonical bodies

- [AB1360 ASM](../../evidence/native/world/lots/transforms/00AB1360_Lot_GetLocalToWorldPose.asm)
  ([C](../../evidence/native/world/lots/transforms/00AB1360_Lot_GetLocalToWorldPose.c)).
- [AB1440 ASM](../../evidence/native/world/lots/transforms/00AB1440_Lot_GetWorldToLocalPose.asm)
  ([C](../../evidence/native/world/lots/transforms/00AB1440_Lot_GetWorldToLocalPose.c)).
- [AB1540 ASM](../../evidence/native/world/lots/transforms/00AB1540_Lot_BuildLocalToWorldPoseMatrix.asm)
  ([C](../../evidence/native/world/lots/transforms/00AB1540_Lot_BuildLocalToWorldPoseMatrix.c)).
- [AB1610 ASM](../../evidence/native/world/lots/transforms/00AB1610_Lot_BuildWorldToLocalPoseMatrix.asm)
  ([C](../../evidence/native/world/lots/transforms/00AB1610_Lot_BuildWorldToLocalPoseMatrix.c)).
- [76C220 ASM](../../evidence/native/world/lots/transforms/0076C220_Matrix44_CopyNativeToScriptFields.asm)
  ([C](../../evidence/native/world/lots/transforms/0076C220_Matrix44_CopyNativeToScriptFields.c)).

AB1360, AB1540 and AB1610 physically leave output in EAX despite provisional
void signatures, with RET4. Inversion uses RCPPS and two Newton refinements;
a host quaternion library is not thereby bit-identical. Matrix C float-to-uint
casts represent SIMD bit lanes, not actual float-to-integer conversions.

## Layout and coordinates

For `c=cos(theta)`, `s=sin(theta)`, `t=(tx,ty,tz)`, the mathematical forward
matrix implied by the original operations is:

```text
indices  0..3     c   0  -s   0
indices  4..7     0   1   0   0
indices  8..11    s   0   c   0
indices 12..15   tx  ty  tz   1
```

Row-vector `(x,y,z,1) * M` yields
`(x*c+z*s+tx, y+ty, -x*s+z*c+tz, 1)`. A column-vector consumer must explicitly
account for that convention. Do not transpose during the16-field script copy.
The inverse uses inverse quaternion and inverse translated pose, not a forward
matrix with only a negated position.

Two algebraic checks distinguish this convention: theta0 maps local origin to
`t`; theta+pi/2 maps local unitX to `t+(0,0,-1)`. The inverse maps them back.
These are instruction-derived checks, not original execution or exact rounding
measurements.

The registered [786E70 wrapper ASM](../../evidence/native/functions/00786E70_ScriptCore_World_World_LotGetWorldToLotTransformImpl.asm)
([fresh C](../../evidence/native/functions/00786E70_ScriptCore_World_World_LotGetWorldToLotTransformImpl.c)) resolves the lot,
callsAB1610 and copies through76C220. Missing world registry/lot returns identity.
This establishes the world-to-lot meaning on a real caller; it does not make all
other lot-coordinate APIs identical.

## Runtime mask and precision

Rows0..2 are ANDed with global011B0670. Static image/Ghidra memory is zero before
initialization. Existing [F80590 initializer ASM](../../evidence/native/functions/00F80590_SimdMasks_InitializeXyzKeepMask.asm)
([C](../../evidence/native/functions/00F80590_SimdMasks_InitializeXyzKeepMask.c)) writes
`FFFFFFFF,FFFFFFFF,FFFFFFFF,00000000`, keeping XYZ and clearing W. Static zero
storage is not the runtime rotation mask. Full startup ordering remains separate.

[Selected original operands](../../evidence/native/data/placement-import-transform-excerpts.tsv)
include binary32 `2.0` and `3FB504F3` (approximately sqrt2). SSE operation order,
reciprocal refinement, x87 FSIN/FCOS and binary32 stores govern arithmetic.
Equations explain ordinary finite inputs; exceptional/nonfinite behavior,
host-library bit equality, floor/portal spaces and successful runtime placement
are not certified.
