# Original empty-land worth and selected formatted INI read

Names are analyst assignments for original PC1.67, not recovered symbols.
Types/prototypes remain inferred and may omit physical arguments. Original
instructions establish the arithmetic, stack words and return gates below.

| Entry / role | Owned bytes / instructions | Evidence |
| --- | --- | --- |
| AB3E00 Lot_ComputeEmptyLandWorth | 75 /20 | [ASM](../../evidence/native/functions/00AB3E00_Lot_ComputeEmptyLandWorth.asm) ([C](../../evidence/native/functions/00AB3E00_Lot_ComputeEmptyLandWorth.c)) |
| 4EF870 Ini_ReadSectionFormattedValueOnNonzeroLookup | 128 /44 | [ASM](../../evidence/native/functions/004EF870_Ini_ReadSectionFormattedValueOnNonzeroLookup.asm) ([C](../../evidence/native/functions/004EF870_Ini_ReadSectionFormattedValueOnNonzeroLookup.c)) |

## Original arithmetic and initialization

AB3E00 reads DWORD dimensions from ECX+178/+174. If byte1183EEC iszero it calls
AB0B60. IMUL keeps low32 area, CVTSI2SS interprets it as signed Int32 and MULSS
multiplies Single rate1183EF0. MOVSS forces a Single before FLD/FISTP produces
Int32 under inherited x87 control. Full EAX returns. The decompiler ROUND spelling
does not establish a fixed rounding mode, positive input, checked product or
finite/nonnegative/result-range validation; no such guards occur in this body.

The physical initialized flag/rate bytes are000000000000803F: flag0/rateSingle1.
These are file-image facts, not current runtime values or a global writer census.
AB0B60 supplies LotSettings.ini/group0, then on source-acquisition AL success
selects UTF16 LotWorth/LotWorthPerUnitLandArea/%f with output receiver+4. The
formatted-read result is ignored. Its shared initialized flag is set even when
source acquisition refuses; broader process/world lifetime remains separate.

## Selected reader versus its adjacent sibling

4EF870 physical callers supply four fixed stack words (INI,section,key,format),
then output-pointer varargs. INI virtual+2C receives section/key/local text and
returns a signed length/status. TEST/JZ at4EF8AD/4EF8AF skips conversion only for
exactlyzero. Nonzero, including missing/error -1 from the selected lookup,
forwards local text/format/output argument-list to4FDEA0. Conditional owned text
cleanup follows and full scanner EAX returns. This is not a Bool or a complete
three-argument ABI despite the current inferred prototype/decompiler aliases.

The existing4EF7F0 sibling has a different signed-negative refusal gate; its
behavior must not be substituted for4EF870. The selected%f dispatch ultimately
calls imported MSVCR80.dll!wcstod atIATF964E0 and stores binary32. No whole-input,
finite or nonnegative check occurs in that conversion branch. Effective CRT
locale, exact CRT conversion and inherited floating control are separate limits.
No modern CRT grammar or all-locale behavior is inferred.

The selected land INI lookup returns0 for a found-empty value and -1 when
section/key/read admission fails. Its section index retains the first normalized
section offset and lookup returns the first matching key before another leading
section bracket. Empty versus missing therefore reaches different wrapper paths.
Lower source-byte/line encoding and generic allocation/string/virtual internals
remain separate; literal conversion parameter8 is not an encoding identification.

## Existing canonical references

