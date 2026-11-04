# Fast-field reading and its split native entry

The PC 1.67 registered `Serializer_ReadFastFields` operation reads an ordered
primitive-field prefix from a resolved native stream. With a nonnull object it
copies raw payloads into the supplied field offsets. With a null object it
consumes the same supported payload widths without writing an object. Normal
returns are nonnegative status values; failure does not stop traversal or roll
back stores.

These are static original-byte and managed-IL findings. No original-runtime
execution or whole persistence-system acceptance is claimed. Original identities
are centralized in [PC 1.67 references](../../references/pc-167.md) and the
[original managed inputs](../../evidence/managed/reference-inputs.json).

## Native boundary and the missing success path

The registered entry is `0x00D83020`, record `0x0108D120`, original registration
name `ScriptCore.PersistImports::Serializer_ReadFastFields`, managed MethodDef
`0x06000CAE`. Its existing Ghidra ownership is `[D83020,D83037]` inclusive:
[ASM](../../evidence/native/persistence/fast-fields/00D83020.asm.txt)
([annotated pseudocode](../../evidence/native/persistence/fast-fields/00D83020.c)).
The successful `JNE` at `D83032` enters a separately defined continuation:
[ASM](../../evidence/native/persistence/fast-fields/00D83038.asm.txt)
([annotated pseudocode](../../evidence/native/persistence/fast-fields/00D83038.c)).

| Item | Exact coverage | Meaning |
| --- | --- | --- |
| Registered entry | `D83020..D83037`, 24 owned bytes / 9 instructions | Allocates `0x2C` local bytes, resolves argument 3, returns `EAX=0` on null, otherwise branches outside its owned body. |
| Continuation | `D83038..D83069` and `D83070..D831EB`, 430 owned bytes / 136 instructions | Constructs reader, dispatches nonnull/null loops, releases auxiliary state, returns status. |
| Skipped bytes | `D8306A..D8306F`, 6 nonowned bytes | Alignment instruction skipped by unconditional `JMP D83070`; no ownership change inferred. |
| Referenced dispatch data | `D831EC..D8320D` and `D83210..D83231`, 68 bytes | Two target tables and two selector maps; [decoded original data](../../evidence/native/persistence/fast-fields/dispatch-tables.tsv). |
| Between tables | `D8320E..D8320F`, 2 nonowned bytes | Alignment bytes; not needed to execute either switch. |

The old 24-byte ASM window ended exactly at the taken branch target and omitted
all 430 continuation bytes and all 68 dispatch-data bytes. Its
`cap_applied=false` only meant the next-entry boundary won over the 8 KiB cap.
Its old C output already followed this continuation, so it described much more
behavior than the paired ASM could substantiate. The new pair for each existing
entry retains the current disjoint ownership and explicitly joins the operation;
no automatic function-body merge was made.

`ReadFastFieldsResolvedStreamContinuation` is an analyst-assigned role. It is
entered by a branch, with `EAX` holding the resolved stream and `ESP` retaining
the predecessor's `0x2C`-byte frame. The standalone decompiler projection's
thirteen apparent parameters, `unaff_retaddr` and enormous artificial stack
array are split-entry artifacts. They are preserved and qualified in its C
export, not used as a callable ABI. The registered entry's decompilation is the
useful combined projection, despite owning only the initial fragment.

## Inputs, dispatch, and progression

The original declaration takes `(object, PersistFastField[], uint handle)` and
returns `int`: [original IL](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistImports.Serializer_ReadFastFields.il.txt)
([annotated managed declaration](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistImports.Serializer_ReadFastFields.cs)).
The native entry reads three caller-owned stack arguments and uses plain `RET`.
It does not validate a null array. The continuation reads signed array length at
`array+8`, records at `array+0x10`, and advances each record by eight bytes.

The original sequential value type contains `uint mPersistedTypeCode` and
`IntPtr mRuntimeFieldHandleOrOffset`:
[metadata IL](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistFastField.il.txt)
([annotated managed type](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistFastField.cs)).
In this x86 consumer the second word is tested as a signed 32-bit object offset.
A pre-lookup runtime field handle must not be passed as if already an offset.
The enum labels come from the original
[enum metadata](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistedTypeCode.il.txt)
([annotated enum](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistedTypeCode.cs)).

| Type codes | Original labels | Attempted payload width |
| --- | --- | --- |
| `2,3,11` | Boolean, Byte, SByte | 1 byte |
| `8,13` | Int16, UInt16 | 2 bytes |
| `9,12,14` | Int32, Single, UInt32 | 4 bytes |
| `7,10,15` | Double, Int64, UInt64 | 8 bytes |
| Others, including `4,5,6` | Includes Char, DateTime, Decimal | No read and no store |

Both loops first reject negative offsets. They then subtract 2 from the full
32-bit code and use an unsigned `>13` rejection before the selector-map lookup.
Thus codes below 2 and above 15 are rejected, not clamped. The in-range holes
4/5/6 select a skip target. Offset 0 is admitted; neither bounds nor destination
type compatibility are checked here. A valid nonnull object and offsets with
room for the selected widths are caller preconditions.

