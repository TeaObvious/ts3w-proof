# Sims3Pack framing, manifest fields and entry streams

## Reference and limits

This is static instruction/data analysis of the original PC 1.67 `TS3W.exe`
identified in the [central reference](../../references/retained-proof-overview.md). Analyst names describe
reviewed responsibilities; they are not recovered original symbols. No original
process or malformed package was executed. This selection covers container input,
manifest interpretation and bounded entry access, not complete content installation,
DCCache, entitlement, store transactions or all export producers.

## Header and manifest transfer

The normal layout is a little-endian UInt32 header-string length, its declared
byte string, two version bytes, a little-endian UInt32 manifest length, manifest
bytes, then payload. For the usual seven-byte `TS3Pack`, manifest starts at byte 17.
The reader copies at most seven string bytes into a zero-initialized eight-byte
buffer and compares `TS3Pack`; it seeks past the **declared** string length.
Consequently this leaf does not require the declared length to equal seven.

The length-prefixed string helper reads the four-byte length and returns that
**declared length**, including when its bounded output is shorter. Flag 1 keeps
native little-endian order; other values swap bytes. Null output rewinds input;
non-null output seeks to initial position+4+declared length and terminates what
was copied. A short prefix returns `FFFFFFFF`; copy/seek failure does not become
a comprehensive validity result. Capacity zero is not a safe general contract.

`Sims3Pack_CopyHeaderAndManifest(input,output,manifestOnly)` saves destination
position, compares the header, reads the version bytes and manifest length.
Its selected code does not validate version values or turn every helper failure
into a failure result. If `manifestOnly==0`, it calls the header writer with
length 7 and writes the two version bytes and manifest length. It copies a
nonzero manifest only when length is no greater than input virtual `+2C`.
Zero/oversized length skips this copy and the leaf still returns true. It rewinds
the output to its original position. Later XML parsing can reject the container.

The concrete source is a file stream with vtable `00FB9338`: `+1C` returns
the low 32 bits of file length, `+24` returns a 32-bit origin-relative position, and `+2C`
negates the origin 2 result to obtain **remaining bytes**, not total length.
`GetFileSizeEx` and `SetFilePointerEx` use 64-bit temporaries, but these wrappers
return 32-bit values and can wrap. Error sentinel propagation is not full bounds
validation. [Selected original vtable words](sims3pack-stream-vtables.tsv) tie
these slots and the child stream's slots to their reviewed bodies.

The real container-open entry is `009C7D90`; `009C7DD0` is inside it. It requires
read-mode bit 1, opens the supplied wide path, creates a manifest memory stream,
uses manifest-only transfer and stores the source's resulting position as payload
base at container`+118`. It then parses XML and marks byte`+114` open. Failure
branches close/release selected stream state; complete teardown is outside this
selection.

## XML and native entry fields

The real field parser starts at `009C5A00`; `009C5A60` is an interior address.
XML roots recognized here are `Sims3Package` and `Sims3ChallengePackage`. The
manifest parser handles root Type/SubType/AGSFlags, version strings, display and
description, package identity, dependencies, localized names/descriptions and
PackagedFile records. A zero package GUID may be derived from the first
non-thumbnail entry. Complete XML configuration, defaults and failure policy
remain open.

XML field names compare through byte-wise CRT case folding and then length.
This is distinct from ContentType **values**, which convert byte input to 16-bit
text and require exact, case-sensitive equality with original wide literals.
The [19 original type strings and IDs](sims3pack-resource-types.tsv) include
`sim`, `lot`, `household`, `CASpart`, `object`, `video` and `world`; an unrecognized
value maps to zero. The table preserves the original string addresses/bytes.
The converter's previous LPCWSTR input inference was wrong: the selected path
measures byte strlen and uses source encoding8/output encoding`10h`. Complete
malformed/non-BMP conversion behavior is not specified here.

| Entry field | Reviewed storage/effect |
| --- | --- |
| Name | Byte text is converted and assigned through the name setter; full setter truncation rules remain open. |
| Guid |128-bit value at`+08`, parsed through a separate hex helper. |
| Crc | Radix16 parse stored as 64 bits at`+18`; downstream checksum use is unresolved. |
| Length | Radix10 parse, low 32 bits of bits stored at`+20`. |
| Offset | Radix10 parse, low 32 bits of bits stored at`+24`; relative to payload base. |
| ContentType | Original string mapping stored at`+858`. |
| Thumbnail | Set state`+85C` to 1 unless already 2. |
| GreyedOutThumbnail | Set state`+85C` to 2; ordinary thumbnail cannot downgrade it. |
| EPFlags | Hexadecimal scanning into`+864`. |

