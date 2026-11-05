# Fence, railing and stairs catalog products

Static evidence from original 32-bit PC 1.67 TS3W.exe. Binary identity/export
conventions are in [the native reference](README.md). Names here are analyst
assigned. The actual Ghidra pseudocode contains the reviewed annotations; original
instructions determine field widths, signedness, ABI and return values.

## Factory, storage and interface identity

Factory C8CD90 receives ECX factory plus four physical stack words (RET 0x10),
returns status in AL, clears the second-word output pointer, and selects:

| Resource type | Product | Allocation | Constructor | Reader vtable slot +18 |
| --- | --- | --- | --- | --- |
| 0418FE2A | CFEN fence | 0x180 | C948D0 | C94C00 |
| 04C58103 | CRAL railing | 0xF0 | C962C0 | C96530 |
| 049CA4CD | CSTR stairs | 0x108 | C96E10 | C970E0 |

First/third factory argument roles remain inferred; second output and fourth type
are established by instructions. Unsupported/allocation failures return AL 0.
Products retain through virtual 0; failed optional factory initialization releases
through virtual +4 and clears output. No managed gameplay object is created.
The full function includes other resource-type branches rather than a cropped
three-case excerpt.

Constructors return receiver in EAX, plain RET. Their vtables are 0107CBC4,
0107CF8C and 0107CFB4. Slot +0C is **QueryInterface**, not a writer. The functions
C944C0/C95EE0/C96A30 accept interface IDs 0418FE16/04C58DB1/049CAE8B respectively,
return the receiver for that ID, or tail-delegate to the base. Resource-type and
interface-ID constants are different. The necessary
[vtable/default bytes](data/build-product-vtables-and-defaults.txt) establish
these joins; the stairs wall-cap sentinel is PE virtual zero-fill at 011EC8D0.

## Reader contract

All three readers take ECX product and one reader stack word, RET 4, AL status.
UInt32 version checks use unsigned conditions; no maximum version guard is shown.

| Reader | Reference keys | Presets | Successful status |
| --- | --- | --- | --- |
| CFEN C94C00 | table from v5; otherwise three inline full keys | from v7 | literal AL 1 |
| CRAL C96530 | table from v2; otherwise three inline full keys | from v3 | accumulated stream byte |
| CSTR C970E0 | table from v2; otherwise inline model/catalog keys | from v3 | accumulated stream byte |

Preset rows retain pointer plus full UInt32 ID in 8-byte rows. Each serialized
row consumes a Boolean, UInt32 buffer byte count, buffer and UInt32 ID. The
Boolean is consumed, but the parser call uses constant 1; that body does not
select a parser from the Boolean. Allocation/preset/key-table failure rejects.
All readers delegate common fields to C93100. See the
[common catalog contract](catalog-template-contracts.md) for the separate reader.

CFEN resolves three source keys to MODL: regular and diagonal must succeed;
post failure selects the regular source for post bounds. Tile spacing is UInt32
+E8. Before v6 byte +150 is false; from v6 a byte is normalized to Boolean.
Version >=9 reads byte +152, words +154/+158/+15C/+160 and an extra-section gate;
v10 also reads byte +153. Version 8 unconditionally reads the extra section,
whereas >=9 enters it only for a nonzero gate: byte +151 and ordinal key +D8.
CanWalkOver +150 true clears base +90 bit 0x100. Three bounds reads must succeed:
post-or-regular into +F0, regular into +110, diagonal into +130. Final AL is literal
1 even though generic reads accumulated status; explicit lookup failures return 0.
The constructor defaults spacing 1; bytes 150/151/153 false, 152 true; scale words
154/158 have bits 3F800000, offsets 15C/160 are zero.

CRAL resolves **all three** keys into +88/+98/+A8; post is required. Bounds from
the first source into +C0 must succeed. CSTR requires the first two model keys;
its wall-cap key is accepted without lookup only when all four words equal the
zero sentinel, otherwise typed lookup must succeed. Four further catalog keys
are retained in wire order at +B8,+D8,+C8,+E8. CRAL/CSTR preserve accumulated stream
status across cleanup and return it in AL rather than blindly copying CFEN's 1.

## Typed proxy selection and bounds

0093B730 loads the source through global resource manager 4AFE80, queries
interface B7B8BAAF, retains it, invokes 0093B6A0 and releases interface/resource.
0093B6A0 walks physical 20-byte entries and their 16-byte key arrays, compares
key +8 to requested type and copies all four words of the **first** match.
Its IMUL 66666667/SAR/sign adjustment implements signed byte-span division by20;
loop counters then use unsigned comparisons. Build readers request exact MODL
01661233; these bodies establish no MLOD fallback and no whole-TGI-pool policy.

