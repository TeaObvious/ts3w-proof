# Original household property streams and Library bin records

## Source and static scope

Original PC1.67 TS3W.exe and the centrally identified pristine package assemblies
are authoritative. Native selected functions were annotated in `/TS3W.exe` using
GhidrAssist; complete original byte envelopes and final actual annotated Ghidra C
were exported, compared with pristine PE bytes, and the database saved clean.
The Store/ImportHousehold entries formerly had one-byte Ghidra bodies; original
reachable flow establishes complete nonoverlapping bodies through009988F3 and
00997828 respectively. No original bytes were patched or target gameplay run.

[Selected managed member index](../../evidence/managed/selected/household-property-streams/method-index.tsv)
retains25 complete methods/9979 original CIL bytes, actual ILSpy C#, module-local
MethodDef/RVA/signature identities, [call operands](../../evidence/managed/selected/household-property-streams/call-edges.tsv)
and [field operands](../../evidence/managed/selected/household-property-streams/field-access.tsv).
Method code sizes were checked against original PE method headers. The existing
SimIFace and GameplaySystems identities/MVIDs apply. This is static member/operand
coverage, not execution or full transitive gameplay reconstruction.

## Two PropertyStream readers

[Original managed reader](../../evidence/managed/types/Sims3.SimIFace.PropertyStreamReader.cs)
accepts versions1..2, records a relative table with Dictionary.Add duplicate
rejection and typed name-XOR-type lookup. Version1 text uses BinaryReader string;
version2 reads UInt32 UTF16-unit count, copies ushort units and concatenates chars.
It does not establish a65536-unit cap or rejection of isolated surrogate units.
Current strict Unicode/bounds/caps are additional project validation.

Native reader accepts nonzero version and counted byte strings. Its map/stream
status and raw high-byte text must not be silently replaced by managed UTF16
semantics. Native internal ResourceKey stores instance at+0/+4 and type/group at
+8/+C; stream order remains T/G/instance low/high, established by the existing
[key reader](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.asm) ([annotated Ghidra C](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.c)).

## Managed household metadata ownership

HouseholdContents.ExportContent creates child2221750924. Household.ExportContent
writes name1357107804, funds867787827, bio3647669240 and export time1669643236 using
DateTime.Now.ToBinary, then member child2449095374. Members writes3921240069 count
and sequential children; SimDescription writes names3947983776/1883753236,
flags1758328370 and ghost130688069. Complete original import/export members are
paired above. These original gameplay imports restore much more than a display
projection: relationships, opportunities, inventories and other SimDescription
state remain managed owners. Current1..64 metadata member guard is a project
parser safety bound, not the original household membership limit.

## Native producers and consumers

### NativePropertyStream_OpenIndex

[ASM 007D5770](../../evidence/native/functions/007D5770_NativePropertyStream_OpenIndex.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5770_NativePropertyStream_OpenIndex.c)).

ECX reader; original nonzero UInt16 version, relative data size and UInt16 row count; map rows contain encoded name and stream-relative offset. Retains starting position+C and final table position+10, publishes stream+8 only on accumulated success. This differs from managed PropertyStreamReader version1..2 and current bounded arrays; current duplicate-last policy is not established by unique-map insertion. Original AL status matters, upper EAX incidental.

### NativePropertyStream_SeekEncodedEntry

[ASM 007D5160](../../evidence/native/functions/007D5160_NativePropertyStream_SeekEncodedEntry.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5160_NativePropertyStream_SeekEncodedEntry.c)).

ECX reader, encoded key on stack RET4 despite inferred fastcall C. Map lookup at reader+14; found offset+4 adds reader start+C and seeks underlying stream. Returns AL accumulated status; missing yieldsAL0, upper EAX incidental. Typed callers XOR original property name with their type ID before this call.

### NativePropertyStream_ReadUInt32

[ASM 007D5350](../../evidence/native/functions/007D5350_NativePropertyStream_ReadUInt32.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5350_NativePropertyStream_ReadUInt32.c)).

ECX reader,two words RET8: property name and output pointer. XOR name withF1288606 at007D5355, seek via007D5160, read UInt32 and accumulate stream status, AL result. Missing returnsAL0 rather than assigning a project null/default. Out pointer width and stream mode override guessed high-level types.

### NativePropertyStream_ReadByteString

[ASM 007D5640](../../evidence/native/functions/007D5640_NativePropertyStream_ReadByteString.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5640_NativePropertyStream_ReadByteString.c)).

ECX reader,name/output stack words. Encoded native string type differs from managed15196597. Seek through007D5160 then007D9660 reads a UInt32 byte count and raw bytes. This is not managed version1 UTF8 BinaryReader string or version2 UTF16-unit text. Current Encoding.ASCII replacement of high bytes is a project projection, not proven native text decoding.

### StreamContext_ReadCountedByteString

[ASM 007D9660](../../evidence/native/functions/007D9660_StreamContext_ReadCountedByteString.asm) ([annotated Ghidra C](../../evidence/native/functions/007D9660_StreamContext_ReadCountedByteString.c)).

ECX stream context,one output pointer RET4. UInt32 byte count read and accumulated in stream status+14; resize byte string then read exact raw bytes and AND status. Byte count is not UTF16 unit count. Allocation/invalid-count contracts remain child dependencies.

### StreamContext_ReadResourceKeyVector

[ASM 007D9930](../../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.asm) ([annotated Ghidra C](../../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.c)).

