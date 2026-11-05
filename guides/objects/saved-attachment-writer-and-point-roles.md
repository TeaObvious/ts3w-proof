# Original saved attachment writer and parent-point roles

Analyst names describe inspected PC1.67 instructions, not recovered symbols. Four actual annotated pairs retain910owned bytes/322instructions. Existing inferred prototypes are unchanged; physical register, stack cleanup and output-pointer instructions qualify those prototypes.

| Entry / responsibility | Owned bytes / instructions | Actual evidence |
| --- | --- | --- |
|`009565f0` TransformComponent_WriteStreamWithAttachment|225/89|[ASM](../../evidence/native/functions/009565F0_TransformComponent_WriteStreamWithAttachment.asm) ([C](../../evidence/native/functions/009565F0_TransformComponent_WriteStreamWithAttachment.c))|
|`00950200` SlotComponent_FindBoneBindingByIdentifier|139/60|[ASM](../../evidence/native/functions/00950200_SlotComponent_FindBoneBindingByIdentifier.asm) ([C](../../evidence/native/functions/00950200_SlotComponent_FindBoneBindingByIdentifier.c))|
|`00951bc0` SlotComponent_AppendBonePointByIdentifier|407/116|[ASM](../../evidence/native/functions/00951BC0_SlotComponent_AppendBonePointByIdentifier.asm) ([C](../../evidence/native/functions/00951BC0_SlotComponent_AppendBonePointByIdentifier.c))|
|`00956340` TransformComponent_QueryParentPointAndFlags|139/57|[ASM](../../evidence/native/functions/00956340_TransformComponent_QueryParentPointAndFlags.asm) ([C](../../evidence/native/functions/00956340_TransformComponent_QueryParentPointAndFlags.c))|

## Physical writer and point contracts

### 0x009565f0: TransformComponent_WriteStreamWithAttachment

Analyst original PC1.67 instruction contract. ECX Transform receiver; physical RET8 cleans two stack words, although the existing inferred C exposes only the writer word at entryESP+4. Second-word role is not established. Writes position from+20h and quaternion from+10h, queries956340 for parent point/mode/occupancy, and writes parentGUID. A nonzero parent with point0 is serialized as parent0. For nonzero parent writes pointDWORD, then independent occupant Boolean, then bone-mode Boolean; returns accumulated writer status byte+14h. Physical caller pointers bind first query output to bone mode and second to occupancy. High EAX is not the Boolean contract.

### 0x00950200: SlotComponent_FindBoneBindingByIdentifier

Analyst original PC1.67 instruction contract. ECX Slots receiver, supplied DWORD at stack+4, RET4; EAX value or0. Requires model+40h and nonzero supplied identifier. Scans the summed slot-category count plus dynamic list, obtains each point by internal ordinal, asks virtual+8(1), and for nonzero returned value compares a model-derived identifier with the supplied DWORD. Match returns the virtual result; exhaustion or entry refusal returns0. Supplied identifier is distinct from internal loop ordinal. Child model/helper ABI and broader valid-input guarantees remain separate.

### 0x00951bc0: SlotComponent_AppendBonePointByIdentifier

Analyst original PC1.67 instruction contract. ECX Slots receiver, supplied DWORD at stack+4, RET4; EAX appended point or0 on entry/model-resolution refusal. Requires model+40h and nonzero identifier, resolves a separate model index, allocates/initializes a point, stores the original supplied DWORD at point+4 and+10h, copies the resolved model matrix into point+20h..+5Ch, and appends to the dynamic+54h/+58h list. Supplied bone identifier is not the resolved index. Allocation/helper valid-caller assumptions and complete lifetime remain separate; no valid-ordinal-range or malformed-input policy is established.

### 0x00956340: TransformComponent_QueryParentPointAndFlags

Analyst original PC1.67 instruction contract. ECX Transform receiver plus three output pointers at stack+4,+8,+0Ch; RET0Ch, meaningful low AL. Initially zeroes bone-mode, occupant and point outputs. Missing parent returns AL0; existing parent path returns AL1 even without a child binding. Binding mode selects ordinary point+4 or bone point+10h. A matching Container occupant sets SECOND output, leaving FIRST bone-mode output independent. Physical9563B3 MOV EDX,[ESP+18h] follows four saved registers and addresses entryESP+8; the inferred C final assignment to firstout is a false alias. Canonical950FB0 consumes two words; point virtual+8 consumes one.

## Read/write join and interpretation limits

The Transform writer queries parent point and two separate Boolean outputs. Physical caller pointers bind the first output to bone mode and the second to occupant status. The existing inferred query C aliases its final assignment incorrectly; the actual stack operand addresses the second output after four saved registers. A true Container occupant does not imply bone mode. The reader normalizes each byte separately, and the pending-row context stores the occupant and bone-mode bytes in distinct positions. [Reader and context evidence](countertop-cutout-installation-and-transform-load.md) remains separately paired.

The bone lookup and append functions receive a DWORD identifier distinct from their internal scan/resolved model index. The appended point stores the supplied identifier separately from its resolved matrix. These instructions do not establish a universal ordinal range, zero-valid policy, full model-helper semantics or complete animated pose/lifetime behavior. Ordinary name and bone identity paths must remain distinct. The writer locally serializes parent0 when a queried parent has point0; this is a local writer branch, not a generalized input validator.

[Direct-call index](../../evidence/native/direct-calls.tsv) adds21 physicalE8 sites; [indirect calls](../../evidence/native/saved-attachment-flags-indirect-calls.tsv) list2 physicalFF sites without guessed runtime targets. [Incoming references](../../evidence/native/saved-attachment-flags-incoming.tsv) classify5E8 calls,1E9 tail and1DWORD data pointer. The incoming950960 E9 tail is not an E8 call. [Owned coverage](../../evidence/native/saved-attachment-flags-owned-coverage.tsv) retains four contiguous bodies, without extending ownership. [Pointer data](../../evidence/native/countertop-cutout-data.tsv) establishes only its original file-backed word; the selected data pointer already lies in the separately retained callback window.

Exact x87/SIMD/model matrix operations remain visible in each full owned Listing. These pairs do not establish general malformed-input handling, object-group event acceptance, GUID remapping, cross-group ordering, installed cutout priority or CLR publication/locking behavior.

The [slot command/read path](slot-resource-projection.md#actual-slotbone-attachment-command-and-point-predicate) now distinguishes ordinary959E90 from explicit-bone959F10 and the point's original identifier from80D610's resolved renderer index. Saved identifier transport in9565F0/956340 remains independent of that render-command union; neither field should be renamed into the other without tracing its reader. Selected model/outfit replacement and raw point lifetime still require native ownership closure.