- Tunable initializer AB0B60: [ASM](../../evidence/native/functions/00AB0B60_LotSettings_LoadToolTunables.asm) ([C](../../evidence/native/functions/00AB0B60_LotSettings_LoadToolTunables.c)).
- Adjacent signed-gate reader4EF7F0: [ASM](../../evidence/native/functions/004EF7F0_Ini_ReadSectionFormattedValue.asm) ([C](../../evidence/native/functions/004EF7F0_Ini_ReadSectionFormattedValue.c)).
- Scanner forwarding4FDEA0: [ASM](../../evidence/native/functions/004FDEA0_Utf16Scan_ForwardArgumentList.asm) ([C](../../evidence/native/functions/004FDEA0_Utf16Scan_ForwardArgumentList.c)).
- Scanner dispatch4FDB00: [ASM](../../evidence/native/functions/004FDB00_Utf16Scan_DispatchArgumentList.asm) ([C](../../evidence/native/functions/004FDB00_Utf16Scan_DispatchArgumentList.c)).
- Field converter4FD860: [ASM](../../evidence/native/functions/004FD860_Utf16Scan_ConvertFormattedFields.asm) ([C](../../evidence/native/functions/004FD860_Utf16Scan_ConvertFormattedFields.c)).
- Name/key parser4AEE40: [ASM](../../evidence/native/functions/004AEE40_ResourceKey_ParseWideName.asm) ([C](../../evidence/native/functions/004AEE40_ResourceKey_ParseWideName.c)).
- Registered empty-worth wrapper788590: [ASM](../../evidence/native/functions/00788590_ScriptCore_World_World_GetEmptyLotWorth.asm) ([C](../../evidence/native/functions/00788590_ScriptCore_World_World_GetEmptyLotWorth.c)).

Those existing references retain their own bounds and qualifications. In
particular788590 is the retained bounded linear window, not a newly defined
owned function. Scanner noncontiguous/gap qualifications are unchanged.
The two selected pairs cover existing contiguous owned bodies. Direct-call
index additions represent physical E8 transfers; a virtual-call operand does
not identify its runtime destination for every INI implementation.


## Loaded-lot totals, manager membership and component contributions

The following complete original bodies join the land arithmetic to loaded-lot
furnished/unfurnished evaluation. Stored inferred prototypes remain qualified
by physical instructions; there is no new database signature/name mutation.

