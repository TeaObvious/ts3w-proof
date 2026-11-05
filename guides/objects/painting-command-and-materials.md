# Painting commands, fixups and material substitution

## Scope

Selected original PC 1.67 code, checked against instructions, producers and
consumers. Names below are analyst labels unless supported by original strings.
The [central identity](../../references/retained-proof-overview.md) identifies the executable. This is static
evidence; no original interaction, rendering, allocation failure or malformed
stage was executed. Whole-function exports do not imply complete transitive
coverage of callees.

Original managed [World](../../evidence/managed/types/ScriptCore.World.cs) and
[caller IL](../../evidence/managed/callers.il.txt), method `06000968`, forward
`ObjectGuid.mValue`, ResourceKey and UInt32 stage to registered
`World_ObjectSetPainting`, token `060007E7`, record `01163718`.
The managed wrapper supplies no stage validation or material workflow.

## Complete selected envelopes

Offsets and sizes in the following descriptions use `0x` for hexadecimal.
Booleans returned in AL do not define all upper EAX bits.

| Entry / analyst name | Physical contract and reference |
| --- | --- |
| 789950, registered Painting hook | cdecl, GUID64 + managed key16 + UInt32 stage, 28 stack bytes, void RET; [ASM](../../evidence/native/functions/00789950_ScriptCore_World_World_ObjectSetPainting.asm) ([pseudocode](../../evidence/native/functions/00789950_ScriptCore_World_World_ObjectSetPainting.c)) |
| 949490, Model submit | ECX Model, key pointer + stage, RET8; [ASM](../../evidence/native/functions/00949490_ModelComponent_SubmitPaintingCommand.asm) ([pseudocode](../../evidence/native/functions/00949490_ModelComponent_SubmitPaintingCommand.c)) |
| 693380, enqueue if dispatcher exists | cdecl command pointer, Boolean AL; [ASM](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.asm) ([pseudocode](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.c)) |
| 593FC0, dispatcher getter | No arguments, pointer EAX; [ASM](../../evidence/native/functions/00593FC0_RenderCommand_GetDispatcher.asm) ([pseudocode](../../evidence/native/functions/00593FC0_RenderCommand_GetDispatcher.c)) |
| 594960, locked enqueue | ECX dispatcher, command pointer, RET4; [ASM](../../evidence/native/functions/00594960_RenderCommandDispatcher_Enqueue.asm) ([pseudocode](../../evidence/native/functions/00594960_RenderCommandDispatcher_Enqueue.c)) |
| 593E70, copy record | ECX destination, source pointer, RET4, returns destination; [ASM](../../evidence/native/functions/00593E70_RenderCommand_CopyRecord.asm) ([pseudocode](../../evidence/native/functions/00593E70_RenderCommand_CopyRecord.c)) |
| 594760, append at block boundary | ECX block container, command pointer, RET4; [ASM](../../evidence/native/functions/00594760_RenderCommandBlocks_AppendBoundary.asm) ([pseudocode](../../evidence/native/functions/00594760_RenderCommandBlocks_AppendBoundary.c)) |
| 95F680, six-DWORD copy | Two stack pointers, RET8, destination EAX; incoming metadata ECX unused; [ASM](../../evidence/native/functions/0095F680_SixDwords_CopyIfDestination.asm) ([pseudocode](../../evidence/native/functions/0095F680_SixDwords_CopyIfDestination.c)) |
| 504FC0, payload no-op | Complete RET4, no payload operation; [ASM](../../evidence/native/functions/00504FC0_PayloadCleanup_NoOperation.asm) ([pseudocode](../../evidence/native/functions/00504FC0_PayloadCleanup_NoOperation.c)) |
| 703CA0, notification handler | Existing complete envelope; newly reviewed Painting arm only, `70413A..70415C`; [ASM](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm) ([pseudocode](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)) |
| 6FDD60, GUID iterator | ECX map, output iterator + GUID pointer, RET8, output pointer EAX; [ASM](../../evidence/native/functions/006FDD60_RenderGuidMap_FindIterator.asm) ([pseudocode](../../evidence/native/functions/006FDD60_RenderGuidMap_FindIterator.c)) |
| 6FE520, attach fixup | ECX manager, GUID64 + key pointer + stage, RET16, Boolean AL; [ASM](../../evidence/native/functions/006FE520_RenderObject_AttachPaintingFixup.asm) ([pseudocode](../../evidence/native/functions/006FE520_RenderObject_AttachPaintingFixup.c)) |
| 6DD490, construct fixup | ECX allocated object, key pointer + stage, RET8, same object EAX; [ASM](../../evidence/native/functions/006DD490_PaintingFixup_Construct.asm) ([pseudocode](../../evidence/native/functions/006DD490_PaintingFixup_Construct.c)) |
| 6DD4D0, apply to LOD | ECX fixup, input/output LOD + substitution word + context, RET16, Boolean AL; [ASM](../../evidence/native/functions/006DD4D0_PaintingFixup_ApplyLod.asm) ([pseudocode](../../evidence/native/functions/006DD4D0_PaintingFixup_ApplyLod.c)) |
| 6CAEA0, material gate byte | ECX definition, byte AL from `+0x3D`; [ASM](../../evidence/native/functions/006CAEA0_MaterialDef_GetPaintingGateByte.asm) ([pseudocode](../../evidence/native/functions/006CAEA0_MaterialDef_GetPaintingGateByte.c)) |
| 6CB470, substituted definition | ECX definition; overrides/count/two BYTE flags/output, RET20, Boolean AL; [ASM](../../evidence/native/functions/006CB470_MaterialDef_CreateSubstituted.asm) ([pseudocode](../../evidence/native/functions/006CB470_MaterialDef_CreateSubstituted.c)) |
| 6CAEC0, acquire material | ECX definition, output pointer + selector, RET8, Boolean AL; [ASM](../../evidence/native/functions/006CAEC0_MaterialDef_AcquireMaterial.asm) ([pseudocode](../../evidence/native/functions/006CAEC0_MaterialDef_AcquireMaterial.c)) |

