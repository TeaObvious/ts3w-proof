# Source-room query and paired state refresh

Original PC1.67 static contract. Names are analyst assignments, not recovered C++
symbols. Stored ABI/type analysis is unchanged; register, stack, byte and branch
facts below come from the complete instructions. No game function was executed.

| Analyst role | Genuine original pair | Instructions / owned bytes |
| --- | --- | --- |
| LightInterest_QuerySourceRoomRecord | [006C7C80 ASM](../../evidence/native/functions/006C7C80_LightInterest_QuerySourceRoomRecord.asm) ([C](../../evidence/native/functions/006C7C80_LightInterest_QuerySourceRoomRecord.c)) | 44 / 122 |
| LightInterest_RefreshPairedSourceRoomState | [006C7D00 ASM](../../evidence/native/functions/006C7D00_LightInterest_RefreshPairedSourceRoomState.asm) ([C](../../evidence/native/functions/006C7D00_LightInterest_RefreshPairedSourceRoomState.c)) | 108 / 322 |

Both complete owners contain **152 instructions / 444 owned bytes**, all matching
the pristine executable. Actual entry PLATEs are present in genuine decompiler
output; paired ASM covers every owned instruction. No proprietary data/table dump,
new function definition, prototype or type reconstruction is included.

## Source-room record query

6C7C80 consumes ECX interest and one stack output-byte pointer, RET4. It obtains
a position through target+24's virtual+24 into a16-byte stack buffer. MOVAPS/FLD/
FSTP at6C7CA7..CCA copy that returned buffer and pass X/Z to6A7CF0. The genuine
C's fStack_44 presentation is a stack-alias projection, not proof of an
uninitialized query input. Y is not substituted for either horizontal coordinate.

A missing service+14 or null pointee preserves both stored room+1C and caller
byte. A null query writes room0 while preserving the caller byte. A nonnull query
copies record+0C to the room field, callsCEBF30 and writes only its AL result to
the caller byte. Physical void/RET4 and incidental EAX are not a Boolean query
success result. CEBF30's predicate meaning is unresolved here.

## Paired defaults and state update

6C7D00 consumes ECX interest, with no consumed stack arguments and plain RET.
Its saved fastcall analysis is not a recovered C++ declaration. It first requires
own target+24, service+14 and its pointee. It retains old room+1C, initializes the
first query byte to1 and calls6C7C80 for this interest.

When target virtual+18 returns AL0, the actual update argument is bit1 of the byte
at own+20's+90. Otherwise it calls6C78F0, initializes a second query byte to1 and
queries a present companion at own+28. Thus absent service or a null query can
leave the caller's default1 intact. These defaults do not imply query success.
A first byte0 calls target virtual+38. Target flag08 forwards the companion target
float+10 to6BDE80 with the actual zero flag argument.

The first/second byte comparison, external+50/+88 and target flags choose whether
to call6BDE10 and its actual Boolean argument. The unchanged/no-update branch
returns early unless target flag20 requests an update. Only after an actual
6BDE10 call does it invoke6C72C0 for a changed old room, followed by current room.
An early no-update return therefore does not run those notifications.

## Remaining boundaries

The complete pair proves the caller byte defaults/use and physical room-state
refresh. It does not establish source-list insertion/removal, CEBF30 AL meaning,
original managed source admission, universal room0/floor0 policy, ownership of the
external fields, virtual implementations or opaque callees6C78F0/6C72C0. No name
or entry comment is used to infer those missing contracts. Runtime, lighting,
concurrency, persistence or image acceptance does not follow from static pairs.
