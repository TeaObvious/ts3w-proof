# Original typed property values and Library provenance

Static PC1.67 original TS3W.exe analysis. All nine typed getter XOR immediates
were checked directly in pristine original entry instructions. Complete selected
function envelopes were annotated in `/TS3W.exe`, compared with pristine bytes,
exported as canonical ASM/actual Ghidra C and saved in the clean database.
The metadata type predicate was defined from original19-byte reachable code,
its VTable target0104BF2C and terminal RET4, without changing original bytes.
No retail execution or roundtrip test was performed.

## Typed getters and index/stream ownership

### NativePropertyStream_OpenChild

[ASM 007D58C0](../../evidence/native/functions/007D58C0_NativePropertyStream_OpenChild.asm) ([annotated Ghidra C](../../evidence/native/functions/007D58C0_NativePropertyStream_OpenChild.c)).

ECX reader,name and output pointer RET8. Original XOR FFF75A95, seek encoded entry, allocate34-byte retained child with native fields/map defaults, open child on shared parent stream and publish output only on success, release temporary retain on failure. Current independent array view/null return does not model native retains or shared stream cursor.

### NativePropertyStream_ReadUInt16

[ASM 007D5300](../../evidence/native/functions/007D5300_NativePropertyStream_ReadUInt16.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5300_NativePropertyStream_ReadUInt16.c)).

ECX reader,name/output RET8. Original XOR F328896C at entry, seek encoded field, read16-bit output and accumulate stream status; AL success only, missing leaves caller output policy to caller. Current UInt16 nullable value is an API projection.

### NativePropertyStream_ReadUInt64

[ASM 007D53A0](../../evidence/native/functions/007D53A0_NativePropertyStream_ReadUInt64.asm) ([annotated Ghidra C](../../evidence/native/functions/007D53A0_NativePropertyStream_ReadUInt64.c)).

ECX reader,name/output RET8. Original XOR EE28814F, seek then64-bit stream read under original byte-order mode. AL status, output is two32-bit words; inferred integer/pointer labels do not justify narrowing the original stored value.

### NativePropertyStream_ReadBoolean

[ASM 007D51C0](../../evidence/native/functions/007D51C0_NativePropertyStream_ReadBoolean.asm) ([annotated Ghidra C](../../evidence/native/functions/007D51C0_NativePropertyStream_ReadBoolean.c)).

ECX reader,name/output RET8. Original XOR68FE5F59; seek then original Boolean stream helper and accumulate status. Input property key, returnedAL status and output Boolean storage are separate values. Current missing=>nullable and any-nonzero-byte interpretation are explicit project API policy.

### NativePropertyStream_ReadSingle

[ASM 007D53F0](../../evidence/native/functions/007D53F0_NativePropertyStream_ReadSingle.asm) ([annotated Ghidra C](../../evidence/native/functions/007D53F0_NativePropertyStream_ReadSingle.c)).

ECX reader,name/output RET8. Original XOR4EDCD7A9; seek then four-byte floating storage read, stream byte-order/status retained. Current BinaryPrimitives Single decode is a little-endian PC value projection, not numeric conversion from a UInt32 parameter.

### NativePropertyStream_ReadInt32

[ASM 007D5210](../../evidence/native/functions/007D5210_NativePropertyStream_ReadInt32.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5210_NativePropertyStream_ReadInt32.c)).

ECX reader,name/output RET8. Original XOR0415642B; seek then32-bit integer storage read/status. Signed interpretation follows typed output/consumer, while raw word width is32. CurrentFFFFFFFF->-1 is distinct from unsigned getter F1288606.

### NativePropertyStream_ReadUInt32Array

[ASM 007D54C0](../../evidence/native/functions/007D54C0_NativePropertyStream_ReadUInt32Array.asm) ([annotated Ghidra C](../../evidence/native/functions/007D54C0_NativePropertyStream_ReadUInt32Array.c)).

