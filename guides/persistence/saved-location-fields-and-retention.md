# Saved Location fields and restore retention

PC1.67 static instruction contract. These bodies establish saved field reads and
queued attachment processing; they do not establish a complete location writer,
resource provider or host restore transaction.

## Physical boundaries

| Body | Physical inputs and result | Complete evidence |
| --- | --- | --- |
| Location field reader | ECX component; stack4 reader, stack8 descriptor; RET8; raw reader status byte in AL | [C89740 ASM](../../evidence/native/functions/00C89740_LocationComponent_ReadSavedFields.asm) ([C](../../evidence/native/functions/00C89740_LocationComponent_ReadSavedFields.c)) |
| Transform reader | ECX Transform; stack4 reader, stack8 context; RET8; reader status byte | [959830 ASM](../../evidence/native/functions/00959830_TransformComponent_ReadStreamAndQueueAttachment.asm) ([C](../../evidence/native/functions/00959830_TransformComponent_ReadStreamAndQueueAttachment.c)) |
| Queued attachment resolution | ECX context; no physical stack arguments, plain RET; traversal finishes with low AL1 | [9595D0 ASM](../../evidence/native/functions/009595D0_TransformContext_ResolveQueuedAttachments.asm) ([C](../../evidence/native/functions/009595D0_TransformContext_ResolveQueuedAttachments.c)) |

The Location range C89740..C89868 is111instructions297bytes, ending before
alignment and the next function. The annotation and explicit custom storage in
actual C record only the proved physical ABI; pointee classes are left opaque.

## Location versions and partial state

Unsigned descriptor WORD+6 below10 returns1 before payload reads or component
mutation. On the admitted path, descriptor WORD+4 selects:

| Component version | Scalar payload and component effects |
| --- | --- |
| 0 | Read64bits into+8, accumulate status, then clear both DWORDs+8/+C |
| 1 | No scalar payload read |
| >=2 | Read raw32 flags+2C and fields+10/+14/+18/+24 |
| 2 or>=4 | Additionally read raw32+28; version3 omits it |

After the admitted path, OR flags with2 and, if low-byte bit7 is clear, OR with10.
Return the accumulated reader status. Earlier mutations survive failed primitive
reads; no early stream failure return or rollback is added inside this body.
The raw32 reads do not establish field signedness or a native physical writer.
The serialized input and native component state are distinct: version0 consumes
the wire value before clearing its two in-memory DWORDs.

## Attachment and retained host state

The Transform reader loads older matrix/current position-quaternion forms, then
parent GUID and conditional point/occupant/bone fields. Event27 may permit a queued
attachment. The resolver walks24byte rows forward, finds both borrowed GUIDs and
components, selects named or opaque bone point, links/notifies, and skips failed
rows. No bone ordinal, arbitrary zero-point admission or host two-pass policy is
proved by that borrowed lookup.

Complete writer service, live placement arithmetic, malformed-input recovery,
provider/callback behavior and normal save/quit/fresh-reload acceptance remain
separate questions. No runtime equivalence is inferred from address comments or
from these static field/attachment contracts alone.
