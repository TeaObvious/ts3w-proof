# Original countertop cutout installation and Transform load

Analyst names describe inspected PC1.67 instructions, not recovered original symbols. The17 genuine saved annotated pairs retain11,273owned bytes/3,296instructions. Inferred prototypes are unchanged; physical registers, cleanup and low-byte results govern the qualifications below.

| Entry / responsibility | Owned bytes / instructions | Actual evidence |
| --- | --- | --- |
|`006fe360` RenderMessage_ApplySurfaceCutout|223/84|[ASM](../../evidence/native/functions/006FE360_RenderMessage_ApplySurfaceCutout.asm) ([C](../../evidence/native/functions/006FE360_RenderMessage_ApplySurfaceCutout.c))|
|`009576c0` TransformComponent_ClearOwnedParentSurfaceCutout|204/70|[ASM](../../evidence/native/functions/009576C0_TransformComponent_ClearOwnedParentSurfaceCutout.asm) ([C](../../evidence/native/functions/009576C0_TransformComponent_ClearOwnedParentSurfaceCutout.c))|
|`00957790` TransformComponent_InstallParentSurfaceCutoutIfEligible|318/98|[ASM](../../evidence/native/functions/00957790_TransformComponent_InstallParentSurfaceCutoutIfEligible.asm) ([C](../../evidence/native/functions/00957790_TransformComponent_InstallParentSurfaceCutoutIfEligible.c))|
|`0068f1e0` SharedPointerOffset0x64_Load32|4/2|[ASM](../../evidence/native/functions/0068F1E0_SharedPointerOffset0x64_Load32.asm) ([C](../../evidence/native/functions/0068F1E0_SharedPointerOffset0x64_Load32.c))|
|`0094feb0` SharedPointerOffset0x64_Store32|10/3|[ASM](../../evidence/native/functions/0094FEB0_SharedPointerOffset0x64_Store32.asm) ([C](../../evidence/native/functions/0094FEB0_SharedPointerOffset0x64_Store32.c))|
|`006e9300` FrameService_SetForwardedPointer|29/8|[ASM](../../evidence/native/functions/006E9300_FrameService_SetForwardedPointer.asm) ([C](../../evidence/native/functions/006E9300_FrameService_SetForwardedPointer.c))|
|`009589f0` TransformComponent_DetachParentSlotLink|280/101|[ASM](../../evidence/native/functions/009589F0_TransformComponent_DetachParentSlotLink.asm) ([C](../../evidence/native/functions/009589F0_TransformComponent_DetachParentSlotLink.c))|
|`00958d90` TransformComponent_AttachToSlotPoint|2074/632|[ASM](../../evidence/native/functions/00958D90_TransformComponent_AttachToSlotPoint.asm) ([C](../../evidence/native/functions/00958D90_TransformComponent_AttachToSlotPoint.c))|
|`009595d0` TransformContext_ResolveQueuedAttachments|349/126|[ASM](../../evidence/native/functions/009595D0_TransformContext_ResolveQueuedAttachments.asm) ([C](../../evidence/native/functions/009595D0_TransformContext_ResolveQueuedAttachments.c))|
|`00951700` SlotComponent_Construct|102/31|[ASM](../../evidence/native/functions/00951700_SlotComponent_Construct.asm) ([C](../../evidence/native/functions/00951700_SlotComponent_Construct.c))|
|`009597e0` TransformContext_AppendAttachmentRow|69/22|[ASM](../../evidence/native/functions/009597E0_TransformContext_AppendAttachmentRow.asm) ([C](../../evidence/native/functions/009597E0_TransformContext_AppendAttachmentRow.c))|
|`00959830` TransformComponent_ReadStreamAndQueueAttachment|1353/383|[ASM](../../evidence/native/functions/00959830_TransformComponent_ReadStreamAndQueueAttachment.asm) ([C](../../evidence/native/functions/00959830_TransformComponent_ReadStreamAndQueueAttachment.c))|
|`00959d80` TransformComponent_ReadPropertiesAndQueueAttachment|264/87|[ASM](../../evidence/native/functions/00959D80_TransformComponent_ReadPropertiesAndQueueAttachment.asm) ([C](../../evidence/native/functions/00959D80_TransformComponent_ReadPropertiesAndQueueAttachment.c))|
|`00c70140` ObjectManager_ReadObjectGroupResource|4066/1041|[ASM](../../evidence/native/functions/00C70140_ObjectManager_ReadObjectGroupResource.asm) ([C](../../evidence/native/functions/00C70140_ObjectManager_ReadObjectGroupResource.c))|
|`00935820` ObjectIoContexts_FinalizeLoad|66/34|[ASM](../../evidence/native/functions/00935820_ObjectIoContexts_FinalizeLoad.asm) ([C](../../evidence/native/functions/00935820_ObjectIoContexts_FinalizeLoad.c))|
|`00938580` ObjectRegistry_ReadAndCreateObjectRow|1651/496|[ASM](../../evidence/native/functions/00938580_ObjectRegistry_ReadAndCreateObjectRow.asm) ([C](../../evidence/native/functions/00938580_ObjectRegistry_ReadAndCreateObjectRow.c))|
|`00934560` Object_ReadComponentPayloads|211/78|[ASM](../../evidence/native/functions/00934560_Object_ReadComponentPayloads.asm) ([C](../../evidence/native/functions/00934560_Object_ReadComponentPayloads.c))|

