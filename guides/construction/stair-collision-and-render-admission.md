# Stair collision and render composition

Static PC 1.67 comparison through GhidrAssist explicitly on `/TS3W.exe`. Nine
complete actual annotated Ghidra C / original ASM pairs cover 2216 instructions
and 8048 bytes. All owned bodies are contiguous and every instruction/data byte
matches the pristine original independently. The database was saved clean with
original bytes unchanged. Analyst names are descriptions, not recovered symbols.
No game execution was used for these findings.

## Persistence, collision and drawing are separate

The existing modular-stair reader B21750 consumes resource 04A09283, reconstructs
flights and calls B1C360. B1C360 computes dimensions and samples heights across
levels, then B19990 creates `Lot/ModularStairsGeometry/ShearedBoxShape` instances
and registers collision state. Calling that chain proof of mesh-draw admission
would confuse two consumers of the same flight description.

B2BDE0 handles rendering messages: 04A4D6B2 invokes B2AC90 step composition;
062C4BA9 invokes B2B610 grouped composition. B2B610 clears old group/meta state,
creates its MetaSceneObject pair, invokes step/decorative/rail paths according to
message flags and bounds-checks the top XZ before final placement. The flags and
mesh-resource lookup are real dependencies. No wall-graph nearest-endpoint test
or frontend Probable/VisualProxy enum is established by these native paths.

Native location arguments are pointers to a 12-byte float X, float Z, **signed
Int32 level** structure. Actual MOV/CMP/JG/JLE, manager pushes, callee RET sizes and
message offsets establish the ABI; decompiler float-local/SIMD aliases are not
additional persisted floats. Original descriptor slots remain even where unused.

## Dimensions and order

AFC420 subtracts coordinates in binary32 and clears sign bits. Directions 0/4 use
absolute X run and Z width; 2/6 use Z run and X width. Side vectors respectively
(0,-1),(-1,0),(0,1),(1,0). It multiplies run by binary32 4.0, converts using x87
FISTP QWORD under the ambient rounding mode, and copies low32; width is converted
the same way. Default/unsupported directions use X for both counts and leave side
outputs untouched. There is no success boolean, finite check, 64/16 cap or .001
residual constraint in this helper. Invalid/overflow conversions are not given
invented cross-platform semantics.

B2AC90 computes quotient `quarterSteps >> 2` and remainder `quarterSteps - 4*q`.
For each width lane it runs the quotient group through B298A0 **before** the
remainder group through B29930. B234B0 invokes each callback immediately and adds
its four returned advance lanes into the shared position before the next callback.
An absent native lot grid suppresses callbacks; enabled floor sampling can lower
the signed level after crossing sampled height plus binary32 .0001. This is not
an asynchronous queue that could reorder those groups.

B298A0 passes rise .75/run 1.0 into placement B230C0 and selects product getter
C969C0; B29930 passes .1875/.25 and selects C95ED0. The exact 4:1 ratio and explicit
quotient/remainder producer establish four-step/one-step callback roles. Full
placement-model and rail tint semantics beyond these inspected functions remain
outside this bounded claim.

Independent static examples: with direction0, top (8,2,1), bottom (6.75,4,0),
helper outputs quarterSteps5,width2,side(0,-1). Each lane has quotient1,remainder1:
four-step callback first, then one-step. With run .375 under default nearest-even
rounding, run*4=1.5 converts to2; changing x87 rounding downward converts to1.
With unsupported direction1 and side outputs preset (7,9), the helper does not
initialize those outputs. These vectors are specifications, not executed tests.

AFC420 supplies raw UInt32 counts under the ambient x87 rounding mode without
finite/cardinal validation, caps or residual checks. Frontend admission constraints
require a separate project contract. B2AC90 completes the four-step quotient group
before the one-step remainder group; B234B0 completes each callback and updates the
shared position immediately before the next callback.