Records are processed in array order. An admitted successful field read consumes
its width; the null-object loop consumes that same width. Negative offsets and
unsupported codes consume **zero** bytes, even with a null object. Consequently,
passing a malformed descriptor list is not a general facility for skipping a
serialized field of an unknown width. Empty/nonpositive signed lengths perform
no field reads after constructing the reader.

The nonnull path copies bytes without numeric conversion or boxing: integer,
float and double codes share the same width-based operations. Endianness mode 1
is requested at construction; the original width helpers retain native
little-endian order in that mode. The 8-byte result is stored as two DWORDs.
Concrete stream short-read progression remains the virtual stream reader's
responsibility: this function neither seeks back nor restores prior contents.

## Status, failure, and the managed consumer

The reader's status byte at `reader+0x14` starts true and is ANDed with each
read's low-byte success result. A failed read remains a failed aggregate, but
there is no loop break. The nonnull path still copies the temporary to
`object+offset` after failure. Short reads may leave partial or uninitialized
stack payload bytes; no zero-default guarantee is present. The word-read helper
updates the same aggregate internally: [word-read adapter ASM](../../evidence/native/io/stream-reader/0056D0E0.asm.txt)
([annotated pseudocode](../../evidence/native/io/stream-reader/0056D0E0.c)).
Its complete existing body is `56D0E0..56D103`, 36 bytes / 15 instructions.
It uses `ECX` for the reader, one stack output pointer and `RET 4`; the other
width paths call the status helper explicitly.

At `D831D5` the aggregate byte is preserved in `BL`, auxiliary cleanup runs,
and `D831E4 MOVZX EAX,BL` returns it as a nonnegative full-register value.
Resolver failure already returns zero. On the ordinary boolean helper paths
the final value is 0 or 1. There is no negative failure sentinel in this native
operation. Cleanup is not evidence that the stream itself was released; global
manager ownership, concrete stream lifetime, exception propagation and
synchronization remain outside this bounded analysis.

The actual managed consumer is `PersistReader.LoadObject`, MethodDef
`0x06000D31`: [complete original IL](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistReader.LoadObject.il.txt)
([annotated managed decompilation](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistReader.LoadObject.cs)).
For an ordinary object instance, after optional construction and after excluding
`Precreate`, it calls this reader at `IL_028C`. It returns at `IL_0298` only when
the result is negative; `BGE` at `IL_0296` continues to the ordinary field list
for **both native 0 and 1**. Do not reinterpret that source condition as a
boolean failure check. Custom formatters use a separate path.

## Descriptor production and writer relationship

`PersistedClass.Read`, MethodDef `0x06000CD6`, builds a compatible leading prefix
from saved field metadata and live reflection information:
[complete original IL](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistedClass.Read.il.txt)
([annotated managed decompilation](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistedClass.Read.cs)).
It stops extending that prefix when a field is missing, nonpersistable or type
incompatible. It first stores field handles, invokes
`Serializer_LookupFieldOffsets`, truncates before the first negative offset,
and moves the remaining saved fields into the ordinary field list. The original
offset resolver reads each supported field handle at `handle+8`, replaces it
with its object offset, and marks unsupported records as code 0 / offset -1:
[existing ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d82f80.asm.txt)
([existing pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d82f80.c)).
This helps
explain why the reader can operate on raw positive offsets and why its negative
and unknown-code cases should not be mistaken for normal full-field skipping.

The inverse native writer uses the same width groups and ordered records:
[existing reviewed ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d83240.asm.txt)
([existing annotated pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d83240.c)).
`PersistWriter.SaveObjectAsType`, MethodDef `0x06000D1B`, flushes the managed
writer before calling that native fast writer, ignores its return, and then
writes the remaining ordinary fields after the fast prefix:
[complete original IL](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistWriter.SaveObjectAsType.il.txt)
([annotated managed decompilation](../../evidence/managed/persistence/fast-fields/ScriptCore.PersistWriter.SaveObjectAsType.cs)).
The complete writer's stream ownership and error policy have not been newly
accepted by this reader-window correction.

Existing reviewed helper evidence is reused rather than duplicated:

| Responsibility | Existing original evidence |
| --- | --- |
| Tagged stream resolution / global cache publication | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00774e80.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00774e80.c)) |
| Reader construction and mode | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d93e0.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d93e0.c)) |
| Byte / DWORD / QWORD reads | [byte ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004dd890.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004dd890.c)); [DWORD ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004dd980.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004dd980.c)); [QWORD ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004ddab0.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004ddab0.c)) |
| Sticky status / auxiliary cleanup | [status ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d79f0.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d79f0.c)); [cleanup ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d7990.asm.txt) ([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d7990.c)) |

The function's code, dispatch data and selected managed relationship are covered
here. Concrete virtual stream implementation, full handle/reference lifetime,
thread safety, malformed input memory safety and runtime persistence behavior
remain separate open contracts.