ECX key vector,one stream-context word RET4. Read UInt32 count/status, check count*16 bytes through the original StreamReader_CheckArrayBytes child, resize vector then per-key00568510. That child reaches007D7760 T/G/instance-low/high stream order, storing native instance at+0/+4 and type/group at+8/+C. Current exact managed table length/UInt16 count cap are additional admission policy.

### StreamContext_ReadResourceKey

[ASM 00568510](../../evidence/native/functions/00568510_StreamContext_ReadResourceKey.asm) ([annotated Ghidra C](../../evidence/native/functions/00568510_StreamContext_ReadResourceKey.c)).

ECX stream context,one output-key pointer RET4. Push stream endian+10, output and raw stream+8 to007D7760, then accumulate Boolean into context+14 via007D79F0. Native internal ResourceKey layout differs from stream order; no managed object layout inferred.

### ReferenceStore_WriteResource

[ASM 007D6940](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.asm) ([annotated Ghidra C](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.c)).

ECX reference store; existing RET14 physical group/UInt64/context/remap ABI annotations retained. Writes version3,width flag,key-map count,T/G/instance keys and width-selected handles, local dependency set. Optional remap and hash traversal retained; current narrow ordinal array emission is a supported projection, not exact original traversal ordering.

### HouseholdScript_WriteVersionedResource

[ASM 009AFB60](../../evidence/native/functions/009AFB60_HouseholdScript_WriteVersionedResource.asm) ([annotated Ghidra C](../../evidence/native/functions/009AFB60_HouseholdScript_WriteVersionedResource.c)).

ECX script byte-range,resource context/group/64-bit instance stack arguments. Open062853A8 resource, write UInt32 version2 then raw byte interval, close and return AL accumulated status. Prefix is resource wrapper, distinct from inner managed PropertyStream version.

### HouseholdMetadata_FormatBinSection

[ASM 009AF4A0](../../evidence/native/functions/009AF4A0_HouseholdMetadata_FormatBinSection.asm) ([annotated Ghidra C](../../evidence/native/functions/009AF4A0_HouseholdMetadata_FormatBinSection.c)).

ECX metadata and output string. Original UTF16 literal0101C224 is1D; empty-name literal0104D6C0 is No name. Identity/export time use0x%016I64x; count,funds and per-member flags/ghost use%d.009AF654..662 pushes raw flags DWORD from metadata+160 into signed %d literal00FC056C; current UInt32-to-Int64 formatting differs for bit31. Variadic argument omission in C must not erase signedness. Text control-character replacement is not established by this concatenation.

### LibraryBin_FormatPackageRecord

[ASM 009A3230](../../evidence/native/functions/009A3230_LibraryBin_FormatPackageRecord.asm) ([annotated Ghidra C](../../evidence/native/functions/009A3230_LibraryBin_FormatPackageRecord.c)).

Selected complete original bin record formatter: filename,category,modified time separated by1D and optional lot/household sections separated by19. Uses household metadata formatter009AF4A0 for that section. Original wide-string concatenation/varargs require instruction-level widths; no project sanitization, exception or locale parity inferred.

### DownloadContent_StoreHouseholdContentsImpl

[ASM 009985F0](../../evidence/native/functions/009985F0_DownloadContent_StoreHouseholdContentsImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/009985F0_DownloadContent_StoreHouseholdContentsImpl.c)).

Registered original bridge, cdecl/plainRET, five physical words: UInt64 identity low/high plus managed key/object-ID/script array handles. AL Boolean only. Builds indexed references, handles object IDs and raw script payload, writes REFS group00283095 and versioned script resource via009AFB60, commits through native context and releases temporaries. This supports richer inventory/object state than current explicit nonempty-object refusal. Former one-byte body recovered from original flow with no overlap or byte patch.

### DownloadContent_ImportHouseholdContentsImpl

[ASM 00997520](../../evidence/native/functions/00997520_DownloadContent_ImportHouseholdContentsImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/00997520_DownloadContent_ImportHouseholdContentsImpl.c)).

Registered original bridge,cdecl/plainRET,five physical words:64-bit identity plus three managed output-array handles. Reads REFS group00283095, exports key list, loads script bytes, creates object-ID output and performs native remap/finalization through00AD4920. AL status, upper EAX incidental; inferred pointer types for identity halves are wrong. Former one-byte body recovered from original flow with no original bytes changed.

## Necessary literal data and format distinctions

[Original referenced UTF16 literals](household-bin-literals.tsv) distinguish the
1D separator, No name fallback and signed%d numeric conversion. The original
raw flags DWORD at metadata+160 is passed to%d; current UInt32-to-Int64 formatting
prints a positive number for bit31. This is an input-domain difference, not a
claim that such authored flags are valid. Household name concatenation scans its
NUL-terminated range, whereas member names use explicit ranges; current control-
character replacement/embedded-NUL behavior is not established as original policy.

Outer record uses1D fields and19 section boundaries. Script resource version2
prefix is separate from inner managed PropertyStream version. REFS version3 supports
width selection, optional remaps and map traversal. Current fixed narrow ordinals,
exact managed table length, UInt16 count cap and refusal of nonempty object IDs or
inventory keys are explicit subsets/additional validation. Original Store/Import
handles native object data and remapping; serializing display metadata alone does
not constitute a complete household gameplay save/import. No roundtrip acceptance
or package commit success was executed here.

[Library session original lifecycle and warning join](library-session-lifecycle-and-warning.md) distinguishes native Init/Shutdown, memory-bin retain/release, real inventory producers and UI prevalidation from host deferred import-failure policy; complete selected CIL and remaining boundaries are recorded there.