ECX reader,three stack words RET0C: property name,destination,capacity/count pointer. XOR A4744BF2; save caller capacity before reading stored UInt32 count. Null destination returnsAL1 on that branch after count read; otherwise clamp count to min(capacity,stored), read raw32-bit array via byte-order helper and return accumulated status. Current allocating full-array API does not reproduce this capacity/query protocol.

### NativePropertyStream_ReadInt32Array

[ASM 007D5440](../../evidence/native/functions/007D5440_NativePropertyStream_ReadInt32Array.asm) ([annotated Ghidra C](../../evidence/native/functions/007D5440_NativePropertyStream_ReadInt32Array.c)).

ECX reader,three words RET0C. XOR5149A9DF; same stored-count/query/min-capacity protocol as UInt32 array, raw32-bit words read without numeric unsigned-to-signed conversion. Native output pointer/status protocol is distinct from allocating nullable managed int[].

### NativePropertyStream_ReadSingleArray

[ASM 007D55C0](../../evidence/native/functions/007D55C0_NativePropertyStream_ReadSingleArray.asm) ([annotated Ghidra C](../../evidence/native/functions/007D55C0_NativePropertyStream_ReadSingleArray.c)).

ECX reader,three words RET0C. XOR1B801A5D; same count/query/capacity protocol and raw32-bit array helper, interpreted by typed floating consumer. Decompiled uint pointers must not imply UInt32-to-float numerical conversion. Current float[] allocation/bounds remain project API.

### LibraryBin_IsContentMetadataKey

[ASM 009A1690](../../evidence/native/functions/009A1690_LibraryBin_IsContentMetadataKey.asm) ([annotated Ghidra C](../../evidence/native/functions/009A1690_LibraryBin_IsContentMetadataKey.c)).

Original vtable data pointer0104BF2C targets this19-byte predicate. One physical key-pointer stack word RET4; incoming ECX receiver overwritten. XOR EAX,EAX/CMP key+8,0679B9B8/SETE AL returns exact EAX0/1. This is a type predicate, not a resource-type getter. Function defined from original no-overlap instructions without byte changes.

### LibraryBin_AddPackageAndClassifyProvenance

[ASM 009A4F40](../../evidence/native/functions/009A4F40_LibraryBin_AddPackageAndClassifyProvenance.asm) ([annotated Ghidra C](../../evidence/native/functions/009A4F40_LibraryBin_AddPackageAndClassifyProvenance.c)).

Selected full original bin-package addition. Metadata predicate009A1690 selects0679B9B8; first matched group checks01000000 then02000000, producing2/3, else installed0/local1; no marker installed0/local4. When category0 product4..17 maps8..A0. Stores sign-extended constants for13..17 then AND FF at009A533A, so final categories128..160 are nonnegative. Do not mistake intermediate negative C literals for final values. Current package-index ordering/error policy is a bounded project projection, not all native filesystem/resource lifetime behavior.

## Current value-view distinctions

The native API separates an output pointer from its returned status and leaves
missing-output defaults to callers. A bounded nullable allocating view is useful
for inspection but has a different admission/error/allocation protocol. Array
count query and caller capacity must not be inferred from a managed full-array
allocation. Native Single/int/UInt32 arrays move32-bit words with the same helper;
consumer type interpretation is distinct from numerical conversion.

Child native readers retain references and share an underlying cursor; independent
array views do not reproduce that lifetime or original stream mutation. Native raw
byte strings versus managed versioned Unicode remain separate formats, covered by
the [household/PropertyStream contract](household-property-streams-and-bin-records.md).

For provenance, both01000000/02000000 marks select2 because the first test wins.
No marker selects installed0 or local4; marker without those bits gives installed0
or local1. Product4..17 receives byte-masked product bits only for category0.
Original C's intermediate negative constants for products13..17 do not describe
the final value after AND FF. Product13(hex) yields128,17(hex) yields160.
Enumeration ordering under duplicate markers and filesystem/package lifetime are
bounded beyond this selected classification path. A category proves neither a
valid household nor successful gameplay import.