| Entry | Physical behavior | Evidence |
| --- | --- | --- |
| 00AC5F00 | 582 owned bytes / 160 instructions. Simple-mode total owner. ECX lot; RET0. Separate object and construction dirty flags and retained float stamp control recomputation. Object membership uses C6E140/C6E150 ordered manager pointers, not spatial position. AFFDB0 catalog category bits6/7 exclude fireplaces/chimneys; included B01D70 values feed all-object subtotal and separate bit1 unfurnished subtotal. Land uses inherited x87 FISTP; foundation price quarter-products accumulate through FSTP double memory. Final signed low32 sum clamps at zero. Stored inferred EDX parameter and float temporaries do not establish physical arguments or binary32 subtotal storage. Whole dirty writers, complex mode and catalog helpers remain open. | [ASM](../../evidence/native/functions/00AC5F00_FUN_00ac5f00.asm) ([actual C](../../evidence/native/functions/00AC5F00_FUN_00ac5f00.c)) |
| 00B177C0 | 374 owned bytes / 111 instructions. Stair subtotal. ECX owner; RET0 and low EAX after F7F620, not independent EDX:EAX UInt64 result. Direction tables choose0/2/4/6 run/width; other indices select zero. SUBSS stores binary32 differences; x87 run*4+.5 is converted after setting truncation control, low32 is then reinterpreted unsigned through sign correction2^32. Width*price adds to a stored binary64 subtotal once per admitted row. Final truncation follows. The decompiler float subtotal and CONCAT44 are misleading. C8E7D0 full catalog policy and exceptional FP remain open. | [ASM](../../evidence/native/functions/00B177C0_FUN_00b177c0.asm) ([actual C](../../evidence/native/functions/00B177C0_FUN_00b177c0.c)) |
| 00ACAE80 | 75 owned bytes / 21 instructions. Furnished selection. ECX lot; byte+414 set before simple/complex call and cleared after it. +2E8 nonzero or partition+120!=+124 selects AB9C90, otherwise AC5F00. EAX from selected callee survives clearing and RET0; stored undefined return is incomplete. Full complex evaluator and dirty writer policy remain open. | [ASM](../../evidence/native/functions/00ACAE80_FUN_00acae80.asm) ([actual C](../../evidence/native/functions/00ACAE80_FUN_00acae80.c)) |
| 00ACAED0 | 149 owned bytes / 37 instructions. Unfurnished selection repeats the same mode predicate after evaluation, clears byte+414, truncates Single+420 via CVTTSS2SI, and adds either+330/+324 or+350/+34C. Signed negative result clamps tozero. Same mode before and after is not an immutable snapshot guarantee. | [ASM](../../evidence/native/functions/00ACAED0_FUN_00acaed0.asm) ([actual C](../../evidence/native/functions/00ACAED0_FUN_00acaed0.c)) |
| 00A75C50 | 236 owned bytes / 82 instructions. Fireplace group. ECX manager, stack4 GUID-vector pointer, RET4, x87 ST0 result. Lot-scoped fullGUID lookup, temporary retain, typed catalog categorybit6, then distinct C8C820(product+8,false) lookup before price+58. ADDSS accumulates binary32 per group; object retain/release order is explicit. C8C820 type/default/fallback meaning remains unresolved; do not collapse the two catalog lookups. | [ASM](../../evidence/native/functions/00A75C50_FUN_00a75c50.asm) ([actual C](../../evidence/native/functions/00A75C50_FUN_00a75c50.c)) |
| 00A75E50 | 115 owned bytes / 51 instructions. Fireplace owner. ECX receiver; no independent EDX argument established. Iterates stored groups, obtains A75C50 x87 result, adds prior stored binary64 subtotal; intermediate groups spill to double while last result may retain excess precision until F7F620. Returns its low32 EAX, not semantic UInt64 from incidental EDX. | [ASM](../../evidence/native/functions/00A75E50_FUN_00a75e50.asm) ([actual C](../../evidence/native/functions/00A75E50_FUN_00a75e50.c)) |
| 00B01D70 | 101 owned bytes / 40 instructions. Object value. Cdecl stack4 object or null. Tests flags against live11EA0F8; script branch forwards both GUID words to791290, non-script typed catalog path CVTTSS2SI price+58. Then934260/95A610 component count may multiply low32 value. Source and lifetime of flags, full tree-count component and exceptional price conversion remain separate. | [ASM](../../evidence/native/functions/00B01D70_FUN_00b01d70.asm) ([actual C](../../evidence/native/functions/00B01D70_FUN_00b01d70.c)) |
| 00791290 | 212 owned bytes / 68 instructions. Script value event. Physical stack4/8 carry fullGUID, despite no-argument stored prototype. Builds event argument, dispatches slot0x30, obtains returned variant value through local destination/EBP into EAX and cleans variant resources. Plain RET; caller removes bothGUID words. Complete scheduler, exception and variant ownership are separate. | [ASM](../../evidence/native/functions/00791290_FUN_00791290.asm) ([actual C](../../evidence/native/functions/00791290_FUN_00791290.c)) |
| 00C6E140 | 10 owned bytes / 4 instructions. Manager member count is arithmetic-right-shift of end+18 minus begin+14 by2, full EAX/RET0. Not resident global registry size or spatial containment query. | [ASM](../../evidence/native/functions/00C6E140_FUN_00c6e140.asm) ([actual C](../../evidence/native/functions/00C6E140_FUN_00c6e140.c)) |
| 00C6E150 | 31 owned bytes / 11 instructions. ECX manager, stack4 unsigned index, RET4. Index below computed pointer count returns begin[index], else EAXzero. No retain occurs in this body; higher owner controls lifetime. | [ASM](../../evidence/native/functions/00C6E150_FUN_00c6e150.asm) ([actual C](../../evidence/native/functions/00C6E150_FUN_00c6e150.c)) |

AC5F00 has separate object dirtiness at+334/float stamp+338 and construction
dirtiness+328. The object branch visits the lot manager's ordered pointer array,
not every object whose world position happens to lie inside the lot. Category
bits6/7 exclude fireplace/chimney products from ordinary object sums. The all-object
subtotal+32C and bit1 subset+330 are retained separately. Full manager insertion,
removal, stamp and dirty-flag writers remain unresolved here; an index getter or
one retained tuple does not establish coherent concurrent evaluation.

Construction subtotal+324 begins with the same Single-area/rate and inherited
x87 FISTP land calculation as AB3E00, then partition B4B630, floor A8E370,
fireplace A75E50, foundation cells and stairs B177C0. The foundation loop reads
four DWORD IDs per cell, skips zero and absent C8BBB0 lookup, and multiplies the
returned price+58 by .25. FADD/FSTP use actual double memory despite misleading
float decompiler temporaries. Full sentinel/type/default and grid traversal
semantics require AC32C0/C8BBB0 and their producers, not inferred names.

