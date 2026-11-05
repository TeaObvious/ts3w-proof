# Original catalog product Common prefixes and icon projection

PC1.67 static actual current Ghidra C/fullASM and pristine-byte evidence. This is structural prefix/Common transport, not full native product admission, semantic preset parsing, catalog lifetime or universal TryResolve parity. No original-target execution.

## Twelve actual producer joins

C8CD90 factory dispatch, constructor-installed vtables and the necessary [432 pristine vtable bytes](../../evidence/native/data/catalog-product-common-reader-vtables.tsv) join all twelve actual resource types to their readers. Constructors establish storage/vtable dispatch; their existing inferred signatures do not establish additional arguments or platform object lifetime. Actual complete C/ASM retain those inference limits.

| Type / constructor | Original reader / Common site | Prefix |
| --- | --- | --- |
| 91EDBD3E [ctor ASM](../../evidence/native/functions/00C9A990_RoofStyleProduct_Construct.asm) ([C](../../evidence/native/functions/00C9A990_RoofStyleProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C9A9F0_RoofStyleProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C9A9F0_RoofStyleProduct_ReadCatalog.c)) / 00c9aa88 | u32 outer; key table iff outer>=2; Common |
| F1EDBD86 [ctor ASM](../../evidence/native/functions/00C9ABE0_RoofPatternProduct_Construct.asm) ([C](../../evidence/native/functions/00C9ABE0_RoofPatternProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C9AC60_RoofPatternProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C9AC60_RoofPatternProduct_ReadCatalog.c)) / 00c9acf8 | u32 outer; key table iff outer>=3; Common |
| 316C78F2 [ctor ASM](../../evidence/native/functions/00C93C80_FoundationProduct_Construct.asm) ([C](../../evidence/native/functions/00C93C80_FoundationProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C93F40_FoundationProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C93F40_FoundationProduct_ReadCatalog.c)) / 00c941d3 | u32 outer; table iff>=2; kind u32 iff>=4; ONLY kind7/8/9 then u32 count + binary-framed rows; Common |
| 04B30669 [ctor ASM](../../evidence/native/functions/00C9B0C0_TerrainSculptProduct_Construct.asm) ([C](../../evidence/native/functions/00C9B0C0_TerrainSculptProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C9B050_TerrainSculptProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C9B050_TerrainSculptProduct_ReadCatalog.c)) / 00c934b5 via C93470 | u32 outer; outer<2 sets byte88 and omits base version; outer>=2 consumes u32 base version; Common |
| 04ED4BB2 [ctor ASM](../../evidence/native/functions/00C9AF90_TerrainPaintProduct_Construct.asm) ([C](../../evidence/native/functions/00C9AF90_TerrainPaintProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C9AEA0_TerrainPaintProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C9AEA0_TerrainPaintProduct_ReadCatalog.c)) / 00c934b5 via C93470 | u32 outer; u32 base brush version (constructor byte88=0); Common |
| 319E4F1D [ctor ASM](../../evidence/native/functions/00C97F90_ObjectProduct_Construct.asm) ([C](../../evidence/native/functions/00C97F90_ObjectProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.c)) / 00c98946 | u32 outer MUST17..34; key table; u32 preset count; per row bool iff>=21, payload text/binary, u32 ID; >=22 instance-name Common-wide-string; Common |
| 515CA4CD [ctor ASM](../../evidence/native/functions/00C99F50_CatalogPattern_Construct.asm) ([C](../../evidence/native/functions/00C99F50_CatalogPattern_Construct.c)) | [reader ASM](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.asm) ([C](../../evidence/native/functions/00C9A220_CatalogPattern_ReadPresetRecords.c)) / 00c9a596 | u32 outer; key table ALWAYS; u32 preset count; per row bool iff>=11, payload text/binary,u32 ID, u32 subsort iff>=10, two u32 iff>=12; Common |
| 9151E6BC [ctor ASM](../../evidence/native/functions/00C9B1D0_WallStyleProduct_Construct.asm) ([C](../../evidence/native/functions/00C9B1D0_WallStyleProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C9B220_WallStyleProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C9B220_WallStyleProduct_ReadCatalog.c)) / 00c9977c via C99740 | u32 outer; table iff>=2; u32 independent partition-layout version; Common |
| 0418FE2A [ctor ASM](../../evidence/native/functions/00C948D0_FenceProduct_Construct.asm) ([C](../../evidence/native/functions/00C948D0_FenceProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C94C00_FenceProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C94C00_FenceProduct_ReadCatalog.c)) / 00c94eb0 | u32 outer; table iff>=5; u32 count+binary-framed rows iff>=7; Common |
| 049CA4CD [ctor ASM](../../evidence/native/functions/00C96E10_StairsProduct_Construct.asm) ([C](../../evidence/native/functions/00C96E10_StairsProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C970E0_StairsProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C970E0_StairsProduct_ReadCatalog.c)) / 00c9737a | u32 outer; table iff>=2; u32 count+binary-framed rows iff>=3; Common |
| 04C58103 [ctor ASM](../../evidence/native/functions/00C962C0_RailingProduct_Construct.asm) ([C](../../evidence/native/functions/00C962C0_RailingProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C96530_RailingProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C96530_RailingProduct_ReadCatalog.c)) / 00c96799 | u32 outer; table iff>=2; u32 count+binary-framed rows iff>=3; Common |
| 04F3CC01 [ctor ASM](../../evidence/native/functions/00C954F0_FireplaceProduct_Construct.asm) ([C](../../evidence/native/functions/00C954F0_FireplaceProduct_Construct.c)) | [reader ASM](../../evidence/native/functions/00C955C0_FireplaceProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C955C0_FireplaceProduct_ReadCatalog.c)) / 00c95658 | u32 outer; key table iff>=2; Common |