0093B800 uses the same acquisition/query lifetime and copies 32 bytes via aligned
SIMD stores: source +38/+3C/+40/+38, then +44/+48/+4C/+44. Fourth lanes repeat first
lanes; they are not 1.0. Output requires 16-byte alignment. The data is bounds-shaped
and consumed as catalog bounds, while exact min/max producer interpretation is
not established here. Helpers assume that a successful load supplies the queried
interface: there is no null-interface rejection before dereferencing it. Missing
manager or failed load returns AL 0; no safe fallback is fabricated for query failure.

## Complete canonical functions

- `00c94c00 FenceProduct_ReadCatalog`: [ASM](functions/00C94C00_FenceProduct_ReadCatalog.asm) ([annotated Ghidra pseudocode](functions/00C94C00_FenceProduct_ReadCatalog.c)).
- `00c96530 RailingProduct_ReadCatalog`: [ASM](functions/00C96530_RailingProduct_ReadCatalog.asm) ([annotated Ghidra pseudocode](functions/00C96530_RailingProduct_ReadCatalog.c)).
- `00c970e0 StairsProduct_ReadCatalog`: [ASM](functions/00C970E0_StairsProduct_ReadCatalog.asm) ([annotated Ghidra pseudocode](functions/00C970E0_StairsProduct_ReadCatalog.c)).
- `00c948d0 FenceProduct_Construct`: [ASM](functions/00C948D0_FenceProduct_Construct.asm) ([annotated Ghidra pseudocode](functions/00C948D0_FenceProduct_Construct.c)).
- `00c962c0 RailingProduct_Construct`: [ASM](functions/00C962C0_RailingProduct_Construct.asm) ([annotated Ghidra pseudocode](functions/00C962C0_RailingProduct_Construct.c)).
- `00c96e10 StairsProduct_Construct`: [ASM](functions/00C96E10_StairsProduct_Construct.asm) ([annotated Ghidra pseudocode](functions/00C96E10_StairsProduct_Construct.c)).
- `00c8cd90 CatalogProductFactory_CreateByResourceType`: [ASM](functions/00C8CD90_CatalogProductFactory_CreateByResourceType.asm) ([annotated Ghidra pseudocode](functions/00C8CD90_CatalogProductFactory_CreateByResourceType.c)).
- `00c944c0 FenceProduct_QueryInterface`: [ASM](functions/00C944C0_FenceProduct_QueryInterface.asm) ([annotated Ghidra pseudocode](functions/00C944C0_FenceProduct_QueryInterface.c)).
- `00c95ee0 RailingProduct_QueryInterface`: [ASM](functions/00C95EE0_RailingProduct_QueryInterface.asm) ([annotated Ghidra pseudocode](functions/00C95EE0_RailingProduct_QueryInterface.c)).
- `00c96a30 StairsProduct_QueryInterface`: [ASM](functions/00C96A30_StairsProduct_QueryInterface.asm) ([annotated Ghidra pseudocode](functions/00C96A30_StairsProduct_QueryInterface.c)).
- `0093b6a0 VisualProxy_FindFirstResourceOfType`: [ASM](functions/0093B6A0_VisualProxy_FindFirstResourceOfType.asm) ([annotated Ghidra pseudocode](functions/0093B6A0_VisualProxy_FindFirstResourceOfType.c)).
- `0093b730 VisualProxy_ResolveTypedResource`: [ASM](functions/0093B730_VisualProxy_ResolveTypedResource.asm) ([annotated Ghidra pseudocode](functions/0093B730_VisualProxy_ResolveTypedResource.c)).
- `0093b800 VisualProxy_ReadAlignedBounds`: [ASM](functions/0093B800_VisualProxy_ReadAlignedBounds.asm) ([annotated Ghidra pseudocode](functions/0093B800_VisualProxy_ReadAlignedBounds.c)).

## Limits

These are static product-storage/selection contracts. Original wire writers,
complete preset consumers, all resource-manager providers, final geometry/GPU
residency and stair/fence/railing gameplay placement are not inferred from them.
QueryInterface is not serialization. The CFEN function has eight nonowned internal
alignment bytes C94D48..C94D4F, explicitly retained in its full ASM envelope;
function ownership follows real flow/RET boundaries. All selected bytes and data
were checked against the pristine PE, including mapped zero-fill. No execution,
rendering acceptance, concurrency measurement or cross-platform test is claimed.
