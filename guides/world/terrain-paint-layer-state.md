# Terrain paint layer state, selection and byte mixing

Original shipped PC1.67 TS3W.exe. Names are analyst roles, not recovered symbols.
Static evidence only; no original runtime paint, compiler or game test is claimed.

## Complete canonical original functions

| Address | Verified role | Original instructions and actual annotated Ghidra C |
| --- | --- | --- |
| 00aeff20 | LotTerrain_SelectPaintLayer | [ASM](../../evidence/native/functions/00AEFF20_LotTerrain_SelectPaintLayer.asm) ([C](../../evidence/native/functions/00AEFF20_LotTerrain_SelectPaintLayer.c)) |
| 00af0150 | LotTerrain_AddPaintAtSample | [ASM](../../evidence/native/functions/00AF0150_LotTerrain_AddPaintAtSample.asm) ([C](../../evidence/native/functions/00AF0150_LotTerrain_AddPaintAtSample.c)) |
| 00af0290 | LotTerrain_DiminishPaintAtSample | [ASM](../../evidence/native/functions/00AF0290_LotTerrain_DiminishPaintAtSample.asm) ([C](../../evidence/native/functions/00AF0290_LotTerrain_DiminishPaintAtSample.c)) |
| 00aef830 | LotTerrain_NormalizePaintAtSample | [ASM](../../evidence/native/functions/00AEF830_LotTerrain_NormalizePaintAtSample.asm) ([C](../../evidence/native/functions/00AEF830_LotTerrain_NormalizePaintAtSample.c)) |
| 00aeeb10 | LotTerrain_SetPaintAlpha | [ASM](../../evidence/native/functions/00AEEB10_LotTerrain_SetPaintAlpha.asm) ([C](../../evidence/native/functions/00AEEB10_LotTerrain_SetPaintAlpha.c)) |
| 00aea6f0 | LotTerrain_HasAnyPaintAtSample | [ASM](../../evidence/native/functions/00AEA6F0_LotTerrain_HasAnyPaintAtSample.asm) ([C](../../evidence/native/functions/00AEA6F0_LotTerrain_HasAnyPaintAtSample.c)) |
| 00ae9f20 | LotTerrain_SelectLeastUsedPaint | [ASM](../../evidence/native/functions/00AE9F20_LotTerrain_SelectLeastUsedPaint.asm) ([C](../../evidence/native/functions/00AE9F20_LotTerrain_SelectLeastUsedPaint.c)) |
| 00aee9e0 | LotTerrain_RebuildTotalPaintAlpha | [ASM](../../evidence/native/functions/00AEE9E0_LotTerrain_RebuildTotalPaintAlpha.asm) ([C](../../evidence/native/functions/00AEE9E0_LotTerrain_RebuildTotalPaintAlpha.c)) |
| 00aee740 | ByteBlockGrid_SetDimensions | [ASM](../../evidence/native/functions/00AEE740_ByteBlockGrid_SetDimensions.asm) ([C](../../evidence/native/functions/00AEE740_ByteBlockGrid_SetDimensions.c)) |
| 00aea300 | LotTerrain_GetPaintAlpha | [ASM](../../evidence/native/functions/00AEA300_LotTerrain_GetPaintAlpha.asm) ([C](../../evidence/native/functions/00AEA300_LotTerrain_GetPaintAlpha.c)) |
| 00aef740 | LotTerrain_EnsurePaintAlphaMaps | [ASM](../../evidence/native/functions/00AEF740_LotTerrain_EnsurePaintAlphaMaps.asm) ([C](../../evidence/native/functions/00AEF740_LotTerrain_EnsurePaintAlphaMaps.c)) |
| 00aebf10 | LotTerrain_Construct | [ASM](../../evidence/native/functions/00AEBF10_LotTerrain_Construct.asm) ([C](../../evidence/native/functions/00AEBF10_LotTerrain_Construct.c)) |
| 00af12f0 | LotTerrain_ReadResources | [ASM](../../evidence/native/functions/00AF12F0_LotTerrain_ReadResources.asm) ([C](../../evidence/native/functions/00AF12F0_LotTerrain_ReadResources.c)) |
| 00d244b0 | PaintUndoable_AddPaintAtSample | [ASM](../../evidence/native/functions/00D244B0_PaintUndoable_AddPaintAtSample.asm) ([C](../../evidence/native/functions/00D244B0_PaintUndoable_AddPaintAtSample.c)) |
| 00d24550 | PaintUndoable_DiminishPaintAtSample | [ASM](../../evidence/native/functions/00D24550_PaintUndoable_DiminishPaintAtSample.asm) ([C](../../evidence/native/functions/00D24550_PaintUndoable_DiminishPaintAtSample.c)) |
| 00ae9bf0 | LotTerrain_BindLot | [ASM](../../evidence/native/functions/00AE9BF0_LotTerrain_BindLot.asm) ([C](../../evidence/native/functions/00AE9BF0_LotTerrain_BindLot.c)) |
| 00cee1e0 | LotPaintTool_AddSample | [ASM](../../evidence/native/functions/00CEE1E0_LotPaintTool_AddSample.asm) ([C](../../evidence/native/functions/00CEE1E0_LotPaintTool_AddSample.c)) |
| 00af0f20 | LotTerrain_WriteResources | [ASM](../../evidence/native/functions/00AF0F20_LotTerrain_WriteResources.asm) ([C](../../evidence/native/functions/00AF0F20_LotTerrain_WriteResources.c)) |

