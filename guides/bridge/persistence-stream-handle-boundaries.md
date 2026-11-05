# PC 1.67 persistence stream handle boundaries

These original native entries use the existing analyst names and stored inferred
prototypes. The four getter/seek/copy envelopes below contain 610 original bytes
and 222 independently decoded instructions. Four create/close entries instead
have one-byte Ghidra metadata bodies and **zero actual Listing instructions**.
Their larger original-byte windows support bounded control-flow observations;
they are not four complete defined functions. No body or instruction repair is
implied. Physical instructions and the matching managed declarations govern ABI
claims; decompiler stack projections are not recovered original source types.

| Entry | Original extent retained | Canonical pair |
| --- | --- | --- |
| `00774EF0` close jump target | One-byte metadata; bounded 96-byte window | [ASM](../../evidence/native/functions/00774EF0_CloseStreamHandleAndInvalidateCache.asm) ([pseudocode](../../evidence/native/functions/00774EF0_CloseStreamHandleAndInvalidateCache.c)) |
| `00775870` Create | One-byte metadata; bounded 128-byte window | [ASM](../../evidence/native/functions/00775870_ScriptCore_StreamHost_StreamHost_Create.asm) ([pseudocode](../../evidence/native/functions/00775870_ScriptCore_StreamHost_StreamHost_Create.c)) |
| `007758F0` CreateFromBuffer | One-byte metadata; bounded 224-byte window | [ASM](../../evidence/native/functions/007758F0_ScriptCore_StreamHost_StreamHost_CreateFromBuffer.asm) ([pseudocode](../../evidence/native/functions/007758F0_ScriptCore_StreamHost_StreamHost_CreateFromBuffer.c)) |
| `007759D0` Close | One-byte metadata; bounded 16-byte window | [ASM](../../evidence/native/functions/007759D0_ScriptCore_StreamHost_StreamHost_Close.asm) ([pseudocode](../../evidence/native/functions/007759D0_ScriptCore_StreamHost_StreamHost_Close.c)) |
| `007759E0` GetSize | Complete body through `00775A45`, 102 bytes | [ASM](../../evidence/native/functions/007759E0_ScriptCore_StreamHost_StreamHost_GetSize.asm) ([pseudocode](../../evidence/native/functions/007759E0_ScriptCore_StreamHost_StreamHost_GetSize.c)) |
| `00775A50` GetPosition | Complete body through `00775AB6`, 103 bytes | [ASM](../../evidence/native/functions/00775A50_ScriptCore_StreamHost_StreamHost_GetPosition.asm) ([pseudocode](../../evidence/native/functions/00775A50_ScriptCore_StreamHost_StreamHost_GetPosition.c)) |
| `00775AC0` SetPosition | Complete body through `00775B3B`, 124 bytes | [ASM](../../evidence/native/functions/00775AC0_ScriptCore_StreamHost_StreamHost_SetPosition.asm) ([pseudocode](../../evidence/native/functions/00775AC0_ScriptCore_StreamHost_StreamHost_SetPosition.c)) |
| `00775B40` CopyStream | Complete body through `00775C58`, 281 bytes | [ASM](../../evidence/native/functions/00775B40_ScriptCore_StreamHost_StreamHost_CopyStream.asm) ([pseudocode](../../evidence/native/functions/00775B40_ScriptCore_StreamHost_StreamHost_CopyStream.c)) |

## Shared lookup and statuses

The complete getters and seek compare a stack handle with cache key `011D7838`.
Equality uses cached pointer `011D783C`. On a miss, only high byte `0x60` admits
script-interface virtual `+0xCC` lookup. A nonnull result publishes the pointer
before the key. A null stream returns -2. GetSize invokes stream virtual `+0x1C`;
GetPosition invokes `+0x24` with literal zero. Exactly returned `0xFFFFFFFF`
becomes -3; other words pass through without an additional signed clamp.

SetPosition resolves the stream before checking unsigned anchor `< 3`, returning
-7 for other anchors. It calls stream virtual `+0x28` with offset and anchor.
`NEG AL`, `SBB`, `AND 3`, `ADD -3` map nonzero AL to zero and zero AL to -3.
Those byte tests do not establish the concrete virtual implementation's failure
or exception behavior. Each selected complete body uses plain RET.

## Whole source transfer in blocks

CopyStream resolves destination before source and returns -2 for either missing
pointer. Source size `0xFFFFFFFF` fails with -3. Source seek `+0x28(0,0)` must
return nonzero AL, including for zero size. Each iteration requests
`min(remaining,0x1000)` bytes; source virtual `+0x30` must return the exact count,
and destination `+0x38` must return nonzero AL. Earlier mutations remain after
a short read or false write returns -3; full completion returns zero.

The read and write buffer LEAs refer to the same local block after physical
stack accounting. Differing decompiler stack labels do not identify separate
buffers. This is a sequence of virtual operations, with no transaction or
per-stream CLR monitor evidenced in the selected body. Concrete stream virtuals,
same-stream copying and concurrent or exceptional behavior remain unresolved.

## Bounded creation and close observations

The pristine five-byte E9 at `007759D0` jumps to `00774EF0`. That instruction is
visible in the original-byte decoding; it is not an existing Listing instruction
in the one-byte Ghidra body. The target's bounded window clears matching cache
key and pointer before the high-byte `0x60` gate. Its admitted path calls manager
virtual `+0xD8`, then tail-dispatches a nonnull result's virtual `+0x8`.
These sites establish visible ordering, rather than the manager's full removal
or reference-count implementation.

The creation window allocates `0x2C` with the `Scripting/MemoryStream` label,
calls construction and configuration helpers, registers through interface
virtual `+0xC8` with literal `0x60`, and makes visible `+0x4`/`+0x8` lifetime
calls. CreateFromBuffer's window calls interface `+0x70` with the array and two
stack output addresses, allocates/configures a stream, copies into its storage,
registers it, then invokes `+0x8`. Apparent memcpy lengths, stack outputs and
unassigned-register projections require the original instruction accounting.
The configuration helpers, concrete manager, virtual ownership and failure/
unwind paths require their actual implementations for stronger conclusions.

Original managed FastBaseStreamWriter and FastBaseStreamReader constructors
store a supplied nonzero handle or call Create; a nonnull reader byte array
takes precedence and calls CreateFromBuffer. Dispose closes a nonzero handle
before clearing its field. EndSaveObjects disposes the wrapper around the
serialization call, so access after wrapper close is a distinct native lifetime
question. The original managed policy remains authoritative; a CLR retention
map alone would not establish exact native reference ownership.

The [allocator label bytes](../../evidence/native/persistence-stream-handle-data.tsv)
retain the original 23-byte data span at `0100D78C`; no live cache contents are inferred.