## Original state and producer order

The parent Slots+64h field accepts the first eligible child, allows the same child, and blocks a different child. Clear tests the same child, posts the zero-key message, then clears the field; it does not choose a sibling. New Slot construction initializes+64h to zero. Shared offset0x64 leaves read/store32bits; their code address alone does not establish every receiver type. The separate frame-service forwarding function is not a Slots reset.

The group resource reader initializes/reads contexts before its serialized object-row loop. Each row synchronously reaches the selected component reader through the registry and component dispatcher. A nonzero-parent Transform reads pointDWORD, occupant Boolean and supported-version bone-mode Boolean; event27 can prevent appending. The context appends24-byte rows in invocation order, then group post-loop finalization dispatches contexts and the Transform context traverses its pending vector forward. Object/resource/init refusal, GUID remapping and cross-group order are not established merely by that traversal.

Bone-mode forwards a DWORD identifier; no bone array ordinal or zero-acceptance inference is made here. The separately researched writer/getter functions are not part of these17 canonical admissions. Flags and point selection must be reconciled with their actual physical ABI before deriving any stronger writer contract.

## Individual physical contracts

### 0x006fe360: RenderMessage_ApplySurfaceCutout

Analyst original PC1.67 instruction contract. ECX receiver, FOUR physical stack DWORDs GUIDlow/GUIDhigh,key pointer,origin pointer; RET10h. Existing inferred three-argument C is incomplete. Looks up target/interface; missing target returns low AL0. Key first DWORD0 selects null fixup; otherwise allocation/construction may produce null. Invokes target interface virtual+80h, marks state through6DCC00 and releases local reference; valid-interface path returns AL1 even if allocation returned null. No full allocator/material lifetime inference.

### 0x009576c0: TransformComponent_ClearOwnedParentSurfaceCutout

Analyst original PC1.67 instruction contract. ECX child Transform plus one physical word, RET4. Requires parent+30h nonnull, parent Slots+64h equal to child owner at Transform+4, and93A1B0 low ALtrue. Enqueues057F931A with zero key, then clears parent Slots+64h through94FEB0. Nonowner or failed resource lookup leaves installation unchanged. No sibling scan/fallback.

### 0x00957790: TransformComponent_InstallParentSurfaceCutoutIfEligible

Analyst original PC1.67 instruction contract. ECX child Transform, three physical stack words parent object,parent Slots,slot point; RET0Ch. Parent Slots+64h must be0 or child owner Transform+4;93A1B0 low ALtrue required. Stores child owner through94FEB0 before enqueuing057F931A target GUID/key/origin. Slot virtual+18h supplies matrix; origin float4 stages are0*row0,+row3,+(0*row1),+(0*row2), separate MULPS/ADDPS. Different installed child blocks; no candidate ranking or automatic sibling selection.

### 0x0068f1e0: SharedPointerOffset0x64_Load32

Analyst original PC1.67 instruction contract. ECX receiver, no physical stack arguments/plain RET; MOV EAX,[ECX+64h]. Returns the raw32-bit field.957790/9576C0 use it for a parent Slots installed-child comparison. This shared instruction leaf alone does not establish every receiver type or field semantics in all callers.

### 0x0094feb0: SharedPointerOffset0x64_Store32

Analyst original PC1.67 instruction contract. ECX receiver plus one physical32-bit word, RET4; stores argument at receiver+64h.957790/9576C0 pass a parent Slots pointer;6E9300 forwards a different linked receiver. Shared code address is not proof these receivers have the same type. No addref/release or validation occurs in this leaf.

### 0x006e9300: FrameService_SetForwardedPointer