Records occupy`868h` bytes. Repeated ordinary recognized fields assign again;
missing values retain the record producer's state. This selection does not
establish all constructor defaults, sign/overflow acceptance of numeric parsers,
field requirements or XML entity/NUL behavior. Do not substitute modern
`UInt32.TryParse` semantics without reviewing those numeric helpers.

## Child stream and lifetime

Opening an entry requires mode exactly 1 and a parent stream. The index is a
zero-extended UInt16, compared to the vector count derived from stride`868h`.
The out-of-range branch sets its selected record pointer to zero, then accesses
record`+24`. This leaf does **not** promise a graceful invalid-index failure;
caller validity must be established separately.

A successful parent seek to `payloadBase+Offset` precedes allocation of a24h-byte
child. Its constructor returns `this` in EAX and records relative position 0 at
`+10`, absolute base at`+14`, parent at`+18`, length at`+1C` and mode at`+0C`.
No parent AddRef appears in this constructor; ownership and final release remain
unresolved. Concurrent children share the parent's mutable seek/read position.

Child Read returns zero for wrong mode, zero remaining count or failed parent
seek. Otherwise it seeks to absoluteBase+position, requests unsigned
`min(length-position,requested)` bytes, and advances by the actual returned
count. Remaining arithmetic is UInt32 without a clamp in its leaf. These checks
bound access for a valid initial child position; they do not prove global offset,
overlap or parent-file validation for malformed containers.

## ABI and decompiler corrections

- Header transfer is cdecl with three stack arguments; its third is a byte flag.
- Length-prefixed read is cdecl with four arguments. UInt32 read has three;
  its endianness comparison uses the full DWORD.
- OpenRead and OpenEntry are ECX methods with `RET4`; entry index is UInt16.
- Child constructor is ECX plus four stack arguments, `RET10h`, returning this.
  Child Read is ECX plus two stack arguments, `RET8`.
- Reviewed stream indirect calls have instruction-verified per-call signatures.
  These remove false decompiler `return4`, wrong argument aliases and lost stack
  words. Their signatures specify calling convention/widths, not every concrete
  virtual target. The File position call's Win32 LARGE_INTEGER union rendering
  can still distort decompiler argument text: original instructions push handle,
  zero-low, zero-high, output64-bit pointer and FILE_CURRENT 1.

## Canonical complete original code

Each ASM file covers the entire Ghidra body envelope, including any interior
non-body bytes, and is checked against the reference PE. C is the actual annotated
Ghidra export. Decompiler expressions remain subordinate to original instructions.

