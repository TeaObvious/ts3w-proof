# Retained object-design commands and value exchange

Selected original PC1.67 functions retain object-design values, apply them through
the existing component helpers and exchange retained value blocks. Analyst names
record established static roles. They do not identify original source symbols or
assign an interface undo/redo direction without a proven dispatch slot.

## First and later updates

A5E5B0 receives the design swap in ECX and returns with plain RET. If swap+EC is
null, it allocates6Ch, calls D29590, stores the retained command pointer, increments
its reference count and invokes virtual+4. Then it passes Float32 zero to
virtual+2C through an actual FLDZ/FSTP stack store. Only that later call receives
the zero argument. It then calls D29740 with the source object's GUID low/high
words, swap+A8/+B8 value blocks and swap+C8 text block.

Initial submission through D39980 occurs only when CEF500 returns a current
context with nonnull+28 and swap byte48 is zero; byte49 becomes1 after submission.
If a command already exists at+EC, the function updates/applies through D29740 and
does not submit again. The initial disabled branch still retains its command;
there is no worker or completion protocol established by these instructions.
[ASM](../../evidence/native/functions/00A5E5B0_DesignModeSwap_UpdateRetainedObjectCommand.asm) ([annotated pseudocode](../../evidence/native/functions/00A5E5B0_DesignModeSwap_UpdateRetainedObjectCommand.c)).

## Per-GUID recording and application

D29740 receives ECX command and five stack DWORDs: GUID low/high and three block
pointers, with RET14h. Missing object or component selected by global011E9FC4
returns before map mutation. The tree receiver is command+50 and its sentinel is
command+54. A first GUID row captures previous component values and the supplied
after blocks. A later row updates only the supplied after fields. Calls0094B150
and00949460 apply the two value blocks and the first DWORD of the supplied text
block through existing component helpers. The mask initializer identity and full
getter/setter policy are not established by this selected body.
[ASM](../../evidence/native/functions/00D29740_ObjectDesignCommand_RecordAndApplyValues.asm) ([annotated pseudocode](../../evidence/native/functions/00D29740_ObjectDesignCommand_RecordAndApplyValues.c)).

D290D0 receives three stack DWORDs, GUID low/high and a row-value-block pointer,
and returns with RET0Ch. Missing object/component leaves the block unchanged.
For a resolved component it copies component+38 into block+40 through6225B0,
applies block+0/+10 through94B150 and the first DWORD of block+60 through949460.
Then it exchanges two16-byte value lanes at0..1F with20..3F and pointer-bearing
text blocks at50/60 through existing copy helpers. The helper's exchange behavior
does not by itself establish a named undo/redo interface direction.
[ASM](../../evidence/native/functions/00D290D0_ObjectDesignCommand_ApplyAndExchangeValues.asm) ([annotated pseudocode](../../evidence/native/functions/00D290D0_ObjectDesignCommand_ApplyAndExchangeValues.c)).

## Retained map traversal and clearing

D29390 begins at command+58, stops at sentinel command+54 and advances through
4E1030. Each row passes GUID words node+10/+14 and the node+18 block to D290D0.
An empty map makes no per-row call.
[ASM](../../evidence/native/functions/00D29390_ObjectDesignCommand_ReapplyStoredRows.asm) ([annotated pseudocode](../../evidence/native/functions/00D29390_ObjectDesignCommand_ReapplyStoredRows.c)).

D29560 calls that traversal, passes the pointer stored at command+5C to D29230
using tree receiver command+50, then restores links+54/+58 to sentinel+54 and
zeros+5C, byte+60 and DWORD+64. It is named for this reapply/clear behavior;
no specific redo slot is inferred.
[ASM](../../evidence/native/functions/00D29560_ObjectDesignCommand_ReapplyAndClearRows.asm) ([annotated pseudocode](../../evidence/native/functions/00D29560_ObjectDesignCommand_ReapplyAndClearRows.c)).

D29550 is undefined in the retained Ghidra state. Its separate honest
[16-byte existing Listing window](../../evidence/native/object-design-history-windows.tsv)
contains CALL D29390, XOR EAX,EAX, RET and eight CC data bytes. It has no fabricated
function or C export and is excluded from function/annotation indices.

## Constructor and qualified dispatch data

D29590 calls D1AF00, writes primary table1086E68 and the secondary interface table
108708C at object+8, initializes the map sentinel/links and clears retained map
state. It returns the original allocation pointer in EAX with plain RET.
[ASM](../../evidence/native/functions/00D29590_ObjectDesignCommand_Initialize.asm) ([annotated pseudocode](../../evidence/native/functions/00D29590_ObjectDesignCommand_Initialize.c)).

Only the primary table's first eight physical DWORDs were captured by the selected
constructor read. The [physical data table](../../evidence/native/object-design-history-data.tsv)
also records the separate retained DATA-reference cell1086EB4 pointing to D29560,
verified against the original file. That cell does not establish its interface
slot semantics. The exact native undo/redo slots remain unresolved.

## Context and lookup limits

The existing [readable Complate type context](../../evidence/managed/types/Sims3.Metadata.Complate.cs)
contains SetupDesignSwap: after StartMaterialBuild, !bUndoable calls
DisableSubmitOfUndoable(true). This readable context is not an audited complete
matching method-CIL body or a complete managed caller census. It establishes no
invented false-toggle caller or native asynchronous scheduling contract.

[Incoming transfers](../../evidence/native/object-design-history-incoming.tsv)
record physical calls and tail transfers, including D29550 with no containing function. The shared
direct-call index records encoded E8 destinations only. Unknown child functions,
model/worker policy, interface direction and event/lifetime behavior remain
unresolved. These are static original instruction contracts, not runtime results.
