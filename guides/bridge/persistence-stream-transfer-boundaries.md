# PC1.67 persistence stream transfer boundaries

The selected native transport retains21 complete existing bodies containing4403
owned original bytes and1611 actual Listing instructions. Four registered array/
string entries instead have one-address-byte stored bodies with ZERO Listing
instructions; their208/224/672/560-byte original windows remain bounded evidence.
Converter004F40F0 has a13-byte nonowned gap between two body ranges. Original
instruction bytes, actual stored bodies, physical argument use and original
managed declarations govern these boundaries. Decompiler inferred prototypes,
parameter counts, pointer types and stack labels remain projections. Analyst
names describe roles and are not recovered original symbols.

## Canonical pairs and body limits

| Entry and analyst role | Original extent | Canonical pair |
| --- | --- | --- |
| `004f3cc0` Utf_ConvertWideSpanToByteStorage | 303 owned bytes / 105 instructions | [ASM](../../evidence/native/functions/004F3CC0_Utf_ConvertWideSpanToByteStorage.asm) ([pseudocode](../../evidence/native/functions/004F3CC0_Utf_ConvertWideSpanToByteStorage.c)) |
| `004f40d0` Utf_GetTrailingByteCount | 23 owned bytes / 8 instructions | [ASM](../../evidence/native/functions/004F40D0_Utf_GetTrailingByteCount.asm) ([pseudocode](../../evidence/native/functions/004F40D0_Utf_GetTrailingByteCount.c)) |
| `004f40f0` Utf_ConvertEncodingUnits | 1403 owned bytes / 503 instructions / 13-byte nonowned gap | [ASM](../../evidence/native/functions/004F40F0_Utf_ConvertEncodingUnits.asm) ([pseudocode](../../evidence/native/functions/004F40F0_Utf_ConvertEncodingUnits.c)) |
| `004f4690` Utf_EncodeWideBufferReportedLength | 66 owned bytes / 27 instructions | [ASM](../../evidence/native/functions/004F4690_Utf_EncodeWideBufferReportedLength.asm) ([pseudocode](../../evidence/native/functions/004F4690_Utf_EncodeWideBufferReportedLength.c)) |
| `004f46e0` Utf_DecodeByteBufferWithOptionalTerminator | 75 owned bytes / 30 instructions | [ASM](../../evidence/native/functions/004F46E0_Utf_DecodeByteBufferWithOptionalTerminator.asm) ([pseudocode](../../evidence/native/functions/004F46E0_Utf_DecodeByteBufferWithOptionalTerminator.c)) |
| `00774e10` StreamHost_PackLowIntegerBytes | 84 owned bytes / 30 instructions | [ASM](../../evidence/native/functions/00774E10_StreamHost_PackLowIntegerBytes.asm) ([pseudocode](../../evidence/native/functions/00774E10_StreamHost_PackLowIntegerBytes.c)) |
| `00774e80` StreamHost_ResolveTaggedStreamAndCache | 58 owned bytes / 21 instructions | [ASM](../../evidence/native/functions/00774E80_StreamHost_ResolveTaggedStreamAndCache.asm) ([pseudocode](../../evidence/native/functions/00774E80_StreamHost_ResolveTaggedStreamAndCache.c)) |
| `00774f50` ScriptCore.StreamHost::StreamHost_WriteInt | 148 owned bytes / 57 instructions | [ASM](../../evidence/native/functions/00774F50_ScriptCore_StreamHost_StreamHost_WriteInt.asm) ([pseudocode](../../evidence/native/functions/00774F50_ScriptCore_StreamHost_StreamHost_WriteInt.c)) |
| `00774ff0` ScriptCore.StreamHost::StreamHost_WriteInt64 | 133 owned bytes / 46 instructions | [ASM](../../evidence/native/functions/00774FF0_ScriptCore_StreamHost_StreamHost_WriteInt64.asm) ([pseudocode](../../evidence/native/functions/00774FF0_ScriptCore_StreamHost_StreamHost_WriteInt64.c)) |
| `00775080` ScriptCore.StreamHost::StreamHost_WriteFloat | 121 owned bytes / 41 instructions | [ASM](../../evidence/native/functions/00775080_ScriptCore_StreamHost_StreamHost_WriteFloat.asm) ([pseudocode](../../evidence/native/functions/00775080_ScriptCore_StreamHost_StreamHost_WriteFloat.c)) |
| `00775100` ScriptCore.StreamHost::StreamHost_WriteDouble | 126 owned bytes / 44 instructions | [ASM](../../evidence/native/functions/00775100_ScriptCore_StreamHost_StreamHost_WriteDouble.asm) ([pseudocode](../../evidence/native/functions/00775100_ScriptCore_StreamHost_StreamHost_WriteDouble.c)) |
| `00775180` ScriptCore.StreamHost::StreamHost_WriteDecimal | 149 owned bytes / 50 instructions | [ASM](../../evidence/native/functions/00775180_ScriptCore_StreamHost_StreamHost_WriteDecimal.asm) ([pseudocode](../../evidence/native/functions/00775180_ScriptCore_StreamHost_StreamHost_WriteDecimal.c)) |
| `00775220` ScriptCore.StreamHost::StreamHost_WriteByteArray | One-address-byte metadata, zero Listing; bounded 208-byte PE window | [ASM](../../evidence/native/functions/00775220_ScriptCore_StreamHost_StreamHost_WriteByteArray.asm) ([pseudocode](../../evidence/native/functions/00775220_ScriptCore_StreamHost_StreamHost_WriteByteArray.c)) |
| `007752f0` ScriptCore.StreamHost::StreamHost_WriteCharUTF8 | 141 owned bytes / 52 instructions | [ASM](../../evidence/native/functions/007752F0_ScriptCore_StreamHost_StreamHost_WriteCharUTF8.asm) ([pseudocode](../../evidence/native/functions/007752F0_ScriptCore_StreamHost_StreamHost_WriteCharUTF8.c)) |
| `00775380` ScriptCore.StreamHost::StreamHost_ReadInt | 142 owned bytes / 53 instructions | [ASM](../../evidence/native/functions/00775380_ScriptCore_StreamHost_StreamHost_ReadInt.asm) ([pseudocode](../../evidence/native/functions/00775380_ScriptCore_StreamHost_StreamHost_ReadInt.c)) |
| `00775410` ScriptCore.StreamHost::StreamHost_ReadInt64 | 135 owned bytes / 46 instructions | [ASM](../../evidence/native/functions/00775410_ScriptCore_StreamHost_StreamHost_ReadInt64.asm) ([pseudocode](../../evidence/native/functions/00775410_ScriptCore_StreamHost_StreamHost_ReadInt64.c)) |
| `007754a0` ScriptCore.StreamHost::StreamHost_ReadFloat | 142 owned bytes / 48 instructions | [ASM](../../evidence/native/functions/007754A0_ScriptCore_StreamHost_StreamHost_ReadFloat.asm) ([pseudocode](../../evidence/native/functions/007754A0_ScriptCore_StreamHost_StreamHost_ReadFloat.c)) |
| `00775530` ScriptCore.StreamHost::StreamHost_ReadDouble | 156 owned bytes / 53 instructions | [ASM](../../evidence/native/functions/00775530_ScriptCore_StreamHost_StreamHost_ReadDouble.asm) ([pseudocode](../../evidence/native/functions/00775530_ScriptCore_StreamHost_StreamHost_ReadDouble.c)) |
| `007755d0` ScriptCore.StreamHost::StreamHost_ReadDecimal | 162 owned bytes / 57 instructions | [ASM](../../evidence/native/functions/007755D0_ScriptCore_StreamHost_StreamHost_ReadDecimal.asm) ([pseudocode](../../evidence/native/functions/007755D0_ScriptCore_StreamHost_StreamHost_ReadDecimal.c)) |
| `00775680` ScriptCore.StreamHost::StreamHost_ReadCharUTF8 | 261 owned bytes / 104 instructions | [ASM](../../evidence/native/functions/00775680_ScriptCore_StreamHost_StreamHost_ReadCharUTF8.asm) ([pseudocode](../../evidence/native/functions/00775680_ScriptCore_StreamHost_StreamHost_ReadCharUTF8.c)) |
| `00775790` ScriptCore.StreamHost::StreamHost_ReadByteArray | One-address-byte metadata, zero Listing; bounded 224-byte PE window | [ASM](../../evidence/native/functions/00775790_ScriptCore_StreamHost_StreamHost_ReadByteArray.asm) ([pseudocode](../../evidence/native/functions/00775790_ScriptCore_StreamHost_StreamHost_ReadByteArray.c)) |
| `00775da0` ScriptCore.StreamHost::StreamHost_WriteCharArrayUTF8 | 301 owned bytes / 119 instructions | [ASM](../../evidence/native/functions/00775DA0_ScriptCore_StreamHost_StreamHost_WriteCharArrayUTF8.asm) ([pseudocode](../../evidence/native/functions/00775DA0_ScriptCore_StreamHost_StreamHost_WriteCharArrayUTF8.c)) |
| `00775ed0` ScriptCore.StreamHost::StreamHost_WriteStringUTF8 | 274 owned bytes / 117 instructions | [ASM](../../evidence/native/functions/00775ED0_ScriptCore_StreamHost_StreamHost_WriteStringUTF8.asm) ([pseudocode](../../evidence/native/functions/00775ED0_ScriptCore_StreamHost_StreamHost_WriteStringUTF8.c)) |
| `00776440` ScriptCore.StreamHost::StreamHost_ReadStringUTF8 | One-address-byte metadata, zero Listing; bounded 672-byte PE window | [ASM](../../evidence/native/functions/00776440_ScriptCore_StreamHost_StreamHost_ReadStringUTF8.asm) ([pseudocode](../../evidence/native/functions/00776440_ScriptCore_StreamHost_StreamHost_ReadStringUTF8.c)) |
| `007766e0` ScriptCore.StreamHost::StreamHost_ReadCharArrayUTF8 | One-address-byte metadata, zero Listing; bounded 560-byte PE window | [ASM](../../evidence/native/functions/007766E0_ScriptCore_StreamHost_StreamHost_ReadCharArrayUTF8.asm) ([pseudocode](../../evidence/native/functions/007766E0_ScriptCore_StreamHost_StreamHost_ReadCharArrayUTF8.c)) |

