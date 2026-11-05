# Saved object Model and shared design state

Selected original PC 1.67 contracts. Names and opaque pointer types are analyst
assignments. Physical storage, original instructions and version gates govern;
static evidence does not establish runtime resource loading or rendering.

## Physical ABI

All entries use ECX as listed. Stack offsets are from entry ESP. `AL` status
means only the low byte is defined; upper EAX is not a full-width Boolean.

| Entry and paired evidence | ECX | Physical stack arguments | Return / cleanup |
| --- | --- | --- | --- |
|94A640 [ASM](../../evidence/native/functions/0094A640_ModelComponent_WriteSavedState.asm) ([C](../../evidence/native/functions/0094A640_ModelComponent_WriteSavedState.c)) | Model |+4 writer,+8 descriptor | AL / RET8 |
|94AA90 [ASM](../../evidence/native/functions/0094AA90_ModelComponent_ReadSavedState.asm) ([C](../../evidence/native/functions/0094AA90_ModelComponent_ReadSavedState.c)) | Model |+4 reader,+8 descriptor | AL / RET8 |
|5FFB20 [ASM](../../evidence/native/functions/005FFB20_SavedModelKeyAdapter_ResolveNarrow.asm) ([C](../../evidence/native/functions/005FFB20_SavedModelKeyAdapter_ResolveNarrow.c)) | adapter |+4 UInt16 handle in four-byte slot,+8 output key | AL / RET8 |
|5FFB40 [ASM](../../evidence/native/functions/005FFB40_SavedModelKeyAdapter_ReadContextKey.asm) ([C](../../evidence/native/functions/005FFB40_SavedModelKeyAdapter_ReadContextKey.c)) | adapter |+4 reader,+8 output key | void / inherited RET8 |
|937C40 [ASM](../../evidence/native/functions/00937C40_ObjectRegistry_WriteSavedObjectRecord.asm) ([C](../../evidence/native/functions/00937C40_ObjectRegistry_WriteSavedObjectRecord.c)) | registry |+4 object,+8 writer,+C group context | AL / RET0C |
|934640 [ASM](../../evidence/native/functions/00934640_ObjectComponents_WriteSelectedState.asm) ([C](../../evidence/native/functions/00934640_ObjectComponents_WriteSelectedState.c)) | object |+4 writer,+8 group context | AL / RET8 |
|9497D0 [ASM](../../evidence/native/functions/009497D0_ModelComponent_SetReplacedModelKey.asm) ([C](../../evidence/native/functions/009497D0_ModelComponent_SetReplacedModelKey.c)) | Model |+4 resource key pointer | void / RET4 |
|602D20 [ASM](../../evidence/native/functions/00602D20_SavedModelSharedSteps_Write.asm) ([C](../../evidence/native/functions/00602D20_SavedModelSharedSteps_Write.c)) | shared-step pool |+4 writer,+8 key context | AL / RET8 |
|607340 [ASM](../../evidence/native/functions/00607340_SavedModelSharedSteps_Read.asm) ([C](../../evidence/native/functions/00607340_SavedModelSharedSteps_Read.c)) | shared-step pool |+4 reader,+8 key context | AL / RET8 |
|602120 [ASM](../../evidence/native/functions/00602120_SavedModelStepMap_GetOrInsert.asm) ([C](../../evidence/native/functions/00602120_SavedModelStepMap_GetOrInsert.c)) | step map |+4 output iterator,+8 UInt32-key pointer,+C unconsumed raw32 | void / RET0C |
|606B20 [ASM](../../evidence/native/functions/00606B20_SavedCompositorProperty_ReadTyped.asm) ([C](../../evidence/native/functions/00606B20_SavedCompositorProperty_ReadTyped.c)) | property owner |+4 type,+8 property ID,+C stream,+10 key adapter,+14 mode | AL Boolean / RET14 |

The unconsumed602120 word is `undefined4`; its signedness and semantic value are
unproved. Some indirect-stream calls still cause reused-stack/unaff artifacts
in actual C, particularly937C40/94A640/602D20. Their complete physical Listing and
proved entry arguments govern those expressions.

