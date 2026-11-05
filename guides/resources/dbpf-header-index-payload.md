# DBPF header, index and packed-resource decoding

Static original PC 1.67 TS3W.exe evidence. Names are analyst-assigned. The complete
selected writer→reader→lookup→decoded-consumer path is retained below; no original
game execution, every-provider coverage or complete malformed-input equivalence
is claimed. Reference binary identity is recorded centrally in the proof index.

## Header and physical index

The header reader4A7D20 reads96bytes, validates through4A7EA0 and stores header
count@36/index size@44. Selected index offset is lowDWORD@64 when nonzero, otherwise
legacyDWORD@40. HighDWORD@68 is not combined into the selected offset.

Header validation first computes magic46504244, unsigned major<3, count<07FFFFFF,
lowOffset<providerExtent, uint32(lowOffset+indexSize)<=providerExtent and index
version@60!=0. If (newLow|newHigh)!=0 AND legacy!=0, it then **replaces** that result
with newLow==legacy AND newHigh==0, even when the provisional result failed.
Provider extent and addition are32-bit unsigned. Neither inferred signed C fields
nor a normalized64-bit offset describe those instructions.

Provider index load4A9C70 bypasses row parsing for header count0. Otherwise parser
4AC510 uses the physical end buffer+(indexSize&FFFFFFFC), not header count.
Flags low1/2/4 share type/group/instance-high respectively; other bits do not
select additional fields. Each row has unshared keys, instance-low, offset,
stored-size word and memory-size word. Its size is28−4×sharedFieldCount bytes,
plus4bytes **only when stored-size bit31 is set**. That bit is cleared from the
stored length; the extra word contains lowushort codec and bit16 metadata flag.
Without that word, codec is0 when stored==memory, FFFF otherwise. Provider load
marks records in memory regardless of the serialized flag. Native row parsing
trusts input bounds; it is not evidence that truncated input is safe.

4AAE50 writes low3 sharing flags and emits each stored size OR80000000 followed
by codec/bit16. It traverses the native hash container; this does not promise
physical input order. Hash insertion4AB900 retains the **first exact duplicate**.
4AC020/83B040/5E6050 perform exact lookup;4ACB60/4AC980 are the distinct assignment
and find-or-insert paths. Ordinary lookup is not last-readable-row fallback.

## Presence, stream selection and consumer

Provider access4A97E0 is ECX plus6stackDWORDs/RET18, AL success. Access lowbits&3
must be nonzero. A null stream-output pointer tests presence **before** deletion
admission. For a real stream, deletion is only storedSize1 AND memorySizeFFFFFFFF;
neither offsetFFFFFFFF nor codecFFE0 independently defines deletion here.
A row is read raw when codec0 OR loadFlags bit0 is clear; otherwise it is decoded.
The same row may therefore serve raw-copy and decoded consumers differently.

The ResourceManager vtable word at FB3DB0+C selects4B0760. That body calls provider
slot+34 with key, stream-output, access1, mode3, loadFlags1 and null record-output,
then dispatches loader+1C and releases its local stream through+8. Its body proves
six physical stack slots/RET18 and AL result. The concrete incoming virtual
caller's six pushes remain unclosed; its retained default zero-formal signature
is an explicitly annotated decompiler artifact, not a recovered API.

4A86A0 uses ECX plus5stackDWORDs/RET14: codec, offset, stored size, memory size,
output. **Offset**, the second physical word, must be nonzero. Stored scratch is
allocated, read, decoded and freed. Local allocator/free callsite overrides
represent ECX+3words/pop12 and ECX+2words/pop8; they do not establish global foreign
allocator types.4A8100 serializes seek/read; its FFFFFFFF comparison tests the read
**result**, not the row offset. Underlying4A7860 can truncate a buffer read, so
native success alone does not prove a complete payload.

4A7730 uses its owned built-in wrapper for lowushortFFFF. Other IDs use provider
factory+390, virtual+6C, and borrow the registered decoder. Missing codec fails.
Validation+C precedes null-output size query+8; queried size must equal row memory
size. Stored size0 or queried size0 bypasses expansion successfully; nonzero
expansion must return nonzero. Only the locally built wrapper is destroyed here.
This dispatch does not establish a native installed5A42/zlib registration.

## RefPack wrapper and commands

Wrapper4EC5D0 requires big-endian firstushort&1FFF==10FB. Bit7 selects a4-byte
rather than3-byte big-endian declared size. The mask rejects the optional
double-size header form even though the underlying kernel can parse it. Header
length is not checked by the wrapper before those loads.

4EC560 has five physical stack words/RET14; ECX is unused. Its fifth UInt32 word
is ignored. Both selected query and expansion callsites pass1 there. Null output
returns declared size; otherwise declared size must fit output capacity before
4EB900. The stored annotated signature includes that fifth word.

