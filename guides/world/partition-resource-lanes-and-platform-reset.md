# Partition resource lanes and empty Platform initialization

All entries refer to original PC1.67 TS3W.exe. Names are instruction-backed analyst
names, not recovered symbols. Evidence is static original code; no function,
gameplay, save round trip, malformed-input case or allocation failure was executed.

## Canonical functions and physical ABI

| Entry | Analyst name and physical ABI | Complete original pair |
| --- | --- | --- |
| B4F990 | PartitionState_ReadCountedUInt16Vector; two stackDWORDs, RET8, no incoming ECX receiver, no meaningful return | [ASM](../../evidence/native/functions/00B4F990_PartitionState_ReadCountedUInt16Vector.asm) ([annotated C](../../evidence/native/functions/00B4F990_PartitionState_ReadCountedUInt16Vector.c)) |
| C07D80 | RoomManager_ResetToEmptyGrid; ECX receiver, no incoming EDX/stack arguments, plainRET, AL1 only | [ASM](../../evidence/native/functions/00C07D80_RoomManager_ResetToEmptyGrid.asm) ([annotated C](../../evidence/native/functions/00C07D80_RoomManager_ResetToEmptyGrid.c)) |
| B50D40 | PartitionManager_ReadResourceBundle; ECX receiver plus two stackDWORDs, RET8, reader status in AL | [ASM](../../evidence/native/functions/00B50D40_PartitionManager_ReadResourceBundle.asm) ([annotated C](../../evidence/native/functions/00B50D40_PartitionManager_ReadResourceBundle.c)) |
| B52050 | PartitionManager_ReadSavedResources; enclosing saved-lot context and saved resource acquisition | [ASM](../../evidence/native/functions/00B52050_PartitionManager_ReadSavedResources.asm) ([annotated C](../../evidence/native/functions/00B52050_PartitionManager_ReadSavedResources.c)) |

The three new pairs contain586 instructions/1756 owned bytes. B4F990 owns
B4F990..B4FA0A, C07D80 ownsC07D80..C07E6E. B50D40 ownsB50D40..B51077 and
B51080..B512B9; the eight alignment bytes between its ranges are not owned code.
The code index records its bounding envelope, not contiguous instruction coverage.
Every listed instruction byte was compared to the pristine executable. Actual
stored ABI/type projections remain visible in genuine Ghidra C: C07D80's stored
fastcall wording does not establish an incoming EDX argument, and upperEAX bits
must not be interpreted as a Boolean result.

## Partition header and lane count

Both selected PartitionManager readers use the exact partition resource type
05512255/group005122C9 and read its version asUInt16. The saved reader separately
gates opening on the enclosing lot's source-format version>18. The bundle reader
uses its supplied bundle identity and resource contexts. Those ownership paths
must remain distinct.

At partition version>=7 both readers invokeB4F990 twice for two vectors. Before
version11 they load three room managers; from11 onward they load four. The room
resource group derives from sequentialF12E7BFF identifiers by XOR of the high byte
with the low24bits. Before11 the missing fourth manager atPartitionManager+50 is
initialized withC07D80 rather than deserialized from an absent resource.

The same readers independently select five partition graphs before11 and six
from11 onward, initialize missing graph state, and retain their other wall-side
pattern, post and triangulation operations. Graph count is not room count. A
partition header version is not authority for choosing the room-cell field width;
the actual room-grid resource reader owns that binary contract.

## Counted UInt16 vectors

B4F990 obtains the UInt32 count through the stream context, accumulates the read
status and checks context+14. Only nonzero status permits vector resizing and
element reading. The element helper readsUInt16; the caller stores with a16-bit
MOV atbase+2*index. The counter is unsigned, with JBE for the initial zero-count
gate and JB for the loop bound. It is not a signed count or a count of bytes.

Both stream status updates and allocation/resize calls stay in their native
order. This body does not establish a safe host byte-span bound, a numeric element
limit, strict EOF acceptance or how failed native allocation is propagated by
subordinate helpers. Trailing-byte policy cannot be inferred merely because the
resource context is closed by its parent.

## Empty room-manager reset

C07D80 reads the owning lot through manager+8. It passes lot fields+174,+178,+184
toRoomGrid_ResizeStorage and copies lot+17C to manager+10. It then passes a local
two-DWORD-zero payload toC05DA0. The selected body establishes those raw words
and call order, not every compact-grid fill implementation detail.

It clears/reinitializes manager lists/maps, resets retained tails/counts, invokes
RoomManager_RebuildRoomLocations, retires five list buckets in native order and
resets the final worklist tail. This is a general manager reset with additional
callers, not a helper limited to one saved-format compatibility case. Returning
AL1 does not establish that every helper has a fullEAX Boolean result.

## Established boundaries and open original work

- UInt16 partition version, UInt32 vector count, UInt16 element storage, unsigned
  iteration, two-vector gate7, room-lane boundary11 and absent-fourth reset are
  instruction-backed.
- Empty reset has actual manager/cache/list side effects. A caller needing only
  an empty read view does not thereby reproduce the manager's compressed storage,
  native cleanup ownership, room reconstruction or allocation behavior.
- Compact fillC05DA0, all vector allocation/cleanup subcontracts and resource-close
  trailing-byte acceptance remain separate original-code boundaries.
- Saved versus bundle resource ownership, partition version versus enclosing-lot
  version and graph versus room-lane count remain distinct inputs.

The [room-grid reader](../construction/room-manager-grid-original-reader.md)
provides the actual room-resource binary/header/cell boundary. The new vector and
reset helpers supplement that reader; they do not replace its field-width proof.