The [original tables](../../evidence/native/persistence-stream-transfer-data.tsv)
retain256 leading-byte classifications at00FBA588 and six little-endian switch
targets at004F4678. Neither table is an additional function body or inferred live
state. The converter's gap004F4413..004F441F stays outside its owned ranges;
the switch begins immediately after its final RET, outside the body.

## Tagged lookup and virtual stream status

Leaf paths compare handle with011D7838 and use pointer011D783C on equality.
The miss helper00774E80 checks only high byte0x60, invokes script-interface
virtual+0xCC and publishes nonzero pointer before key. The concrete manager,
reference ownership, cache synchronization and stream virtuals remain external.
Missing streams commonly return-2. Write virtual+0x38 uses its AL result:
nonzero maps0, zero maps-3. Read virtual+0x30 returns a count: an exact request
succeeds; exactlyFFFFFFFF maps-3 and another nonmatching scalar count maps-1.
The selected leaf exits use plain RET; stored inferred argument/convention
projections do not establish original callee cleanup or concrete exceptions.

Integer pack00774E10 handles widths1/2/3/4, including explicit three-byte low
little-endian output. Other widths write no scratch bytes. WriteInt validates
signed width<=4 after stream lookup, rejects greater widths with-7, and forwards
the original width to the virtual write. Its zero/negative-width outcome needs
that concrete virtual. ReadInt rejects width>4 with-3, otherwise zeroes the
output word before reading; ReadInt64 zeroes both output words before reading.

