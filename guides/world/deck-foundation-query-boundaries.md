# PC 1.67 Deck foundation existence and local-point queries

These two complete original native bodies are the lower query boundaries behind
original World services. They retain their inferred stored prototypes; physical
instructions establish the observations below. The canonical C is the actual
saved Ghidra rendering, including its leading/trailing framing and annotations.
The ASM uses actual saved Listing instruction text with pristine PE bytes. Explicit
`.byte` records retain alignment that belongs to neither defined body. No new
instruction, type, prototype, function-body or flow repair is implied.

| Entry | Saved defined extent | Paired evidence |
| --- | --- | --- |
| `00AB6AC0` Lot_ContainsFoundationCatalogProduct | `AB6AC0..AB6BC9` and `AB6BD0..AB6C9A`;469 owned bytes/159 instructions;475 envelope bytes | [ASM](../../evidence/native/functions/00AB6AC0_Lot_ContainsFoundationCatalogProduct.asm) ([C](../../evidence/native/functions/00AB6AC0_Lot_ContainsFoundationCatalogProduct.c)) |
| `00AFEE10` Lot_QueryDeckFoundationAtLocalPoint | `AFEE10..AFF154`;837 owned/envelope bytes/254 instructions | [ASM](../../evidence/native/functions/00AFEE10_Lot_QueryDeckFoundationAtLocalPoint.asm) ([C](../../evidence/native/functions/00AFEE10_Lot_QueryDeckFoundationAtLocalPoint.c)) |

The six bytes at `AB6BCA..AB6BCF` are outside the disjoint saved body. Both
functions return Boolean truth in AL; unrelated upper EAX bits are not a Boolean
contract. The existence body physically consumes the lot pointer in ECX and ends
with plain RET. The point body consumes two stack words (lot and a point record)
and uses plain RET. A stored `undefined4`, `int`, `void*` or `float*` projection
does not reconstruct original source classes or change these physical facts.

## Catalog-selected existence

The existence query first checks retained lot storage at `lot+0x2A4`. A null
pointer returns AL zero. It constructs a temporary ID list through `C8FFF0` with
literal selector calls in order `2,1,7,8,9`. The complete caller then traverses
retained compressed marker storage through `AB3EB0`. Its visible index handling
uses tag `0x8000`; each selected value provides four UInt32 product words. A word
matching an item in the temporary list returns AL one; exhausting the scan
returns AL zero. The nonnull temporary list reaches cleanup call `004E44E0`.

These caller observations do not establish every catalog selector's complete
producer, compressed iterator contract, allocation-failure behavior or concrete
cleanup implementation. The scan is not a current level-zero whole-cell mask,
Pool-type filter, material selection or height query. The meaningful name
identifies this caller's product-existence operation without assigning a recovered
class layout or replacing the original catalog authority.

## Local-point bounds and dispatch

The point uses local X and Z at offsets0/4 and a signed Int32 level word at8.
The body rejects coordinates below zero or above retained lot dimensions at
`+0x174/+0x178`; the upper comparisons admit equality. Signed level comparisons
use retained lower/upper limits at `+0x17C/+0x180`. These are the actual comparison
branches, rather than a new finite-input sanitizer or current rendering bounds.

The body floors X and Z and computes fractions. Multiplication by binary32 -1
and MAXPS form the magnitude comparisons; CMPLEPS/MOVMSKPS use original binary32
`2^-16`. Original half-cell and increment words remain in the
[necessary data](../../evidence/native/deck-foundation-query-data.tsv).

- Near integer X and Z dispatch to vertex query `AFEB00`.
- The cell-center path uses `AF7730` and query `AFEC10`.
- Other interior fractions use the existing
  [cell/quadrant encoder](../../evidence/native/functions/00AF7DB0_LotLocation_EncodeCellAndQuadrant.c) and `AFECD0`.
- Boundary paths construct endpoints and use `C45F20`/`C45FB0`; a zero AL result
  from the first `AFECD0` query admits the second one. A successful first query
  returns true in AL.

The [fraction classifier](../../evidence/native/functions/00AF7BC0_LotLocation_SelectQuadrantFromFraction.c) and cell
encoder establish selected fractional/encoding behavior separately. This caller
does not establish all vertex, center, quarter, catalog or boundary-helper
semantics. Its decompiler SIMD lanes and packed stack projections remain visible;
they are not recovered original source structures.

The selected vertex/full-cell/quarter children are now established in
[deck/foundation point selection](deck-foundation-point-selection.md): all use
strict mode0 and reject kinds3/6/5, with an important unresolved-product true
branch. This is distinct from platform centre mode1 and a positive catalog test.

