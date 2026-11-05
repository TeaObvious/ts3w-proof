# Swarm collection traversal and mixed description fields

This selected static review uses PC 1.67 identified in the [overview](../../references/retained-proof-overview.md).
Ghidra operations explicitly targeted `/TS3W.exe`. Names are analyst assignments.
No collection, malformed-input, decoder, effect or rendering test was executed.

## Collection ABI, factories and mutation

The collection reader has ECX collection plus one stream stack word, RET4,
AL Boolean. Correcting the missing receiver removes a false uninitialized local
collection pointer and false DWORD result. Header UInt16 must equal2. It reads
two UInt16-kind groups, each ending at0xffff. Factory slots are
0x011dc0a4+kind*28 and0x011dc7a8+kind*32. Nonnull factories receive stream and
version after registered signed-DWORD min/max checks of the UInt16 version.
No local kind-table bounds guard is present. A null factory immediately reads
the next kind; it does **not** consume version/count or skip a length-delimited
unknown payload. Registration contents and supported kinds remain unexpanded.
[ASM](../../evidence/native/functions/00922FD0_SwarmCollection_Read.asm) ([annotated pseudocode](../../evidence/native/functions/00922FD0_SwarmCollection_Read.c))

Each admitted UInt32 count reaches pointer-vector resizing **before** a signed
positive iteration gate. Factory calls are cdecl(stream,version). Replacement
retains new+4, stores it, then releases old+4; zero resets its count to1 before
ECX deleting-destructor(1). Null results do not fail the collection reader.
Explicit version failure returns AL0 after prior mutations, with no rollback.
Resize/allocation failure and factory behavior remain distinct boundaries.
[ASM](../../evidence/native/functions/00922FD0_SwarmCollection_Read.asm) ([annotated pseudocode](../../evidence/native/functions/00922FD0_SwarmCollection_Read.c))

The selected vector helper takes ECX vector plus requestedUInt32, RET4. Growth
delegates insertion of requested-current zero pointer values; shrink/equal uses
move/destruction helpers and adjusts end. It establishes no local hard count
limit or complete allocation/overflow safety.
[ASM](../../evidence/native/functions/00922F60_SwarmRefVector_Resize.asm) ([annotated pseudocode](../../evidence/native/functions/00922F60_SwarmRefVector_Resize.c))

## Word readers and byte strings

The original cdecl stream primitives take stream, output pointer and full DWORD
endian flag. Flag1 keeps native little-endian; other values swap. They return AL
false on short reads, potentially after partial output modification. Collection
word reads use flag0 and ignore these results.
[UInt16 ASM](../../evidence/native/functions/004DD8E0_Stream_ReadUInt16.asm) ([annotated pseudocode](../../evidence/native/functions/004DD8E0_Stream_ReadUInt16.c)),
[UInt32 ASM](../../evidence/native/functions/004DD980_Stream_ReadUInt32.asm) ([annotated pseudocode](../../evidence/native/functions/004DD980_Stream_ReadUInt32.c)),
[UInt64 ASM](../../evidence/native/functions/004DDAB0_Stream_ReadUInt64.asm) ([annotated pseudocode](../../evidence/native/functions/004DDAB0_Stream_ReadUInt64.c))

The string reader is cdecl(stream,stringBuffer), returning the same stream
pointer. It clears nonempty output, uses stream virtual+0x30 with ECX and
`(&byte,1)`, appends nonzero bytes, and stops on NUL or any short read. There is
no length prefix, printable-ASCII admission, UTF conversion or local maximum.
EOF can leave partial bytes with no failure return. Scoped ABI overrides remove
the old false return-address/local alias in its actual C; the argument's stack
storage is reused for the one-byte scratch read.
[ASM](../../evidence/native/functions/008CA2E0_Stream_ReadZeroTerminatedByteString.asm) ([annotated pseudocode](../../evidence/native/functions/008CA2E0_Stream_ReadZeroTerminatedByteString.c))

## Descriptions and components

After the kind groups, UInt16 version and UInt32 count resize an array of
72-byte memory records, then decode the actual positive length. The cdecl
description reader takes stream, versionDWORD and destination, returns void and
ignores primitive failure flags. Selected destination writes are:

| Description memory offset | Wire operation |
| --- | --- |
| +0 | BE32 masked0x007fffff |
| +4,+8 | BE32 |
| +0x0c,+0x10 | LE32 raw words |
| +0x14 | BE32 |
| +0x18 | Byte |
| +0x1c | Delegated0x008c0c50 |
| +0x24,+0x28,+0x2c | LE32 raw words |
| +0x34 | BE32 |
| +0x38 | Component vector resized using BE32 count |

The nested component **memory** stride is128 bytes. It reads byte→DWORD+0,
BE32→low byte→DWORD+4, BE16+8, BE32+0x18, delegated0x008c9b80 at+0x1c,
then LE32+0x0c/+0x10/+0x14, bytes+0x40/+0x41, delegated0x0092f440 at+0x44,
BE32+0x54..+0x70, BE16+0x74/+0x76 and BE32+0x78/+0x7c. Version>=2 adds
bytes+0x42/+0x43; lower versions leave them to default/prior storage. Component
count iteration uses unsigned comparisons. Nested field lengths/types are
unexpanded;72/128 memory strides are not fixed wire lengths.
[ASM](../../evidence/native/functions/0092F760_SwarmDescription_Read.asm) ([annotated pseudocode](../../evidence/native/functions/0092F760_SwarmDescription_Read.c))

At0092F867 MOVZX takes the low byte **after** BE32 decoding, not the first
serialized byte. This width boundary and the mixed flag0/1 reads must survive
any independent decoder reconstruction.
[ASM](../../evidence/native/functions/0092F760_SwarmDescription_Read.asm) ([annotated pseudocode](../../evidence/native/functions/0092F760_SwarmDescription_Read.c))

## Lookup tails and result limits

The ID/key map and name list each read signed DWORD IDs: every negative value
terminates, including0x80000000. Nonnegative key-map IDs pair with BE64 keys.
The generic map preserves first duplicate keys; this caller initializes only
the low DWORD of its64-bit value. The other value DWORD is not established.
The separate unused third call argument has only its low byte initialized.
[ASM](../../evidence/native/functions/00922FD0_SwarmCollection_Read.asm) ([annotated pseudocode](../../evidence/native/functions/00922FD0_SwarmCollection_Read.c))

The existing generic map leaf compares full64-bit keys and copies key64/value64;
its allocator and unused argument are separately annotated.
[ASM](../../evidence/native/functions/00911250_U64PairMap_InsertUnique.asm) ([annotated pseudocode](../../evidence/native/functions/00911250_U64PairMap_InsertUnique.c))

The name tail frees prior string storage, resets a20-byte entry vector and pairs
IDs with zero-terminated bytes. A lower-bound helper receives a flag from the
vector; complete comparison/case/duplicate rules are unresolved. Final negative
sentinel and temporary cleanup lead to AL1. This does not prove all primitive
reads or factories succeeded. Partial mutation, stream failures, concrete
registrations, nested codecs, container admission and live effect consumers
remain open.
[ASM](../../evidence/native/functions/00922FD0_SwarmCollection_Read.asm) ([annotated pseudocode](../../evidence/native/functions/00922FD0_SwarmCollection_Read.c))