## State and inputs

Terrain+30/34 is the ordered vector of18hex-byte paint rows: a16-byte resource
key, DWORD usage at+10 and remaining row word. Terrain+60/64 holds corresponding
compressed alpha-map pointers; +18 is cliff index, FFFFFFFF means absent. Bind
sets sample dimensions1C/20 to4*lotWidth+1 and4*lotDepth+1. Constructor sets cap
E8 toFFFFFFFF. Bind reads Config/MaxPaintsPerLot with that value as default;
per-layer allocation capacity is not an original hard16/32 limit.

AF12F0 stores each loaded row index through key-map AEB730's returned value.
Later duplicate full keys therefore replace the lookup index while all rows
remain ordered. Existing-key selection returns the last indexed row, not a
linear first IndexOf match. Native source/provider and legacy conversion remain
in that enclosing reader; this is a selected state join, not another wire parser.

## Selection and replacement

AEFF20 is thiscall key/status-record, RET8, EAX full UInt32 layer index.

1. Existing key: status1 and its retained map index; no replacement.
2. Otherwise first signed usage<=0 in stored order: status3. This first scan
   **includes the cliff row**; it has no active-base exclusion test.
3. Otherwise, if unsigned row count<capE8, append: status2.
4. Otherwise AE9F20 selects least signed usage, status3. This fallback excludes
   a positive-used cliff, uses strict less-than and thus keeps the first equal
   candidate. No eligible row returnsFFFFFFFF, which is not a safe native
   success result for the ensuing dereference.

Replacement preserves the old key in the status record, erases that map key,
clears the selected alpha map and usage, then installs the new key/index.
Missing alpha maps grow dynamically through AEF740, with dimensions from the
terrain manager and zero-filled uniform blocks (UInt16 descriptors8000).
Compressed map reads use block=(z>>2)*blockWidth+(x>>2); negative descriptor reads
one uniform byte, otherwise expanded16-byte block+(z&3)*4+(x&3). A decoded flat
row-major representation may expose the same samples on its supported shapes.

## Alpha transitions and normalization

AF0150 takes layer,x,z,addByte,otherDecreaseByte (RET14hex). Target alpha gains
the byte, saturating at255; every other layer—including cliff—loses the supplied
decrease byte to minimum0. Literal1 is verified in CEE1E0's actual call through
D244B0, but is not the generic function's only admitted decrement. Sum excludes
cliff and is a UInt32 accumulator.

AF0290 (RET0C) subtracts its byte from every non-cliff row to minimum0; cliff is
unchanged. It too sums resulting non-cliff values and calls AEF830.

AEF830 reads cliff alpha or0 for absentFFFFFFFF. Available=255-cliff. If unsigned
sum>available, each nonzero non-cliff alpha becomes floor(alpha*available/sum).
The instructions use unsigned DIV after XOR EDX,EDX, not float scaling, signed
division or nearest rounding. The remainder is not redistributed. It finally
writes low byte(min(sum,available)+cliff) to the derived aggregate map+70.
AEE9E0 separately rebuilds that map by adding raw layers and storing the low byte.

AEA6F0's any-paint predicate scans every individual raw map, including cliff;
it does **not** read aggregate+70. Therefore a wrapped total cannot replace it.
D24550 skips charging/mutation on an empty sample and otherwise gates erase
through affordability. Full original funds/undo scheduling is a separate scope.

## Usage, dirty state and persistence

AEEB10 compares prior zero-extended byte with the full requested DWORD, writes
its low byte, increments signed usage only0->nonzero and decrements only
nonzero->0. It extends inclusive dirty boundsB4/B8/BC/C0 with sample x/z. Normal
mixing requests0..255. Arbitrary requested100hex is not interchangeable with0:
the full nonzero request affects usage even though its stored byte is0. Its EAX
residue is not a Boolean status. AEA300's alpha result and AEA6F0 Boolean are AL
only; unrelated upper EAX residues must not become values.

AF0F20 normal save removes exactly-zero-used layers before writing the ordered
paint list, retained usage words, cliff index and alpha resources. It does not
rewrite the cliff word during that cleanup. A stale cliff index can consequently
remain even in a reduced/empty list; do not silently replace it with absent-1.
Later appending an index that equals this retained word reactivates that base
relationship. Full swap/removal and package/resource contracts remain in the
existing writer and [blend-map guide](terrain-blend-maps.md).

Native mutation owns retained managers, compressed maps, dirty bounds and derived
coverage. It has no immutable C# construction snapshots or copy-on-write flags.
A host's snapshots must independently preserve old alpha bytes for renderer,
save and undo consumers. Forwarding the same writable buffers to an earlier
publication is not required by this native state model.

## Boundary examples

- Unused cliff row0 is eligible in the initial reuse scan.
- At cap, equal eligible usage selects the earliest row; a positive cliff is skipped.
- Duplicate loaded keys select the last mapped index; rekey erases the old mapping.
- Cliff64 and two non-cliff alphas200/100 normalize to127/63, leaving one remainder.
- Any raw nonzero layer means any-paint, regardless of derived-byte total wrap.
- Usage0->positive increments once; positive->positive does not.
- Cap0 with no eligible row is unsafe original input, not a fake append/success path.

All canonical envelopes, gaps, raw bytes and instruction counts are checked
against the original executable. Metadata was saved clean without altering bytes.
Whole-tool floating-point placement, private Config-provider binding, unsafe
allocation/failure and runtime mutation/renderer timing remain separate scopes.
