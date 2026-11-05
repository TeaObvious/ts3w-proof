# World native-persistence envelope and table writer

The selected original PC1.67 bodies establish resource selection/framing,
NOBJ/context load ordering, table-record production and their physical ABIs.
They do not establish every manager, object factory, resource provider, child
context or active animation state machine.

## Physical boundaries

| Original entry | Physical inputs/result | Complete owned instructions |
| --- | --- | --- |
| [WorldManager_ReadSavedNativeState ASM](../../evidence/native/functions/00C67710_WorldManager_ReadSavedNativeState.asm) ([C](../../evidence/native/functions/00C67710_WorldManager_ReadSavedNativeState.c)) | Owner ECX; stack4 stream pointer, stack8 raw32 mode word, stackC raw32 context word; RET0C; status AL | 434 instructions,1477 bytes in C67710–C67AE7 and C67AF0–C67CDC. Intervening bytes are not owned. |
| [NativeObjectTable_WriteRecords ASM](../../evidence/native/functions/007D4810_NativeObjectTable_WriteRecords.asm) ([C](../../evidence/native/functions/007D4810_NativeObjectTable_WriteRecords.c)) | Writer ECX; stack4 output-context pointer; RET4; void | 255 instructions,705 bytes in7D4810–7D4AD0. |

The first function's meaningful return is the low AL byte. Its mode/context
stack slots are retained as raw32 metadata without assigning signedness or
inventing an external service contract. Actual C may render the used mode word
as uint through decompiler inference; the physical metadata retains undefined4
and its exact four-byte storage. The actual embedded PLATE annotations and
paired complete owned Listing qualify these boundaries.

## World resource and context ordering

C67710 first reads the manager list, constructs IO contexts/native reader and
prepares manager stream adaptors. It retains existing manager prepass and
load-pump callback dispatch. The owner byte at44 chooses native resource loading
versus the null-input context initialization branch.

The resource branch opens CF84EC98:0:1 first. Only a false open tries
CF84EC97:0:1. Current input requires outer UInt32 one, then context-byte length;
legacy input starts with the context-byte length. It remembers the context
start, seeks over the contexts and calls the
[table reader ASM](../../evidence/native/functions/007D4AE0_NativeObjectTable_ReadAndMaterialize.asm) ([C](../../evidence/native/functions/007D4AE0_NativeObjectTable_ReadAndMaterialize.c)).
After successful NOBJ loading it rewinds and calls935940 for the contexts.
Manager load dispatch, missing-manager removal, global-manager work, completion
and local cleanup follow through existing services. This selected body does not
make arbitrary provider open failures equivalent to resource absence or prove
all dynamic manager/callback effects.

The selected table reader's AND FFFFFF00, preceding zero refusal, CMP100 and
unsigned upper refusal admit exactly NOBJ versions0100..01FF. A signed negative
record offset skips allocation/materialization while retaining the ordinal and
null object slot. These are table-reader facts; they do not imply that every
factory, resource key or child Load succeeds.

## Native writer production

7D4810 attaches a temporary record stream and walks the writer's object vector
in existing order. It obtains each object's virtual10 identity, remembers the
current position and invokes virtual18 with the writer context/owner. On false
writer status it resets that status, restores the prior record position through
the existing stream service and stores signed offset-1 for that ordinal.

It emits UInt32 NOBJ magic4A424F4E, version101, object count, entry offset1C,
resource-name count, key offset1C+8*objectCount and data offset after
16*nameCount. Each entry contains factory identity (zero for null in this emission
pass) and its recorded offset. TGI resource keys and buffered record bytes
follow; local storage is released. No object virtual writer, allocator, stream
primitive or resource-key service is replaced by a guessed implementation.

## Bounds of the selected evidence

The full existing7D4AE0 reader and these two complete bodies establish the stated
version, negative-entry, resource-priority, framing and ordering facts. The
separate7D3CB0 lookup was only inspected as bounded existing reachable Listing:
its unsigned out-of-range/null-entry returns are established, while its nonnull
provider query and indirect tail remain unresolved. It has no complete pair or
new function definition in this selection. Generic provider/object ownership,
all child context defaults/errors and full active SACS/task-stack restoration
must not be inferred from the table framing alone.
