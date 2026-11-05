# Clip endpoint decoding and local-pose sampling

## Reference and coverage

Static original PC 1.67 instructions establish the selected paths below. Names
are analyst names. The exports contain the actual annotated Ghidra pseudocode;
they are not rewritten reference implementations. Ghidra's `ROUND`, vector
temporaries and inferred whole-register returns require the instruction-level
qualifications below. No clip, animation or gameplay test was executed.

| Responsibility | Original evidence |
| --- | --- |
| Version dispatch | [00588B40 ASM](../../evidence/native/functions/00588B40_ClipCodec_SampleByVersion.asm) ([pseudocode](../../evidence/native/functions/00588B40_ClipCodec_SampleByVersion.c)) |
| Local-pose sampler | [00586760 ASM](../../evidence/native/functions/00586760_ClipCodec_SampleLocalPose.asm) ([pseudocode](../../evidence/native/functions/00586760_ClipCodec_SampleLocalPose.c)) |
| Channel endpoint dispatch | [00585DF0 ASM](../../evidence/native/functions/00585DF0_ClipCodec_DecodeEndpointPair.asm) ([pseudocode](../../evidence/native/functions/00585DF0_ClipCodec_DecodeEndpointPair.c)) |
| Indexed float3 endpoint selection | [00585450 ASM](../../evidence/native/functions/00585450_ClipKeys_ReadIndexed3EndpointPair.asm) ([pseudocode](../../evidence/native/functions/00585450_ClipKeys_ReadIndexed3EndpointPair.c)) |
| Packed10 endpoint selection | [005858D0 ASM](../../evidence/native/functions/005858D0_ClipKeys_ReadPacked10EndpointPair.asm) ([pseudocode](../../evidence/native/functions/005858D0_ClipKeys_ReadPacked10EndpointPair.c)) |
| U16 quaternion endpoint selection | [00585990 ASM](../../evidence/native/functions/00585990_ClipKeys_ReadU16QuaternionEndpointPair.asm) ([pseudocode](../../evidence/native/functions/00585990_ClipKeys_ReadU16QuaternionEndpointPair.c)) |
| Packed10x3 key | [00584700 ASM](../../evidence/native/functions/00584700_ClipKey_DecodePacked10x3.asm) ([pseudocode](../../evidence/native/functions/00584700_ClipKey_DecodePacked10x3.c)) |
| Indexed float3 key | [00584AB0 ASM](../../evidence/native/functions/00584AB0_ClipKey_DecodeIndexedFloat3.asm) ([pseudocode](../../evidence/native/functions/00584AB0_ClipKey_DecodeIndexedFloat3.c)) |
| Full U16x4 key | [005851B0 ASM](../../evidence/native/functions/005851B0_ClipKey_DecodeU16x4.asm) ([pseudocode](../../evidence/native/functions/005851B0_ClipKey_DecodeU16x4.c)) |

The sampler body has two ranges, `00586760..0058689A` and
`005868A0..00586CDC`. Its complete envelope includes the intervening five bytes;
they are not an omitted tail or another inferred function. The endpoint
dispatcher ends at `0058618A`; its jump table starts at `0058618C`.

## Producer, channel layout and dispatch

The thiscall version wrapper receives the codec owner in ECX and four stack
arguments. Owner word `+8 == 1` calls `005861E0`; other values call the reviewed
cdecl pose sampler with codec, pose, seconds, optional bone map and mirror flag.
This establishes the selected call, not admission of every serialized version.
The version-one sampler remains unreviewed here.

The sampler reads channel count at codec `+0x18`, a signed relative channel-array
offset at `+0x20` and indexed-float context offset at `+0x24`; `-1` denotes null.
Each 20-byte channel record contains:

| Offset | Original interpretation |
| --- | --- |
| `+0` | signed relative key payload offset; `-1` sentinel |
| `+4` | target hash |
| `+8`, `+0xC` | binary32 offset and scale |
| `+0x10` | zero-extended unsigned 16-bit key count |
| `+0x12`, `+0x13` | unsigned byte codec and subtarget |

