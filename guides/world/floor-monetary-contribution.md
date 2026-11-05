# PC1.67 floor monetary contribution and its physical inputs

Static complete original function evidence. Names/notes are analyst metadata, not
original bytes or executed game results. Four contiguous bodies total325Listing
instructions/890original bytes, with no unowned gaps. Actual current annotated C
is paired with full current Ghidra Listing and pristine original bytes:

| Boundary | Actual original pair |
| --- | --- |
| A8E370 contribution | [ASM](../../evidence/native/functions/00A8E370_FloorManager_ComputePatternContribution.asm) ([C](../../evidence/native/functions/00A8E370_FloorManager_ComputePatternContribution.c)) |
| A9AC70 separate key predicate | [ASM](../../evidence/native/functions/00A9AC70_FloorPattern_HasAssignedRenderKey.asm) ([C](../../evidence/native/functions/00A9AC70_FloorPattern_HasAssignedRenderKey.c)) |
| C8EAE0 exact product lookup | [ASM](../../evidence/native/functions/00C8EAE0_ProductCatalog_FindExactKeyInFourBanks.asm) ([C](../../evidence/native/functions/00C8EAE0_ProductCatalog_FindExactKeyInFourBanks.c)) |
| AA5490 pattern-map producer | [ASM](../../evidence/native/functions/00AA5490_FloorPatternMap_ReadResourceRows.asm) ([C](../../evidence/native/functions/00AA5490_FloorPatternMap_ReadResourceRows.c)) |

## Physical contribution and numeric ordering

A8E370 owns162bytes/63instructions throughA8E411. It reads ECX manager, no incoming
EDX or stack arguments, and ends plainRET. Actual selected callerAC6051 passes
lot+290 and adds EAX to its construction subtotal. The stored inferred fastcall
UInt64/two-parameter prototype is preserved, explicitly qualified in the real
Ghidra plate. It does not establish a high return or an EDX input. Float locals and
CONCAT44 in C are inference artifacts; Listing controls physical arithmetic.

Manager+D8 map null yields zero through the same conversion. Otherwise native
hash traversal supplies entry's FIRST16-byte key to C8EAE0. Missing product skips
that contribution. Count+44 is UInt32: FILD signed32 followed by FADD exact
binary32 2^32 when the sign bit is set. FMUL product binary32 price+58, FADD prior
binary64 stack subtotal, FSTP binary64 AFTER EACH ENTRY. Final FLD subtotal,
FMUL binary64 0.25 and F7F620 conversion provide the low EAX result. Traversal
ordering is the original map's, not a promise of physical input-row order.

The existing [conversion dispatcher ASM](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.asm)
([C](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.c)) is28bytes/10instructions. Its
flag branch spills ST0 to binary64 then CVTTSD2SI EAX. Its separate
[fallback ASM](../../evidence/native/functions/00F7F656_Compiler_TruncateX87ToInt64Fallback.asm)
([C](../../evidence/native/functions/00F7F656_Compiler_TruncateX87ToInt64Fallback.c)) owns117bytes/37instructions,
x87 FISTP/sign-based correction and EDX:EAX bits. Only low EAX is consumed here.
Do not fold the fallback into the dispatcher's owned body or generalize its
nonfinite/out-of-range/control-word behavior from decompiled ROUND.

Ambient x87 precision, rounding, intermediate excess precision and conversion range behavior remain part of the original numeric contract; the C float temporaries do not establish another implementation's arithmetic equivalence.

## Catalog and original reader authority

C8EAE0 owns122bytes/54instructions, thiscall ECX catalog plus key pointer/RET4,
EAX product-or0. Four ordered descriptors of stride14h search24-byte entries via
C8C950 lower_bound. Exact unsigned key lane order is instanceLow,instanceHigh,
group,type; an end/nonmatch/null-product tries the next bank. This leaf does not
identify package precedence, family labels or complete product lifetime.

Existing [Common reader ASM](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.asm)
([C](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.c)) supplies raw32 price bits at+58
without finite/nonnegative validation. Its version-selected hashes/strings precede
those bits. Existing [CWAL reader ASM](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.asm)
([C](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.c)) invokes Common and retains its
own versioned preset/key/type/material/status workflow. Both complete bodies are paired with original-byte evidence. Original instructions, not a third-party wrapper, define the versioned format.

AA5490 owns509bytes/180instructions throughAA568C: ECX map plus six words, both
RET18h exits, AL status. It clears forward/reverse maps, opens modern0553EAD4 or
legacyF12E5E12 according to the unsigned caller word, reads map version/default
TGI/count. Version<4 delegates toAA52F0, outside this selected body. From4, four
context keys precede UInt32 storage/refcount; full64-byte key blocks and both maps
are retained. Default registration, close and sticky reader status remain native
lifetime. Context-key index width follows the original reference context; it is not inferred from a dependency wrapper.

## Invalid data identity versus separate rendering policy

The necessary [44bytes](../../evidence/native/data/floor-valuation-constants.tsv)
retain invalid key1184568 (native instanceLowDEAD/high0/typeDEAD/group0), initial
null key11EC8A0, binary32 2^32 and binary64 quarter. They match the pristine initial
PE image, including loader-zero semantics where applicable. No runtime flag value
or original target execution is inferred from static initial data.

A9AC70 owns97bytes/28instructions throughA9ACD0. It compares16bytes at ECX+10,
+14,+18,+1C against both null and invalid data, returning full EAX1 or0/plainRET.
Actual [renderer caller ASM](../../evidence/native/functions/00A9EBC0_FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState.asm)
([C](../../evidence/native/functions/00A9EBC0_FloorRenderer_VisitMaskedQuartersAndUpdateEdgeState.c)) passes found node+8 before a
thickness-edge branch. A8E370 never calls A9AC70. Shared data identity is not proof
of first-key valuation admission or a guarantee that the catalog cannot contain
an unusual key. This renderer predicate is a separate original operation from monetary traversal.

## Managed authority and finite limits

Authenticated selected Lot.UpdateCachedCost CIL marks native worth dirty, calls
World.GetLotWorth and then applies original object-owner and houseboat policy.
SimIFace World worth facades dispatch through gWorld or return0. No same-body
managed floor-row loop was identified; an absent exact FloorManager TypeDef in the
four inspected assemblies does not establish a global negative. Managed pricing and UI policy remain distinct from the native floor-row traversal.

The ten selected primary bodies total4270bytes/1389instructions; the four canonical pairs total890bytes/325instructions. Necessary constants total44bytes. Original bytes and function boundaries were preserved and the annotated database saved cleanly. This is static instruction/data and selected CIL evidence; no original-target execution or gameplay result is claimed.
