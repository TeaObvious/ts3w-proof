# Fence-post height and native selection precision

Static original PC1.67 /TS3W.exe evidence; analyst names describe proven roles. Three complete actual annotated Ghidra C/original-ASM pairs cover268 instructions/988 contiguous original bytes. Exactly16 necessary original constant bytes are retained. Database saved clean; no original bytes modified. No product/compiler/game test or runtime x87-control measurement is claimed.

## Height producer and arithmetic

Existing CFEN reader C94C00 selects the successfully resolved post proxy, otherwise rail proxy. Existing VisualProxy_ReadAlignedBounds93B800 copies source interface+48 into output+14; the output begins at productF0, so this supplies binary32 product104. This proves the lane, not universal equivalence to runtime decoded mesh bounds.

FenceProduct_GetPostBoundsHeight C94560 physically receives ECX/no stack words and returns x87 ST0/plainRET. MOVAPS product100 and local FLD+4 read that binary32 lane. It loads the binary64 threshold atF9E510, compares threshold to height with FCOMIP, and JBE keeps height for threshold<=height or unordered. Only an ordered smaller value is replaced by binary32 3 atFA2B9C. NaN is retained. The typed threshold is double0.001, not float0.001; the representable binary32 inputs on either side still give the stated branch.

FenceCatalog_GetPostHeight C5BC60 physically uses cdecl one resource-key pointer/plainRET/ST0. Existing C8E760 receives allowDefault1; null produces FLDZ0. Nonzero DWORD productE0 AND byte151 selects getter plus FADD binary32 one at010793A8; otherwise a tail JMP returns getter result. Addition remains on x87; this function performs no binary32 return store.

## Actual consumer closes the precision question

Complete FencePostDesign_SelectTallestAdjacentProduct B4B0E0 retains actual adjacent ring/eligibility/product/design operations. It physically receives ECX plus two pointer stackwords, returns EAX product+8 or original empty key, and exits RET8. The optional second output copies12 DWORDs only after successful final lookup. The decompiler's first float* argument is a mixed layout in actual instructions: two binary32 coordinate lanes plus one byte; FISTP uses ambient control state.

Both actual height calls B4B208/B4B328 FST a binary32 local WITHOUT popping ST0. They then FLD previous rounded binary32 best, FXCH/FCOMIP and JBE to skip lower/equal/unordered. The candidate is therefore still extended during comparison; the stored winning copy becomes the next rounded best. Initial best is binary32 minus1. Replacing this with two rounded C# floats changes some winners. Example: prior base2^24 versus eligible new base2^24 plus native1; under the usual sufficient x87 precision the new extended candidate can exceed rounded prior, while immediate binary32 addition rounds equal. This counterexample does not assert gameplay asset ranges or measured ambient x87 precision.

Current code loads actual mesh bounds, uses float0.001, immediate binary32 addition, projected HasWall policy and unstamped managed product/lot caches. Its missing geometry fallback3 is distinct from null native lookup0, and its negative-infinity strict-taller loops differ from this consumer's initial minus1. All are current/native differences, not repaired or certified equivalent here. Complete native default creation, scheduling, cache lifetime and full current planning equivalence remain outside these bounded functions.

## Canonical evidence

- [FenceProduct_GetPostBoundsHeight ASM](../../evidence/native/functions/00C94560_FenceProduct_GetPostBoundsHeight.asm) ([C](../../evidence/native/functions/00C94560_FenceProduct_GetPostBoundsHeight.c))
- [FenceCatalog_GetPostHeight ASM](../../evidence/native/functions/00C5BC60_FenceCatalog_GetPostHeight.asm) ([C](../../evidence/native/functions/00C5BC60_FenceCatalog_GetPostHeight.c))
- [FencePostDesign_SelectTallestAdjacentProduct ASM](../../evidence/native/functions/00B4B0E0_FencePostDesign_SelectTallestAdjacentProduct.asm) ([C](../../evidence/native/functions/00B4B0E0_FencePostDesign_SelectTallestAdjacentProduct.c))
- [CFEN producer ASM](../../evidence/native/functions/00C94C00_FenceProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C94C00_FenceProduct_ReadCatalog.c))
- [Proxy bounds producer ASM](../../evidence/native/functions/0093B800_VisualProxy_ReadAlignedBounds.asm) ([C](../../evidence/native/functions/0093B800_VisualProxy_ReadAlignedBounds.c))
- [Default-enabled catalog lookup ASM](../../evidence/native/functions/00C8E760_ProductCatalog_LookupFenceProduct.asm) ([C](../../evidence/native/functions/00C8E760_ProductCatalog_LookupFenceProduct.c))
- [Original height constants](../../evidence/native/data/fence-post-height-constants.txt): F9E510 binary64 0.001, FA2B9C binary32 3,010793A8 binary32 1.
