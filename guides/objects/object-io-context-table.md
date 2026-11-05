# Original object IO context table

## Scope

The complete selected PC1.67 TS3W.exe instructions establish context-table
serialization, version admission, registered-context dispatch and local status
handling. Analyst names describe reviewed behavior; they are not recovered
symbols. No original runtime or malformed-input execution was performed. The
CAW1.22.10 editor, whole ObjectGroup grammar and individual context payload
readers/writers are separate boundaries.

| Role | Complete original ASM and actual annotated Ghidra C |
| --- | --- |
| Read or initialize contexts | [00935C90 ASM](../../evidence/native/functions/00935C90_ObjectIoContexts_ReadOrInitialize.asm) ([pseudocode](../../evidence/native/functions/00935C90_ObjectIoContexts_ReadOrInitialize.c)) |
| Write sized context payloads | [00935E80 ASM](../../evidence/native/functions/00935E80_ObjectIoContexts_WriteSizedEntries.asm) ([pseudocode](../../evidence/native/functions/00935E80_ObjectIoContexts_WriteSizedEntries.c)) |

The two function bodies contain783 instruction bytes. Their complete envelopes
contain786 bytes: writer alignment935EDD..935EDF remains outside its disjoint
Ghidra body. No body or original byte was changed.

## ABI and shared fields

Both use ECX for the context-array owner and two physical stack words:
an opaque owner argument at entryESP+4 and reader/writer pointer at entryESP+8.
They return a result in AL and clean eight stack bytes. Upper EAX is not the
status contract. The context-array owner has a DWORD count at+4 and context
pointer array at+8. Valid owner/pointer/storage admission is a caller requirement,
not established by these functions' local checks.

The writer independently saves original ECX at entryESP−4. At935E84, after four
pushes, `[ESP+18]` retrieves the second argument into ESI. At935F46, after five
pushes, `[ESP+18]` retrieves the first argument. Its existing C6F340 call site
pushes writerESI then ownerEDI and places contextsEBX in ECX. The exact pointee
classes and deeper stream/helper interfaces remain unexpanded.

## Reader with a null input

For a null reader, the function walks all entries using its owner's DWORD count.
Each context virtual+8 receives the opaque owner argument and explicit null.
The first false AL returns zero immediately; if all accept, it returns literal
AL1. Effects of earlier callbacks are not rolled back. This is a local callback
result, not whole-world construction/readiness.

## Reader with serialized input

The nonnull path reads UInt16 version and UInt16 row count and accumulates each
primitive result into reader status byte+14. It refuses failed initial status.
Its version instructions perform DWORD subtraction followed by a **UInt16**
unsigned comparison:

`unchecked((ushort)(version - 0x0101)) <= 0x00FE`

At935D26 the instruction is ADD ECX,FFFFFEFF, at935D2C CMP CX,00FE and at935D31
unsigned JA selects failure. The admitted scalar versions are exactly0101..01FF.
The low-word truncation is essential; a signed promoted subtraction would accept
different values below0101. Count loops use MOVZX from the UInt16 stack slot and
unsigned comparison, not a signed Int16 bound or pointer-valued count.

Each row reads UInt32 component-name hash and UInt32 payload size. Failed
primitive status returns AL0. It records the current position and queries the
registered component mask for the hash. A known hash contributes to the seen mask
and selects the registered context pointer by bit index. That context virtual+8
receives the opaque owner argument and either the reader or explicit null when
payload size is zero. Callback false marks reader status zero and returns AL0.

Known and unknown hashes both proceed to an absolute seek to the saved position
plus the payload size. That sum is 32-bit arithmetic; the deeper seek's signed
guard, overflow/failure effects and the actual payload reader are separate
contracts. There is no supplied context-end argument or exact table-end check in
this selected body. Repeated known hashes invoke their callback repeatedly;
there is no duplicate suppression or transaction rollback here.

After all serialized rows, each registered descriptor not present in the seen
mask receives context virtual+4 with explicit zero. A false result marks reader
status zero and returns AL0. Otherwise the function returns the raw reader status
byte. A zero-row table therefore still visits absent registered contexts; it is
not equivalent to doing no work.

## Sized writer

The writer emits UInt16 literal0101 and the low16 bits of the owner's DWORD count.
Its loop uses the full DWORD count; truncation of the serialized count must not
be mistaken for a UInt16 iteration limit. For each registered context index it:

1. Obtains the registered name hash for that bit and writes the UInt32 hash.
2. Captures stream position, writes a UInt32 zero size placeholder and calls that
   context's virtual+1C with opaque owner argument and writer.
3. On false callback, marks status zero and returns AL0.
4. Otherwise obtains current position. Position sentinelFFFFFFFF marks writer
   status zero and continues the next context. A valid position supplies the
   backpatch helper with placeholder position and
   `currentPosition - placeholderPosition - 4`.

The final result is writer status byte+14. Primitive result accumulation, context
callback refusal and position failure are separate checks; there is no local
rollback, atomic file publication or complete allocation/stream-error contract.

## Actual pseudocode limits

The writer's actual Ghidra C retains `unaff_EBX`, `unaff_retaddr` and missing
backpatch operands due to its existing register/stack/shared-helper model.
Localized comments identify the original saved base, both argument slots and
the two physical backpatch pushes. They are not native external inputs or
evidence that the instructions omit operands. No unexpanded shared helper ABI
was guessed or globally changed to make the C look cleaner. The canonical C is
the actual annotated decompiler result, not a handwritten replacement.

The reader similarly reuses the incoming argument stack slot for the serialized
UInt16 count; pointer/short casts in C must be read using the annotated MOVZX and
unsigned loop instructions. Whole context payload formats, initial/default
callback semantics, descriptor registration beyond the selected table and the
large group load/save lifecycle remain separate original contracts.
