# Saved roof record reading

## Complete reader and physical boundary

[RoofManager_ReadSavedRoofRecords ASM](../../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.asm)
([C](../../evidence/native/functions/00B995E0_RoofManager_ReadSavedRoofRecords.c)) retains the complete original
PC 1.67 body: 365 saved Listing instructions and 1,079 original bytes, with no
unowned envelope gap. The descriptive name is analyst assigned. The C is the
actual annotated Ghidra rendering; inferred types do not override instructions.

ECX carries the roof manager and five words are passed on the stack. RET0x14
cleans those words. Both the opened-stream and open-failure exits load only AL
from stream-context offset0x14. Upper EAX is not a defined status result despite
the inferred undefined4 return type.

The operation opens resource0x11E32896 and reads a versioned header followed by
a counted sequence. It is a record reader feeding existing roof construction;
it does not establish a native byte-scanner or ridge-overlay geometry policy.

## Header and key order

| Version gate | Physical observation |
| --- | --- |
| Version below3 | Header keys are read inline; the second header key is present only from version2. |
| Version at least3 | Two context-key child calls replace the inline header-key route. Child handle and concrete key-width semantics remain separate. |
| All selected versions | A word is stored at manager+0x54; next-ID state is stored at+0x3C. |
| Version at least5 | Read the word at+0x8C; earlier versions explicitly store zero there. |
| Version at least4 | Read the byte at+0x88. |
| Version at least6 | Read the byte at+0x90; its enabled route additionally reads a word and two bytes at+0x94/+0x98/+0x99. |

Catalog/default selection occurs before the record count. The code contains
four-word substitution operands at runtime globals0x011ED4B0 through0x011ED4CC.
Those operands are observations of runtime storage, not PE-backed initial
values or recovered product identities. Their initial contents are not supplied
by this reference.

The existing [stream-context open helper ASM](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.asm)
([C](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.c)) retains an OpenWrite analyst
label. That name does not establish every route's direction. This reader passes
zero; the helper projects its mode bit to1 and dispatches service+4. The lower
provider's mode meaning remains bounded. Its retained physical ECX/RET8 and
sticky status behavior can be read without assigning a new direction to it.

## Counted records and failure ordering

Each loop iteration reads an ID, two contiguous coordinate/level triples, an
inline or context-derived key, and a floating scalar later consumed with FLD.
The version chooses the key route. Catalog resolution and default substitution
precede the nonnull-product gate that calls the existing
[roof record constructor ASM](../../evidence/native/functions/00B98940_RoofManager_ConstructAndPublishRoof.asm)
([C](../../evidence/native/functions/00B98940_RoofManager_ConstructAndPublishRoof.c)). Concrete catalog, key-width,
constructor and renderer children retain their own contracts.

The loop advances according to its count with an unsigned comparison. A sticky
read failure does not short-circuit the remaining counted iterations. The
opened-stream route closes before returning its status byte; failure to open
returns through its own status route. This is ordered mutation of the manager,
not an atomic parser rollback guarantee or arbitrary malformed-input safety.

The one required PE-backed constant is retained in
[roof-record-read-data.tsv](../../evidence/native/roof-record-read-data.tsv):
the binary32 -1 initializer for record-coordinate locals: MOVSS at0x00B99813
loads it, and stores at0x00B99825/2B/35/3B initialize four coordinate words.
Runtime-global substitution
values are deliberately outside that original-data excerpt.

## Caller and construction ownership

The complete existing [saved-layer caller ASM](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm)
([C](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c)) contains the direct call at
0x00AC976A. It owns the absent-manager allocation/binding route and the false-AL
cleanup. Together with the constructor above, these are concrete producer and
consumer boundaries; they do not turn the reader into the full roof rendering
pipeline or prove current loader geometry equivalence.

Current lot-marker and fallback roof proxies use project-specific diagnostic
or placeholder geometry. A native saved-record stream, full roof constructor,
managed wire decoder and current overlay emitter are distinct operations.
No runtime, rendering, numerical-parity or current proxy policy claim follows
from this static reader reference.