## Submission and queue copy

The registered hook obtains the object registry, borrowed object and Model by
its registered mask. Missing any of them is a no-op. It converts the managed
key layout `TYPE/GROUP/INSTANCE64` to native `INSTANCE64/TYPE/GROUP`.
The Model supplies its owner's full GUID and initializes this memory record:

| Offset | Field |
| --- | --- |
| `0x00` | DWORD opcode `0x05BFF1A9` |
| `0x04` | Payload metadata pointer `0x0117C9AC` |
| `0x08` | GUID64 |
| `0x10` | Native ResourceKey, 16 bytes |
| `0x20` | Full DWORD stage |

Command stride is **0x50 bytes**, header16 + payload64. Padding is not fully
initialized. Enqueue returns false only when its global dispatcher is NULL;
otherwise it invokes the locked append and returns true, independently of later
application. The getter does not retain or establish initialization/lifetime.

The dispatcher uses a critical section at `+0xD0` and storage at `+0xF4`.
Ordinary append advances next by `0x50`, then copies into a nonnull prior slot.
At the block boundary, the helper copies a temporary first, may grow the pointer
array, allocates `0x140` bytes aligned16, copies the boundary record and links the
next four-record block. Allocation/exception containment is unexpanded.

Copying always copies the header. NULL metadata copies 64 payload bytes;
nonnull metadata invokes virtual copy. Painting metadata points to vtable
`01045AF4`: cleanup `504FC0` does nothing; copy `95F680` copies **24 bytes**, not
20. The producer initializes key16+stage4 only; the copied sixth DWORD remains
unspecified padding here. This is not a serialized format or proof of six
semantic fields. Source NULL is not guarded by the copy leaf.

## Render identity and fixup lifetime

The notification arm passes all four stack DWORDs: GUID low/high, key pointer,
stage. It returns AL1 even if attachment returns false. The manager map hashes
the unsigned GUID low word modulo **1033**, compares both GUID words and returns
an iterator with two DWORDs. Its missing sentinel comes from map `+0x1024`;
the map starts at manager `+4`. No retain occurs during this lookup.

Attachment rejects missing/sentinel/node-minus8 NULL and a failed virtual query
for interface ID `0x017F1D88`. It allocates `0x20` bytes aligned8, constructs and
locally retains a `PaintingFixupLOD`, then calls interface virtual `+0x80` with
the fixup **or NULL** and an identifier pointer. The eight bytes at `FFAF2C`
represent `0x0BD673A60283B195`; they are not the neighboring UTF16 string.
It invokes the interface's cache-related child at `+0x210`, releases its local
fixup and returns true even on NULL allocation. Complete virtual-slot retention,
replacement, cache polling and later application scheduling remain open.