- [CountQuarterStepsAndWidth ASM](../../evidence/native/functions/00AFC420_ModularStairs_CountQuarterStepsAndWidth.asm) ([C](../../evidence/native/functions/00AFC420_ModularStairs_CountQuarterStepsAndWidth.c))
- [BuildStepObjects ASM](../../evidence/native/functions/00B2AC90_ModularStairsRenderer_BuildStepObjects.asm) ([C](../../evidence/native/functions/00B2AC90_ModularStairsRenderer_BuildStepObjects.c))
- [RepeatStepCallback ASM](../../evidence/native/functions/00B234B0_ModularStairsRenderer_RepeatStepCallback.asm) ([C](../../evidence/native/functions/00B234B0_ModularStairsRenderer_RepeatStepCallback.c))

## Canonical pairs

- [ModularStairs_BuildFlightCollisionShapes ASM](../../evidence/native/functions/00B1C360_ModularStairs_BuildFlightCollisionShapes.asm) ([C](../../evidence/native/functions/00B1C360_ModularStairs_BuildFlightCollisionShapes.c))
- [ModularStairs_CreateFlightCollisionShape ASM](../../evidence/native/functions/00B19990_ModularStairs_CreateFlightCollisionShape.asm) ([C](../../evidence/native/functions/00B19990_ModularStairs_CreateFlightCollisionShape.c))
- [ModularStairsRenderer_HandleMessage ASM](../../evidence/native/functions/00B2BDE0_ModularStairsRenderer_HandleMessage.asm) ([C](../../evidence/native/functions/00B2BDE0_ModularStairsRenderer_HandleMessage.c))
- [ModularStairsRenderer_BuildStepObjects ASM](../../evidence/native/functions/00B2AC90_ModularStairsRenderer_BuildStepObjects.asm) ([C](../../evidence/native/functions/00B2AC90_ModularStairsRenderer_BuildStepObjects.c))
- [ModularStairsRenderer_BuildGroupObjects ASM](../../evidence/native/functions/00B2B610_ModularStairsRenderer_BuildGroupObjects.asm) ([C](../../evidence/native/functions/00B2B610_ModularStairsRenderer_BuildGroupObjects.c))
- [ModularStairs_CountQuarterStepsAndWidth ASM](../../evidence/native/functions/00AFC420_ModularStairs_CountQuarterStepsAndWidth.asm) ([C](../../evidence/native/functions/00AFC420_ModularStairs_CountQuarterStepsAndWidth.c))
- [ModularStairsRenderer_AddFourStepBlock ASM](../../evidence/native/functions/00B298A0_ModularStairsRenderer_AddFourStepBlock.asm) ([C](../../evidence/native/functions/00B298A0_ModularStairsRenderer_AddFourStepBlock.c))
- [ModularStairsRenderer_AddOneStepBlock ASM](../../evidence/native/functions/00B29930_ModularStairsRenderer_AddOneStepBlock.asm) ([C](../../evidence/native/functions/00B29930_ModularStairsRenderer_AddOneStepBlock.c))
- [ModularStairsRenderer_RepeatStepCallback ASM](../../evidence/native/functions/00B234B0_ModularStairsRenderer_RepeatStepCallback.asm) ([C](../../evidence/native/functions/00B234B0_ModularStairsRenderer_RepeatStepCallback.c))

## Necessary original data

- [0x00afc564-stair-direction-dispatch](../../evidence/native/data/0x00afc564-stair-direction-dispatch.bin): seven little-endian direction dispatch targets after unsigned <=6 guard.
- [0x00f998f8-side-positive-one](../../evidence/native/data/0x00f998f8-side-positive-one.bin): binary32 1.0.
- [0x00fab218-side-negative-one](../../evidence/native/data/0x00fab218-side-negative-one.bin): binary32 -1.0.
- [0x00fb3f7c-quarter-step-scale](../../evidence/native/data/0x00fb3f7c-quarter-step-scale.bin): binary32 4.0.
- [0x0106c284-one-step-run](../../evidence/native/data/0x0106c284-one-step-run.bin): binary32 0.25.
- [0x0106c28c-one-step-rise](../../evidence/native/data/0x0106c28c-one-step-rise.bin): binary32 0.1875.
- [0x0106c290-four-step-rise](../../evidence/native/data/0x0106c290-four-step-rise.bin): binary32 0.75.
- [0x0106c294-level-crossing-epsilon](../../evidence/native/data/0x0106c294-level-crossing-epsilon.bin): binary32 9.999999747378752e-05.
