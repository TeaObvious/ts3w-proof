# Object component resource framing and factory

Original PC1.67 TS3W.exe, identified centrally. Analyst names describe reviewed
roles; they are not recovered original symbols. These complete original functions,
actual saved Ghidra C and physical instructions establish static contracts.
No original runtime or host gameplay/fixture/renderer acceptance is claimed.

| Entry | Analyst role | Complete code |
| --- | --- | --- |
| 00936AC0 | ObjectResourceFactory_CreateObjectParams | [ASM](../../evidence/native/functions/00936AC0_ObjectResourceFactory_CreateObjectParams.asm) ([C](../../evidence/native/functions/00936AC0_ObjectResourceFactory_CreateObjectParams.c)) |
| 009372A0 | ObjectResourceFactory_ReadObjectParams | [ASM](../../evidence/native/functions/009372A0_ObjectResourceFactory_ReadObjectParams.asm) ([C](../../evidence/native/functions/009372A0_ObjectResourceFactory_ReadObjectParams.c)) |
| 00936E20 | ObjectParams_ReadComponentResource | [ASM](../../evidence/native/functions/00936E20_ObjectParams_ReadComponentResource.asm) ([C](../../evidence/native/functions/00936E20_ObjectParams_ReadComponentResource.c)) |
| 0093A2B0 | ObjectResource_LoadParamsForPrototypeKey | [ASM](../../evidence/native/functions/0093A2B0_ObjectResource_LoadParamsForPrototypeKey.asm) ([C](../../evidence/native/functions/0093A2B0_ObjectResource_LoadParamsForPrototypeKey.c)) |
| 00937A20 | ObjectResource_ReadPrototypeSignature | [ASM](../../evidence/native/functions/00937A20_ObjectResource_ReadPrototypeSignature.asm) ([C](../../evidence/native/functions/00937A20_ObjectResource_ReadPrototypeSignature.c)) |
| 009361B0 | ObjectParams_CopyFirstExpandedResourceInstance | [ASM](../../evidence/native/functions/009361B0_ObjectParams_CopyFirstExpandedResourceInstance.asm) ([C](../../evidence/native/functions/009361B0_ObjectParams_CopyFirstExpandedResourceInstance.c)) |
| 00932A30 | ObjectRegistry_RegisterDefaultComponents | [ASM](../../evidence/native/functions/00932A30_ObjectRegistry_RegisterDefaultComponents.asm) ([C](../../evidence/native/functions/00932A30_ObjectRegistry_RegisterDefaultComponents.c)) |
| 00937430 | ObjectRegistry_RegisterComponentType | [ASM](../../evidence/native/functions/00937430_ObjectRegistry_RegisterComponentType.asm) ([C](../../evidence/native/functions/00937430_ObjectRegistry_RegisterComponentType.c)) |
| 00937530 | ObjectRegistry_FindMaskByNameHash | [ASM](../../evidence/native/functions/00937530_ObjectRegistry_FindMaskByNameHash.asm) ([C](../../evidence/native/functions/00937530_ObjectRegistry_FindMaskByNameHash.c)) |
| 00948610 | ModelComponent_GetDescriptor | [ASM](../../evidence/native/functions/00948610_ModelComponent_GetDescriptor.asm) ([C](../../evidence/native/functions/00948610_ModelComponent_GetDescriptor.c)) |
| 0095A150 | TreeComponent_GetDescriptor | [ASM](../../evidence/native/functions/0095A150_TreeComponent_GetDescriptor.asm) ([C](../../evidence/native/functions/0095A150_TreeComponent_GetDescriptor.c)) |
| 0099D570 | ReferenceTable_ReadResourceKeys | [ASM](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.asm) ([C](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.c)) |
| 007D9930 | StreamContext_ReadResourceKeyVector | [ASM](../../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.asm) ([C](../../evidence/native/functions/007D9930_StreamContext_ReadResourceKeyVector.c)) |
| 00568510 | StreamContext_ReadResourceKey | [ASM](../../evidence/native/functions/00568510_StreamContext_ReadResourceKey.asm) ([C](../../evidence/native/functions/00568510_StreamContext_ReadResourceKey.c)) |
| 007D7760 | Stream_ReadResourceKeyTGI | [ASM](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.asm) ([C](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.c)) |
| 0072EFF0 | ResourceFactory_CreateForMatchingType | [ASM](../../evidence/native/functions/0072EFF0_ResourceFactory_CreateForMatchingType.asm) ([C](../../evidence/native/functions/0072EFF0_ResourceFactory_CreateForMatchingType.c)) |
| 009360C0 | ObjectParams_QueryInterface | [ASM](../../evidence/native/functions/009360C0_ObjectParams_QueryInterface.asm) ([C](../../evidence/native/functions/009360C0_ObjectParams_QueryInterface.c)) |

## Prototype route and factory authority

93A2B0 accepts OBJK02DC343F directly. OBJD319E4F1D first uses the current
catalog's typed-key lookup and copies product+88/+8C/+90/+94, then loads through
service72F140 virtual0 with IID02DC3450 and the caller's output. Other types and
missing catalog products return ALfalse. This body does not parse an OBJD index
or implement all resource precedence/fallback. 937A20 uses that resource to copy
two signature word pairs and releases it; the second pair comes from9361B0's
first64byte parameter row with control2, not a named Model/Tree priority.
Absent such a row yields zeros/ALfalse from9361B0, while that selected caller
still returns ALtrue after a successful resource load.