| Analyst function | Original ASM and annotated pseudocode |
| --- | --- |
| `009c4290` Sims3Pack_CopyHeaderAndManifest | [ASM](../../evidence/native/functions/009C4290_Sims3Pack_CopyHeaderAndManifest.asm) ([C](../../evidence/native/functions/009C4290_Sims3Pack_CopyHeaderAndManifest.c)) |
| `009c7d90` Sims3Pack_OpenRead | [ASM](../../evidence/native/functions/009C7D90_Sims3Pack_OpenRead.asm) ([C](../../evidence/native/functions/009C7D90_Sims3Pack_OpenRead.c)) |
| `009c4840` Sims3Pack_OpenEntryStream | [ASM](../../evidence/native/functions/009C4840_Sims3Pack_OpenEntryStream.asm) ([C](../../evidence/native/functions/009C4840_Sims3Pack_OpenEntryStream.c)) |
| `009c5a00` Sims3Pack_ParsePackagedFileFields | [ASM](../../evidence/native/functions/009C5A00_Sims3Pack_ParsePackagedFileFields.asm) ([C](../../evidence/native/functions/009C5A00_Sims3Pack_ParsePackagedFileFields.c)) |
| `009c7490` Sims3Pack_ParseManifestXml | [ASM](../../evidence/native/functions/009C7490_Sims3Pack_ParseManifestXml.asm) ([C](../../evidence/native/functions/009C7490_Sims3Pack_ParseManifestXml.c)) |
| `0099b560` Sims3Pack_ResolveContentResourceType | [ASM](../../evidence/native/functions/0099B560_Sims3Pack_ResolveContentResourceType.asm) ([C](../../evidence/native/functions/0099B560_Sims3Pack_ResolveContentResourceType.c)) |
| `0049f180` ByteString_CompareCaseInsensitive | [ASM](../../evidence/native/functions/0049F180_ByteString_CompareCaseInsensitive.asm) ([C](../../evidence/native/functions/0049F180_ByteString_CompareCaseInsensitive.c)) |
| `004ddaf0` Stream_ReadLengthPrefixedBytes | [ASM](../../evidence/native/functions/004DDAF0_Stream_ReadLengthPrefixedBytes.asm) ([C](../../evidence/native/functions/004DDAF0_Stream_ReadLengthPrefixedBytes.c)) |
| `0049f000` Bytes_CompareCaseFolded | [ASM](../../evidence/native/functions/0049F000_Bytes_CompareCaseFolded.asm) ([C](../../evidence/native/functions/0049F000_Bytes_CompareCaseFolded.c)) |
| `004dd890` Stream_ReadByte | [ASM](../../evidence/native/functions/004DD890_Stream_ReadByte.asm) ([C](../../evidence/native/functions/004DD890_Stream_ReadByte.c)) |
| `004dd980` Stream_ReadUInt32 | [ASM](../../evidence/native/functions/004DD980_Stream_ReadUInt32.asm) ([C](../../evidence/native/functions/004DD980_Stream_ReadUInt32.c)) |
| `009c4430` Sims3PackEntryStream_Construct | [ASM](../../evidence/native/functions/009C4430_Sims3PackEntryStream_Construct.asm) ([C](../../evidence/native/functions/009C4430_Sims3PackEntryStream_Construct.c)) |
| `009c44b0` Sims3PackEntryStream_GetAvailable | [ASM](../../evidence/native/functions/009C44B0_Sims3PackEntryStream_GetAvailable.asm) ([C](../../evidence/native/functions/009C44B0_Sims3PackEntryStream_GetAvailable.c)) |
| `009c44f0` Sims3PackEntryStream_GetPosition | [ASM](../../evidence/native/functions/009C44F0_Sims3PackEntryStream_GetPosition.asm) ([C](../../evidence/native/functions/009C44F0_Sims3PackEntryStream_GetPosition.c)) |
| `009c4590` Sims3PackEntryStream_Read | [ASM](../../evidence/native/functions/009C4590_Sims3PackEntryStream_Read.asm) ([C](../../evidence/native/functions/009C4590_Sims3PackEntryStream_Read.c)) |
| `004dbb40` FileReadStream_Construct | [ASM](../../evidence/native/functions/004DBB40_FileReadStream_Construct.asm) ([C](../../evidence/native/functions/004DBB40_FileReadStream_Construct.c)) |
| `004db910` FileReadStream_GetPosition | [ASM](../../evidence/native/functions/004DB910_FileReadStream_GetPosition.asm) ([C](../../evidence/native/functions/004DB910_FileReadStream_GetPosition.c)) |
| `004dba10` FileReadStream_GetAvailable | [ASM](../../evidence/native/functions/004DBA10_FileReadStream_GetAvailable.asm) ([C](../../evidence/native/functions/004DBA10_FileReadStream_GetAvailable.c)) |
| `004db840` FileReadStream_GetLength | [ASM](../../evidence/native/functions/004DB840_FileReadStream_GetLength.asm) ([C](../../evidence/native/functions/004DB840_FileReadStream_GetLength.c)) |
| `004f3b50` EaString_FromUtf8Bytes | [ASM](../../evidence/native/functions/004F3B50_EaString_FromUtf8Bytes.asm) ([C](../../evidence/native/functions/004F3B50_EaString_FromUtf8Bytes.c)) |
| `004edc40` WideString_EqualsLiteral | [ASM](../../evidence/native/functions/004EDC40_WideString_EqualsLiteral.asm) ([C](../../evidence/native/functions/004EDC40_WideString_EqualsLiteral.c)) |

## Open questions

Full producer/export format; entry defaults and setters; XML hardening and text
encoding acceptance; numeric parse errors/overflow; CRC/GUID consumers; container
validation before entry opening; child/parent reference ownership; concurrent
reads and shutdown; compressed/encrypted payload layering; installation and save
side effects. No runtime acceptance, performance or platform result is claimed.
