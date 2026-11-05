# Original object signature maps

## Selected original path

Complete PC1.67 TS3W.exe bodies establish the selected writer, insertion and
lookup chain. Names are analyst-assigned. No game, malformed-stream, ordering or
save/reload workload was executed.

| Function | Original ASM and actual annotated Ghidra C |
| --- | --- |
| Global lookup entry | [009373F0 instructions](../../evidence/native/functions/009373F0_ObjectSignatureService_FindValue.asm) ([pseudocode](../../evidence/native/functions/009373F0_ObjectSignatureService_FindValue.c)) |
| Version-one map writer | [0093A8D0 instructions](../../evidence/native/functions/0093A8D0_ObjectSignatureMap_WriteVersionOne.asm) ([pseudocode](../../evidence/native/functions/0093A8D0_ObjectSignatureMap_WriteVersionOne.c)) |
| Resource-map unique insertion | [0093AB80 instructions](../../evidence/native/functions/0093AB80_ObjectSignatureMap_InsertUnique.asm) ([pseudocode](../../evidence/native/functions/0093AB80_ObjectSignatureMap_InsertUnique.c)) |
| First map containing instance | [0093AF20 instructions](../../evidence/native/functions/0093AF20_ObjectSignatureMaps_FindFirstValue.asm) ([pseudocode](../../evidence/native/functions/0093AF20_ObjectSignatureMaps_FindFirstValue.c)) |
| Type-specific lookup | [0093AF70 instructions](../../evidence/native/functions/0093AF70_ObjectSignatureService_FindByKeyType.asm) ([pseudocode](../../evidence/native/functions/0093AF70_ObjectSignatureService_FindByKeyType.c)) |

These five contiguous bodies contain554bytes and204instructions. Field offsets
below are hexadecimal. Their nineteen direct calls include the already reviewed
generic [unique insertion](../../evidence/native/functions/00911250_U64PairMap_InsertUnique.asm) ([pseudocode](../../evidence/native/functions/00911250_U64PairMap_InsertUnique.c)) and
[full-key lookup](../../evidence/native/functions/00923640_U64PairMap_Find.asm) ([pseudocode](../../evidence/native/functions/00923640_U64PairMap_Find.c)).
The [name/GUID map guide](../loading/name-guid-maps.md) distinguishes those
container operations from a resource parser.

## Writer and container order

0093A8D0 receives the resource owner in ECX and one stream stackword, RET4.
It creates a local stream context with endian word1, then emits:

| Field | Original source/width |
| --- | --- |
| Version | UInt32 literal1 |
| Key type | UInt32 owner+48 |
| Count | UInt32 owner+34 |
| Each key | UInt64 node+0 |
| Each value | UInt32 node+8, the low word of the generic value storage |

The resource contains its generic map at+28: bucket array+2C, bucket count+30,
entry count+34. Traversal scans increasing bucket addresses, follows node+10
links and stops at the stored end sentinel. It does not sort instance IDs.
Primitive result bytes accumulate in local status; this body never returns that
status or locally branches on a failed write. Auxiliary release still executes
on its ordinary path. Stream failures, valid sentinel/storage and exception
unwinding require their actual producers; void return is not save success.

0093AB80 receives ECX owner and three stackwords low key, high key and UInt32
value, RET0C. It preserves the original value in a local record before clearing
the low byte of the stack word used as the generic helper's unused argument.
The apparent `value & FFFFFF00` in actual C therefore does not truncate the
stored value. Generic insertion compares both key halves, keeps the first
duplicate and inserts a new node at its bucket head. AL is0 for duplicate,1 for
new insertion; upper EAX is unspecified. Only new insertion invokes731BE0 with
the resource owner and `(*(UInt32*)(owner+20))+1C`. That child's broader
accounting/notification and failure semantics remain unexpanded.

## First-match lookup and type partition

0093AF20 is **stdcall with three physical stackwords**, vector pointer and both
instance DWORDs; RET0C cleans all three. It walks begin/end map pointers with
record stride20h and asks the generic full64-bit lookup for each map. The first
found node returns its UInt32 value immediately, including zero. Missing maps
advance; exhaustion returns zero. An earlier zero hides later nonzero entries,
and the returned value cannot distinguish authored zero from absence.

0093AF70 uses ECX service and three stackwords keyLow/keyHigh/keyType, RET0C.
OBJK02DC343F chooses the vector at service+14; VPXY736884F1 chooses+24. Other
types return zero. It forwards the chosen vector and complete key to0093AF20.
009373F0 is a three-stackword stdcall wrapper: obtain service through93AD60,
return zero if null, otherwise forward to0093AF70. This selected lookup chain
returns raw values; it does not add one or produce nullable host values.

## Static limits

Installed resource enumeration/load precedence, resource type/factory
registration, matching wire reader, reload/teardown, product selection and
ObjectGroup's signature-value conversion are separate original paths. Container
head insertion and low-DWORD bucket selection do not establish the exact native
prime/growth/rehash sequence. The generic allocator can fail unsafely; no new
transaction or allocation guarantee is inferred. Current host sorting, limits,
cache lifetime, nullable result conversion or arbitrary key-type support must
be compared with their respective producers, rather than inferred from these
five bodies.
