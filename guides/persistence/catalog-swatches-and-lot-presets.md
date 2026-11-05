# Catalog swatches and lot preset persistence

Static PC1.67 original evidence in explicit `/TS3W.exe`. The catalog reader entry
was recovered from its VTable0107D288 and complete reachable instructions, without
changing bytes. All selected full function envelopes match pristine input; actual
annotated Ghidra C and original ASM are canonical pairs. Physical stack cleanup,
virtual call arguments, element widths and constants were checked against original
instructions. Database saved clean. No game or roundtrip execution is claimed.

## CatalogPattern_ReadPresetRecords

[ASM 00C9A220](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.asm) ([annotated Ghidra C](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.c)).

Original VTable0107D288 points to this entry. Full reachable body00C9A220..00C9A949 defined from pristine instructions without patching. ECX pattern, stream arg RET4. ReadUInt32 version and relative reference table, swatch count; version>10 reads binary/text Boolean, >9subsort, >11group/sort. Binary sized bytes or UTF16 text pass005BFE50; mId and record fields retained in order. Current modern42-only swatch extraction is a bounded format subset.

## Preset_ReadBinaryOrTextBuffer

[ASM 005BFE50](../../evidence/native/functions/005BFE50_Preset_ReadBinaryOrTextBuffer.asm) ([annotated Ghidra C](../../evidence/native/functions/005BFE50_Preset_ReadBinaryOrTextBuffer.c)).

ECX preset plus buffer,length,UTF16 flag RET0C, corrected physical prototype. Test firstBYTE42 when length>=2, then construct reader and005BF6C0; otherwise parse text or retain/convert text using low-byte encoding flag. LPCWSTR inferred by a text branch must not make binary byte payloads Unicode.

## Preset_ReadBinaryBlock

[ASM 005BF6C0](../../evidence/native/functions/005BF6C0_Preset_ReadBinaryBlock.asm) ([annotated Ghidra C](../../evidence/native/functions/005BF6C0_Preset_ReadBinaryBlock.c)).

ECX preset plus reader/optional external key vector RET8. ReadUInt16magic42; UInt32 relative key offset/size; seek/read dense16-byte key vector. External vector overrides local table for complate005C2D90. Offset>4 means actual complate data begins after the key offset word. Return reader status inAL; temporary vector freed.

## Preset_WriteBinaryBlock

[ASM 005BF560](../../evidence/native/functions/005BF560_Preset_WriteBinaryBlock.asm) ([annotated Ghidra C](../../evidence/native/functions/005BF560_Preset_WriteBinaryBlock.c)).

ECX preset plus reader and output key vector RET8. Corrected two physical stack args and indirect streamPosition ABI remove false unaff_retaddr/EBP. WriteUInt16magic42, twoUInt32 placeholders, actual complate005C1BE0 using supplied or local key vector, backpatch relative offset/size, write local key vector and restore final stream position. Current saved body embeds supported version4complate with external lot handles.

## Preset_WriteContextEnvelope

[ASM 005BF830](../../evidence/native/functions/005BF830_Preset_WriteContextEnvelope.asm) ([annotated Ghidra C](../../evidence/native/functions/005BF830_Preset_WriteContextEnvelope.c)).

Cdecl reader,preset,key context. Require live status/non-null objects; writeversion2 and preset+5Csubsort, outer size placeholder. Binary block005BF560 collects keys, then UInt8 count and ordered UInt16 context handles. Native count truncates tolowbyte; current checked byte count rejects256 instead. Empty native preset takes zero outer-size path. Actual source key table is not a REFS18-byte row.

## Preset_ReadContextEnvelope

[ASM 005C0110](../../evidence/native/functions/005C0110_Preset_ReadContextEnvelope.asm) ([annotated Ghidra C](../../evidence/native/functions/005C0110_Preset_ReadContextEnvelope.c)).

Cdecl reader,key context,output preset. Require status and non-null context/output. Admitversion1/2, readsubsort andUInt32 outer extent; size0 publishes empty preset. Otherwise seek suffix, readUInt8count, check2*count bytes and resolve UInt16handles. Restore body start, read42 block with external resolved keys, then restore suffix-end. Failed loads release retained preset; onlyALsuccess.

## Stream_BeginSizedBlock

[ASM 005A3040](../../evidence/native/functions/005A3040_Stream_BeginSizedBlock.asm) ([annotated Ghidra C](../../evidence/native/functions/005A3040_Stream_BeginSizedBlock.c)).

ECX stream context, no stack args. Query original stream position at virtual24 with origin0, writeUInt32zero placeholder, return saved position. Indirect thiscall ABI explicitly carries stream receiver and origin stack word.

## Stream_FinishSizedBlock

[ASM 005BF070](../../evidence/native/functions/005BF070_Stream_FinishSizedBlock.asm) ([annotated Ghidra C](../../evidence/native/functions/005BF070_Stream_FinishSizedBlock.c)).

