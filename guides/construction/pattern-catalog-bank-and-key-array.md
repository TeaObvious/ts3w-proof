# Pattern-catalog bank lookup and full-key sorted array

Static PC1.67 TS3W.exe contract. Names are analyst-assigned roles. This establishes
original array/key lookup, caller stack contract and borrowed result semantics;
no gameplay execution or portable package/catalog parity is claimed.

## Complete original functions

| Address | Complete canonical pair | Physical interface |
| --- | --- | --- |
|00C8EA70 PatternCatalog_LookupBankProduct|[ASM](../../evidence/native/functions/00C8EA70_PatternCatalog_LookupBankProduct.asm) ([annotated Ghidra C](../../evidence/native/functions/00C8EA70_PatternCatalog_LookupBankProduct.c))|thiscall ECX; bank,key,low-byte allowDefault; RET0C; EAX product/null|
|00C8DB20 ProductCatalogKeyArray_FindExact|[ASM](../../evidence/native/functions/00C8DB20_ProductCatalogKeyArray_FindExact.asm) ([annotated Ghidra C](../../evidence/native/functions/00C8DB20_ProductCatalogKeyArray_FindExact.c))|thiscall ECX; outputRange,key; RET8; EAX same outputRange|
|00C8C950 ProductCatalogKeyArray_LowerBound|[ASM](../../evidence/native/functions/00C8C950_ProductCatalogKeyArray_LowerBound.asm) ([annotated Ghidra C](../../evidence/native/functions/00C8C950_ProductCatalogKeyArray_LowerBound.c))|cdecl begin,end,key,opaqueUnused4; plainRET; EAX row pointer|

All143 instructions/333 bytes are complete contiguous owned bodies with every
return path. Actual annotated C was exported after the instruction-supported
prototypes were corrected; no pseudocode is hand-edited. Original bytes remain
unchanged. No additional table/default data bytes are needed for this contract.

## Actual caller, ABI and key producer

C8DB20 reads header begin/end from+0/+4. AtC8DB20 it MOVZX-loads headerbyte+10hex,
then C8DB2F pushes that word **first**, C8DB30 pushes key, C8DB31 end and C8DB32
begin. CALL C8DB33 followed by ADD ESP,10hex C8DB3A establishes four physical
cdecl words. C8C950 reads only the first three; fourth remains opaque-unused,
without a guessed Boolean/source-language type. Both adapter paths load the
original output pointer intoEAX atC8DB6A/C8DB7B and end RET8. This is a real
output-pointer return, not a void result inferred from an unused EAX consumer.

Original [UserToolUtils_GetProduct bridge ASM](../../evidence/native/functions/00CE61D0_ScriptCore_UserToolUtils_UserToolUtils_GetProductImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/00CE61D0_ScriptCore_UserToolUtils_UserToolUtils_GetProductImpl.c))
constructs the full resource key in local words instanceLow32,instanceHigh32,
typeId,groupId. Its productType19hex case calls C8EA70 with bank4 and fallback1;
a nonnull result is retained and wrapped separately through the host interface.
This proves a real producer/consumer join, not the meaning of every bank or
complete native product enumeration/population. Original floor-audio consumers
using other bank indices remain separate use sites.

## Sorted contiguous24-byte records

C8C950 operates on a contiguous begin/end range, stride18hex (24decimal), using
signed (end-begin)/24 element count. Compiler IMUL2AAAAAAB/SAR2/sign adjustment
implements that division; signed count/half arithmetic controls search. Actual
key comparisons use carry/SETC and unsigned32-bit words in order0,1,3,2.
For candidate<query advance begin=candidate+24 and discard half+1; otherwise
continue with lower half. Count<=0 returns current begin. This is lower_bound,
not a tree, hash or equality-only linear scan. It assumes a correctly sorted,
well-formed span rather than validating malformed ranges/null pointers.

C8DB20 rejects end. For a candidate it compares query<candidate in the SAME
unsigned word order. Combined with lower_bound, admitting a non-less query
means exact equality of all four words. A match writes [candidate,candidate+24),
a miss [candidate,candidate). It does not collapse resource groups or mask type.
The upper8 bytes of a row are not reconstructed as a source-language struct;
C8EA70 demonstrably reads its product pointer at+10hex.

The low-instance-word-first order differs from natural UInt64 numeric sorting:
instance0000000100000000 compares before0000000000000001 because lowword0<1.
Group word3 is checked before type word2 when instance words tie. These are
internal key-array rules, not proof of original catalog display ordering.

## Bank and missing-key behavior

C8EA70 computes selected header at receiver+30hex+20decimal*bank, end at
receiver+34hex+20*bank. No bank bounds check is present. It calls exact adapter,
normalizes an empty returned range to header end, and returns exact row+10hex
product on a match. It does not AddRef, parse a resource or open a package.
On absence low-byte allowDefault0 returnsnull; any nonzero lowbyte reads pointer
at receiver+94hex+4*bank, which may itself be null. This default is a distinct
stored product pointer, not first array row or group fallback. The producer of
those stored default pointers and native bank population/duplicate precedence
remain explicit static follow-ups.

## Boundaries

The selected exact/optional-default mechanism provides an original counterpart
for host catalog queries, but establishes no CLR dictionary, disk cache, file-stamp,
package filename priority, partial-group texture matching, normalized-name score,
localized label or silent malformed-row exception policy. Native resource product
readers and typed dependencies are separately documented in
[CWAL/CTPT fields](wall-floor-and-terrain-brush-fields.md). No current scan/key/
cache optimization is removed merely because these native storage mechanisms
differ. Each current rule needs its own behavior comparison and explicit status.