Construction zeroes refcount by atomic exchange, sets vtable, copies native
key16 to `+8` and stage DWORD to `+0x18`. It neither loads artwork nor validates
stage. The reviewed apply target is the vtable cell at `FF7FEC`.

## Reveal channels and material application

For ordinary nonnegative stages, the four float channels are:

| Stage | Channels |
| --- | --- |
| 0 | `(2,0,0,0)` |
| 1..4 | Corresponding unit channel |
| 5..`0x7FFFFFFF` | Zero |

The original gate is **SIGNED JGE5**, despite the managed UInt32 input. High-bit
values pass the gate and address `vectorBase + stage*4 - 4` with 32-bit wrapping.
Some alias valid channels (for example `0x80000001` aliases channel0); others
address outside the four floats. No lower-bound guard is present. This static
instruction fact does not establish that gameplay produces those inputs.
Float1/2 original bytes are already retained in
[transform constants](../../evidence/objects/transform-constants.tsv).

Two local override records have **0x28-byte memory stride**: tag4/hash
`0x6CC0FD85` carries key16, tag1/hash `0xFBF9E8C5` carries the channel pointer and
count4. When input LOD byte `+0x72` is nonzero, the body retains it and invokes
the substitution helper. Otherwise it requests a clone; a false clone result
returns false without publishing output. Full clone contents remain unexpanded.

The mesh count at LOD `+0x44` is UInt32; mesh pointers are at `+0x40`. Null meshes
and current material skip. Definition at material `+0x54` is eligible when its
raw byte `+0x3D` is nonzero. There is no direct Painting shader-hash comparison
in this body. For eligible meshes it creates a substituted definition with
allow-type-change0/append-missing1, acquires material using selector `FFFFFFFE`,
binds material with flag0/context and releases local references. Both material
helper Boolean results are ignored. Finally it publishes/retains the output LOD
and returns true; this does not establish complete failure propagation.

## Substitution and cached material

The definition helper allocates `0x40` bytes; failure leaves output unwritten.
After retaining it, it publishes output **before** parameter construction. It
copies identity DWORDs `+0x28/+0x2C`, later bytes `+0x3C/+0x3D`.
Existing typed records use signed-positive count iteration:

- Tag1 takes the first matching override hash, marks it used and uses its
  pointer with the **existing** element count. It does not validate the matching
  override's tag/count at this boundary.
- Tags2/3 copy original values without searching overrides.
- Tags4..6 mark the first hash match used **before** checking resource TYPE.
  With type-change disabled, only the ResourceKey TYPE is compared. A rejected
  used override is not subsequently appended. Compatible tag4 supplies key16;
  tag6 supplies its DWORD at `+8` and the existing auxiliary word.
- Append-missing adds unused overrides only for tags1 and4, using their supplied
  pointer/count or key. Builder duplicate semantics are not established here.

The six original switch pointers are outside the function envelope. They and
metadata/vtable/identifier/string excerpts are retained in
[original data](../../evidence/objects/painting-original-data.tsv).
Serialization and backend shader/raster behavior are separate calls.

Material acquisition caches a `0x78`-byte Renderer/Material at definition+`0x38`.
New allocation/initialization failure returns false; success writes output and
retains it. A cached material does not reconsider selector here. Full failed
cache cleanup, resource readiness and GPU lifetime remain open. Continue with
the [shader contracts](../shaders/README.md) for separately established bindings.

## Decompiler hazards and remaining questions

The registered hook has103 bytes of actual flow through `7899B6`; following
padding is outside its envelope. Its prototype retains the registered identity.
Attachment requires both GUID words, the key pointer and stage. In the apply
body, stack `-0x98` is UInt32 mesh count and `-0x94` is float[4] reveal storage;
merging these creates false numeric float/count conversions. Actual annotated
Ghidra output separates them and supplies scoped physical allocator/builder
arguments. Original bytes govern all these interpretations.

Open: exact producer/meaning of definition byte3D, original shader/reveal sampling,
texture admission, complete LOD cloning, virtual-slot/cache lifecycle, render
drain thread/order, exception containment and executed visual acceptance.
