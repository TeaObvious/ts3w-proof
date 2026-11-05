# Enumeration field lookup, value width and cache boundaries

This bounded static PC 1.67 contract follows the separately documented
[enumeration name/hash roots](enum-native-roots.md). It explains their existing
native dependencies D7CC60, E71040, eight typed field lookups and two temporary
slot accessors. The registered roots D7CE10/D7CEA0 remain undefined code
candidates; this packet neither creates them nor establishes runtime execution.
The native [contract index](../../evidence/native/bridge/enum-lookup/contract.json)
and original [dispatch tables](../../evidence/native/bridge/enum-lookup/dispatch-tables.json)
record exact body intervals, direct calls, byte counts and unresolved dependencies.
Names below are analyst descriptions, not recovered original symbols.

## Descriptor resolution and dispatch

E71040 ([ASM](../../evidence/native/bridge/enum-lookup/00E71040_RuntimeTypeDescriptor_ResolveClass.asm) ([C](../../evidence/native/bridge/enum-lookup/00E71040_RuntimeTypeDescriptor_ResolveClass.c))) reads the byte at
`descriptor+6`. It subtracts one and checks the result unsigned against 29 before
using thirty original DWORD entries at E71208. Tags 11h and 12h return the DWORD
at `descriptor` directly. Primitive cases return that DWORD when nonzero,
otherwise a tag-specific runtime global. Other admitted cases call or tail-call
E6B070, E6B190, E6E340, E707A0 or E70990. In particular, the E6B190 path sets EDI
from the descriptor before calling; its generated zero-argument prototype does
not settle that helper's real inputs.

The default calls diagnostic E46E50 with `implement me 0x%02x\n`, then E46E00
with the original `mono/metadata/class.c` assertion context and line 0E8Dh.
EAX becomes zero **if those diagnostic calls return**. This is not a proved
nonfatal error path. The descriptor is dereferenced without a local null guard;
plain `RET` leaves stack cleanup to the caller. Runtime global initialization,
complex type construction and concurrent access remain separate contracts.

D7CC60 ([ASM](../../evidence/native/bridge/enum-lookup/00D7CC60_EnumFieldLookup_ByUnderlyingValue.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7CC60_EnumFieldLookup_ByUnderlyingValue.c))) reads
`byte[[argument1+4]+6]`. Its nine DWORDs at D7CD44 admit tags 3..11; other tags
return zero. Each admitted path loads 011EF514 into ECX for its typed child.
The dispatcher does not use its incoming ECX value. All paths use `RET 0C`.
Tags 10/11 forward low and high value words; the others forward only the low
word. The children further restrict comparison to the widths below.

| Descriptor tag | Child / original body pair | Read and comparison width | Warm guard ordering |
| --- | --- | --- | --- |
| 3, 7 | D7A960: [ASM](../../evidence/native/bridge/enum-lookup/00D7A960_EnumFieldCache_FindUInt16.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7A960_EnumFieldCache_FindUInt16.c)) | 16 bits | Unsigned WORD `CMP` / `JB`. |
| 4 | D7A6D0: [ASM](../../evidence/native/bridge/enum-lookup/00D7A6D0_EnumFieldCache_FindInt8.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7A6D0_EnumFieldCache_FindInt8.c)) | 8 bits | Signed BYTE `CMP` / `JL`. |
| 5 | D7A440: [ASM](../../evidence/native/bridge/enum-lookup/00D7A440_EnumFieldCache_FindUInt8.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7A440_EnumFieldCache_FindUInt8.c)) | 8 bits | Unsigned BYTE `CMP` / `JB`. |
| 6 | D7ABF0: [ASM](../../evidence/native/bridge/enum-lookup/00D7ABF0_EnumFieldCache_FindInt16.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7ABF0_EnumFieldCache_FindInt16.c)) | 16 bits | Signed WORD `CMP` / `JL`. |
| 8 | D7B100: [ASM](../../evidence/native/bridge/enum-lookup/00D7B100_EnumFieldCache_FindInt32.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7B100_EnumFieldCache_FindInt32.c)) | 32 bits | Signed DWORD `CMP` / `JL`. |
| 9 | D7AE80: [ASM](../../evidence/native/bridge/enum-lookup/00D7AE80_EnumFieldCache_FindUInt32.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7AE80_EnumFieldCache_FindUInt32.c)) | 32 bits | Unsigned DWORD `CMP` / `JB`. |
| 10 | D7B640: [ASM](../../evidence/native/bridge/enum-lookup/00D7B640_EnumFieldCache_FindInt64.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7B640_EnumFieldCache_FindInt64.c)) | 64 bits | Signed high DWORD (`JL`/`JG`), unsigned low DWORD (`JB`) when high words tie. |
| 11 | D7B380: [ASM](../../evidence/native/bridge/enum-lookup/00D7B380_EnumFieldCache_FindUInt64.asm) ([C](../../evidence/native/bridge/enum-lookup/00D7B380_EnumFieldCache_FindUInt64.c)) | 64 bits | Unsigned high and low DWORD comparisons. |

