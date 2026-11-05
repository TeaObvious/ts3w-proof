# Floor pattern IDs, message inputs and pending refresh

Reference: original PC1.67 TS3W.exe, identified centrally. The bodies below were
inspected through their complete existing definitions, with original-PE byte
checks. Their roles are analyst descriptions, not recovered symbols. These are
static ownership and arithmetic observations, not executed edits or GPU results.

| Entry | Selected responsibility | Evidence |
| --- | --- | --- |
| A8B070 | Initialize selected floor-change message fields | [ASM](../../evidence/native/functions/00A8B070_FUN_00a8b070.asm) ([C](../../evidence/native/functions/00A8B070_FUN_00a8b070.c)) |
| A8D1C0 | Resolve numeric16-bit pattern-key storage ID for selected quarters | [ASM](../../evidence/native/functions/00A8D1C0_FUN_00a8d1c0.asm) ([C](../../evidence/native/functions/00A8D1C0_FUN_00a8d1c0.c)) |
| A911C0 | Intern64-byte key input for a change message | [ASM](../../evidence/native/functions/00A911C0_FUN_00a911c0.asm) ([C](../../evidence/native/functions/00A911C0_FUN_00a911c0.c)) |
| A8F320 | Forward hash-map node/sentinel lookup | [ASM](../../evidence/native/functions/00A8F320_FUN_00a8f320.asm) ([C](../../evidence/native/functions/00A8F320_FUN_00a8f320.c)) |
| A8F4D0 | Insert raw64-byte key into a vector | [ASM](../../evidence/native/functions/00A8F4D0_FUN_00a8f4d0.asm) ([C](../../evidence/native/functions/00A8F4D0_FUN_00a8f4d0.c)) |
| AFBA70 | Initialize four16-byte inputs from live default globals | [ASM](../../evidence/native/functions/00AFBA70_FUN_00afba70.asm) ([C](../../evidence/native/functions/00AFBA70_FUN_00afba70.c)) |
| A934A0 | Query selected upper-nibble flags, optionally refreshing first | [ASM](../../evidence/native/functions/00A934A0_FUN_00a934a0.asm) ([C](../../evidence/native/functions/00A934A0_FUN_00a934a0.c)) |
| AFBB80 | Hash exactly64 bytes using a fixed seed | [ASM](../../evidence/native/functions/00AFBB80_FUN_00afbb80.asm) ([C](../../evidence/native/functions/00AFBB80_FUN_00afbb80.c)) |
| A8BB60 | Copy64-byte records with destination-end output | [ASM](../../evidence/native/functions/00A8BB60_FUN_00a8bb60.asm) ([C](../../evidence/native/functions/00A8BB60_FUN_00a8bb60.c)) |
| A925B0 | Refresh and erase one pending three-byte location | [ASM](../../evidence/native/functions/00A925B0_FUN_00a925b0.asm) ([C](../../evidence/native/functions/00A925B0_FUN_00a925b0.c)) |
| A8E850 | Return an equal-location iterator range | [ASM](../../evidence/native/functions/00A8E850_FUN_00a8e850.asm) ([C](../../evidence/native/functions/00A8E850_FUN_00a8e850.c)) |
| 4FA750 | Seeded byte hash, multiply then XOR | [ASM](../../evidence/native/functions/004FA750_FUN_004fa750.asm) ([C](../../evidence/native/functions/004FA750_FUN_004fa750.c)) |
| AD0DB0 | Lower-bound search on signed three-byte locations | [ASM](../../evidence/native/functions/00AD0DB0_FUN_00ad0db0.asm) ([C](../../evidence/native/functions/00AD0DB0_FUN_00ad0db0.c)) |

The A8D1C0 and A925B0 Listings exclude their respective three-byte and six-byte
nonowned gaps. Calling conventions, return widths and unused extra caller words
are qualified in each annotated C; a stored void or wide integer does not
override physical AL/AX/EAX consumption.

## Numeric pattern storage IDs are not foundation products

A8D1C0 takes ECX=floor manager and one packed-cell pointer, returning AX with
RET4. Mask bit0x10 selects the manager's grid at+48; otherwise it uses+2C. Null
grid returns FFFF. Signed X/Z and `signedLevel-managerMin(+10)` go to the existing
A8B410 logical-cell reader. That shared storage helper's analyst room-grid name
does not establish that this caller's pattern storage IDs are room identities.

The cell contains four **16-bit IDs**. In quarter order0..3, the query considers
only selected low mask bits. It starts atFFFF and requires each subsequent
selected ID to equal a previously retained non-FFFF ID. LeadingFFFF values do
not retain a value; a later differing ID, includingFFFF, rejects. Empty mask
returnsFFFF. There is no catalog-kind comparison and no own X/Z/upper-level
guard. This differs from the UInt32 product IDs and kind compatibility used by
AB67D0; neither the width nor the resolution algorithm is interchangeable.

For an admitted full-mask cell, `[FFFF,7,7,7]` returns7, while
`[7,FFFF,7,7]` and `[7,8,7,7]` returnFFFF. Knowing that products7 and8 happen to
share a foundation kind would not change this **numeric pattern-ID** test.