Analyst original PC1.67 instruction contract. ECX frame-service receiver plus one supplied pointer word, RET4 path. Stores pointer at+530h; if linked receiver+38h exists, forwards the same word via physical E9 tail JMP94FEB0. Retained AE0B10 calls with LoadPump_ReadFrameServiceGlobal and lot-renderer+264h or0. This is not a proved Slots constructor/reset or a claim about the linked receiver class.

### 0x009589f0: TransformComponent_DetachParentSlotLink

Analyst original PC1.67 instruction contract. ECX child Transform plus one physical flag word/RET4. For a current parent obtains its Slots component, calls9576C0 before unlink9518D0, and clears Transform+30h. Preserves original slot/pose notification and optional point/reference cleanup order. Does not select another surface-cutout child.

### 0x00958d90: TransformComponent_AttachToSlotPoint

Analyst original PC1.67 instruction contract. ECX child Transform plus seven physical stack words/RET1Ch. Performs original parent/point/occupancy/pose admission and linking. Same-point early success occurs before957790. Actual parent Slots component is saved at local stack+18h and passed at95959A after pose notification; inferred final C NULL operand is not the physical call. Flags, callbacks, partial effects and original SIMD/x87 order are retained; no prototype change.

### 0x009595d0: TransformContext_ResolveQueuedAttachments

Analyst original PC1.67 instruction contract. ECX context, no physical stack arguments/plain RET. Two disjoint owned ranges contain349B;357B envelope includes8 nonowned bytes. Traverses24B rows forward from+28h to+2Ch: childGUID,parentGUID,pointDWORD,occupant byte+14h,bone-mode byte+15h. Finds both objects/components; ordinary mode uses name lookup, bone mode forwards opaque pointDWORD to950200/951BC0. Links/events/notifications precede957790(parent Slots). Missing/failed rows are skipped; no bone ordinal or zero-acceptance inference.

### 0x00951700: SlotComponent_Construct

Analyst original PC1.67 instruction contract. ECX new Slot storage plus owner word/RET4. Initializes owner+4, slot/child resource state and authored component data;951760 stores zero into+64h. This establishes initial installed-pointer0 only for newly constructed Slots. No loaded-world event order or unrelated shared-field receiver type follows from this constructor.

### 0x009597e0: TransformContext_AppendAttachmentRow

Analyst original PC1.67 instruction contract. ECX context plus seven stack DWORDs/RET1Ch (28decimal): childGUID low/high,parentGUID low/high,pointDWORD,occupant Boolean word,bone-mode Boolean word. Calls959740 on row vector+28h, then writes five DWORDs and two bytes at the appended24B row. Preserves invocation order; does not resolve parents or install a cutout.

### 0x00959830: TransformComponent_ReadStreamAndQueueAttachment

Analyst original PC1.67 instruction contract. ECX Transform plus reader/context words, RET8; result reader status byte+14h. UInt16 context version<=2 reads/converts16DWORD matrix;>=3 reads position/quaternion. Reads parentGUID; nonzero reads pointDWORD,occupant Boolean and version>=2 bone-mode Boolean (older default0). Primitive results accumulate. Event27 payload starts1; post-event nonzero appends through9597E0. Zero parent uses separate optional pose adjustment. No assumed bone ordinal, callback acceptance or rollback.

### 0x00959d80: TransformComponent_ReadPropertiesAndQueueAttachment

Analyst original PC1.67 instruction contract. ECX Transform. Physical RET0Ch cleans THREE DWORDs although existing C declares two formal inputs; third-word role is not established. Reads position5E19D274/count3 and quaternionF24B36F0/count4. Parent reference5F6317D5 must read successfully and be unsigned in range; optional bone90661788,occupantC48803DB,point405DF7A1 default0. Appends via9597E0(context-18h) with child/indexed parent/point/occupant/bone. Final low AL is position/quaternion conjunction, not all optional property statuses.

### 0x00c70140: ObjectManager_ReadObjectGroupResource

Analyst original PC1.67 instruction contract. ECX object-manager owner plus four stack words/RET10h; result meaningful low AL/status. Opens4D1A5589 group resource, reads original versions/signatures/pose/context framing.935C90 initializes/reads contexts before object block rewind. Reads DWORD object count; ascending serialized GUID loop calls938580 synchronously using the same reader/context. After rows calls935820 before resource close and retained-object manager admission. Resource recovery,event/init failure,GUID remapping and cross-group order are separate from raw row order.

### 0x00935820: ObjectIoContexts_FinalizeLoad