All prefix readers physically use ECX product plus one reader pointer/RET4, with AL status where returned. SculptC9B050 below2 sets product88=1 and omits the base version; >=2 allows C93470 to read it. Paint always enters C93470 with its constructed flag0. Roofpattern table begins3. Foundation kind10 has no preCommon presets; ONLY7/8/9 do. Wall has an independent partition version. Object alone has explicit supported outer17..34. CWAL always has reference table/preset count; IDs stay32bits and native retained row stride20 is not wire width.

## Complete shared framing and physical ABI

[Common ASM](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.asm) ([C](../../evidence/native/functions/00C93100_CatalogProduct_ReadCommonFields.c)) supplies the original pre10 hash and pre9 icon-TGI gates, legacy strings/status and constructor defaults. [Common default ASM](../../evidence/native/functions/00C93020_CatalogProduct_ConstructCommonDefaults.asm) ([C](../../evidence/native/functions/00C93020_CatalogProduct_ConstructCommonDefaults.c)); no finite-price or nonzero-icon population policy follows. [739400 ASM](../../evidence/native/functions/00739400_CatalogWire_ReadWideString.asm) ([C](../../evidence/native/functions/00739400_CatalogWire_ReadWideString.c)) reads wrapping seven-bit bytecounts, floor(count/2) raw big-endian units. It is also the object instance-name format.

Preset text instead uses [7D96B0 ASM](../../evidence/native/functions/007D96B0_StreamContext_ReadUtf16String.asm) ([C](../../evidence/native/functions/007D96B0_StreamContext_ReadUtf16String.c)): UInt32 UNIT count followed by twice that many bytes. Its actual four-word call is shown in the complete [4DD920 ASM](../../evidence/native/functions/004DD920_Stream_ReadUtf16UnitsEndian.asm) ([annotated actual C](../../evidence/native/functions/004DD920_Stream_ReadUtf16UnitsEndian.c)). Four physical cdecl words are stream,destination,unitCount,endianFlag; plainRET, AL status. The scoped physical signature now records all four words while preserving the first two pointer types/storage and UInt32 return; only AL is Boolean status. The callsite-local4DD939 __thiscall ECX+twoDWORD/RET8 override corrects stack propagation, so actual C now tests endianFlag!=1. The returned EAX read count is compared with2*unitCount; no global stream/vtable type is inferred. Fourth input after three pushes is ESP+1C; flag1 avoids swapping, other flags ROL each unit8. Managed bounds-before-multiply is a deliberate safe span contract, not native overflow parity.

Fixed binary preset rows consume Boolean,UInt32 byteLength,payload,UInt32 ID regardless of Boolean value. Object/CWAL use versioned Boolean to choose UInt32-byte-length binary versus UInt32-unit-count text. Extra CWAL fields are subsort>=10, group/sort>=12. Semantic 5BFE50 parsing/failure is not executed by structural projection; no semantic parser is copied.