The existing A8EE40 reader consumes the ID as **UInt16**, looks up nonzero IDs,
and copies exactly64 bytes of pattern keys. ID0 chooses its map's implicit
default input; a missing nonzero ID chooses global null input011EC8E0. See the
[floor storage/material boundary](floor-geometry-original-boundaries.md#storage-material-and-resource-ownership-must-stay-distinct).

## Ordered message production and key interning

A8B070 installs vtable01065F8C, uses XCHG to initialize refcount+4 to0 and returns
its original ECX destination in EAX. Packed-cell bytes+10..13 initially hold
FF/FF/00/FF. AFBA70 fills the64 bytes at+18, copying live input011EC8A0 into
slot0 and live011EC8D0 into slots1..3. These globals' live contents and writers
are separate from their initial image bytes: no all-zero or immutable-default
claim follows. Selected fields+5A,+5C,+60..6C,+84,+87,+88 are reset; this is
**not a whole-message memset**. Fields+5B/+85/+86 are not initialized by this body.

Existing A96920 first changes the low quarter flags through A8D130. Only when
its active byte+1 is set does it allocate/construct a message, populate owner,
cell and key inputs, and submit event3175AE42. On the enabled path A8D1C0's ID
feeds A8EE40's64-byte key reader. A911C0 then writes the message's UInt16 key ID
at+58; the caller separately supplies flags and predicates, including platform
at+84 and support-below at+85. The caller invokes the support-below adapter twice
and assigns+85 twice. This observation does not certify callback reentrancy,
message allocation failure, complete predicate fields or delivery timing.

A911C0 takes ECX=manager plus key64/outputUInt16 pointers, RET8 void:

1. Key equal to the global null quad011EC8E0 returns ID0 immediately.
2. A8F320 lookup finding a row returns the low16 bits of row DWORD+40.
3. Otherwise it appends the64-byte key to manager's pending vector at+118,
   **before** A90E70 AddReference; then A8FA00 resolves the storage ID, whose
   low16 bits are written to the caller's output.

The existing A8FA00 lookup also maps equality with the map-owned default input
at+40 to0. Distinct null/default inputs and their early-return paths must not be
collapsed into “ID0 is invalid.” The selected caller supplies no new overflow
guard, rollback or atomicity across queue append, map mutation and ID output.

A8F4D0 copies raw64-byte records. With capacity it shifts the suffix and adjusts
an aliased source by64. Otherwise capacity is1 for an empty vector or twice its
current length; prefix/new/suffix copies precede freeing old storage and
publication. A8BB60 consumes four meaningful pointers and writes the advanced
destination through its first pointer. Its caller can push another unused word.
A null destination skips an individual record copy while still advancing;
that does not establish allocator-failure safety or a universal overlap contract.

## Hash lookup: FNV-1, not FNV-1a

AFBB80 passes length64 and seed`0x811C9DC5` to4FA750, then returns with RET4
preserving the child's full EAX despite its displayed void return.4FA750 performs
`h = (h * 0x01000193) XOR zeroExtendedByte` modulo2^32 for the admitted byte range:
**multiply first, XOR second**. Empty length returns the seed. This is FNV-1
order, not FNV-1a. It hashes every raw byte of the64-byte input, not a textual
key spelling, selected fields, normalized case or a guessed host serialization.

Derived UInt32 witnesses with that seed are: empty bytes→811C9DC5,
one00 byte→050C5D1F, one41 byte→050C5D5E, and64zero bytes→DFDE6AC5.
They describe the established multiply-then-XOR equation, not an executed map
lookup or a claim that the live default key inputs contain zero bytes.

A8F320 divides the hash by map bucket count+8 and takes the remainder. It follows
node+48 and compares all64 bytes through7892B0. A hit returns node and bucket-slot
pointers; a miss returns the sentinel from `buckets[count]` and that sentinel
slot pointer. It has no zero-count guard, null-map guard or returned-node lifetime
lease. Producer initialization and map/node retirement remain separate.

## Pending locations and upper-quarter flags

AD0DB0 searches sorted **three-byte** records using signed lexicographic order
`(level, X, Z)`, not raw unsigned byte order or `(X,Z,level)`. A8E850 applies the
reverse comparison after lower_bound: equality returns `[found,found+3)`, absence
returns `[lower,lower)`. A caller-supplied extra comparator byte is not read by
the selected lower-bound body. Valid sorted storage and range alignment are
caller obligations; the quarter mask is not part of this key.

A925B0 uses that equality result. For a present location it copies X/Z/level,
sets mask0xF and calls A913D0 with the remaining arguments0,0,1. **Only after that
call** does it erase one pending record by shifting later three-byte records and
subtracting3 from end. It does not clear the whole queue or remove before the
callback. A913D0's complete rebuild/predicate policy remains outside this guide.

A934A0 optionally calls A925B0 first when its refresh byte is true and the pending
range+F0..F4 is nonempty. It then returns false for a negative relative level;
otherwise it reads the manager+28 flat byte grid at level/X/Z. Each selected
low mask bit q asks **stored bit q+4**. Thus stored80/mask08 is true, while
stored08/mask08 is false. This is not A8D130's low-bit setter, which preserves
the high nibble. Upper-level/XZ bounds, high-nibble production, rebuild policy,
thread ownership and post-edit rendering still require their actual owners.

The concrete examples are derived from instructions, not new fixture or game
tests. Material/resource admission, persistent map/ID width boundaries, pending
list producers, complete rebuilding and GPU consumption remain separate work.
