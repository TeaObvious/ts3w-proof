# Original homogeneous bounds and map-tag output

The PC1.67 executable is the reference. Names below are analyst descriptions,
not recovered symbols. Both new pairs are verbatim actual saved annotated
Ghidra output:803owned bytes in177Listing instructions, without gaps or padding.
Physical instructions take precedence over inferred prototypes.

| Entry / responsibility | Owned bytes / instructions | Evidence |
| --- | --- | --- |
| `0068dbb0` Bounds_TransformHomogeneousCorners |217 /58| [ASM](../../evidence/native/functions/0068DBB0_Bounds_TransformHomogeneousCorners.asm) ([C](../../evidence/native/functions/0068DBB0_Bounds_TransformHomogeneousCorners.c)) |
| `0068c500` Bounds_WriteEightHomogeneousCorners |586 /119| [ASM](../../evidence/native/functions/0068C500_Bounds_WriteEightHomogeneousCorners.asm) ([C](../../evidence/native/functions/0068C500_Bounds_WriteEightHomogeneousCorners.c)) |

## Corner representation and projection

0068C500 takes the source box in ECX and one stack output pointer, physicalRET4.
It reads minimumXYZ from+0/+4/+8 and maximumXYZ from+10/+14/+18. Its eight float4
outputs vary Z fastest, then Y, then X. Every W is the literal1 read at00F998F8;
the source's fourth lanes are not propagated. This body establishes no box
validation, allocation or ownership transfer.

0068DBB0 takes the output box in ECX, then source-box and matrix pointers on the
stack, physicalRET8. Its inferred stdcall signature omits the ECX output and
must not be treated as a complete ABI. It calls0068C500 once and iterates eight
corners. Four separate packed multiplications and three packed additions form
`(((x*row0)+(y*row1))+(z*row2))+(w*row3)`, including all four lanes. There is no
perspective divide. Initial minima are+16777216; maxima are-16777216. MINPS and
MAXPS receive the previous accumulator as their second operand. That operand
order matters for unordered comparisons and equal signed zeros; replacing it
with an algebraically similar host minimum/maximum is not proved equivalent.
Both final float4 extrema are stored. No finite/inverted-input admission or
Boolean return is established by these two bodies.

Necessary physical extrema literals and actual operand sites are in
[original data](../../evidence/native/homogeneous-bounds-data.tsv). The W=1
literal is already retained in
[original data](../../evidence/native/map-view-lot-detail-data.tsv).

## Registered wrapper and model joins

The registered UInt64-object/Vector3-output boundary is0077E710:
[ASM](../../evidence/native/functions/0077E710_ScriptCore_UIManager_UIManager_GetMapTagInfoImpl.asm) ([C](../../evidence/native/functions/0077E710_ScriptCore_UIManager_UIManager_GetMapTagInfoImpl.c)).
That older raw envelope includes padding and is not relabeled as an owned
Listing. The wrapper first attempts object resolution. A found object is retained;
Model and Transform are required on that path. Missing Model/Transform returns
false through the release path, without falling through to the lot lookup.
For a Model it obtains bounds through00948880:
[ASM](../../evidence/native/functions/00948880_ModelComponent_GetBoundsStorage.asm) ([C](../../evidence/native/functions/00948880_ModelComponent_GetBoundsStorage.c)).
That four-byte body returns the storage atECX+60. The matrix-producing child
00957D30 and full Transform lifetime remain outside these new pairs.

If object resolution misses, the wrapper separately attempts a lot lookup and
usesABC1B0 on success:
[ASM](../../evidence/native/functions/00ABC1B0_Lot_GetCachedDisplayBounds.asm) ([C](../../evidence/native/functions/00ABC1B0_Lot_GetCachedDisplayBounds.c)).
On either successful path it writes XYZ to both caller outputs, adding the Sim
extension to upperY even when that extension is+0. Object-path Sim membership
selects1 instead of0. This output ordering and numeric addition are visible in
the wrapper; they do not establish complete Sim pose, model resource or lot
manager lifecycle.

The existing model constructor/resource-update proof remains in the
[object screen-query guide](object-screen-query.md). Those bodies establish
bounds storage and resource-change retention, not the whole child resource
parser or animation/callback lifetime.

## Physical call coverage and limits

[Incoming direct transfers](../../evidence/native/homogeneous-bounds-incoming.tsv)
contains35physically verified E8calls into these two entries. Any code-index
owner shown there is explicitly an envelope candidate, not an independently
expanded caller body. The selected bodies contain one E8call,0068DBC6→0068C500;
it is also represented in the direct-call lookup. Complete unknown caller,
indirect-call and dynamic routing coverage is not claimed.

This is static original evidence. No game, numeric, thread, platform or host
SIMD/JIT execution was performed. MXCSR/denormal behavior and cross-platform
bit equality remain unmeasured. These original routines do not prescribe the
managed admission or failure-output policy of a separate implementation.
