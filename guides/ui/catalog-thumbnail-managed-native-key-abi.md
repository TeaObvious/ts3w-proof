# Managed thumbnail request and native key conversion

Original PC1.67, statically verified. The [complete registered frontend ASM](../../evidence/native/functions/00783090_ScriptCore_UIManager_UIManager_GetThumbnailImageImpl.asm) ([annotated C](../../evidence/native/functions/00783090_ScriptCore_UIManager_UIManager_GetThumbnailImageImpl.c)) are the actual annotated Ghidra exports of its 497-byte/184-instruction function body. Both exits are plain RET. The [complete key producer ASM](../../evidence/native/functions/0076C0E0_UIResourceKey_CopyManagedToNative.asm) ([annotated C](../../evidence/native/functions/0076C0E0_UIResourceKey_CopyManagedToNative.c)) cover all29 bytes/10 instructions. The [necessary registration/name data](../../evidence/native/data/catalog-thumbnail-frontend-registration.txt) contains exactly62 original bytes. No padding or adjacent string is included.

The [pristine selected ScriptCore declaration and forwarding method](../../evidence/managed/selected/catalog-common-icons/ScriptCore.cil.txt) prove thirteen managed formals and UInt32 return. The [SimIFace selected CIL and raw sequential ResourceKey fields](../../evidence/managed/selected/catalog-common-icons/SimIFace.cil.txt) establish field order TypeId, GroupId, InstanceId. They do not authorize treating managed and native key layouts as identical.

| Managed formal | Physical frontend EBP offsets | Meaning |
| --- | --- | --- |
| ResourceKey | 08,0C,10,14 | TypeId, GroupId, instance-low, instance-high |
| UInt64 templateObjectId | 18,1C | low/high |
| index | 20 | Int32 |
| ageGender | 24 | raw UInt32 |
| size | 28 | Int32 enum word |
| liveUpdate | 2C | raw Boolean argument word; descriptor stores low byte |
| camera | 30 | raw enum word |
| technique | 34 | raw enum word; descriptor stores low byte |
| geometryState | 38 | UInt32 |
| materialState | 3C | UInt32 |
| placeholder | 40 | UInt32 handle |
| doNotCache | 44 | raw Boolean argument word; descriptor stores low byte |
| additionalSizesToCache | 48 | raw enum mask |

Thus thirteen managed formals occupy seventeen incoming DWORDs. The cdecl annotation names physical words and preserves the genuine registered namespace/name. Plain RET leaves incoming argument cleanup to the caller. There is no direct native caller of this registered entry in the selected xrefs: its incoming reference is the registration table. Generated internal-call marshaller code is outside this static evidence.

At7830C1, ECX receives the managed key address EBP+8;7830C0 pushes a distinct stack-local output pointer. The complete76C0E0 producer copies input+8/+C/+0/+4 to output+0/+4/+8/+C. EAX receives the output pointer at entry and is never overwritten; RET4 consumes its sole stack argument. The frontend immediately uses that returned EAX to copy all four native words into the [779200 descriptor initializer](../../evidence/native/functions/00779200_UIThumbnail_InitializeRequestDescriptor.asm) ([annotated C](../../evidence/native/functions/00779200_UIThumbnail_InitializeRequestDescriptor.c)), whose physical stores are descriptor+78/+7C/+80/+84. The [D4C440 row producer](../../evidence/native/functions/00D4C440_UIThumbnail_PublishObjectRequestKeys.asm) ([annotated C](../../evidence/native/functions/00D4C440_UIThumbnail_PublishObjectRequestKeys.c)) and [D4BBA0 selector](../../evidence/native/functions/00D4BBA0_UIThumbnail_SelectCatalogIconOrDeriveKey.asm) ([annotated C](../../evidence/native/functions/00D4BBA0_UIThumbnail_SelectCatalogIconOrDeriveKey.c)) subsequently consume native low/high/type/group order, including type+8 and group+C. The helper's former void inference was corrected only after both complete producer and actual consumer established its return pointer.

For example, managed words `(9151E6BC,12ABCDEF,89ABCDEF,01234567)` become native `(89ABCDEF,01234567,9151E6BC,12ABCDEF)`. This is raw DWORD reordering, with no numeric conversion or resource lookup. The function does not guard null, bounds or input/output overlap; the selected caller uses separate valid buffers. Caller-owned output lifetime ends with the request's stack storage. No shared state, lock or allocation exists in this producer.

Frontend783090 also forwards size/additional-size requests, conditionally asks D4C440 to publish object-derived keys, and then calls D5C970 for allocation/publication. D4C440's result is AL only. Missing manager/publication returns EAX0; successful host conversion at vtable+C8 retains its UInt32 result in ESI then returns it in EAX. The actual C retains `unaff_EBX` and merged local aliases after indirect host calls; physical MOV ESI,EAX at783239, MOV EAX,ESI at783279, and the explicitly zeroed output lane at783220 govern. Placeholder conversion at vtable+CC and release dispatch remain indirect. No foreign target/signature is invented to beautify these expressions.

The frontend's original registration annotation is preserved, followed by physical storage notes. A later separately scoped producer annotation supplies its meaningful analyst name and proven output-pointer return type. Neither annotation changes original bytes or the external managed binding. Native cache lifetime, publication scheduling, renderer/GPU output, actual marshaller execution and runtime concurrency are not established by this key conversion evidence.