[Selected pristine scalar/jump-table words](../../evidence/native/data/lot-worth-selected-words.json)
establish4.0,.5,2^32,.25 and the complete direction0..6 dispatch destinations.
B177C0's run and width differences are binary32 SUBSS. It computes x87 run*4+.5,
sets truncation control for qword conversion, takes low32, restores control,
and reinterprets the word unsigned using2^32 for its sign bit. Width and catalog
price then multiply into a stored double subtotal. Direction0/2/4/6 select the
four directional formulas;1/3/5 or unsigned>6 select zero. The final F7F620 path
returns low32 EAX. This is not a general UInt64 return or all-input CLR arithmetic
proof. Full C8E7D0 lookup, reader/writer provenance and exceptional FP remain open.

A75C50 resolves each full saved GUID through the owning lot before retaining
its object, reads a typed catalog product and requires categorybit6. It then
performs a second lookup C8C820(product+8,false) before adding price+58 through
ADDSS. The second lookup's concrete type/fallback and installed-content impact
remain unresolved. A75E50 adds groups through double spills but the final x87
result can retain excess precision before truncation. Direct-ID group load
A76520 already has a canonical pair and is not exported again.

B01D70 chooses script event48 when flags match live11EA0F8;791290 transports
both GUID words and obtains a variant result. Otherwise C8EBB0 supplies typed
catalog price converted by CVTTSS2SI. A subsequent934260/95A610 component count
can multiply the low32 value. Complete count/component lifecycle and dynamic
mask writers remain separate. Managed BuildBuyModel and Lot.UpdateCachedCost
remain higher owners; this native event does not itself prove all exception,
mod, task, dispatch or property-adjustment policy.

ACAE80 and ACAED0 select complex AB9C90 when lot+2E8 is nonzero or partition
+120/+124 differ. Both set/clear+414 around evaluation. Furnished preserves the
selected callee EAX; unfurnished reevaluates the predicate after the call and
uses either+330/+324 or+350/+34C plus truncated Single+420, clamping signed
negative totals to zero. Complete complex-mode cache/state/contributions and
mutation/reentry between those checks remain unresolved; no mode equivalence
or native lock/queue guarantee follows from these complete selected bodies.


## Physical partition contribution and input-domain limits

Complete [B4B630 ASM](../../evidence/native/functions/00B4B630_FUN_00b4b630.asm)
([unchanged actual C](../../evidence/native/functions/00B4B630_FUN_00b4b630.c)) adds114
instructions351ownedbytes. ECX is the actual PartitionManager, no EDX argument
read is observed, and plain RET returns the converter's lowEAX, not a recovered
UInt64 amount. Physical graph+64 pointer range gives iteration count; B47E60
constructs each packed locator and C418D0/C44FF0 resolve product identity or
11EC8C0 fallback. C8FA20 null skips that section's contribution.

At B4B6FA/B6FD/B701 the product Single price+58 is loaded in x87, added to the
stored DOUBLE subtotal and written back DOUBLE. Side A and reverse side B use
B4A6D0 keys, C8EAE0 lookup and the same FLD/FADDdouble/FSTPdouble sequence at
B4B731..738 andB4B766..76D. Product+88==2 omits both side prices; missing side
product contributes nothing. One F7F620 conversion follows the loop. Pseudocode's
(float)local_a0 expressions are misleading: they do not establish a repeated
Single subtotal or authorize moving the final integer conversion into the loop.

Current PreparedPartitionWorth additionally demands exact typed products and
valid nonnegative prices, complete graph/side/map/reference inputs, and complete
installed/mounted CWAL index absence before assigning a missing-pattern zero.
Those are host authority/refusal mechanisms, not native malformed-input policy.
Original C8FA20 fallback/C8EAE0 bank identity, B47E60 graph order, side/default
readers and full resource invalidation remain independent. PackageMountGeneration
and PackagePrecedenceDigest cache keys do not recover native synchronization;
current token capture, unlocked index read and later store must not be called an
atomic mount/content snapshot or complete race audit.
