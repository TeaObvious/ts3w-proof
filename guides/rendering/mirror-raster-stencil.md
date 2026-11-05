# Mirror context, raster defaults and stencil setters

Original PC1.67 TS3W.exe. Static instruction evidence; analyst names are inferred,
not recovered source symbols. Actual annotated pseudocode retains Ghidra's
inferred prototypes and locals. Only the selected state contract below is closed.

## Canonical functions

| Address / analyst responsibility | Full owned bytes / instructions | Physical x86 inputs and cleanup |
| --- | --- | --- |
| 006e8ec0: [Shared draw-context raster defaults ASM](../../evidence/native/functions/006E8EC0_SceneRenderer_ApplyDrawContextRasterDefaults.asm) ([annotated Ghidra C](../../evidence/native/functions/006E8EC0_SceneRenderer_ApplyDrawContextRasterDefaults.c)) | 162 / 59 | ECX owner; 1 physical stack words; RET 4 hex |
| 0060fdc0: [Indexed cull state ASM](../../evidence/native/functions/0060FDC0_RenderDevice_SetCullModeFromIndex.asm) ([annotated Ghidra C](../../evidence/native/functions/0060FDC0_RenderDevice_SetCullModeFromIndex.c)) | 22 / 6 | ECX owner; 1 physical stack words; RET 4 hex |
| 006f2330: [Planar mirror bucket ASM](../../evidence/native/functions/006F2330_SceneRenderer_DrawPlanarMirrorBucket.asm) ([annotated Ghidra C](../../evidence/native/functions/006F2330_SceneRenderer_DrawPlanarMirrorBucket.c)) | 6013 / 1394 | ECX owner; 4 physical stack words; RET 10 hex |
| 006f0c40: [Ordered scene buckets ASM](../../evidence/native/functions/006F0C40_SceneRenderer_DrawOrderedSceneBuckets.asm) ([annotated Ghidra C](../../evidence/native/functions/006F0C40_SceneRenderer_DrawOrderedSceneBuckets.c)) | 1501 / 471 | ECX owner; 3 physical stack words; RET C hex |
| 0060fe40: [Stencil compare/reference/mask ASM](../../evidence/native/functions/0060FE40_RenderDevice_SetStencilCompareReferenceMask.asm) ([annotated Ghidra C](../../evidence/native/functions/0060FE40_RenderDevice_SetStencilCompareReferenceMask.c)) | 56 / 20 | ECX owner; 3 physical stack words; RET C hex |
| 0060fe90: [Stencil write mask ASM](../../evidence/native/functions/0060FE90_RenderDevice_SetStencilWriteMask.asm) ([annotated Ghidra C](../../evidence/native/functions/0060FE90_RenderDevice_SetStencilWriteMask.c)) | 15 / 5 | ECX owner; 1 physical stack words; RET 4 hex |
| 0060fea0: [Indexed stencil operations ASM](../../evidence/native/functions/0060FEA0_RenderDevice_SetStencilOpsFromIndices.asm) ([annotated Ghidra C](../../evidence/native/functions/0060FEA0_RenderDevice_SetStencilOpsFromIndices.c)) | 70 / 22 | ECX owner; 3 physical stack words; RET C hex |

Mirror body ownership is **6F2330..6F2536 plus6F2540..6F3AB5**,6013bytes.
The nine bytes6F2537..6F253F are not owned instructions. The6022byte envelope
must not be mistaken for6013owned bytes. Every pair retains the full actual
owned listing, including code outside the selected state contract.

## Setter inputs and consumers

The cull setter reads an unchecked32bit table index at FE89E8: DWORD values
1,2,3 (NONE,CW,CCW), and forwards to cached state16hex. Compare setter reads
FE89F4[index] (DWORD1..8) then writes38hex comparison,39hex rawreference and
3Ahex rawcomparisonmask in that order. Index2 selects EQUAL;7 selects ALWAYS.
Write-mask setter forwards its raw32bits to3Bhex, without a3F/FF clamp.
Stencil-op setter uses FE8AB8[index] (DWORD1..8) for states35/36/37hex in
fail/depthfail/pass order. Index0 is KEEP;2 REPLACE. No index validation or
status-result contract is established by these wrappers. Decompiler signed
int parameters do not narrow raw masks or establish a signed arithmetic policy.

## Shared orientation and ordered buckets

Shared defaults6E8EC0 has at least nine direct callers. Context+4 bit08 set:
indexed setter60FFE0 receives2; cullIndex=(context+10!=0)+1. Bit clear:
that setter receives2-(owner+25C!=0); cullIndex is0 when owner+263==0,
otherwise(context+10!=0)+1; color maskF is written in this branch. Both paths
then enable depth, set depth comparison index3, enable depth writing and disable
alpha test/blend. This is a shared mechanism, not a mirror-only function.
Owner-field producers and the exact semantics of60FFE0 remain open.

6F0C40 consumes the context and scene lists and its third physical argument's
low byte controls reflection admission. Its ordered numeric buckets call shared
defaults;6F0D73 dispatches the mirror bucket. Later paths temporarily invert and
restore context+10. Thus+10 is an orientation selector, not a unique mirror tag.
Do not assign material identities to every numeric bucket from flags alone.

## Mirror producing stages

With reflection disabled6F2330 still draws the mirror vector using its material
helper. Enabled reflection copies13DWORD/52bytes of context. The first all-surface
producing draws use comparison index7,1-based references, comparison/write masks
FFFFFFFF, stencil ops2/0/2, RGB color mask7, depth writing enabled and depth
comparison index1. This is a color/depth-producing draw, not a stencil-only replay.

Per-mirror far-depth preparation uses comparison index2, comparisonmask3F,
write mask0 and viewport depth range1..1, then restores the depth range.
The local context bytes+10/+13 become1 at6F312D/6F3135. The actual reflected
ordered walk at6F374C passes allow-reflection0, preventing reflected-scene
recursion while retaining mirror surface drawing. Its other direct callers
are6F14FF,6F1EDD and6F22FA; mirror dispatch has one direct caller6F0D73.
Final surface/material draws and state restoration are retained in the complete
annotated export; no substitute reconstructed pseudocode is used.

## Related basin lane and remaining limits

[Drawable basin stencil producer ASM](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.asm) ([annotated Ghidra C](../../evidence/native/functions/00690260_RenderObject_DrawPacketWithParameters.c))
uses drawable+C0 bit08 to select comparison against the current reference's low
six bits, ref=current|80hex, comparisonmask3F, writemask80, operations0/0/2.
The separate BasinWater shader consumes bit80. This does not establish a pond,
hot-tub foam or water-reflection shader correction.

Matrix/near-plane/fade arithmetic and every inferred local/global type in the
large mirror decompilation remain unverified. Some aliases are decompiler stack
artifacts; original instructions govern. Full material-producing closure is
required before adapting first-stamp depth/color state into a different pass
schedule. Generic backend scissor coordinate conversion is not proven by these
functions. No runtime rendering, occlusion timing, GPU lifetime or visual parity
is inferred from this static evidence.