ECX stream context plus placeholder position RET4, corrected from misleading one-register prototype. Querycurrentposition and backpatch(current-marker-4) using005BEE40; invalidpositionFFFFFFFF clears status.

## Stream_BackpatchUInt32

[ASM 005BEE40](../../evidence/native/functions/005BEE40_Stream_BackpatchUInt32.asm) ([annotated Ghidra C](../../evidence/native/functions/005BEE40_Stream_BackpatchUInt32.c)).

ECX context,marker/value RET8. Corrected stack prototype and all three virtual stream-call signatures. Savecurrentposition, seekmarker, writeUInt32value under context byte order, seekback; any seek/position failure clears context status. Originalbytes unchanged.

## StreamContext_WriteByte

[ASM 0059FDB0](../../evidence/native/functions/0059FDB0_StreamContext_WriteByte.asm) ([annotated Ghidra C](../../evidence/native/functions/0059FDB0_StreamContext_WriteByte.c)).

ECX context plus low-byte value RET4. Pass stream/value to004DDE30 and accumulate returned status. Corrected prototype exposes actual byte count to preset writer.

## Stream_WriteByte

[ASM 004DDE30](../../evidence/native/functions/004DDE30_Stream_WriteByte.asm) ([annotated Ghidra C](../../evidence/native/functions/004DDE30_Stream_WriteByte.c)).

Cdecl stream and bytevalue, caller cleans8. Virtual write38 requests one byte. Original SUB AL,1/NEG AL/SBB EAX,EAX/ADD EAX,1 tests only the low-byte returned count and yields0/1. Do not replace this proof with an assumed full32-bit count comparison; higher return bits are ignored by these original instructions.

## CompositorKeys_ChooseUnusedRandomInstance

[ASM 00B33C30](../../evidence/native/functions/00B33C30_CompositorKeys_ChooseUnusedRandomInstance.asm) ([annotated Ghidra C](../../evidence/native/functions/00B33C30_CompositorKeys_ChooseUnusedRandomInstance.c)).

ECX owner,out key/type two stack words RET8. Initialize instance0,type supplied,group0. Up to1000tries: two RNG004FAA10 calls; __allshl helper uses EDX:EAX and CL32 to form high/low64-bit instance, then check two resource services and local map. Decompiled __allshl(0x20,0) is wrong argument propagation, not literal operands. Exhaustion returns current output key; current CSPRNG/zero exclusion/lot-only checks/throw are project differences.

## LotCompositors_WriteResource

[ASM 00AD2E10](../../evidence/native/functions/00AD2E10_LotCompositors_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00AD2E10_LotCompositors_WriteResource.c)).

ECX manager plus five physical stack words RET14hex. Corrected prototype includes stream context,key context,64-bit resource id low/high and unused fifth word. Explicit stream position/seek call ABIs remove old false unaff_EBX and preserve actual shared owner+44. Writeversion5/program map/preset map, UInt16context handles, patch shared-tail absolute offset then serialize tail. Native openfailure returnsAL1; later failuresAL0. Current byteappend edits preserve a supported subset, not this whole object writer.

## LotCompositors_ReadResource

[ASM 00AD3C30](../../evidence/native/functions/00AD3C30_LotCompositors_ReadResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00AD3C30_LotCompositors_ReadResource.c)).

ECX manager plus original virtual resource inputs; versions1..5 admitted, older1..4 delegated. Clear maps first. V5 seeks shared tail and resolves key context, restores sections, loads actual compositor/preset objects and publishes keys/objects on success. Current v5 section scanner does not instantiate native objects or reproduce all status/rollback semantics.

## Supported format and policy boundaries

Modern product-pattern swatches carry original mId and version-dependent sort/group
fields. The native reader supports binary42 blocks and older/text variants; a
modern-only reader must not claim all those branches. Saved preset outer versions1/2
and native lot compositor resource versions1..5 are separate version domains.
The native writer emits lot compositor version5 and preset envelope version2.

Preset bodies use a UInt16 magic42, relative offsets, actual complate bytes and
key lists; the saved context envelope maps its collected keys through UInt16 handles.
The context suffix has a byte count, whose native truncation differs from a checked
project writer rejecting256. Size and tail offset backpatches save/restore the stream
cursor and accumulate failure status. A zero-sized envelope represents an empty
native preset; it is not a successful full complate decode.

Native lot serialization owns actual compositor/preset maps and their shared data.
Current byte-preserving Section1/2 appenders support an existing narrow-handle v5
record; they preserve old rows and add new absent handles. This does not reproduce
native map ordering, malformed duplicate behavior or full object lifetimes.
Reverse-identifying an editor swatch by unique serialized-byte equality is project
UI reconstruction, not an established original gameplay policy. Negative/nullable
process caches and generation invalidation are likewise project responsibilities.

## ABI and interpretation corrections

The original shift helper is an x86 register ABI: EDX:EAX value, CL shift count.
Its incorrect C argument list must not turn a pair of RNG results into constant
instance bits. Native uniqueness checks global resources plus a local map; a
lot-only cryptographic candidate registry has different collision/exhaustion policy.