The value words occupy scalar stack storage. The pointer-looking value parameter
in the preserved dispatcher and byte-child decompilations is not dereferenced;
it is a type projection error, not an extra value pointer in the physical ABI.

Widths and signedness come from the actual memory operands and conditional
branches, not from generated C pointer types or the signedness of a load.
For example, both 16-bit cold paths use `MOVZX`; the warm rejection branch
establishes their different orderings. At widths below 64, higher input bits
are ignored by the visible matching logic. This is not range validation or
proof that the UInt64 managed input was sign-extended. On a miss, the upstream
roots retain their original full UInt64 words for `%I64x` formatting.

## Class-keyed cache and field data

The eight typed children use the same map at `receiver+0B4C`, passing the raw
class-record pointer as key to 5325C0. This is a shared cache across those typed
paths, with pointer identity rather than an enum name as the supplied key. A returned cache entry supplies:

| Offset | Observed use |
| --- | --- |
| +04 | Entry count used to compute the end of the packed values array. |
| +08 | Packed value array, stride 1/2/4/8 according to the child. |
| +0C | Parallel array of four-byte field pointers. |

### Confirmed local roles in the byte children

The [UInt8](../../evidence/native/bridge/enum-lookup/00D7A440_EnumFieldCache_FindUInt8.c)
and [Int8](../../evidence/native/bridge/enum-lookup/00D7A6D0_EnumFieldCache_FindInt8.c)
exports retain six confirmed whole-local names in each body, twelve bindings in total:

| Local name | Bounded role in each byte child |
| --- | --- |
| `classCacheMap` | Address of the map at receiver+0B4C, used for lookup and insertion. |
| `savedClassCacheMap` | Saved map address restored after field enumeration. |
| `classCacheKey` | Saved incoming class-record pointer passed by address as the cache key. |
| `fieldCursor` | Zero-initialized in/out word used by the field iterator; it is not a field ordinal. |
| `constantBlobCursor` | Cursor obtained from field+10 and advanced by the blob-prefix decoder before the compared byte is read. |
| `matchedField` | Initially null, overwritten by each exact cold-path match and used for the cold result. |

These are local binding names, not type, ownership or lifetime guarantees for
every physical EAX/ESI value. Two existing `fieldRecord` names are preserved;
40 other inventory rows remain held or deferred, including mixed-role parameters,
iterator-hint/container words and pending string/pair roles. Their names and
types have not been completed by this update.

The names do not establish blob bounds or cache-count parity. The published
cold-cache count remains the original field-derived `N`, while the copy loop
visits emitted temporary pairs. The duplicate/filter invariant below remains
open; no runtime defect or global ABI completion follows from these names.

The warm path calls a search helper, rejects its result if it equals the array
end, then rejects `query < candidate` under the ordering above. Otherwise it
returns the corresponding field pointer. Turning that local test into exact
membership also requires the search helper's ordering contract. Two existing
complete bodies are reused with original bytes independently checked:
ABA600 ([ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00aba600.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00aba600.c)))
is signed Int16 lower-bound, and B09680
([ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00b09680.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00b09680.c)))
is UInt32 lower-bound. Their older caller-specific descriptions do not constrain
this additional use. D73210, D73250, D73290, 82A5E0, 627330 and D732D0 remain
search dependencies in this packet.

On a cache miss, each child obtains `N = E6BA40(class)-1` and proceeds only when
N is signed-positive. It reserves temporary storage and iterates field-like
records through E70470 with a mutable cursor. It skips the exact eight bytes
`value__\0`. If `[field.type+4] & 0600h` is nonzero, it also skips the exact nine
bytes `_Deleted\0`. That bitmask's full type semantics and the iterator's order
are not established here.

A record's +0C pointer supplies its name. When its +10 blob pointer is zero,
the body follows E6FAA0 → E9CD80 → E9B500 selectors 0 and 3 → E9B3F0, storing
outputs into record+18 and record+10. The row used by E9B500 is the E9CD80 result
minus one, and its source structure is `[class]+0E8h`. E9B5B0 then receives the
blob pointer and an output-pointer address. The child reads exactly 1, 2, 4 or 8
bytes from that output pointer. This proves where the compared bytes come from;
it does not finish the metadata-table, blob-length decoder or malformed-input
contracts of those producers.

