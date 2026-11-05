# Construction generic scalar and authored preset queries

Original shipped PC1.67 static instructions and actual annotated Ghidra C.
Analyst-assigned helper names are not recovered symbols. Native registration
CE9890 dispatches operation0..39 and uses selected in/out lanes; there is no global
clear. Its existing [ASM](../../evidence/native/functions/00CE9890_ScriptCore_UserToolUtils_UserToolUtils_ProductGenericImpl.asm) ([annotated C](../../evidence/native/functions/00CE9890_ScriptCore_UserToolUtils_UserToolUtils_ProductGenericImpl.c)) preserves the full
seven-argument cdecl entry and forty-way operation table.

| Helper | Actual complete pair | Instruction contract |
| --- | --- | --- |
| Pattern ID→ordinal | [ASM C99DD0](../../evidence/native/functions/00C99DD0_PatternProduct_ResolveFullPresetIdToOrdinal.asm) ([C](../../evidence/native/functions/00C99DD0_PatternProduct_ResolveFullPresetIdToOrdinal.c)) | 66ins/182B, ECX+UInt32ID/RET4; bit00800000clear scans authored20-byte rows/full ID+4; set selects existing kind2 custom rows; missingFFFFFFFF. |
| Fence ordinal→ID | [ASM C94830](../../evidence/native/functions/00C94830_FenceProduct_GetPresetIdentifier.asm) ([C](../../evidence/native/functions/00C94830_FenceProduct_GetPresetIdentifier.c)) | 50ins/147B, ECX+UInt32ordinal/RET4; authored8-byte rows+4 or adjusted existing kind4 custom row+10hex; missing0. |
| Stair ordinal→ID | [ASM C96D70](../../evidence/native/functions/00C96D70_StairProduct_GetPresetIdentifier.asm) ([C](../../evidence/native/functions/00C96D70_StairProduct_GetPresetIdentifier.c)) | 50ins/147B; same shape with vectorF8..FC/kind5; missing0. |
| Foundation ID→ordinal | [ASM C93B30](../../evidence/native/functions/00C93B30_FoundationProduct_ResolveFullPresetIdToOrdinal.asm) ([C](../../evidence/native/functions/00C93B30_FoundationProduct_ResolveFullPresetIdToOrdinal.c)) | 61ins/163ownedB, two body ranges; three intervening alignment bytes excluded; full ID/kind7 orFFFFFFFF. |
| Foundation ordinal→ID | [ASM C93BE0](../../evidence/native/functions/00C93BE0_FoundationProduct_GetPresetIdentifier.asm) ([C](../../evidence/native/functions/00C93BE0_FoundationProduct_GetPresetIdentifier.c)) | 50ins/147B; authored8-byte EC..F0 row+4 or adjusted kind7 custom row+10hex; missing0. |
| Foundation count | [ASM C93E00](../../evidence/native/functions/00C93E00_FoundationProduct_CountAuthoredAndInstalledPresets.asm) ([C](../../evidence/native/functions/00C93E00_FoundationProduct_CountAuthoredAndInstalledPresets.c)) | 37ins/95B; ECX only/plainRET/fullEAX; authored count plus existing kind7 rows; acquired collection released. |
| Shared terrain-brush interface | [ASM C93450](../../evidence/native/functions/00C93450_TerrainBrushProduct_QueryInterface.asm) ([C](../../evidence/native/functions/00C93450_TerrainBrushProduct_QueryInterface.c)) | 7ins/25B; ECX+UInt32interface/RET4;04ED4893 returns receiver, else tailjump base interface C92FE0. |

All seven actual pairs total321instructions/906ownedbytes, with one3-byte
nonowned alignment gap in the foundation lookup envelope. Retained collection
acquisition uses productkey+8/allowCreate0 and releases its reference on exits.
Authored/custom selection, full32-bit IDs and ordinal semantics remain separate;
object C97D70 scans authored before its bit gate and is a different contract.

[Original supporting data](../../evidence/native/data/construction-product-query-support.tsv)
retains the exact40-way switch,25-byte paint/sculpt/water interface wrappers,
four36-byte vtables and three-byte ALtrue helper. Factory
[ASM C8CD90](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.asm) ([C](../../evidence/native/functions/00C8CD90_CatalogProductFactory_CreateByResourceType.c)) maps04ED4BB2/04B30669/060B390C
into paint/sculpt/water constructors. Their vtables+C route through the25-byte
wrappers to C93450; all slot20 values are513D50 (B001C3). Thus
[price ASM CEF6B0](../../evidence/native/functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.asm) ([C](../../evidence/native/functions/00CEF6B0_CatalogProduct_ComputeDisplayPrice.c)) takes Build scaling and bypasses
floor for all three brushes. This does not establish final stroke/funds rounding.
The short wrapper regions are supporting bytes, not fabricated function/C pairs.

CE9890 operation6 FLD/FSTP preserves common+70 as Single; operation7 is the
UInt32 fire value+78, rather than UI sort priority+7C. Operation25 reads paint+D4;
28 reads common+80;39 writes only the64-bit name key. Preset operation20 starts
FFFFFFFF but applicable construction helpers return0 on missing row. Original
[managed CIL and actual annotated C#](../../evidence/managed/selected/construction-product-queries/README.md)
retain exact operation IDs, signatures, typed lane returns and original managed
wrapping ownership. No target execution, complete product/preset payload admission,
localization fallback or custom store installation/mutation closure is claimed.