[99D570 ASM](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.asm) ([C](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.c)) requires nonzero relativeoffset, skips seek entirely when extent0, otherwise signed32(unchecked(saved+offset-4)), counted TGI vector, then restoration/status. Extent is not a byte cap. Existing [7D9930 ASM](../../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.asm) ([C](../../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.c)) and [7D7760 ASM](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.asm) ([C](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.c)) own full keys; zero words are retained. Host bounds/truncation exceptions differ from native partial mutation/status and allocation failure.

## Icon consumer and deliberate limits

Actual [D4BBA0 ASM](../../evidence/native/functions/00D4BBA0_UIThumbnail_SelectCatalogIconOrDeriveKey.asm) ([annotated C](../../evidence/native/functions/00D4BBA0_UIThumbnail_SelectCatalogIconOrDeriveKey.c)) establishes that actual Foundation316C78F2 IS a selected full-key native/current registry path; obsolete04F88964 is not the current entry. Ten cdecl words/16-byte output/plainRET, product68/6C UInt64, key mask/output raw size and no native icon-existence check remain unchanged. The separate [icon selection evidence](catalog-common-icon-selection.md) covers C8F330 and the original managed frontend/Bridge boundary.

Native lookup returns an already-loaded product, so ordinal/typed resource/semantic preset failures may reject before/after Common. Structural projection may return Common for a prefix whose suffix would fail native full load. Full CFIR still checks width and seven parts, while its icon path stops after Common. Existing full wrapper family readers remain explicitly unresolved migration consumers; known wrapper gate mismatches are not normative behavior.

All listed function envelopes, instruction operands, constructor/vtable joins and necessary data were checked against pristine PC1.67. Internal nonowned alignment bytes are excluded from function ownership. Actual stored C retains inferred-type/ABI artifacts where the instruction evidence is stronger. Structural transport does not establish full native product admission, image population or runtime acceptance. No tests, parser vectors, compiler, build, game or original-target execution is claimed.

## Moodlet topic arrays: private import and public wrapper

The public managed service result is not identical to its private native import.
Pristine `ScriptCore.UserToolUtils.GetMoodletEffectTextIds` (MethodDef06000C75)
and `GetMoodletEffectTextValues` (06000C76) both call their import at IL0015,
store the returned array at001A, test it at001B..001C and, on null, allocate a
new zero-length UInt32 array at001E..0024. A nonnull array is returned unchanged
at0025..0026. Each empty-result normalization allocates its own array; the
reference is not a retained singleton. See the [complete caller IL](../../evidence/managed/callers.il.txt)
and [annotated original managed type](../../evidence/managed/types/ScriptCore.UserToolUtils.cs).
The central managed reference identifies the package resource, assembly and MVID.

The imports are separately registered as [IDs](../../api/ScriptCore.UserToolUtils/0x01189fb0.md)
atCE64D0 and [values](../../api/ScriptCore.UserToolUtils/0x01189fb8.md) atCE6620.
Their existing original windows show no-array exits for absent catalog service,
unresolved product, zero topic count, absent managed host interface or failed
temporary allocation. Otherwise they allocate count*4 bytes, request each row,
copy the selected raw DWORD on a successful row query, marshal the array through
host virtual50 and release the temporary native buffer. The two row outputs
select IDs versus values; this boundary performs no signed numeric conversion
of the copied DWORD. The catalog count/row callees and their versioned producer
remain separate evidence boundaries; no complete malformed-product, lookup,
allocation-failure or CLR marshaling equivalence is asserted here.

Sources: [IDs ASM](../../evidence/native/functions/00CE64D0_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletEffectTextIdsImpl.asm)
([C](../../evidence/native/functions/00CE64D0_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletEffectTextIdsImpl.c)),
[values ASM](../../evidence/native/functions/00CE6620_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletEffectTextValuesImpl.asm)
([C](../../evidence/native/functions/00CE6620_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletEffectTextValuesImpl.c)).

An adapter replacing the public IUserToolUtils methods must preserve the
nonnull managed result. A native-import adapter may instead return null and
let these original wrappers normalize it. A native no-array branch therefore
cannot justify exposing null from a replacement public service. This is a
static original contract, not an executed catalog UI or error-path test.
