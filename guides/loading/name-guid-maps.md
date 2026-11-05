# PC 1.67 name/GUID maps

## Scope

Static original `/TS3W.exe` instructions establish the NGMP reader, native
lookup, hash and selected resource publication path. Analyst names describe
reviewed behavior; they are not recovered EA symbols. Reference identity is
centralized in the [proof overview](../../references/retained-proof-overview.md). No runtime, locale,
malformed-stream or package-order test was executed.

## Factory and producer/consumer chain

The NGMP factory registers resource type `0xF3A38370` and separate factory
identity `0xBD73F5E7`. Its base constructor stores the type at `+0x0C`, identity
at `+0x08`; reversing them would resolve the wrong resource. The retained
[original factory dispatch table](name-guid-factory-vtable.tsv) ties allocation
slot `+0x34` to `0x00934060`, type-matching reader dispatch `+0x24` to
`0x0072F0A0`, and final stream reader adapter `+0x3C` to `0x00934210`.
The adapter queries interface `0x15991A1F` and obtains the context's stream
before calling the actual NGMP decoder at **`0x00934090`**.

`0x00911250` is a generic unique-pair map insertion routine, **not the resource
parser**. Its `RET 0x0C` consumes output, pair pointer and an unused word;
the old two-argument decompiler signature omitted the last stack word.

The manager's load method enumerates provider nodes in returned list order,
then type-filtered 16-byte keys per provider. Loaded resource maps are copied
into an ordered vector of 32-byte map objects. Nonempty maps deep-copy their
bucket arrays and 24-byte key/value/next nodes. This establishes a concrete
publication stage, not the physical package/provider precedence behind that
enumeration. Acquire/release virtual slots around the map copy and the
manager's global publication are visible; full concurrent refresh/teardown
coordination remains open.

## Wire format and admission

| Offset | Field |
| --- | --- |
| 0 | UInt32 little-endian version; must equal one |
| 4 | UInt32 little-endian row count |
| 8 + 16*i | UInt64 little-endian name hash |
| 16 + 16*i | UInt64 little-endian GUID |

A stream-reader object uses endian flag one. Version/read and count/read
success are checked before validating `count * 16` against available bytes.
The multiplication is unsigned 32×32→64. Admission failure returns AL false
before clearing the existing map. Admitted input clears it, then reads pairs
and inserts uniquely. The loop uses signed `JLE`/`JL`; do not turn those into
unsigned comparisons merely because the serialized count is UInt32.

The bound helper gets UInt32 position and cached/live UInt32 end. It first
rejects unsigned position greater than end, then uses `CDQ` to sign-extend the
position before a 64-bit subtraction from the zero-extended end. Ordinary
positions below `0x80000000` behave as `end-position >= count*stride`; the
high-bit case has different arithmetic. The actual C preserves this via
`CONCAT44` and a sign-derived high word.

Each row read accumulates a success byte, but the final admitted path does not
check it again: after auxiliary-reader release it executes `MOV AL,1`.
A changing/short-reading stream can therefore produce partial or unspecified
row data despite a true return. That limitation is not a safe parser design
recommendation. There is no exact-EOF requirement or one-million-row cap in
this reader. Its accounting update uses `(uniqueCount+3)*24`.

The incoming stream's stack slot is reused for the row count; the actual
Ghidra C consequently renders some count uses as casts of `stream`. This is a
stack-variable artifact, not a pointer-based row count or replacement stream.

## Equality, duplicate and missing behavior

Within a map, bucket selection is unsigned low-DWORD hash modulo bucket count,
while equality compares both hash DWORDs. The first row for a duplicate full
hash retains its GUID. Lookup walks maps in vector order and returns the
**first found** value, even zero. A zero mapping therefore hides later nonzero
values. An absent hash also returns zero; return value alone cannot distinguish
an authored zero from absence. Original provider/package precedence remains open.

## UTF-16 hash

The public by-name path returns zero for null. Otherwise its zero-terminated
wrapper scans to the first UTF-16 NUL and excludes that terminator and any
suffix. Empty input hashes to the offset basis. The separate explicit-count
helper does include zero code units inside its requested count.

For each 16-bit unit, call CRT `towlower`, take its zero-extended 16-bit result,
then perform FNV-1:

```text
h = 0xCBF29CE484222325
for each admitted UTF-16 unit:
    h = ((h * 0x00000100000001B3) modulo 2^64) XOR foldedUnit
```

Multiplication precedes XOR. This is not UTF-8 hashing or FNV-1a. Neither
invariant Unicode lowercase nor ASCII-only folding is established for all
inputs: the effective CRT locale and initialization/failure paths still need
review. Surrogate/non-ASCII behavior has no execution acceptance.

## ABI and export boundaries

