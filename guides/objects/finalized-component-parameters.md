# Original finalized component parameters

## Scope

Static PC1.67 original TS3W.exe instructions establish this selected input-record,
parameter builder, descriptor sort/lookup and Animation/VisualState consumer
contract. Analyst names describe reviewed behavior. No original process, runtime
creation, rendering, game test or codec was executed. The upstream managed wire
format, complete resource manager/VPXY decode, heap children, rig followup and
later component/event/draw pipeline remain separate boundaries.

The input kind at byte+3C in a64-byte native record and the final descriptor type
are DIFFERENT fields. A managed UInt32 wire tag must not be equated with either
without its actual producer.

## Canonical functions

| Role | Original instructions and actual annotated Ghidra C |
| --- | --- |
| Override/default composition | [9367D0 ASM](../../evidence/native/functions/009367D0_ObjectParams_AppendOverridesAndResourceDefaults.asm) ([pseudocode](../../evidence/native/functions/009367D0_ObjectParams_AppendOverridesAndResourceDefaults.c)) |
| Direct defaults | [936200 ASM](../../evidence/native/functions/00936200_ObjectParams_AppendDirectDefaults.asm) ([pseudocode](../../evidence/native/functions/00936200_ObjectParams_AppendDirectDefaults.c)) |
| Direct plus resource expansion | [9365E0 ASM](../../evidence/native/functions/009365E0_ObjectParams_AppendDirectAndResourceExpansion.asm) ([pseudocode](../../evidence/native/functions/009365E0_ObjectParams_AppendDirectAndResourceExpansion.c)) |
| Finalize borrowed table | [939EB0 ASM](../../evidence/native/functions/00939EB0_ParameterBuilder_FinalizeBorrowedTable.asm) ([pseudocode](../../evidence/native/functions/00939EB0_ParameterBuilder_FinalizeBorrowedTable.c)) |
| Hash-only sort | [939C60 ASM](../../evidence/native/functions/00939C60_ParameterRecords_SortByUnsignedHash.asm) ([pseudocode](../../evidence/native/functions/00939C60_ParameterRecords_SortByUnsignedHash.c)) |
| First hash/exact type | [939610 ASM](../../evidence/native/functions/00939610_ParameterTable_FindFirstHashExactType.asm) ([pseudocode](../../evidence/native/functions/00939610_ParameterTable_FindFirstHashExactType.c)) |
| Animation initialization | [9407C0 ASM](../../evidence/native/functions/009407C0_AnimationComponent_InitializeFromParameters.asm) ([pseudocode](../../evidence/native/functions/009407C0_AnimationComponent_InitializeFromParameters.c)) |
| Byte string type1 | [939F90 ASM](../../evidence/native/functions/00939F90_ParameterBuilder_AppendByteString.asm) ([pseudocode](../../evidence/native/functions/00939F90_ParameterBuilder_AppendByteString.c)) |
| Resource key type3 | [93A060 ASM](../../evidence/native/functions/0093A060_ParameterBuilder_AppendResourceKey16.asm) ([pseudocode](../../evidence/native/functions/0093A060_ParameterBuilder_AppendResourceKey16.c)) |
| Resolved word type4 | [93A0F0 ASM](../../evidence/native/functions/0093A0F0_ParameterBuilder_AppendResolvedWordType4.asm) ([pseudocode](../../evidence/native/functions/0093A0F0_ParameterBuilder_AppendResolvedWordType4.c)) |
| Raw word type5 | [939EF0 ASM](../../evidence/native/functions/00939EF0_ParameterBuilder_AppendRawWordType5.asm) ([pseudocode](../../evidence/native/functions/00939EF0_ParameterBuilder_AppendRawWordType5.c)) |
| Introsort | [939BB0 ASM](../../evidence/native/functions/00939BB0_ParameterRecords_IntrosortByUnsignedHash.asm) ([pseudocode](../../evidence/native/functions/00939BB0_ParameterRecords_IntrosortByUnsignedHash.c)) |
| Guarded insertion | [939730 ASM](../../evidence/native/functions/00939730_ParameterRecords_GuardedInsertionByUnsignedHash.asm) ([pseudocode](../../evidence/native/functions/00939730_ParameterRecords_GuardedInsertionByUnsignedHash.c)) |
| Unguarded insertion | [9397A0 ASM](../../evidence/native/functions/009397A0_ParameterRecords_UnguardedInsertionByUnsignedHash.asm) ([pseudocode](../../evidence/native/functions/009397A0_ParameterRecords_UnguardedInsertionByUnsignedHash.c)) |
| Type3 key getter | [939690 ASM](../../evidence/native/functions/00939690_ParameterTable_CopyResourceKey16.asm) ([pseudocode](../../evidence/native/functions/00939690_ParameterTable_CopyResourceKey16.c)) |
| Rig resource assignment | [93EB00 ASM](../../evidence/native/functions/0093EB00_AnimationComponent_AssignRigResourceKey.asm) ([pseudocode](../../evidence/native/functions/0093EB00_AnimationComponent_AssignRigResourceKey.c)) |
| Unsigned partition | [939A80 ASM](../../evidence/native/functions/00939A80_ParameterRecords_PartitionByUnsignedHash.asm) ([pseudocode](../../evidence/native/functions/00939A80_ParameterRecords_PartitionByUnsignedHash.c)) |
| Partial-sort heap stage | [939B10 ASM](../../evidence/native/functions/00939B10_ParameterRecords_PartialSortHeapByUnsignedHash.asm) ([pseudocode](../../evidence/native/functions/00939B10_ParameterRecords_PartialSortHeapByUnsignedHash.c)) |
| Type5 word getter | [9396D0 ASM](../../evidence/native/functions/009396D0_ParameterTable_CopyRawWordType5.asm) ([pseudocode](../../evidence/native/functions/009396D0_ParameterTable_CopyRawWordType5.c)) |
| VisualState initialization | [95FAB0 ASM](../../evidence/native/functions/0095FAB0_VisualStateComponent_InitializeFromParameters.asm) ([pseudocode](../../evidence/native/functions/0095FAB0_VisualStateComponent_InitializeFromParameters.c)) |