## Record and Model read/write

937C40 writes record version10, backpatches registered-component hashes, emits
product/alternate/VPXY narrow references, then calls934640. The dispatcher walks
lowest mask bit first and invokes the selected component virtual+0C with writer
and matching context; first low-byte failure stops it.

94A640 registers current Model keys at+8,+18,+28 independently of replacement
history. It writes ordered compositor/preset state, effective flags, material+4C,
byte+80, bounds and separate+81 bits1/2/0/3. A missing preset writes a zero key;
a keyless present preset invokes a separate key-allocation service.

94AA90 rejects failed initial reader, unsigned component version>16, and null
resource context when descriptor context version<14. Versions<6 delegate the
separate legacy reader. The current branch resolves narrow references directly
into Model fields, ignoring resolver status. Bit0 is read independently from
component version14 onward. There is no saved-product-model equality refusal.
Older-version branches, compositor/preset loading and catalog-derived bits have
the exact limits visible in the complete reader; they are not one uniform schema.

## Retained replacement bit and setter distinction

The Model constructor clears bit0.9497D0 calls its resource/bounds child then
always ORs bit0, including equal/prototype key when that setter is invoked.
Returning to a prototype key therefore does not erase replacement history.
94AA90 loads the serialized bit separately and94A640 emits stored state; neither
recomputes it from key equality.
[Constructor ASM](../../evidence/native/functions/00949510_ModelComponent_ConstructDefaultState.asm) ([C](../../evidence/native/functions/00949510_ModelComponent_ConstructDefaultState.c)).

The named World_ObjectSetModel wrapper compares the complete key and invokes
9497D0 only when different, after its separate cache operation. Its canonical
padding-inclusive ASM is a bounded window, not a newly proved owned extent.
[Named wrapper ASM](../../evidence/native/functions/0078CBB0_ScriptCore_World_World_ObjectSetModel.asm) ([C](../../evidence/native/functions/0078CBB0_ScriptCore_World_World_ObjectSetModel.c)).

## Shared table, context width and misses

602D20 writes shared-table version2, a backpatched size, full UInt32 count and
current native bucket traversal.607340 accepts versions1/2, uses size as an
availability preflight rather than exact-end enforcement, and reads full UInt32
handles.602120 reuses an existing node on a hit;607340 overwrites its packed value
on every row, so the last serialized duplicate handle wins. No native traversal
order is equated to an arbitrary host dictionary.

5FFB20 forwards a pointer to the low UInt16 stack slot to the narrow resolver.
5FFB40 adjusts ECX from adapter+4 then tails into the context reader. Context byte
+82 selects UInt16 or UInt32 width; shared-table version does not select width.
[Context reader ASM](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.asm) ([C](../../evidence/native/functions/007D7470_ResourceReferences_ReadContextKey.c)).

The narrow resolver admits handle zero. A hit copies all four key DWORDs and
returns AL1 even for an all-zero key; a miss returns AL0 and leaves output as it
was.606B20 initializes its resource output to zero and ignores adapter result;
Model94AA90 resolves into existing fields instead. Missing and present-zero
identities must not be conflated.
[Resolver ASM](../../evidence/native/functions/007D7190_ResourceReferences_ResolveNarrowHandle.asm) ([C](../../evidence/native/functions/007D7190_ResourceReferences_ResolveNarrowHandle.c)).

606B20 dispatches property types0..13. Resource type12 uses raw key without adapter,
UInt16+adapter slot8 in mode1, context-reader adapter slotC in mode2, otherwise a
byte handle. Adapter status is ignored; property setter supplies result. Type13
skips a UInt16 length; unknown dispatch type fails.

## Coverage limits

607340's two owned ranges exclude byte60746F.606B20 ends before jump-table data
606ECC. Full selected functions do not close allocator/hash policy, opaque
provider/resource lifetime, compositor/preset child grammar, legacy reader,
random-key sequence or all malformed-input lifecycle behavior. These services
are not renamed into guessed providers. No full engine parity or gameplay
save/reload result follows from the selected physical ABI and state contracts.