The shared `AF7730` encoder is now independently covered in
[platform point selection](platform-point-selection.md#centre-encoder-and-the-fourth-byte):
three output bytes, low level byte, unchanged fourth byte and qualified x87
rounding. The platform kind5 leaves in that guide remain distinct from the
generic `AFEB00/AFEC10/AFECD0` contract linked above.

## Original service and current preparation limits

Existing original registered World adapters retain bounded canonical windows:
[DoesFoundationExist](../../evidence/native/functions/007869C0_ScriptCore_World_World_DoesFoundationExistOnLotImpl.asm) ([C](../../evidence/native/functions/007869C0_ScriptCore_World_World_DoesFoundationExistOnLotImpl.c)) performs lot
lookup before the existence query;
[IsDeckFoundationAtLotLoc](../../evidence/native/functions/007869F0_ScriptCore_World_World_IsDeckFoundationAtLotLocImpl.asm) ([C](../../evidence/native/functions/007869F0_ScriptCore_World_World_IsDeckFoundationAtLotLocImpl.c)) forwards
the lot-local point to the point query. Those adapter windows are not newly
claimed complete defined functions. Original ScriptCore World wrappers retain
native forwarding authority. The existing
[Deck storage and resource stream chain](lot-layer-resource-streams.md) establishes
four-word transport and producer/consumer boundaries separately.

Current presentation preparation can select diagnostic CellMajor markers, admit
any nonempty level-zero cell, return a fixed0.65 support lift with0.05 corner
proximity, build a half-grid boundary ledger, and choose Floor/Wall textures and
rail suppression. These are current observed implementation choices without inferred human acceptance; neither complete native
query proves those renderer rules or original height/material/retirement parity.
Original managed gameplay policy and native render/query services remain their
actual authorities. No managed duplicate is identified or removed by this query
publication. Selected point children are covered by the companion contract;
complete renderer emitters and runtime acceptance remain separate work.

Four actual MCP CMPLEPS renderings contain an extra empty trailing operand. The
saved Listing text printed in ASM has the same opcode and operands without that
empty display slot. Every instruction address and original byte tuple matches
the saved defined body; the transport receipts remain unchanged. This formatting
difference is not an instruction or flow change.


## Selected-quarter edit, compatibility and live compressed storage

Original reference identity is centralized in the main README. Existing functions were inspected in explicit /TS3W.exe through readonly GhidrAssist; stored analyst annotations remain intact. No function-body/prototype repair, analysis, save or original-byte change was performed. Physical registers/stack/AL and original instructions qualify misleading decompiler types. The following original contracts do not certify OpenTS3 implementation or execution.

**CA7BD0** [ASM](../../evidence/native/functions/00CA7BD0_FUN_00ca7bd0.asm) ([C](../../evidence/native/functions/00CA7BD0_FUN_00ca7bd0.c)) — cdecl seven stackwords/plainRETvoid. Kind3/6 decrements markerlevel. Mode0 rectangle uses highcorner-minus1, AF6BF0/AF64E0/D1E4B0/AF64A0/AF6490; iterator yields quarter masks1,2,4,8. Alternate mode uses a separate iterator and is not reconstructed as a guessed geometric shape.

**D1E4B0** [ASM](../../evidence/native/functions/00D1E4B0_FUN_00d1e4b0.asm) ([C](../../evidence/native/functions/00D1E4B0_FUN_00d1e4b0.c)) — Physical ECX command receiver plus lot/packed-cell/target-ID, void RET0C. Each selected bit1/2/4/8 reads AB67D0, skips only equal oldID, writes AC4530 before appending12byte undo record. New and old display prices narrow toF32; erase oldprice multipliesF32 0.8, cost uses quarter0.25 and virtual get30/set2C. Below-ground deletion may return early for non3/6/5 oldkind. Global bank reread, x87/virtual/fault/undo lifetime remain qualified.

**AC4530** [ASM](../../evidence/native/functions/00AC4530_FUN_00ac4530.asm) ([C](../../evidence/native/functions/00AC4530_FUN_00ac4530.c)) — ECX lot plus targetID/packedcell, void RET8. Reads four lanes through AB3E50, changes selected mask lanes independently and writes AC2ED0 at signedlevel-minus-lotminimum. Original pool/fountain/platform flags drive A91AA0 and dirty fields2BC/2C0. Does not by itself establish undo/public event ownership.

**AB67D0** [ASM](../../evidence/native/functions/00AB67D0_Lot_ResolveCompatibleCellRegion.asm) ([C](../../evidence/native/functions/00AB67D0_Lot_ResolveCompatibleCellRegion.c)) — ECX lot, packedcell pointer and lowbyte allowPartial, RET8 EAXrawID/-1. Bounds check X/Z and signedlevels; selected missingFFFFFFFF rejects when strict. B02820 compares compatible catalog kinds, not only exact product identity. Partial mode returns prior valid ID at incompatibility. Child pointers/initialization/failure lifetime remain open.

**B02820** [ASM](../../evidence/native/functions/00B02820_FUN_00b02820.asm) ([C](../../evidence/native/functions/00B02820_FUN_00b02820.c)) — cdecl two raw IDs, ALBool/plainRET. Equal IDs true. Otherwise both nonFFFFFFFF must resolve via C8BBB0 and kindDWORD88 must agree. ID0 has no absence shortcut; caller AB67D0 handles selected missinglane before compatibility. Global bank initialization/provider population unresolved.

**AFE300** [ASM](../../evidence/native/functions/00AFE300_LotRegion_MatchesTypeCode.asm) ([C](../../evidence/native/functions/00AFE300_LotRegion_MatchesTypeCode.c)) — cdecl rawID/requestedtype, ALBool/plainRET. Only FFFFFFFF rejects before C8BBB0. Resolved rowDWORD88 compared to requested type. No service-null guard in this selected body; do not invent safe initialization semantics.

**C8BBB0** [ASM](../../evidence/native/functions/00C8BBB0_FUN_00c8bbb0.asm) ([C](../../evidence/native/functions/00C8BBB0_FUN_00c8bbb0.c)) — ECX nativebank plus rawID, RET4 EAXproductptr/null. Walks24byte entries fromAC toB0, candidate pointer atentry10, compares 839640 DWORD08 to fullrawID, first match wins. Bank insertion/order and resource-key relationship remain open.

**839640** [ASM](../../evidence/native/functions/00839640_FUN_00839640.asm) ([C](../../evidence/native/functions/00839640_FUN_00839640.c)) — Physical ECX pointer, no stackword/plainRET, EAX DWORD08. Stored fastcall display is not evidence of a second meaningful register argument. Field is not established as resource-instance low32 or a string hash.

**AB3E50** [ASM](../../evidence/native/functions/00AB3E50_FUN_00ab3e50.asm) ([C](../../evidence/native/functions/00AB3E50_FUN_00ab3e50.c)) — ECX compressedgrid plus x/z/storagelevel, RET0C EAXborrowed4wordptr. Blockindex=((field20*level+arithmetic(x>>2))*field24+arithmetic(z>>2)); UInt16tag48. Bit8000 chooses uniform38+blockindex*16, else dense28+((z&3)+((x&3)+tag*4)*4)*16. Bounds supplied by caller, no own guard or borrowed lifetime extension.

**AC2ED0** [ASM](../../evidence/native/functions/00AC2ED0_FUN_00ac2ed0.asm) ([C](../../evidence/native/functions/00AC2ED0_FUN_00ac2ed0.c)) — ECX compressedgrid plus fourwords(valuesptr,x,z,storagelevel), void RET10. Same block/tag/cell selection as AB3E50; uniform unchanged4word returns; changeduniform expands viaAC08B0/AB42D0 then copies fourDWORDs. Allocator/refcounts/partialfault/concurrency remain open.

The existing AF6BF0 constructor starts mask1; AF64A0 shifts1→2→4→8, then advances signed-byte Z, X and level in the rectangle. AF64E0 exposes current and AF6490 checks current level beyond end. These retained canonical pairs are reused, not exported again. Accordingly a full rectangular fill compares/writes each selected quarter: quarter0 already matching does not cancel differing quarters1..3. Native cost updates happen for each changed quarter; the command append and dirty notification have their own ordered ownership and are not a CLR whole-cell transaction.

AB67D0 fullmask resolution is compatible-kind selection, not a uniform-product test. Missing selected FFFFFFFF rejects strict mode before B02820. Different rawIDs that resolve to the same kind may coexist in an admitted cell. Zero has no sentinel shortcut; its meaning depends on actual bank lookup. Original bank insertion, collision/resource identity, service initialization, generic edit admission/removal/undo/funds and complete shape/mode iterator semantics remain open. Exact native F32 constants and source addresses are retained in [quarter/refund data](../../evidence/native/foundation-quarter-and-refund-data.tsv); x87 control and upstream display-price behavior are separate boundaries.

Compressed reader AB3E50 and writer AC2ED0 agree on4x4 block addressing, uniform tag8000 and dense per-cell lane selection. AC4530 reads four words, changes only selected mask lanes and writes the whole vector at signedlevel-minus-lotminimum. Existing AC3140/AC32C0 wire order remains level/X/Z independent of compression. Returning a borrowed native cell pointer does not establish deep immutability, bounds, lifetime, allocator/refcount, partial-fault or concurrency guarantees.

The [four-word growth/copy contract](four-word-grid-growth-and-copying.md) now
closes AC08B0/AB42D0 and their selected insertion/copy helpers. Uniform expansion
fills16new four-word cells with the old uniform value; vector growth defaults to
FFFFFFFF words. Reallocation can invalidate borrowed cell pointers. The original
allocator, grid publication and rollback remain separate boundaries.