## Record and payload layouts

The builder has descriptor begin/end/capacity at+0/+4/+8 and payload-word-vector
begin/end/capacity at+18/+1C/+20. Appended descriptors are16 bytes:

| Offset | Field |
| --- | --- |
| +0 | UInt32 name hash |
| +4 | UInt32 final type |
| +8 | Payload byte offset |
| +C | Payload byte length |

The appenders preserve input order and do not deduplicate or overwrite an earlier
descriptor. Type3 records length16 and passes a16-byte begin/end source span
to the insertion helper without checking the key's semantic type. Complete helper
copy/allocation/failure behavior remains unexpanded.
Types4/5 store a full UInt32 word with length4; zero remains a real stored value.
Type1 scans a zero-terminated byte string, requests `(length+4)&FFFFFFFC` payload
bytes and copies length bytes, excluding NUL. The resize helper receives zero as
fill value; complete vector allocation/failure/zero-fill behavior is unexpanded.
No Unicode/UTF8 semantic encoding is established merely by this byte scan.

Finalize sorts the descriptors in place, writes a borrowed three-word table:
`descriptor pointer, signed count, payload pointer`, and returns that output
pointer in EAX. It copies no payload, transfers no ownership and extends no
builder lifetime. Its comparator word is copied by PUSH ECX from this, then only
the low byte is cleared; upper bytes retain the copied value. The final C's
`(uint)this & FFFFFF00` is therefore consistent with these instructions.

## Native input dispatch and append order

The two original five-entry [dispatch tables](../../evidence/native/data/parameter-kind-dispatch.tsv)
are necessary40 original bytes. Kind is an unsigned byte at record+3C; hash is+0.
A record's byte stride is40hex, independently of its eventual descriptor type.

| Input native kind | Override9367D0 | Direct default936200 |
| --- | --- | --- |
| 0 | Byte string pointer at+4 -> final type1 | Same |
| 1 | Inline16-byte key at+18 -> final type3 | Same |
| 2 | If global manager exists: virtual+CC resolves word+38; append returned full word as final type4, including0 | Skipped here; handled in resource expansion |
| 3 | Skipped | Byte string pointer at+4 -> final type1 |
| 4 | Raw word+38 -> final type5 | Same |
| >4 | Skipped | Skipped |

Composition appends overrides first, then9365E0 appends all direct defaults and
finally walks default kind2 resource records in original order. The latter uses
a key at+28 and the manager's virtual+0C with key/output plus four zero words.
After successful load it queries IID B7B8BAAF and visits its+28 vector in20-byte
entries, taking the16-byte key pointer at each entry+4. Resource type word+8
selects these appended final type3 keys:

| Resource type | Output hash |
| --- | --- |
| 01661233, only when input parameter hash is A6E5F629 | A6E5F629 |
| 8EAF13DE | 8415534A |
| 03B4C61D | 9CC7E9B2 |
| D3044521 | 9E2A3B0E |
| D382BF57 | FF0F8907 |

Predicate93B670 can additionally append hash389CED06 from interface+50. The
selected body retains/releases queried/resource interfaces. Full resource shape,
query-failure preconditions, optional predicate and manager/VPXY producers are
unexpanded. In particular its raw LEA(query+28)/null test does not establish a
safe null-query fallback. Do not infer broad malformed-resource acceptance.

## Sort stability and exact duplicate selection