Analyst original PC1.67 instruction contract. ECX context-array owner plus two physical words owner/status, RET8. Iterates owner+4 DWORD-count context pointers at+8 ascending; invokes each context virtual+0Ch with both words synchronously, stops at first low AL0, otherwise returns literal AL1. Upper EAX is not a status contract. Context child semantics remain separate.

### 0x00938580: ObjectRegistry_ReadAndCreateObjectRow

Analyst original PC1.67 instruction contract. ECX object registry plus44physical stack bytes/RET2Ch. Selects unused GUID, reads row version/component-name mask and original resource-reference/prototype data, allocates expanded component storage, then calls934560 synchronously on the same reader/context. Later event27, resource/init/attach branches can refuse/remove/recover the object. Returned object and out flags follow original partial-failure flow; serialized GUID is not universally runtime identity. No whole factory fallback or callback policy inferred.

### 0x00934560: Object_ReadComponentPayloads

Analyst original PC1.67 instruction contract. ECX object plus reader/context/serialized-mask DWORDs, RET0Ch. Repeatedly extracts lowest set mask bit, locates object component by populated-mask rank and the same bit context in context+8 array, then synchronously calls component virtual+8(reader,context). First low AL0 returns failure; otherwise clears that bit and continues, ending literal AL1. No null-component guard or broader valid-caller guarantee invented.

## Calls, data and boundaries

[Direct-call index](../../evidence/native/direct-calls.tsv) adds236 actual physicalE8 sites from the selected owned bodies. [Indirect calls](../../evidence/native/countertop-cutout-indirect-calls.tsv) separately list29 actualFF calls without inferred fixed runtime targets. [Tail transfers](../../evidence/native/countertop-cutout-tails.tsv) preserve the selected externalE9 as a jump. [Incoming sites](../../evidence/native/countertop-cutout-incoming.tsv) classify29 physicalE8 calls,2physicalE9tails and5physicalDWORD pointers. The retained reference kind calls both tails UNCONDITIONAL_CALL; physicalE9 takes precedence and neither is added as anE8 call.

[Owned coverage](../../evidence/native/countertop-cutout-owned-coverage.tsv) derives boundary class from actual ranges.9595D0 has349owned bytes in a357-byte envelope with8nonowned bytes; [the physical gap](../../evidence/native/countertop-cutout-nonowned-gaps.tsv) is data, never invented Listing instructions. Other16 bodies are contiguous.

[Callback data](../../evidence/native/countertop-cutout-data.tsv) retain the96-byte original window and three additional typed incoming pointer words. Data words do not define functions or prove runtime state. [Context seed instructions](../../evidence/native/countertop-cutout-context-seeds.tsv) are two already-existing MOV instructions with no containing function; no C or new ownership boundary is fabricated. The9597A0/9597D0 wrappers and951990 remain unowned Listing evidence, not new function definitions.

The selected package/resource, allocator, render-message dispatch and parameter consumption retain separate child contracts. Original typed data/operands alone do not establish initialized global identity, complete allocation/reference lifetime, failure rollback, callback policy, renderer synchronization or a whole construction/serialization system.

## Reused canonical pairs

- RenderObject_HandleNotification: [ASM](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm) ([C](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)).
- CounterCutout_BindMaterialParameters: [ASM](../../evidence/native/functions/0068E470_CounterCutout_BindMaterialParameters.asm) ([C](../../evidence/native/functions/0068E470_CounterCutout_BindMaterialParameters.c)).
- ObjectProduct_ReadCatalog: [ASM](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.asm) ([C](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.c)).
- TransformComponent_Construct: [ASM](../../evidence/native/functions/00957C60_TransformComponent_Construct.asm) ([C](../../evidence/native/functions/00957C60_TransformComponent_Construct.c)).
- ObjectIoContexts_ReadOrInitialize: [ASM](../../evidence/native/functions/00935C90_ObjectIoContexts_ReadOrInitialize.asm) ([C](../../evidence/native/functions/00935C90_ObjectIoContexts_ReadOrInitialize.c)).
- ObjectIoContexts_WriteSizedEntries: [ASM](../../evidence/native/functions/00935E80_ObjectIoContexts_WriteSizedEntries.asm) ([C](../../evidence/native/functions/00935E80_ObjectIoContexts_WriteSizedEntries.c)).
- LotRenderer_PublishLevelRootFlags: [ASM](../../evidence/native/functions/00AE0B10_LotRenderer_PublishLevelRootFlags.asm) ([C](../../evidence/native/functions/00AE0B10_LotRenderer_PublishLevelRootFlags.c)).
