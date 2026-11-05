# Hand-tool held state, notifications and registered wrapper evidence

Reference: [original PC 1.67 TS3W.exe](../../references/retained-proof-overview.md).
Names are analyst labels. The seven pairs below are genuine annotated decompiler
output and complete owned original Listing; inferred prototypes remain unchanged.

## Held lookup and command ownership

[HandTool_GetCurrentHeldPointer](../../evidence/native/functions/00CFE370_HandTool_GetCurrentHeldPointer.asm) ([pseudocode](../../evidence/native/functions/00CFE370_HandTool_GetCurrentHeldPointer.c))
returns null without the manager, current tool4, active object tool or selected
command. Byte+2F7 selects command+60 versus+5C; its pointer+58 is the returned
held native pointer, not a GUID. The registered GUID wrapper is separate below.

[ObjectTool_AttachExistingObject](../../evidence/native/functions/00D03060_ObjectTool_AttachExistingObject.asm) ([pseudocode](../../evidence/native/functions/00D03060_ObjectTool_AttachExistingObject.c))
obtains the original command/held state, invokes pickup children and ends with
validity reporting. Native object rules, command children and unsupported object
classes are not reconstructed merely by this selected entry.

[ObjectTool_RetireEditCommands](../../evidence/native/functions/00D012C0_ObjectTool_RetireEditCommands.asm) ([pseudocode](../../evidence/native/functions/00D012C0_ObjectTool_RetireEditCommands.c))
clears both command slots+5C/+60 among its original retirement children. Held
lookup returns null when its selected command is empty.

[The constructor](../../evidence/native/functions/00D05880_ObjectTool_Construct.asm) ([pseudocode](../../evidence/native/functions/00D05880_ObjectTool_Construct.c))
installs primary vtable1084370 separately from its secondary tables.
[The completion caller](../../evidence/native/functions/00D02160_ObjectPlacementTool_CompletePlacement.asm) ([pseudocode](../../evidence/native/functions/00D02160_ObjectPlacementTool_CompletePlacement.c))
calls primary virtual+84; [that child](../../evidence/native/functions/00D04700_UserToolObject_CommitPlacementWithSound.asm) ([pseudocode](../../evidence/native/functions/00D04700_UserToolObject_CommitPlacementWithSound.c))
calls virtual+88, whose physical table word isD012C0. The caller then reaches
CFDD10. [Required table words](../../evidence/native/live-hand-tool-data.tsv)
record these physical pointers; they do not establish every vtable slot policy.

## Reporting and completed edits

[HandTool_ReportPlacementValidity](../../evidence/native/functions/00CFCA50_HandTool_ReportPlacementValidity.asm) ([pseudocode](../../evidence/native/functions/00CFCA50_HandTool_ReportPlacementValidity.c))
consumes the low byte of the first stack word and uses RET8. It normalizes that
Boolean, sends the captured object GUID to the original validity callback, then
stores last-reported fields. The inferred Float32 formal is not a numeric1.0
contract: selected direct callers pass integer bits1.

[ObjectTool_NotifyCompletedEdit](../../evidence/native/functions/00CFDD10_ObjectTool_NotifyCompletedEdit.asm) ([pseudocode](../../evidence/native/functions/00CFDD10_ObjectTool_NotifyCompletedEdit.c))
physically takes this plus five stack DWORDs: object pointer, GUID low/high,
script flag and edit type; RET14h. Its one-stack-argument inferred C is incomplete.
Conditional slot notification passes final flag1, whereas
[the placement preview](../../evidence/native/functions/00D26BB0_HandTool_ApplySlotCandidatePlacement.asm) ([pseudocode](../../evidence/native/functions/00D26BB0_HandTool_ApplySlotCandidatePlacement.c))
passes0. The completed edit then follows original mode/type dispatch. Callback
children and command-clearing order are distinct from a complete undo-command,
sale/admission/rollback or tool-mode implementation.

[ObjectTool_ReleaseHeldEdit](../../evidence/native/functions/00D01E80_ObjectTool_ReleaseHeldEdit.asm) ([pseudocode](../../evidence/native/functions/00D01E80_ObjectTool_ReleaseHeldEdit.c))
uses the low-byte release/show parameter and RET4. Optional show precedes validity
and UI cleanup; it captures the held GUID/flags, conditionally dispatches completed
edit with the physical five-word ABI, then original command/cache/cursor cleanup.
Inferred unaffiliated register/reduced callback arguments are not a reliable ABI.

## Visibility and bounded registered wrappers

[ObjectTool_HideHeldGroup](../../evidence/native/functions/00CFDF40_ObjectTool_HideHeldGroup.asm) ([pseudocode](../../evidence/native/functions/00CFDF40_ObjectTool_HideHeldGroup.c))
dispatches object event0C for the held actor and contained actors, with original
visual/command children retained. Full child event/UI/unsupported-object semantics
are not established by its name.

[Bounded wrapper and dispatch windows](../../evidence/native/live-hand-tool-windows.tsv)
link actual existing Listing/data at787900,787920,787940,78DC50,792D50 and the
undefined D06FB0/D071AD spans. These are historical read-only physical windows,
not new owned functions or freshly defined code. Five registered definitions own
one data byte and zero instructions each; no replacement C/body is synthesized.
D06FB0 andD071AD remain undefined and are not given function entries.

The registered lookup returns a two-word GUID or zero after native pointer lookup.
Hide/Show/Attach bounded sequences set AL=1 after dispatch; no-held/repeated calls
are not an invented AL failure path. Detach captures and returns the GUID after
dispatch regardless of handler result, with zero/no dispatch for empty lookup.
The undefined handler's selected hide/show/detach branches retain secondary-this
adjustment and original visibility/evaluate/undo/release children. Bounded windows
include data/alignment; their ends do not assert full function or switch closure.

## References and boundaries

[Incoming references](../../evidence/native/live-hand-tool-incoming.tsv) preserve
actual physical direct transfers and data pointers separately. Missing owner or
canonical body remains missing; a call target is not a fabricated body range.
[Direct calls](../../evidence/native/direct-calls.tsv) records every selected owned
E8 instruction. Indirect calls/imports remain in full Listing and are not labeled
E8. [Two indirect call references](../../evidence/native/live-hand-tool-indirect-call-references.tsv)
atCFDD7A/CFDDA1 are physically CALL EAX. Their retained analysis flow targets
EC1C10/69EE30 are not encoded operands or observed runtime destinations.
Wrapper/handler windows are separate necessary data and do not enter code or
annotation function indices as complete function exports.

Original native command, script event, undo polymorphism, exact mode selection,
unsupported geometry and complete lifecycle/exception/concurrency policies remain
separate contracts. These selected bodies do not define a new parallel command
model or make pointer/GUID/command identity interchangeable.
