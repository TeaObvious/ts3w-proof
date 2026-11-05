# Original saved Parent/Unparent event restore

These are inspected PC1.67 instruction contracts with analyst names, not recovered symbols. Existing inferred prototypes remain unchanged. Full contiguous owned bodies total1886bytes/585instructions; physical register/stack/AL/RET instructions govern interpretation.

| Function | Paired original evidence | Instruction contract | Boundary / uncertainty |
| --- | --- | --- | --- |
| AnimationScene_DispatchParentOrUnparentEvent | [ASM](../../evidence/native/functions/00582D40_AnimationScene_DispatchParentOrUnparentEvent.asm) ([C](../../evidence/native/functions/00582D40_AnimationScene_DispatchParentOrUnparentEvent.c)) | Dispatches Parent/Unparent event tags and bit5 saved-record branches. | Physical RET10h despite inferred two-stack-argument C; remaining argument roles unchanged. |
| AnimationScene_RestoreOrdinaryParentPoint | [ASM](../../evidence/native/functions/00582910_AnimationScene_RestoreOrdinaryParentPoint.asm) ([C](../../evidence/native/functions/00582910_AnimationScene_RestoreOrdinaryParentPoint.c)) | Forwards saved ordinary parent point directly to958D90. | ECX receiver plus five forwarded physical stack words; RET14h. Inferred types remain unchanged. |
| AnimationScene_RestoreBoneParentPoint | [ASM](../../evidence/native/functions/00582940_AnimationScene_RestoreBoneParentPoint.asm) ([C](../../evidence/native/functions/00582940_AnimationScene_RestoreBoneParentPoint.c)) | Forwards saved bone parent point directly to958D90. | ECX receiver plus five forwarded physical stack words; RET14h. Inferred types remain unchanged. |

## Dispatch order

Event tags are C1E40001 Parent and C1E40002 Unparent. Bit5 selects saved-record capture/restore. Unparent without restore calls9595B0. With a consumed saved record and no saved parent, it calls9595B0 and writes the saved world matrix through958760 only when low AL is nonzero. With a saved parent, saved byte+51h selects ordinary582910 or bone582940, forwarding saved matrix/point/occupant byte+50h and then releasing the record.

Both forwarding wrappers call958D90 directly. They do not first call the explicit detach/clear path. The ordinary wrapper physically pushes the two additional trailing words0 then0; the bone wrapper pushes0 then1, before forwarding the original five stack words. Retained incoming references place their calls at582E2F and582E02 respectively. This distinguishes direct saved-parent reattach from absent-parent detach. It does not establish an ordinary-name/bone-identifier alias or a bone ordinal.

The existing [attach/clear/load instruction contracts](countertop-cutout-installation-and-transform-load.md) retain958D90's same-point return before installation, new-point install after pose notification and separate explicit current-parent clear. [Eligibility and point-list removal](surface-cutout-eligibility-and-child-removal.md) distinguish removal of an old row from clearing its installed-child selection. A saved direct reattach therefore must not be represented as an unconditional preliminary clear.

## Calls and limits

The [direct-call index](../../evidence/native/direct-calls.tsv) adds29physicalE8sites from these three bodies. [Incoming calls](../../evidence/native/animation-parent-unparent-restore-incoming.tsv) classify all three retained incomingE8sites: two inside the selected dispatcher and one at583F8A, whose containing owner583F78 is metadata-only here. No new body or function definition is supplied for that caller. [Two indirect calls](../../evidence/native/animation-parent-unparent-restore-indirect-calls.tsv) retain physical FF/2 and actual EDX operands; runtime targets remain unresolved.

Namespace resolution, allocation/ref lifetime, malformed-input guarantees, mirrored Parent arithmetic and native callback/exception behavior require their own instruction interpretation. Full original x87/SIMD instruction order is retained; no simplified floating-point emulation or bit-parity claim is substituted. No new types, signatures, definitions, analysis, bytes or flow were changed. Contiguous boundaries are represented directly in the code index; no redundant empty gap/tail tables or duplicate data windows are added.


## Saved-record replacement precedes attach refusal

In the Parent branch, admitted nonzero bone and event bit5 capture the previous relation. The dispatcher calls the existing SceneEntity replacement [ASM](../../evidence/native/functions/005818B0_FUN_005818b0.asm) ([qualified C](../../evidence/native/functions/005818B0_FUN_005818b0.c)) at583058. This41-byte/16-instruction function uses ECX plus one stack word/RET4. A nonnull previous pointer at entity+18 is sent to4E44E0 before the incoming pointer is stored; null stores directly. No pointer equality check or flags+0C mutation occurs here.

Only afterward does58306A shift event flags by6 and583076..583085 inspect the child SceneEntity flag2. Either583427 or583446 calls the explicit bone attachment [ASM](../../evidence/native/functions/00959F10_FUN_00959f10.asm) ([C](../../evidence/native/functions/00959F10_FUN_00959f10.c)), which forwards occupancy into the actual attach [ASM](../../evidence/native/functions/00958D90_TransformComponent_AttachToSlotPoint.asm) ([C](../../evidence/native/functions/00958D90_TransformComponent_AttachToSlotPoint.c)). In its different-point path,95910B reads Container+1C; nonzero branches to959120, fullEAX6/RET1C. The dispatcher returns after attachment without undoing the earlier saved-record replacement. Thus occupied refusal and preservation of the previous attachment record are separate effects. This conclusion assumes the admitted normal caller/allocation path; it does not promise safe arbitrary pointer/allocator failure handling.

## Restore consumes the record before applying it

The Unparent dispatcher calls SceneEntity's record reader [ASM](../../evidence/native/functions/00581C40_FUN_00581c40.asm) ([qualified C](../../evidence/native/functions/00581C40_FUN_00581c40.c)) with consume1. The74-byte/26-instruction reader returns the record pointer in EAX and clears entity+18 before return. Its separate bit4 path may look up the saved full parent identity through937570/937F80; missing lookup leaves bit4 clear, but does not prevent the final pointer return/consumption. The complete meaning and all writers of bit4 remain unexpanded.

Record consumption therefore precedes the already described absent-parent detach/matrix branch or direct ordinary/bone wrapper. Namespace membership, owner replacement, attach callback failure and final record deallocation are different lifetime questions. This is not a generic rollback/retain-on-failed-restore contract. New replacement of an older record and later consumed restoration must be traced together; treating a skipped attach as if it could not update saved state loses that relationship.

The original render child walk remains a separate owner: [6FC770 ASM](../../evidence/native/functions/006FC770_SceneObject_UpdateAttachmentChildren.asm) ([C](../../evidence/native/functions/006FC770_SceneObject_UpdateAttachmentChildren.c)) traverses the parent+194 intrusive ring into6FB340. [The command/pose reader](../animation/pose-cache-and-publication.md#attachment-command-reader-and-mode-consumer) records descriptor installation, mode/index/static-matrix consumption and later child-world publication. Neither these native rings nor saved pointer storage specify a CLR world counter, membership-revision index, monitor hierarchy, callback-under-lock policy or GPU/resource completion.