Four required original pointers are retained once in
[factory slots](../../evidence/native/data/object-component-factory-slots.tsv).
Factory01043DA8+38 dispatches72EFF0: requestedtype must equal factory+0C, then
virtual+34 calls936AC0 without a new stack argument. 936AC0 allocates40hexbytes,
sets resource identity/parameter vector/component mask to zero, resource vtable
01043E0C and flag+3C=30hex. Allocation failure returns EAXnull.

Factory+3C points9372A0, ECX factory plus two DWORD stack arguments context/resource,
RET8 and ALBoolean. Query resource IID02DC3450; missing resource/query fails.
The selected concrete query leaf9360C0 uses ECX resource plus one IID/RET4 and
returns the same pointer for02DC3450,02269ED1,EB54B802,EE3F516E, null otherwise.
9372B6 therefore pops the IID word before ESP+C loads context after saved EBX/ESI.
An instruction-backed call override corrects that indirect-call ABI in Ghidra;
actual exported C now uses context instead of an inferred unaff_retaddr artifact.
The context's virtual+18 stream is passed to936E20. Four previously unowned exact
vtable entries were defined by their original code flow without clearing bytes.

## Original component and parameter wire

936E20 receives resource in ECX and one stream/RET4; its result is ALBoolean.
It reads UInt32format, with no upper-version rejection in this body. **Only format
>=7 reads99D570's reference-table header.** Older formats immediately read the
component-count byte. Each authored UInt32component hash maps through937530;
nonzero registered masks OR into resource+28. Unknown hashes are ignored and
duplicates do not themselves invalidate the load.

The parameter-count byte must be<=32. Each row reads a UInt32 name BYTE length,
requires<=256, reads exactly those raw bytes, hashes them, then reads a control byte.
Those byte lengths are not UTF8 character counts.

| Control | Original payload |
| --- | --- |
| 0 or3 | UInt32 byte length then that many raw bytes |
| 1 or2, format<7 | Inline16bytes: UInt64instance then group/type DWORD fields |
| 1 or2, format>=7 | UInt32index strictly below the decoded key count; copy whole16byte key |
| 4 | UInt32word |
| Other | No further payload consumed by the default switch lane |

Record status is checked before continuing. Failure returns ALfalse with the
native partial object and cleanup behavior, not a managed exception category.
After records, format>=4 ATTEMPTS one flag byte. Format==5 ATTEMPTS one extra
DWORD. Both update stream status, but no later status test gates the final ALtrue.
Thus a host that requires these trailers merely to decide membership is stricter
than this original path. Constructor defaults and full retained parameter values
remain relevant to other consumers, even though a membership projection drops them.

## Reference-table framing and primitive widths

99D570 reads a nonzero UInt32relative offset and UInt32extent-presence word.
Extent0 means no dense key vector. Otherwise it saves the position after both
header words, seeks saved+relativeOffset-4, uses7D9930 to read UInt32count and
count16byte keys, then restores saved body position even on selected failure paths.
The extent is not an enforced exact byte length. 7D9930 uses the original array
size guard and reads each key through568510/7D7760, wire order type,group,
instance-low,instance-high; native storage instead places instance first.

The shared array-size child has already documented high-bit position arithmetic;
ordinary end-position simplification is bounded to positions below80000000.
A decoded managed byte-array membership reader is not a claim of parity for
arbitrary greater-than2GiB original stream contexts, allocator failures or custom
endian/virtual-stream implementations. No key-value type restriction follows
from merely requiring an index below the count.

## Component identity is not one exclusive renderer

Default registration932A30 registers Model948610 and Tree95A150 independently.
Their original named descriptors are retained in
[descriptor data](../../evidence/objects/component-descriptors.tsv).
937430 lowercases/hashes the descriptor name and assigns a runtime bit;937530
returns the matching mask or0. Lowercase FNV1 Model=2954E734, Tree=C602CD31.
In the reviewed fresh sequence the bits are2 and40hex; both may appear in the
resource mask. Neither membership nor a descriptor pointer proves an initialized
rendering component. A host deciding Model before Tree is a supported-family
policy, not an original mutually-exclusive component rule.

## Bounded consequences

The concrete original reader closes format<7 inline keys, format>=7 reference
framing, row limits, raw-byte names/values, default control lane and final trailer
admission. It does not write OBJK files, prove every producer's versions, or
establish a CLR cache. The original catalog route and signature extraction are
separate from complete OBJD wire parsing and resource manager concurrency.

All17full body envelopes/instructions were compared with pristine original bytes,
actual saved signatures/comments and canonical pairs/indexes checked. Factory
bindings are independently checked against original data. Ghidra FileBytes remain
unchanged. No provisional annotation, handwritten pseudocode or annotation sidecar
is retained. Full original stream exceptions, native allocator/resource retirement,
parameter consumers and whole object construction remain independent contracts.