The registered hash entry is cdecl with one UInt64 stack argument and returns
EDX:EAX. Its manager method is ECX thiscall, `RET 8`. The by-name entry converts
one managed handle through host virtual `+0x58`, then uses the null-aware wide
name path. The inherited one-byte by-name body was incorrect; its original
33-byte `CALL` through `RET` ends at `0x00744B60`.

Per-call signatures were verified against original ECX setup and pushes for
stream operations, factory dispatch, provider enumeration and resource loads.
They remove false decompiler stack aliases. The shared false leaf consumes
nine opaque words with `RET 0x24`; its upper EAX and broader slot meaning are
unspecified. The map growth call pushes integer additional count one; the
old tiny-float literal was a type artifact, not an authored numeric constant.

## Canonical original functions

| Address / analyst name | Evidence |
| --- | --- |
| `0x004ddab0` — `Stream_ReadUInt64` | [original ASM](../../evidence/native/functions/004DDAB0_Stream_ReadUInt64.asm) ([annotated pseudocode](../../evidence/native/functions/004DDAB0_Stream_ReadUInt64.c)) |
| `0x005491d0` — `ReturnFalse_Pop36` | [original ASM](../../evidence/native/functions/005491D0_ReturnFalse_Pop36.asm) ([annotated pseudocode](../../evidence/native/functions/005491D0_ReturnFalse_Pop36.c)) |
| `0x0059d6f0` — `NameGuidMaps_GetGlobal` | [original ASM](../../evidence/native/functions/0059D6F0_NameGuidMaps_GetGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/0059D6F0_NameGuidMaps_GetGlobal.c)) |
| `0x0059d730` — `NameGuidMaps_FindFirstByHash` | [original ASM](../../evidence/native/functions/0059D730_NameGuidMaps_FindFirstByHash.asm) ([annotated pseudocode](../../evidence/native/functions/0059D730_NameGuidMaps_FindFirstByHash.c)) |
| `0x0059d790` — `NameGuidMaps_FindByWideName` | [original ASM](../../evidence/native/functions/0059D790_NameGuidMaps_FindByWideName.asm) ([annotated pseudocode](../../evidence/native/functions/0059D790_NameGuidMaps_FindByWideName.c)) |
| `0x0059d810` — `NameGuidMaps_Construct` | [original ASM](../../evidence/native/functions/0059D810_NameGuidMaps_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/0059D810_NameGuidMaps_Construct.c)) |
| `0x0059d850` — `NameGuidMaps_RegisterIfAbsent` | [original ASM](../../evidence/native/functions/0059D850_NameGuidMaps_RegisterIfAbsent.asm) ([annotated pseudocode](../../evidence/native/functions/0059D850_NameGuidMaps_RegisterIfAbsent.c)) |
| `0x0059d950` — `NameGuidMaps_Destroy` | [original ASM](../../evidence/native/functions/0059D950_NameGuidMaps_Destroy.asm) ([annotated pseudocode](../../evidence/native/functions/0059D950_NameGuidMaps_Destroy.c)) |
| `0x0059d9b0` — `NameGuidMaps_AppendProviderMaps` | [original ASM](../../evidence/native/functions/0059D9B0_NameGuidMaps_AppendProviderMaps.asm) ([annotated pseudocode](../../evidence/native/functions/0059D9B0_NameGuidMaps_AppendProviderMaps.c)) |
| `0x0059db10` — `NameGuidMaps_LoadAllProviders` | [original ASM](../../evidence/native/functions/0059DB10_NameGuidMaps_LoadAllProviders.asm) ([annotated pseudocode](../../evidence/native/functions/0059DB10_NameGuidMaps_LoadAllProviders.c)) |
| `0x0072f0a0` — `ResourceFactory_ReadMatchingType` | [original ASM](../../evidence/native/functions/0072F0A0_ResourceFactory_ReadMatchingType.asm) ([annotated pseudocode](../../evidence/native/functions/0072F0A0_ResourceFactory_ReadMatchingType.c)) |
| `0x0072f110` — `ResourceFactory_ConstructIdentity` | [original ASM](../../evidence/native/functions/0072F110_ResourceFactory_ConstructIdentity.asm) ([annotated pseudocode](../../evidence/native/functions/0072F110_ResourceFactory_ConstructIdentity.c)) |
| `0x00744b20` — `NameGuidMapService_GetGuidByNameHash` | [original ASM](../../evidence/native/functions/00744B20_ScriptCore_NameGuidMapService_NameGuidMapService_GetGuidByNameHash.asm) ([annotated pseudocode](../../evidence/native/functions/00744B20_ScriptCore_NameGuidMapService_NameGuidMapService_GetGuidByNameHash.c)) |
| `0x00744b40` — `ScriptCore.NameGuidMapService::NameGuidMapService_GetGuidByName` | [original ASM](../../evidence/native/functions/00744B40_ScriptCore_NameGuidMapService_NameGuidMapService_GetGuidByName.asm) ([annotated pseudocode](../../evidence/native/functions/00744B40_ScriptCore_NameGuidMapService_NameGuidMapService_GetGuidByName.c)) |
| `0x007cff80` — `NameHash64_Fnv1FoldedUtf16Units` | [original ASM](../../evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.asm) ([annotated pseudocode](../../evidence/native/functions/007CFF80_NameHash64_Fnv1FoldedUtf16Units.c)) |
| `0x007d00c0` — `NameHash64_Utf16Z` | [original ASM](../../evidence/native/functions/007D00C0_NameHash64_Utf16Z.asm) ([annotated pseudocode](../../evidence/native/functions/007D00C0_NameHash64_Utf16Z.c)) |
| `0x007d7990` — `StreamReader_ReleaseAuxiliary` | [original ASM](../../evidence/native/functions/007D7990_StreamReader_ReleaseAuxiliary.asm) ([annotated pseudocode](../../evidence/native/functions/007D7990_StreamReader_ReleaseAuxiliary.c)) |
| `0x007d79f0` — `StreamReader_AccumulateStatus` | [original ASM](../../evidence/native/functions/007D79F0_StreamReader_AccumulateStatus.asm) ([annotated pseudocode](../../evidence/native/functions/007D79F0_StreamReader_AccumulateStatus.c)) |
| `0x007d7a00` — `StreamReader_CheckArrayBytes` | [original ASM](../../evidence/native/functions/007D7A00_StreamReader_CheckArrayBytes.asm) ([annotated pseudocode](../../evidence/native/functions/007D7A00_StreamReader_CheckArrayBytes.c)) |
| `0x007d8410` — `StreamReader_Attach` | [original ASM](../../evidence/native/functions/007D8410_StreamReader_Attach.asm) ([annotated pseudocode](../../evidence/native/functions/007D8410_StreamReader_Attach.c)) |
| `0x007d93e0` — `StreamReader_Construct` | [original ASM](../../evidence/native/functions/007D93E0_StreamReader_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/007D93E0_StreamReader_Construct.c)) |
| `0x00911250` — `U64PairMap_InsertUnique` | [original ASM](../../evidence/native/functions/00911250_U64PairMap_InsertUnique.asm) ([annotated pseudocode](../../evidence/native/functions/00911250_U64PairMap_InsertUnique.c)) |
| `0x00923640` — `U64PairMap_Find` | [original ASM](../../evidence/native/functions/00923640_U64PairMap_Find.asm) ([annotated pseudocode](../../evidence/native/functions/00923640_U64PairMap_Find.c)) |
| `0x00933f20` — `NameGuidMapFactory_Register` | [original ASM](../../evidence/native/functions/00933F20_NameGuidMapFactory_Register.asm) ([annotated pseudocode](../../evidence/native/functions/00933F20_NameGuidMapFactory_Register.c)) |
| `0x00933f90` — `NameGuidMapResource_Construct` | [original ASM](../../evidence/native/functions/00933F90_NameGuidMapResource_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/00933F90_NameGuidMapResource_Construct.c)) |
| `0x00934060` — `NameGuidMapResource_Allocate` | [original ASM](../../evidence/native/functions/00934060_NameGuidMapResource_Allocate.asm) ([annotated pseudocode](../../evidence/native/functions/00934060_NameGuidMapResource_Allocate.c)) |
| `0x00934090` — `NameGuidMapResource_ReadVersion1` | [original ASM](../../evidence/native/functions/00934090_NameGuidMapResource_ReadVersion1.asm) ([annotated pseudocode](../../evidence/native/functions/00934090_NameGuidMapResource_ReadVersion1.c)) |
| `0x00934210` — `NameGuidMapResource_ReadFromContext` | [original ASM](../../evidence/native/functions/00934210_NameGuidMapResource_ReadFromContext.asm) ([annotated pseudocode](../../evidence/native/functions/00934210_NameGuidMapResource_ReadFromContext.c)) |
| `0x0093adb0` — `U64PairMap_CopyConstruct` | [original ASM](../../evidence/native/functions/0093ADB0_U64PairMap_CopyConstruct.asm) ([annotated pseudocode](../../evidence/native/functions/0093ADB0_U64PairMap_CopyConstruct.c)) |

## Open questions

- Physical provider/package ordering, resource tombstones and exact reload rules.
- Effective CRT locale, failed locale initialization and non-ASCII folding.
- Full stream implementations, changing/short-read failure propagation and
  allocation failures; the reader's true return alone is insufficient.
- Manager initialization, concurrent readers, refresh and complete disposal.
- Generic factory slots not identified in the table; no missing-feature policy
  is inferred from a shared false-return stub.