Float/double reads use local scratch and copy to the actual output only on an
exact4/8-byte read; short reads leave output untouched. Double paths use x87
FLD/FSTP, so NaN/FP-environment identity is not assumed. Decimal transports
opaque words: input flags/hi/lo/mid becomes serialized lo/mid/hi/flags; reads
publish the reverse permutation only after an exact16-byte read. No decimal
arithmetic or validity contract follows from those copies.

## Bounded array observations

WriteByteArray null(-6), offset<0 or length<=0(-7) checks precede lookup(-2).
Interface+0x70 supplies pointer/count outputs; admitted data+offset reaches the
write virtual and AL determines0/-3. ReadByteArray resolves before null/range
checks, accepts count0 after validation, otherwise returns the read count except
FFFFFFFF becomes-3. The stored two-parameter read projection is not the original
managed four-argument declaration.

WriteCharArray uses interface+0x7C and004F3CC0 conversion/storage helpers before
the checked virtual write and visible cleanup calls. ReadCharArray uses
interface+0x70, a growing temporary byte buffer, read-count/error checks and
004F40D0 classifications before8-to16 conversion. Both range-check offset, but
the visible final conversion receives the returned base pointer without adding
that offset at that call site. Their helper/stack arguments must be followed
physically; parameter names and decompiler unaff values are insufficient.