Explicit stream position/seek call overrides and corrected helper parameters remove
false unaff_retaddr/EBP/EBX inputs from final writer pseudocode. The lot writer has
five physical stack words and RET14hex; the fifth is unused in this selected body.
Native AL-only success and its open-failureAL1 quirk are not full-EAX Boolean promises.
The one-byte low-count check is preserved as observed instructions rather than
silently upgraded to a32-bit comparison.


## Live floor/wall point source and current preset selection

Registered SetSourceBuildBuy786150 validates handle high-byte45, obtains swap
through global interface+CC, forwards raw type and aligned point to
[A5EFE0 ASM](../../evidence/native/functions/00A5EFE0_FUN_00a5efe0.asm)
([C](../../evidence/native/functions/00A5EFE0_FUN_00a5efe0.c)). Physical ECXswap/two words
RET8 and AL status matter; the jump [tables](../../evidence/native/data/surface-design-dispatch.tsv)
are data, not instructions. Type2 floor(mode1), type3 wall; other2..9 entries
are separate owners. Out-of-range clears AL only, upper EAX not defined status.

[Floor source A5E360 ASM](../../evidence/native/functions/00A5E360_FUN_00a5e360.asm)
([C](../../evidence/native/functions/00A5E360_FUN_00a5e360.c)) retains ECXswap despite the
stored C's missing this formal. Global11EDBC4 absence, containing-lotC687D0,
AB1020, ADC860 local conversion and AFDE10 admission precede B04090(locator)
and A8FA90 current four-pattern-key read. A nonzero fourth lane permits storing
mode byte+42, enable+41 and aligned float4 point+30. It stores a point, not the
current floor catalog key or a CLR hover record. Exact AFDE10/B04090 policy,
native source task/command use and later writes remain open.

[Wall source A5E2F0 ASM](../../evidence/native/functions/00A5E2F0_FUN_00a5e2f0.asm)
([C](../../evidence/native/functions/00A5E2F0_FUN_00a5e2f0.c)) calls
[B10B60 ASM](../../evidence/native/functions/00B10B60_FUN_00b10b60.asm)
([C](../../evidence/native/functions/00B10B60_FUN_00b10b60.c)) then stores byte+40=1/point+30
only on ALsuccess. Shared B10B60 cdecl(point,outLot,outLocator) gets containing
lot from physical X/Z float lanes0/8, writes outLot before ADC920 and B0D330;
failure at the latter can therefore retain outLot. No explicit global-null
guard in this selected wrapper. Original B0D330 full candidate sets, level
fallback, squared-distance threshold/ties, corner and side rules have not yet
been qualified; current reach1/strict distance/first tie/cross-product side is
not accepted from source comments or routine names alone.

Registered GetBuildBuyDesignPreset795590 initializes an out preset, calls
[A62630 ASM](../../evidence/native/functions/00A62630_FUN_00a62630.asm)
([C](../../evidence/native/functions/00A62630_FUN_00a62630.c)), then5BFD20 and managed string
transport, with native reference cleanup. Table dispatch type2 is
[floor A61890 ASM](../../evidence/native/functions/00A61890_FUN_00a61890.asm)
([C](../../evidence/native/functions/00A61890_FUN_00a61890.c)): same current local/locator/
pattern-read chain, fourth key ->broker virtual0C ->5BF050 query, actual third
caller output written only on success. Type3 is
[wall A619E0 ASM](../../evidence/native/functions/00A619E0_FUN_00a619e0.asm)
([C](../../evidence/native/functions/00A619E0_FUN_00a619e0.c)): physically TWO stackwords,
point/outPreset, although stored C has one. B10B60 resolves current locator;
lot+298 manager B47DF0/C5B860 may remapB47D40, B47D20 selects B4ABD0/B49ED0,
nonzero key enters broker, queries interface05DE1935 and returns reference in
actual second output. Failed queried references release virtual4. C's local
out aliases and nullable pseudocode pointers are not actual pointer/ABI proof.
Native full broker/query/missing-ref/error/allocation/thread lifetime stays open.

Current OpenTS3 selection is cache-first before point fallback, uses immutable
construction revisions and retains a MaterialPreparation receipt, material
streams and before/after history. Those are distinct host mechanisms. In
particular its two typed generation comparisons in empty-history coalescing
are not an original undo-stack rule. A5E5B0/D29740/D290D0 establish retained
object command updates/exchanges, not native floor/wall flood/price/history
equivalence. See the existing retained-command guide for its bounded contract.

Current ResourcePresetSetDecoder retains empty-envelope subsort as a separate
ResourcePresetObject with Empty=true/Preset=null; the old assertion that its
World reader simply loses that UInt32 is obsolete. However current Surface
Subsort's parsed-preset/CWT path does not by itself prove every empty header
reaches the actual selected consumer; this distinction needs its own original
selector and current caller comparison. No synthetic preset tree is required.