Only the codec byte dispatches. The [original dispatch slots](clip-codec-dispatch.tsv)
retain destinations for values 1..20. Values 9..12 write two zero float4
endpoints, 13..16 write ones, and 17 writes `(0,0,0,1)`, without reading payload
or key count. Values 3,18/19,20 select the separately retained indexed3,
packed10x3 and U16x4 helpers. Other selected decoder implementations remain
unexpanded. Unsupported values fall through to transforming existing outputs;
there is no successful unknown-codec validation contract here.

After dispatch, every lane of both endpoints executes separate `MULSS scale`
then `ADDSS offset`. Do not substitute fused arithmetic or assume only XYZ is
transformed. Decompiled temporary flag aliases are not extra channel fields.

## Key flags and endpoint selection

The reviewed records start with unsigned 16-bit frame and flags words. Record
strides are 10 bytes for indexed3, 8 for packed10 and 12 for U16x4. Selection uses
a lower-bound helper, terminal correction and a possible preceding record. A
next endpoint is decoded only when it exists, its frame is at most the requested
second frame, and its own flag `0x80` is clear. Otherwise all four output lanes
and the flag word are copied from the first endpoint. Nonempty sorted input is
assumed by these native leaves; zero-count safety is not established.

Flags `1,2,4,8` select negative signs for XYZW. Shortcut priority is:

1. `0x10`: four positive zeros, ignoring sign flags.
2. `0x20`: four signed ones.
3. `0x40`: signed zero XYZ and signed one W.

The packed reader extracts three unsigned 10-bit fields from its payload DWORD
with `0x3FF` masks. It applies signs and stored binary32 reciprocal `0x3A802008`
using x87 arithmetic, then stores XYZ. Ordinary W remains caller storage.
Indexed3 reads three unsigned 16-bit indices into the context's float array.
The U16x4 reader zero-extends each **full** payload word, applies sign and stored
binary32 reciprocal `0x39800801` using scalar SSE. There is no `0xFFF` mask,
division, clamping or normalization in that raw key reader. Do not infer valid
authored ranges solely from a format name. The [original constants](clip-constants.tsv)
retain their exact words separately from approximate decimal display.

## Time, pose output and interpolation

Codec `+0x10` is the frame interval. `DIVSS` first produces its binary32
reciprocal. The x87 path multiplies that stored reciprocal by the input seconds,
sets control-word rounding bits `0xC00`, and `FISTP` truncates to signed 64 bits.
The low DWORD is used as an unsigned frame; conversion back to time includes the
high-bit `2^32` correction. The `DC C9` instruction at `005867C2` multiplies
`ST(1)` by `ST(0)`. Decompiled `ROUND` must not become round-to-nearest or an
integer-rounded frame frequency. This leaf has no duration modulo or frame-count
clamp. Its ordinary finite interpolation fraction is clamped to `[0,1]`.

The pose local-SQT stride is `0x30`: translation `+0`, quaternion `+0x10`, scale
`+0x20`. An optional signed bone map is indexed by channel ordinal; otherwise a
hash lookup supplies the target. Negative bone indices skip writes. Motion hash
`0x2AF0A8AE` is skipped; subtarget 7 invokes the scalar pose setter, 1/3 interpolate
translation/scale and 2 selects quaternion handling. Mirror runs afterward when
the incoming low byte is nonzero.

Quaternion endpoints whose every absolute component is at most `2^-16` cause
only both W lanes to be replaced with one, and only when both endpoints satisfy
that test. Hemisphere selection uses strict `dot > 0`; zero selects the negated
branch. The interpolated vector is normalized using `RSQRTPS` and two refinement
steps. This is not slerp, nor an exact mathematical reciprocal square root.

## Limits and further consumers

The selected sampler defines AL as success; inferred whole-EAX expressions do
not establish a wider return value. Full binary admission, malformed/nonfinite
inputs, version-one sampling, remaining codec helpers, rig mapping, blend graphs,
root motion, mirror details and synchronization are still open. The reviewed
pose writes do not prove a rendered frame, skinning convention, callback timing
or the higher-level controller policies in the [lifecycle contract](controller-lifecycle.md).