All compared descriptor hashes are unsigned UInt32; types do not break ties.
The wrapper computes signed record count from `(last-first)>>4` and a depth limit
`2*bitLength(count)-2`. At an ordinary valid count above28 it uses median-of-three
partitioning and right recursion with left tail processing; depth zero takes the
heap path. It then insertion-sorts the initial28 and scans the rest unguarded.
At counts up to28, relative equal-hash order is preserved by strict-less insertion
(the one-element relative-order case is vacuous). The helper's first-boundary
and caller-provided sentinel requirements remain part of the valid range domain.

The partition copies the pivot value, scans by hash and swaps complete16-byte
records whenever its first pointer is below its last pointer, including equal
hashes. Thus above28, original input order is not generally stable. The heap stage
also propagates its comparator word into unexpanded children; its actual C warns
about reconstructed stack temporaries that are not extra pre-loop raw loads.
No universal original first-source winner above28 is established.

Lookup performs lower_bound with signed count/indices and unsigned hash comparison.
It obtains ONLY the first equal-hash descriptor and tests that descriptor's exact
final type. If the first duplicate has another type, lookup returns null; it does
not continue to a later duplicate of the requested type. It does not test payload
truth. Therefore a stable small table preserves override/direct/expanded order
only as an ordering fact: a wrong-type early descriptor can hide a later valid key
or flag. A blanket type-filtered override-wins rule would be incorrect.

The type3 getter copies fourDWORDs and the type5 getter copies oneDWORD from payload
base+offset, returning AL1. Missing/exact-type failure returns AL0 and leaves the
output buffer unchanged. Neither getter checks payload bounds/length or key type.
The caller/serialized input must establish valid storage; malformed domains were
not executed or otherwise admitted by these selected bodies.

## Animation and Rig consumer

Animation initialization looks up type3 hash8415534A and, when present, calls rig
assignment with ECX component and TWO physical stack words: key pointer and zero
followup flag. It then tests exact finalized type4 presence:

| Hash | Component+2C mutation |
| --- | --- |
| 23A15647 | OR400 |
| F084B899 | OR80000000 |

The payload word is not read for those flags, so a present type4 with payload0
still sets the bit. Type5 with the same hash does not satisfy the test. This
selected initializer does not clear either bit and returns AL1 on its local normal
return. That is not proof of rendering without a rig, omitted event13, a loaded
rig, successful native evaluation or whole object creation.

Rig assignment first clears component+20 and releases the old interface, then
performs manager virtual+0C with SIX explicit stack words. The actual returned
resource is queried for IID8EAF13DE, retained/assigned and its temporary owner
released. A load failure does not preserve the old rig. A nonzero low-byte followup
flag invokes93DF40 even following load failure; initialization passes zero here.
Correct caller and virtual-call ABI is essential: the prior untyped expression's
constant-null/unreachable query is a decompiler artifact, not original behavior.
The full manager admission, followup, event and draw consumers remain open.

## VisualState consumer

The same first-hash/exact-type5 getter supplies these raw words:

- EA1EC9B8: found nonzero clears component+8 bit1000; found zero sets it; missing
  leaves it unchanged. This is a fullDWORD zero test, not a one-byte Boolean read.
- 5C1804B8: found zero clears100000; nonzero sets it. A change in aggregate1E0000's
  zero/nonzero status calls95E690(true). If this parameter is missing but the
  aggregate is nonzero, the body calls95E690(false).
- Runtime owner Sim mask11EA0FC present at owner+2C additionally ORs flag40.

The body returns AL1 locally. Constructor defaults, all duplicate producers,
snow/publication callback ordering and rendering consumers are distinct contracts;
these words do not independently establish complete object hiding behavior.

## ABI summary and remaining work

Both insertion helpers consume three physical cdecl words; their third word is
unused in the bodies. Partition and introsort consume four; heap consumes four
and propagates its fourth. Finalize returns its output pointer in full EAX.
The selected copying getters and component initializers return Boolean in AL
rather than full EAX.
Rig assignment consumes two stack words and returns with RET8; its second argument
is read only as a low byte. Resource load calls have an ECX receiver plus six stack
words. Actual annotated C reflects these call-site types without changing shared
resource-manager helper signatures.

Still open: managed wire tag ->64-byte native kind production; complete native
resource/VPXY decoding and allocation failures; heap children; manager+CC result
meaning; all outer caller/constructor/event/retirement/render paths; malformed
input and runtime callback/thread acceptance. No guessed wire mapping, generic
fallback or gameplay equivalence is asserted for these gaps.

[Saved steering and host binding/skeleton comparison](../cas/skeleton-outfit-and-export-data.md#saved-steering-writerreader-and-captured-route-ownership-limits) joins952790/952A80 version/kind data, exact initialization and bicycle rig consumer with93EB00 source assignment. Native pointer/actor/retirement and host generation/reference/positive-cache/scratch policies remain distinct, not accepted from naming alone.
