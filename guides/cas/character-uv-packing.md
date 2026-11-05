# Character UV stream production and CAS drawable caller

This selected static review uses original PC 1.67, explicitly `/TS3W.exe` in
Ghidra. Internal names are analyst assignments. No CAS, numeric, GPU or rendered
test was executed. The full generic packer and caller bodies are retained;
semantic coverage below is deliberately narrower than their complete code.

## Packer ABI and source interface

`VertexStreams_PackRequestedAttributes` takes **13 physical stack words**,
returns a byte pointer and uses `RET 0x34`; incoming ECX is not a receiver.
The destination stride is low16. Arguments are source, mutable requested
attribute vector, stride, output start, first-bounds byte, bounds block,
index map, weight-lane count, atlas offset, atlas scale, position-offset output,
auxiliary cursor and low-byte narrow-index flag. The requested DWORD vector is
destructively popped from the front. Return is start+vertexCount*stride using
32-bit arithmetic; full input/output admission remains open.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

Source virtuals use ECX source. Slots0x34/0x38/0x20/0x30 have no stack arguments
and return vertex count, data pointer, attribute count and source stride.
Slots0x24/0x2c take one attribute index and return usage DWORD/byte size AL.
Slot0x54 takes one low-byte index and returns a DWORD; its complete remap meaning
is unexpanded. Scoped call overrides remove false stack aliases and expose
the first-UV flag in actual annotated C. The necessary original
[switch/constants](character-uv-original-data.tsv) retain the ID3 dispatch.

## Selected UV branch

Requested usage3 dispatches to `005D1E1F`. For finite Int32-convertible values,
each coordinate follows `x>1 ? x-float(truncInt32(x)) :
x<0 ? x-float(truncInt32(x))+1 : x`. Exact+1 stays1, positive integers above1
become0, negative integers become1. `CVTTSS2SI` truncates; this is not a claim
about ordinary modulo for huge/infinite inputs. `COMISS/JBE` unordered predicates
skip wrapping for NaN. Actual C's ordinary comparison expressions lose that
unordered behavior; the annotation records the instruction contract.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

The first processed matched UV batch has a local flag initially1. It applies
scale then offset per axis using separate SSE float instructions. Both argument
blocks are read with aligned16-byte MOVAPS although onlyXY are consumed.
After a matched usage3 completes, `005D1DA2` clears the flag. Later matched UV
batches wrap/pack without atlas. Missing-attribute fallback skips that reset;
complete repeated/missing stream selection remains open.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

Packing multiplies by stored float65535.0 (`0x477fff00`), stores float32,
then uses FLD/FISTP DWORD. Integer bias0xffff8000 precedes low16 storage.
FISTP uses **ambient x87 rounding mode**; no local FLDCW sets nearest-even.
Decompiler `ROUND` therefore cannot prove unconditional RoundToEven.
No finite/range guard precedes this path. The selected missing-UV fallback
writes0x8000/0x8000; complete fallback admission and GPU signed-short decoding
are not established by this producer.
[ASM](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.asm) ([annotated pseudocode](../../evidence/native/functions/005D19A0_VertexStreams_PackRequestedAttributes.c))

## CAS producer and cursor lifecycle

`CasModelBuilder_FillDrawable` is named from original literal
`CAS/ModelBuilder/FillDrawable`. It uses ECX builder, one work-record stack word,
RET4 and AL1 after cleanup. Work+0x20 selects builder+0x134 records of stride0xd0.
Binding flags+0x0c choose weight count2 when bits0x60 are present, otherwise1
for a signed low-byte negative value, otherwise4. Parts span+0xa4..+0xa8 with
stride0x50. With work byte+0x42 set, it builds requested attributes, passes
part+0x30 offset/part+0x40 scale plus separate stream/bounds/remap/output owners,
and stores the packer's returned cursor in work+0x38. A source with tagged
low2bits becomes null before immediate packer use; safe admission is not proven.
[ASM](../../evidence/native/functions/005D4100_CasModelBuilder_FillDrawable.asm) ([annotated pseudocode](../../evidence/native/functions/005D4100_CasModelBuilder_FillDrawable.c))

The caller separately packs indices, accumulates source vertex count, optionally
postprocesses the buffers, then restores the original vertex/index cursor starts
at work+0x38/+0x34. LOCK XADD updates builder+0x1ac with total vertex count.
Requested-vector cleanup precedes the AL1 return. Fur/deferred branches, final
resource callbacks and complete job failure/publication semantics are unexpanded.
[ASM](../../evidence/native/functions/005D4100_CasModelBuilder_FillDrawable.asm) ([annotated pseudocode](../../evidence/native/functions/005D4100_CasModelBuilder_FillDrawable.c))

## Remaining evidence

Original floating-point environment initialization, concrete source admission,
repeated-attribute selection, remaining non-UV encodings, index/fur processing,
atlas identity and lifetime, shader consumers and rendered acceptance remain
open. A finite guard, normalized decode formula or nearest-even implementation
must not be called original behavior solely from this selected path.

The selected position-ID1 branch is specified separately in the
[homogeneous position contract](../rendering/homogeneous-position-packing.md).
Its narrow signed scale and floor-plus-half arithmetic do not change the UV
branch or establish a roof-renderer call chain.
