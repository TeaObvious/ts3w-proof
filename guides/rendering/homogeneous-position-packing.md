# Homogeneous position stream packing

## Reference and scope

Original PC 1.67, explicitly `/TS3W.exe` in GhidrAssist. Analyst-assigned
`VertexStreams_PackRequestedAttributes` is a generic source-interface stream
packer; the name is not a recovered original symbol or a roof-renderer identity.
The existing full body spans `[005D19A0,005D2281)`: 2,273 original bytes,
623 owned instructions covering 2,265 bytes, with eight nonowned alignment bytes.
These include the existing two-byte MOV EDI,EDI at 005D216E outside the stored
function ranges; it remains visible and explicitly marked in the envelope.
The canonical pair contains the actual annotated Ghidra C and complete original
Listing. No function boundary, type, ABI, instruction or original byte changed.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

The physical ABI takes thirteen stack words and returns a byte cursor, with
`RET 0x34`. Source virtuals provide vertex count, source pointer, attribute usage/
size and stride. The requested attribute vector is destructively consumed.
The selected usage-ID1 switch dispatch reaches `005D1BF7`. Other attribute
branches retain their own contracts; this guide establishes only the selected
position producer, not complete generic input admission.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

## Signed denominator

For ordinary finite input, compare absolute X/Y/Z values stored as binary32,
select the largest magnitude, promote that value to binary64 and call imported
`ceil` through `00F966A8`. Convert the result with the compiler's x87-to-low-Int32
helper, then retain its **low sixteen bits** (`MOVZX EAX,AX`). `TEST AX,AX` decides
whether the narrowed ceiling is zero. That branch writes signed-short XYZ=0 and
W=1, including Z at the shared tail `005D1D09`.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

Otherwise `MOVSX ECX,AX` supplies a signed divisor. `MOV EAX,0x7FFD; CDQ; IDIV ECX`
computes the signed quotient, truncating toward zero. Its low16 becomes the
stored W and is sign-extended for component multiplication. There is no local
minimum-one clamp, ceiling tolerance, saturation or positive-denominator fallback.
Nonfinite/out-of-Int32 conversion behavior and ambient floating-point controls
are not replaced by a mathematical ceil/modulo model.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

The conversion helper has its separately reviewed low-Int32 contract. Its
feature-controlled CVTTSD2SI branch and x87 fallback are not an unconditional
signed-64 decompiler conversion.
[ASM](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.asm) ([annotated pseudocode](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.c))

## Component arithmetic and representation

Each source component is multiplied by the signed scale using x87, then adds
binary32 constant `0x3F000000` (0.5, at `00F9B5B4`). The result spills as binary64,
passes through the imported `floor` thunk at `00F7F7D0` and the low-Int32
conversion helper. Only low16 is written to the destination component. This is
floor-plus-half in its valid ordinary domain, **not** midpoint-away-from-zero.
There is no component saturation. x87 intermediate precision/rounding remains a
caller/runtime condition; replacing it with arbitrarily grouped Float32 or a
fused operation is not established by the decompiler expression.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

Independent exact examples in that domain:

| Source XYZ | Narrowed ceiling | Signed W | Stored XYZW |
| --- | --- | --- | --- |
| (0,0,0) | 0 | 1 (special branch) | (0,0,0,1) |
| (-0.5,1,0) | 1 | 32765 | (-16382,32765,0,32765) |
| (32768,0,0) | -32768 | 0 | (0,0,0,0) |
| (65536,0,0) | 0 | 1 (special branch) | (0,0,0,1) |

The negative half example uses exact `-0.5*32765+0.5=-16382`, so its discrepancy
from away-from-zero rounding does not depend on an approximate input. W=0 in the
third example is an output fact; it is not a claim that a downstream homogeneous
divide is valid, or that real callers supply that input. These are worked static
vectors, not executed original-game tests.

## Source, bounds and consumer limits

For the first admitted position stream, the subsequent bounds code publishes
original float position values, not reconstructed quantized positions. The exact
bounds flag and later min/max updates remain part of the generic stream workflow.
The selected branch writes packed lanes; no shader divide executes in this body.
A downstream XYZ/W equation requires an independently identified declaration,
shader input and consumer.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

The existing selected CAS caller passes actual stream, stride, bounds, remap and
output owners and consumes the returned cursor. Its requested-attribute producer
and later GPU publication are bounded, not a roof producer proof.
[ASM](../../evidence/native/functions/005D4100_CasModelBuilder_FillDrawable.asm) ([annotated pseudocode](../../evidence/native/functions/005D4100_CasModelBuilder_FillDrawable.c))
The [CAS UV/caller guide](../cas/character-uv-packing.md) retains that complete
selected caller contract and UV-specific precision limits.

A bounded search for `FD 7F 00 00` also identifies code inside `007161C0`,
`007CF810` and `00B772C0`. Shared immediates do not establish equal semantics or
roof ownership. The actual roof vertex producer/declaration/shader join, other
attribute encodings, invalid-input domain, complete caller FP setup, destination
admission and renderer acceptance remain open static/runtime questions.
