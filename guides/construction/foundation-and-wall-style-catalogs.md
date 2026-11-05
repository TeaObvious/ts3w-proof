# PC1.67 foundation and wall-style catalog products

Static original instructions and actual annotated Ghidra C only. Six complete
bodies743instructions/2451owned bytes/2454envelope bytes; Foundation reader has
three explicitly nonowned alignment bytes. Original bytes unchanged; database saved
clean. No product/runtime test or new managed policy is claimed.

| Entry | Role | Canonical complete evidence |
| --- | --- | --- |
| `00c93c80` | Foundation constructor | [ASM](../../evidence/native/functions/00C93C80_FoundationProduct_Construct.asm) ([C](../../evidence/native/functions/00C93C80_FoundationProduct_Construct.c)) |
| `00c93f40` | Foundation reader | [ASM](../../evidence/native/functions/00C93F40_FoundationProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C93F40_FoundationProduct_ReadCatalog.c)) |
| `00c998e0` | Partition constructor | [ASM](../../evidence/native/functions/00C998E0_PartitionProduct_Construct.asm) ([C](../../evidence/native/functions/00C998E0_PartitionProduct_Construct.c)) |
| `00c99740` | Partition reader | [ASM](../../evidence/native/functions/00C99740_PartitionProduct_ReadFields.asm) ([C](../../evidence/native/functions/00C99740_PartitionProduct_ReadFields.c)) |
| `00c9b1d0` | Wall-style constructor | [ASM](../../evidence/native/functions/00C9B1D0_WallStyleProduct_Construct.asm) ([C](../../evidence/native/functions/00C9B1D0_WallStyleProduct_Construct.c)) |
| `00c9b220` | Wall-style reader | [ASM](../../evidence/native/functions/00C9B220_WallStyleProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C9B220_WallStyleProduct_ReadCatalog.c)) |

[Original vtable bytes](../../evidence/native/data/foundation-wall-vtables.txt)
join each actual constructor to its +18hex reader. Factory C8CD90 already has its
canonical pair and maps resource316C78F2/9151E6BC to100/C0hex products.

All constructors take ECX and no stack arguments, plainRET/EAX same receiver.
Readers take ECX+one reader word and RET4; Boolean status is AL only. Actual Ghidra
counts include this: constructors1/readers2. Field offsets are byte offsets.

Foundation version<2 uses four inline keys90/A0/C0/D0;>=2 uses reference table and
rejects invalid ordinals. Version>=3 additionally consumes optional proxy key and
requires typed MODL01661233 resolution for a nonzero type lane. Version>=4 reads
kind88 before common fields, otherwise after. Only exact kinds7/8/9 have stilted
8-byte preset rows with one-byte flag,UInt32 count/buffer length/full ID and preset
parser flag1. E0/E4/shapeE8 are rawUInt32; constructor shapeFFFFFFFF, keys zero.
Current s3pi VPXY>=4 and stilt-kind>=7 must not be inferred original equivalents.

Partition reader has its own UInt32 layout version before common fields, then
walltype88/partition8C/flags90/span94/blocked98/adjacent9C/toolModeA0/toolUsageA4.
Inner version<2 ORs flagsE000. Defaults are0/FFFFFFFF/11FFF/FFFFFFFF/7/0/1/0.
Wall constructor overrides partition0,span1,adjacent4 via actual setters and sets
default keyA8..B4 zero/thicknessB8FFFFFFFF.

Wall reader outer version<2 reads inline key;>=2 resolves UInt32 ordinal from
16-byte reference table with unsigned bounds check. It copies all four words
without nonzero/type/presence checks. Thickness is rawUInt32. Parent status is not
directly tested; success returns literalAL1, failureAL0. C9B220 flow endsC9B39C;
following threeCC bytes and independent QueryInterface codeC9B3A0 are outside it.

These bodies do not establish current package scans, short-ID collisions, labels,
cache keys, cancellation/exception behavior, group fallback, native product-bank
population, retained scene ownership or complete render-bucket selection.


## Live kind lookup and selected-quarter consumer

The [deck query/edit guide](../world/deck-foundation-query-boundaries.md#selected-quarter-edit-compatibility-and-live-compressed-storage) now joins C8BBB0/839640 native bank search, AFE300 kind comparison, B02820 compatible-kind relation and D1E4B0 quarter edit/cost consumer. Only FFFFFFFF is the selected absence sentinel; ID0 goes through the bank. C8BBB0 takes the first matching DWORD08 in its24-byte-entry vector. This does not establish which resource-key lane created the ID, bank insertion/collision precedence, nullable catalog defaults or initialization synchronization. Existing C93C80/C93F40 canonical pairs and their version3 proxy/exact7/8/9 preset boundaries remain authoritative; no decoder equivalence follows from a type rename or a pool-admission correction. Earlier saved-DB observations are historical; these additions used readonly existing-program inspection and performed no DB save.