All arithmetic in the following table uses hexadecimal masks. b0 is the command;
b1..b3 follow it. Literals are copied before any backward copy.

| Command | Literal count | Copy length | Back distance |
| --- | --- | --- | --- |
| 00..7F | b0&3 | ((b0>>2)&7)+3 | ((b0&60)<<3)+b1+1 |
| 80..BF | b1>>6 | (b0&3F)+4 | ((b1&3F)<<8)+b2+1 |
| C0..DF | b0&3 | ((b0&0C)<<6)+b3+5 | ((b0&10)<<12)+(b1<<8)+b2+1 |
| E0..FB | ((b0&1F)<<2)+4 | none | none |
| FC..FF | b0&3, terminal | none | none |

The kernel checks complete operands, literal input/output, preceding-copy source
and remaining-copy output before access. Forward copying permits overlap.
Input exhaustion without a terminal returns0, even when output is filled.
A terminal returns **header-declared size**, ignores trailing input and does not
prove actual produced bytes equal that size. The provider's zero-size query/skip
boundary is distinct from invoking this kernel with zero capacity.

## Canonical original functions

The27 complete exports total7078envelope bytes:7072owned bytes/2436instructions and
6explicit nonowned gap bytes. Gaps are3bytes each in4AC510 and4EB900. All original
bytes were compared with the pristine reference; annotations were saved clean.
Actual Ghidra C retains documented residual inference artifacts. Selected resolved
CALL references are in the central index; the factory's direct tail JMP to4ABF40
is visible in its ASM and is not counted as a CALL.

