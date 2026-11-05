# Object-reference replacement through retained commands

Selected original PC1.67 functions describe reference notification, retained
command objects and host-specific slot-cache eviction. Analyst names identify
established roles, not recovered source symbols. Physical stack words govern
where inferred C has an incomplete indirect-query prototype.

## Registered bridge and history traversal

The registered World replacement wrapper obtains the current context and its
history pointer, transports old/new GUID64 as four DWORDs and calls the history
dispatcher. Its already canonical48-byte raw export is an honest bounded window,
not a newly established owned-function extent.
[Wrapper ASM](../../evidence/native/functions/007864D0_ScriptCore_World_World_ReplaceUndoableObjectImpl.asm) ([pseudocode](../../evidence/native/functions/007864D0_ScriptCore_World_World_ReplaceUndoableObjectImpl.c)).

The history dispatcher receives ECX history and four GUID DWORDs, returning with
RET10h. It traverses the first vector at+0/+4, independently notifies current
context+2C when a context exists, then traverses the second vector at+10/+14.
The middle notification does not require either vector to contain entries.
[ASM](../../evidence/native/functions/00D39600_UndoHistory_ReplaceObjectReferences.asm) ([annotated pseudocode](../../evidence/native/functions/00D39600_UndoHistory_ReplaceObjectReferences.c)).

The recursive visitor takes four GUID words plus an object pointer with plain
RET/caller cleanup. It traverses the object's+18/+1C vector, queries selector
07A90300 through the object+8 interface, calls the returned interface's virtual+8
with the four original GUID words, then traverses+28/+2C. The decompiler's
unaff_retaddr is a stack-tracking artifact of inferred indirect-query ABI; it
is not an additional object identity or the physical callback ABI.
[ASM](../../evidence/native/functions/00CB3C90_Undoable_VisitObjectReplacementTree.asm) ([annotated pseudocode](../../evidence/native/functions/00CB3C90_Undoable_VisitObjectReplacementTree.c)).

The nonrecursive helper performs only the selected object's query and virtual+8
notification. It receives five physical DWORDs: four GUID words and the object
pointer. It does not traverse either child vector. Physical copies and balanced
stack/caller cleanup govern over the inferred C artifact.
[ASM](../../evidence/native/functions/00CB3C50_Undoable_NotifyObjectReplacement.asm) ([annotated pseudocode](../../evidence/native/functions/00CB3C50_Undoable_NotifyObjectReplacement.c)).

## Actual object-tool interface association

The existing constructor stores secondary vtable01084368 at tool+8.
[Constructor ASM](../../evidence/native/functions/00D05880_ObjectTool_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/00D05880_ObjectTool_Construct.c)).
Its exact+4 cell0108436C points to CE01F0, which has no defined function in the
retained read. Two [bounded existing query Listing windows](../../evidence/native/object-reference-replacement-query-windows.tsv)
retain32physical bytes only. The selected selector07A90300 branch reachesCE022F;
its nonnull path returns queryECX+50 and RET4, therefore tool+58 for this secondary
receiver. CE01F0's trailing partial instruction metadata is not promoted to a
complete decoded instruction. No invented function or C accompanies these windows.

The existing object pickup producer and selected tool field context remain
available separately.
[Pickup ASM](../../evidence/native/functions/00D03060_ObjectTool_AttachExistingObject.asm) ([annotated pseudocode](../../evidence/native/functions/00D03060_ObjectTool_AttachExistingObject.c)).

The ctor-installed tool+58 callback table's+8 cell points to CFB670. Its adjusted
receiver-relative+308 maps to tool+360, notified through the nonrecursive helper.
Relative+4/+8 select tool+5C/+60 according to relative+29F (tool+2F7), then invoke
the recursive visitor. Relative+16C (tool+1C4) invokes old-host cache eviction with
old GUID only. It receives four GUID DWORDs and RET10h. The separate native field
at tool+360 is recorded by offset; its complete semantic owner is not inferred.
[ASM](../../evidence/native/functions/00CFB670_ObjectTool_NotifyObjectReferenceReplacement.asm) ([annotated pseudocode](../../evidence/native/functions/00CFB670_ObjectTool_NotifyObjectReferenceReplacement.c)).
[Physical interface/table words](../../evidence/native/object-reference-replacement-data.tsv)
retain the exact selected associations.

## Held-command construction and replacement

The constructor calls its existing initializer and stores primary01086DD8 at+0,
secondary01086DD0 at+8 and callback table01086DC4 at+50. Held pointer+58, cached
pointer+A0 and bytes+D8/+D9 start at zero, along with other defaults shown in the
actual full Listing. Exact table cell01086DCC selects D26AC0. The command+8
QueryInterface implementation itself remains outside this selected closure.
[ASM](../../evidence/native/functions/00D28090_ObjectUndoable_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/00D28090_ObjectUndoable_Construct.c)).

The held-object producer retains a nonnull parameter at command+58 through874FB0,
resets byte+B4 and invokes its existing category/property children. It sets+54=3,
sends428E0A3 throughB08D30 only while+DC is zero, then increments+DC and returns
success in AL. The selected function does not establish every child predicate's
meaning or the full event-consumer policy.
[ASM](../../evidence/native/functions/00D269D0_ObjectUndoable_SetHeldObject.asm) ([annotated pseudocode](../../evidence/native/functions/00D269D0_ObjectUndoable_SetHeldObject.c)).

D26AC0 receives the constructor's adjusted command+50 interface: relative+8 is
command+58 and relative+50 is command+A0. Byte+89 guards reentry. It compares the
old GUID, borrows the new owner and swaps matching held and cached references.
When byte+88 is set, native event428E0A8 precedes the held-reference swap and
428E0A3 follows it. These event IDs are not relabeled as managed callbacks without
actual consumer evidence. The physical ABI transports four GUID DWORDs despite
the inferred C declaring only two parameters; the stack words beyond those
parameters remain explicit.
[ASM](../../evidence/native/functions/00D26AC0_ObjectUndoable_ReplaceHeldAndCachedReferences.asm) ([annotated pseudocode](../../evidence/native/functions/00D26AC0_ObjectUndoable_ReplaceHeldAndCachedReferences.c)).

## Host-selective validation-cache eviction

The slot helper walks its retained cache, collects every full four-DWORD key
whose first GUID matches old and then removes those nodes and their owned cached
results. Other host keys remain. Keys are not retargeted to the new GUID and the
cache is not blanket-cleared. The actual owned body has three noncontiguous
ranges:473owned bytes, with gaps excluded from the Listing. Its envelope is a
lookup boundary, not a claim that those gap bytes are owned instructions.
[ASM](../../evidence/native/functions/00CCB010_SlotPlacement_RemoveCachedHostCandidates.asm) ([annotated pseudocode](../../evidence/native/functions/00CCB010_SlotPlacement_RemoveCachedHostCandidates.c)).

## Coverage and lookup

[Incoming transfers](../../evidence/native/object-reference-replacement-incoming.tsv)
record physical calls/tail transfers with actual target bytes. The shared direct
call index records encoded E8 targets only. Unknown caller/body and interface
coverage stays unknown; table-only entries and query windows are not function
index rows. Full command polymorphism, the command+8 query implementation, native
event consumers and complete current/held command lifetime remain unresolved.
These are original static instruction contracts, not runtime observations or an
implementation's batch, generation, task, completion-token or cache-ticket policy.