## Aliases and the count invariant

Every exact width-masked equality on the cold iteration overwrites a local
result pointer. The final matching record returned by that iterator therefore
wins the **current cold invocation**. This is an ordering observation, not a
claim about source declaration order or a reconstructed enum's preferred name.

Two temporary slot accessors are also fully captured:

| Accessor / original body pair | Candidate test and returned field slot |
| --- | --- |
| D78F80: [ASM](../../evidence/native/bridge/enum-lookup/00D78F80_UInt8FieldPairs_GetValueSlot.asm) ([C](../../evidence/native/bridge/enum-lookup/00D78F80_UInt8FieldPairs_GetValueSlot.c)) | Calls D73430; an equal byte candidate returns `candidate+4` directly, without insertion. New-key handling delegates to D77470 or D77530. Temporary pair stride is 8. |
| D792E0: [ASM](../../evidence/native/bridge/enum-lookup/00D792E0_UInt64FieldPairs_GetValueSlot.asm) ([C](../../evidence/native/bridge/enum-lookup/00D792E0_UInt64FieldPairs_GetValueSlot.c)) | Calls A862D0; an equal UInt64 candidate returns `candidate+8` directly. New-key handling delegates to D78920. Temporary pair stride is 16. |

Both pass an additional byte from `receiver+10h` to their search child; its
meaning is unresolved. Both return a **slot pointer**, which their enum callers
then overwrite with the current field pointer. Consequently, revisiting a slot
with an equal key replaces its field pointer. Full duplicate coalescing and
sorted insertion still depend on the search/insert children. The other six
width-specific slot accessors are listed as open direct targets in the index.

There is a separate count boundary: the cache's published count is N, the
original E6BA40 result minus one. The later copy loop visits only the temporary
pairs that actually exist; it does not recompute N from that loop. If aliases
coalesce or `_Deleted` filtering reduces the number of emitted pairs, the local
code does not prove that N equals the number of initialized array positions.
Allocation/initialization contracts and upstream field-count invariants could
matter. No definite runtime defect, untouched-tail contents or warm/cold alias
parity is asserted without those contracts and runtime observations.

## Concrete original managed inputs

A bounded metadata read of the already identified original ScriptCore assembly
finds eight enum types and 55 literal constants, with no repeated value within
any of those eight owners. The [input index](../../evidence/native/bridge/enum-lookup/scriptcore-enum-inputs.json)
records every TypeDef, underlying `value__` Field signature, literal Field and
Constant row, constant type and raw little-endian bytes. The inputs include:

| Original owner / field | Exact metadata evidence |
| --- | --- |
| DownloadContent+ContentType, TypeDef 0200000D | `value__` Field 0400000A has signature `06 09` (FIELD, UInt32); Downloaded Field 0400000B has Constant 0B000002, bytes `02 00 00 00`. |
| PersistedTypeCode, TypeDef 02000063 | `value__` Field 040000A9 has signature `06 05` (FIELD, Byte); its 27 constants encode 0..26 as single bytes. |
| StreamHost+ErrorCodes, TypeDef 02000082 | `value__` Field 04000126 has signature `06 08` (FIELD, Int32); EndOfStream Field 04000128 has Constant 0B00003D, bytes `FF FF FF FF` (-1), followed by values -2..-7 in later fields. |

These are original CLI input records, not proof that a native class descriptor
has already been materialized or that any of these values reached the roots.
No example here establishes an original alias execution. The eight-type bound
must not be generalized to the other nine identified assemblies.

## Verification and open contracts

All twelve existing defined body ranges were checked byte-for-byte against the
identified original PE and independently decoded with GNU and LLVM disassemblers.
The two data tables were read from original PE file offsets. Original ScriptCore
identities were checked against the central [managed input manifest](../../evidence/managed/reference-inputs.json).
System.Reflection.Metadata reads of its eight enum owners and 55 Constant rows
were independently compared with a Python PE/CLI stream-and-table decoder;
field names, signatures, attributes, Constant parents, types and raw bytes agree.
No target assembly, original native function or gameplay runtime was executed.

This packet does not close native field counting/enumeration, lazy metadata and
blob decoding, all search/insertion helpers, cache allocation/lifetime/locking,
complex descriptor cases, the roots' managed-string producer or formatter error
handling. Those are concrete dependencies, not reasons to discard the functions.