| Entry | Analyst role | Original pair |
| --- | --- | --- |
| 004A9290 | PackedFile_InitializeProvider | [ASM](../../evidence/native/functions/004A9290_PackedFile_InitializeProvider.asm) ([annotated C](../../evidence/native/functions/004A9290_PackedFile_InitializeProvider.c)) |
| 004A6CA0 | PackedFile_CreateModifiableIndex | [ASM](../../evidence/native/functions/004A6CA0_PackedFile_CreateModifiableIndex.asm) ([annotated C](../../evidence/native/functions/004A6CA0_PackedFile_CreateModifiableIndex.c)) |
| 004A7D20 | DbpfHeader_ReadAndSelectLowOffset | [ASM](../../evidence/native/functions/004A7D20_DbpfHeader_ReadAndSelectLowOffset.asm) ([annotated C](../../evidence/native/functions/004A7D20_DbpfHeader_ReadAndSelectLowOffset.c)) |
| 004A7F50 | DbpfHeader_WriteVersion2 | [ASM](../../evidence/native/functions/004A7F50_DbpfHeader_WriteVersion2.asm) ([annotated C](../../evidence/native/functions/004A7F50_DbpfHeader_WriteVersion2.c)) |
| 004A7EA0 | DbpfHeader_ValidateLegacyAndExtendedOffset | [ASM](../../evidence/native/functions/004A7EA0_DbpfHeader_ValidateLegacyAndExtendedOffset.asm) ([annotated C](../../evidence/native/functions/004A7EA0_DbpfHeader_ValidateLegacyAndExtendedOffset.c)) |
| 004A9C70 | PackedFile_LoadIndex | [ASM](../../evidence/native/functions/004A9C70_PackedFile_LoadIndex.asm) ([annotated C](../../evidence/native/functions/004A9C70_PackedFile_LoadIndex.c)) |
| 004A97E0 | PackedFile_AccessResourceOrTestPresence | [ASM](../../evidence/native/functions/004A97E0_PackedFile_AccessResourceOrTestPresence.asm) ([annotated C](../../evidence/native/functions/004A97E0_PackedFile_AccessResourceOrTestPresence.c)) |
| 004ABF40 | DbpfIndex_InitializeModifiable | [ASM](../../evidence/native/functions/004ABF40_DbpfIndex_InitializeModifiable.asm) ([annotated C](../../evidence/native/functions/004ABF40_DbpfIndex_InitializeModifiable.c)) |
| 004AC510 | DbpfIndex_ReadBuffer | [ASM](../../evidence/native/functions/004AC510_DbpfIndex_ReadBuffer.asm) ([annotated C](../../evidence/native/functions/004AC510_DbpfIndex_ReadBuffer.c)) |
| 004AC020 | DbpfIndex_FindExactRecord | [ASM](../../evidence/native/functions/004AC020_DbpfIndex_FindExactRecord.asm) ([annotated C](../../evidence/native/functions/004AC020_DbpfIndex_FindExactRecord.c)) |
| 004ACB60 | DbpfIndex_AssignRecord | [ASM](../../evidence/native/functions/004ACB60_DbpfIndex_AssignRecord.asm) ([annotated C](../../evidence/native/functions/004ACB60_DbpfIndex_AssignRecord.c)) |
| 004AAE50 | DbpfIndex_WriteBuffer | [ASM](../../evidence/native/functions/004AAE50_DbpfIndex_WriteBuffer.asm) ([annotated C](../../evidence/native/functions/004AAE50_DbpfIndex_WriteBuffer.c)) |
| 004AB900 | DbpfIndex_InsertFirstRecord | [ASM](../../evidence/native/functions/004AB900_DbpfIndex_InsertFirstRecord.asm) ([annotated C](../../evidence/native/functions/004AB900_DbpfIndex_InsertFirstRecord.c)) |
| 005E6050 | DbpfIndex_FindBucketNode | [ASM](../../evidence/native/functions/005E6050_DbpfIndex_FindBucketNode.asm) ([annotated C](../../evidence/native/functions/005E6050_DbpfIndex_FindBucketNode.c)) |
| 0083B040 | DbpfIndex_FindIterator | [ASM](../../evidence/native/functions/0083B040_DbpfIndex_FindIterator.asm) ([annotated C](../../evidence/native/functions/0083B040_DbpfIndex_FindIterator.c)) |
| 004AC980 | DbpfIndex_FindOrInsertRecord | [ASM](../../evidence/native/functions/004AC980_DbpfIndex_FindOrInsertRecord.asm) ([annotated C](../../evidence/native/functions/004AC980_DbpfIndex_FindOrInsertRecord.c)) |
| 004A88C0 | PackedFile_RemoveIndexedRecord | [ASM](../../evidence/native/functions/004A88C0_PackedFile_RemoveIndexedRecord.asm) ([annotated C](../../evidence/native/functions/004A88C0_PackedFile_RemoveIndexedRecord.c)) |
| 004A86A0 | PackedFile_ReadAndDecodePayload | [ASM](../../evidence/native/functions/004A86A0_PackedFile_ReadAndDecodePayload.asm) ([annotated C](../../evidence/native/functions/004A86A0_PackedFile_ReadAndDecodePayload.c)) |
| 004A7730 | PackedFile_DecodeResourceBuffer | [ASM](../../evidence/native/functions/004A7730_PackedFile_DecodeResourceBuffer.asm) ([annotated C](../../evidence/native/functions/004A7730_PackedFile_DecodeResourceBuffer.c)) |
| 004A8100 | PackedFile_ReadRawPayload | [ASM](../../evidence/native/functions/004A8100_PackedFile_ReadRawPayload.asm) ([annotated C](../../evidence/native/functions/004A8100_PackedFile_ReadRawPayload.c)) |
| 004A7860 | PackedFile_ReadBytes | [ASM](../../evidence/native/functions/004A7860_PackedFile_ReadBytes.asm) ([annotated C](../../evidence/native/functions/004A7860_PackedFile_ReadBytes.c)) |
| 004EC520 | RefPackCodec_Initialize | [ASM](../../evidence/native/functions/004EC520_RefPackCodec_Initialize.asm) ([annotated C](../../evidence/native/functions/004EC520_RefPackCodec_Initialize.c)) |
| 004EC560 | RefPack_DecodeOrQuerySize | [ASM](../../evidence/native/functions/004EC560_RefPack_DecodeOrQuerySize.asm) ([annotated C](../../evidence/native/functions/004EC560_RefPack_DecodeOrQuerySize.c)) |
| 004EC5D0 | RefPack_HasPackedResourceHeader | [ASM](../../evidence/native/functions/004EC5D0_RefPack_HasPackedResourceHeader.asm) ([annotated C](../../evidence/native/functions/004EC5D0_RefPack_HasPackedResourceHeader.c)) |
| 004EB840 | ReadBigEndianUnsignedWord | [ASM](../../evidence/native/functions/004EB840_ReadBigEndianUnsignedWord.asm) ([annotated C](../../evidence/native/functions/004EB840_ReadBigEndianUnsignedWord.c)) |
| 004EB900 | RefPack_ExpandCommands | [ASM](../../evidence/native/functions/004EB900_RefPack_ExpandCommands.asm) ([annotated C](../../evidence/native/functions/004EB900_RefPack_ExpandCommands.c)) |
| 004B0760 | ResourceManager_LoadDecodedResource | [ASM](../../evidence/native/functions/004B0760_ResourceManager_LoadDecodedResource.asm) ([annotated C](../../evidence/native/functions/004B0760_ResourceManager_LoadDecodedResource.c)) |

[Original dispatch data](../../evidence/native/data/dbpf-dispatch.tsv) retains224
necessary bytes: provider144, modifiable-index60, built-in codec16 and decoded
consumer slot4. This proves the selected vtable joins without inventing runtime
registration for other codecs.

Complete provider open/alternate-base/stream-family lifetime, nonFFFF factory
registrations, tombstone creation and all allocation/IO failure equivalence remain
outside this selected closure. Static evidence does not establish runtime acceptance.
