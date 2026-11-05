# Original object screen-query boundary

## Reference and scope

The original PC 1.67 executable is the native authority. Analyst names describe
proven responsibilities; they are not recovered symbols. Seven complete stored
functions own1285 pristine bytes in380 actual saved Listing instructions, with
no unowned gaps. Six new complete raw/C pairs join the existing registered wrapper
whose raw/index scope remains336bytes, including4padding bytes beyond its332owned
bytes. All seven C files are verbatim actual post-save annotated decompiler output,
including whitespace and unchanged inferred prototypes. Physical instructions
take precedence over those inferred C types and argument lists.

| Entry / analyst responsibility | Owned bytes / Listing | Original evidence |
| --- | --- | --- |
| `0078ae50` ScriptCore.World::World_IsObjectOnScreenImpl | 332 / 111 | [ASM](../../evidence/native/functions/0078AE50_ScriptCore_World_World_IsObjectOnScreenImpl.asm) ([C](../../evidence/native/functions/0078AE50_ScriptCore_World_World_IsObjectOnScreenImpl.c)) |
| `0068bfa0` Bounds_WriteCenterAndRadius | 111 / 34 | [ASM](../../evidence/native/functions/0068BFA0_Bounds_WriteCenterAndRadius.asm) ([C](../../evidence/native/functions/0068BFA0_Bounds_WriteCenterAndRadius.c)) |
| `0068d520` Camera_IntersectsPackedSphere | 194 / 51 | [ASM](../../evidence/native/functions/0068D520_Camera_IntersectsPackedSphere.asm) ([C](../../evidence/native/functions/0068D520_Camera_IntersectsPackedSphere.c)) |
| `00949510` ModelComponent_ConstructDefaultState | 212 / 53 | [ASM](../../evidence/native/functions/00949510_ModelComponent_ConstructDefaultState.asm) ([C](../../evidence/native/functions/00949510_ModelComponent_ConstructDefaultState.c)) |
| `009492b0` ModelComponent_ApplyResourceBoundsChange | 381 / 109 | [ASM](../../evidence/native/functions/009492B0_ModelComponent_ApplyResourceBoundsChange.asm) ([C](../../evidence/native/functions/009492B0_ModelComponent_ApplyResourceBoundsChange.c)) |
| `00948880` ModelComponent_GetBoundsStorage | 4 / 2 | [ASM](../../evidence/native/functions/00948880_ModelComponent_GetBoundsStorage.asm) ([C](../../evidence/native/functions/00948880_ModelComponent_GetBoundsStorage.c)) |
| `0096a080` WorldCamera_GetScreenQueryCamera | 51 / 20 | [ASM](../../evidence/native/functions/0096A080_WorldCamera_GetScreenQueryCamera.asm) ([C](../../evidence/native/functions/0096A080_WorldCamera_GetScreenQueryCamera.c)) |

## Inputs, selection and lifetime

The registered wrapper consumes the unsigned64-bit object handle passed by the
managed import. Its retained inferred no-argument/undefined4 prototype is not
proof of the physical interface: stack operands carry the handle and the Boolean
result is physically in AL. It looks up and retains the object, requires the
Transform component selected by descriptor011EA158, then obtains a camera.
Location is a distinct component; an older registration comment naming Location
is not adopted as this contract. Existing annotated component/translation helpers
establish the selected joins; their unexpanded children do not prove whole object
lifetime or all resource processing.

Missing object, Transform or camera returns false with the wrapper's existing
release path. Missing Model uses center(0,0,0) and radius1. Present Model supplies
its bounds through00948880: LEA EAX,[ECX+60], plainRET. The wrapper adds Transform
world translation to the center before invoking the camera comparison.

0096A080 checks global011EA400, its+14 link, a nullable+8C node and that node's+C
link. A missing required link returns zero. The nonnull tail moves to ECX and
jumps to0095FD90. The tail child's complete camera lifecycle and plane producer
remain outside this selected contract.

## Bounds producers and arithmetic

00949510 is the actual constructor entry;00949520 is an interior address. The
constructor uses ECX owner plus one stack argument and physicalRET4, initializes
aligned bounds at+60/+70, including the three-dimensional default minimum
(-0.5,0,-0.5) and maximum(0.5,1,0.5). Necessary scalar bytes are retained below.
009492B0 compares four resource-key words, stores a changed key before requesting
bounds resource kind736884F1, and replaces bounds only on successful lookup.
Failure keeps previous bounds. Existing notifications73477A1C/70F3BE97 and cleanup
remain ordered after that work; selected child parser/command lifetimes are not
established by their call sites alone.

0068BFA0 uses ECX bounds, two stack output pointers andRET8. It writes all four
midpoint lanes, clamps each half-delta at zero, squares all four lanes, reduces
the first three as(z²+y²)+x² and takes square root into the radius output. This is
physical SSE arithmetic; mathematical similarity does not establish bit equality
with another reduction order or a current Vector3 implementation.

0068D520 accepts ECX camera and one stack float4 sphere pointer, physicalRET4/AL
Boolean. Two packed comparison blocks cover eight serialized lanes. Unordered
comparisons reject. The lane representation is not established as identical to
six normalized frustum planes. At0068D579(0FC2EC02) and0068D5C6(0FC2CC02), the MCP
ASM formatter appends a phantom comma; saved Listing/pristine bytes show the
actual two-operand CMPLEPS. No instruction or canonical C output is repaired.

## Managed policy remains managed

Three complete managed bodies contain64CIL bytes and24instructions; two declarations
are bodyless metadata. ScriptCore forwards ObjectGuid.mValue unchanged to the
UInt64 native import and returns Boolean. The SimIFace world facade returns false
when gWorld is absent. Its IHasScriptProxy overload checks object and Proxy,
obtains Proxy again for ObjectId, and calls the ObjectGuid facade. Bridge must
preserve these interfaces; it does not duplicate managed selection policy.

- ScriptCore: [complete selected IL](managed/object-screen/ScriptCore.selected.il.txt) ([annotated decompiler excerpt](managed/object-screen/ScriptCore.selected.cs)).
- SimIFace: [complete selected IL](managed/object-screen/SimIFace.selected.il.txt) ([annotated decompiler excerpt](managed/object-screen/SimIFace.selected.cs)).

## Necessary original scalar data

- `00f9b600` 000000bf, negative half constructor/sphere constant: [existing original data](../../evidence/native/object-screen-query-data.tsv).
- `00f998f8` 0000803f, one constructor/sphere constant: [existing original data](../../evidence/native/map-view-lot-detail-data.tsv).
- `00f9b5b4` 0000003f, half constructor/sphere constant: [existing original data](../../evidence/native/map-view-lot-detail-data.tsv).

## Limits

This is static original evidence. No game, numeric, camera, concurrency, platform
or pixel test was executed. Object resource-parser children, notification consumers,
camera-plane production and complete manager lifetimes remain unexpanded.
The separate current implementation's camera-first host validity, default recorded
bounds and six-plane test must not be presented as original parity merely because
they answer a similar query. These differences require separate implementation
and runtime work; this reference does not change either implementation.