## Character wrapper arithmetic

004F40D0 returns tableValue-1 when nonzero, otherwise0. Table00..7F=1,
80..C1=0,C2..DF=2,E0..EF=3,F0..F4=4,F5..FF=0. Thus ASCII and rejected leads
both classify as zero trailing bytes; ReadChar handles ASCII separately.

ReadChar requests one byte, writes ASCII and returns0. For non-ASCII it requests
the trailing count, compares that read result with literal1, then passes that
same trailing count as004F46E0's source length. The wrapper converts8-to16,
adds a terminator only if produced<capacity, and returns produced code units.
These counts are retained as physical observations rather than changed to an
assumed intended full-sequence length.

004F4690 converts16-to8 and returns producedBytes-1 when nonzero, otherwise0.
Only its FFFFFFFF source-count path calls a length helper and adds1. Explicit
count does not append a source terminator first. WriteChar passes source count1
and capacity8, then forwards this reported length to the write virtual. The
observed subtraction is not silently replaced by a modern encoder's byte count.

## UTF conversion and string framing

004F40F0 returns consumed source units and updates capacity to produced units.
For8-to16, two-/three-byte paths enforce their observed continuation/overlong
checks but do not reject encoded surrogate words. Four-byte paths admit F0..F7,
check continuations and the F0 minimum second byte, then truncate through16-bit
registers to one code unit. They produce no surrogate pair or modern maximum
Unicode scalar check. For16-to8, each zero-extended word encodes independently;
surrogate pairs are not combined. Conversion stops before a whole unit would
exceed capacity, or at an invalid/incomplete sequence. ASCII/equal-encoding and
in-place branches are distinct. Other code pages use separate OS/helper paths.

004F3CC0 first converts into512-byte stack storage. If not all source is consumed,
it allocates sourceCount*4 bytes, converts again, constructs byte storage from
the produced interval and frees temporary memory. It does not retest the second
consumed count there. Allocation/storage-helper failure and unwind behavior
remain separate, and label/temporary lifetime does not establish stream ownership.

WriteString obtains original length/data through interface+0x5C/+0x58, converts,
then writes a seven-bit BYTE length prefix and payload through two AL-checked
virtual writes. Earlier prefix mutation remains if the payload write fails.
ReadString resolves before zeroing its output; prefix helper failure is null
success0. Prefix groups accumulate with ADD and x86 variable-shift wrapping,
then unsigned final length>0x10000 fails-4. Payload count failure maps-3/-1;
conversion not consuming the entire payload fails-4. Interface+0x60 creates the
converted output: null result-5, nonnull0, with visible temporary cleanup.

Original ScriptCore FastBaseStreamReader/Writer retain their width choices,
casts, negative-status RaiseException policy and handle disposal; these native
leaves do not replace the original managed serializer. Actual stream virtuals,
native allocation/storage/refcounts, reentry/aliasing/concurrency and full
persistence save/quit/reload behavior remain unresolved beyond the stated sites.
