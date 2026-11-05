# Authored lot extrema and cached display bounds

Reference: original PC1.67 TS3W.exe; binary identity is recorded in the
[proof overview](../../references/retained-proof-overview.md).
The names below are analyst labels. The paired pseudocode is actual annotated
decompiler output; raw files contain complete owned original instructions.

## Description words and versioned prefix

[The complete description reader](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([pseudocode](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c))
accepts unsigned UInt16 versions14..45. Versions14..1D have no leading
localization UInt64s,1E has one and1F+ has three. The internal UTF16 name follows.
[Its string helper](../../evidence/native/functions/007D96B0_StreamContext_ReadUtf16String.asm) ([pseudocode](../../evidence/native/functions/007D96B0_StreamContext_ReadUtf16String.c))
reads a UInt32 unit count and accumulates stream status. Stored UInt64 identity
follows the name only from20. XYZ/angle four Singles and width/depth/minimum/
maximum floor four words precede the two raw local extrema at lot+188/+18C.
For N UTF16 units the minimum/maximum byte offsets are38+2N/42+2N for14..1D,
46+2N/50+2N for1E,62+2N/66+2N for1F,70+2N/74+2N for20..45.
This prefix does not establish successful complete-resource decoding: the reader
continues through versioned fields and returns accumulated status.

[The complete writer](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.asm) ([pseudocode](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.c))
emits current version45 and transfers both cached extrema without a finite/order
clamp. See [description headers](headers-lot-descriptions.md) for the surrounding
identity, tail and ordinary/export writer ownership.

## Refresh and FloorManager cache

[Lot_RefreshFloorHeightBounds](../../evidence/native/functions/00AB5660_Lot_RefreshFloorHeightBounds.asm) ([pseudocode](../../evidence/native/functions/00AB5660_Lot_RefreshFloorHeightBounds.c))
receives the lot in ECX, has no stack arguments and uses plain RET. With manager
+290 it requests two local extrema with force=false, separately adds originY
+194 to base-bound Y+234/+244, stores local words+188/+18C and marks+270 dirty
before the subsequent height/callback/message paths. A missing manager bypasses
that body. Event15 and message0ED57CCD are literal operands here; recipient
policy is not inferred from their numbers.

[FloorManager_ComputeCachedHeightExtrema](../../evidence/native/functions/00A96AC0_FloorManager_ComputeCachedHeightExtrema.asm) ([pseudocode](../../evidence/native/functions/00A96AC0_FloorManager_ComputeCachedHeightExtrema.c))
receives ECX manager, two float output pointers and force byte, with RET0C.
Dirty+220 clear and force=false returns cached+210/+214. Otherwise the original
chooses full traversal or A94A10-produced mask traversal, stores cache words,
clears dirty and frees temporary mask. Empty/malformed-grid behavior and mask
selection require their own producer closure; no substitute mask is specified.
The owned ranges are A96AC0..A96B68 andA96B70..A96C94. The seven intervening bytes
are outside this function's owned Listing and are not represented as instructions
or a new function.

## Cached display envelope

[Lot_GetCachedDisplayBounds](../../evidence/native/functions/00ABC1B0_Lot_GetCachedDisplayBounds.asm) ([pseudocode](../../evidence/native/functions/00ABC1B0_Lot_GetCachedDisplayBounds.c))
receives ECX lot and one output pointer, with RET4. Dirty+270 begins with base
bounds+230/+240, optionally consults roof manager+2AC, applies type1/subtype80
sea-height override, stores+250/+260 and clears dirty. With attached+444 clear
it copies cached bounds to the output. The attached path obtains quaternion/
translation viaAB1B00 and follows the existing matrix/bounds child calls.
Roof selection, moving attachment lifecycle and those child policies are not
established solely by this body.

The sea override uses the physically stored Single atF998F4 when no world exists;
otherwise it calls C61090. The upper Y adds the Single at1065CAC. Those words are
10.0 and0.75 respectively, with no extra unit or runtime-policy claim. Other
SSE/rounding operands are linked as physical data, not observed live state.

## Calls, operands and limits

[Direct calls](../../evidence/native/direct-calls.tsv) records each physical E8
in the three owned bodies. [Incoming references](../../evidence/native/authored-lot-height-range-incoming.tsv)
retain eight actual direct transfer sites: six CALL rel32 and two JMP rel32.
The retained analysis classified the two tail jumps as call references; their
physical opcodes remain JMP. A blank source-function field means the retained
reference does not establish a containing function; an address or envelope alone
is not a fabricated source body. Indirect virtual and imported calls remain in
the full Listing and are not relabeled direct E8 calls.

[Required operands](../../evidence/native/authored-lot-height-range-data.tsv)
records physical bytes and use sites, reusing existing canonical data files where
available. The16zero bytes at11B0670 are physically file-backed here; this does
not establish their later runtime initialization or every mask consumer.
No rounding helper, arbitrary x87 environment, empty-grid outcome, roof maximum
policy or complete native live bounds/cache equivalence is inferred from a
matching prefix or selected helper.
