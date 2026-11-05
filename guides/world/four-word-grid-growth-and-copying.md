# Four-word grid growth and copying

Reference: shipped PC1.67 TS3W.exe, identified centrally. These complete bodies
close the vector/fill/copy helpers used by existing four-word grid import,
export and uniform-block expansion. Analyst roles do not name recovered classes.

| Entry | Concrete operation | Evidence |
| --- | --- | --- |
| AC08B0 | Resize16-byte vector; ECX vector, requested count, RET4 | [ASM](../../evidence/native/functions/00AC08B0_FUN_00ac08b0.asm) ([C](../../evidence/native/functions/00AC08B0_FUN_00ac08b0.c)) |
| 7996F0 | Insert count copies; ECX vector, insertion/count/value, RET0C | [ASM](../../evidence/native/functions/007996F0_FUN_007996f0.asm) ([C](../../evidence/native/functions/007996F0_FUN_007996f0.c)) |
| AB42D0 | Repeat four-word value over [begin,end), caller-cleaned | [ASM](../../evidence/native/functions/00AB42D0_FUN_00ab42d0.asm) ([C](../../evidence/native/functions/00AB42D0_FUN_00ab42d0.c)) |
| 7FFF00 | Forward copy [sourceBegin,sourceEnd) to destination, caller-cleaned | [ASM](../../evidence/native/functions/007FFF00_FUN_007fff00.asm) ([C](../../evidence/native/functions/007FFF00_FUN_007fff00.c)) |
| 6C8480 | Same element width, destination-end pointer output, caller-cleaned | [ASM](../../evidence/native/functions/006C8480_FUN_006c8480.asm) ([C](../../evidence/native/functions/006C8480_FUN_006c8480.c)) |
| 4AA1B0 | Fill signed count four-word elements, caller-cleaned | [ASM](../../evidence/native/functions/004AA1B0_FUN_004aa1b0.asm) ([C](../../evidence/native/functions/004AA1B0_FUN_004aa1b0.c)) |
| 5C74B0 | Backward four-word range copy, caller-cleaned | [ASM](../../evidence/native/functions/005C74B0_FUN_005c74b0.asm) ([C](../../evidence/native/functions/005C74B0_FUN_005c74b0.c)) |

The pointer-output copy body consumes four meaningful pointer arguments; selected
vector callers also push an extra unused word. Displayed parameter counts do not
prove that those callers supplied only four words. Plain RET leaves their cleanup
to the caller. No element constructors, reference counting or object callbacks
are established by these raw DWORD operations.

## Resize: default marker contents and retained capacity

AC08B0 computes `(end-begin)>>4`. If requested count is larger, it constructs
the value `[FFFFFFFF,FFFFFFFF,FFFFFFFF,FFFFFFFF]` on its own stack and asks
7996F0 to insert the difference at the old end. New slots do **not** default to0.

For equal or smaller counts, it invokes7FFF00 with the **empty source interval
[oldEnd,oldEnd)** and destination `begin+requested*16`, then changes the vector
end to that destination. The helper writes nothing for this call. Allocation and
capacity are retained; truncated bytes are neither zeroed nor destroyed here.
Growing again appends the FFFFFFFF fill rather than intentionally reviving those
old logical elements. Input count, overflow and pointer validity are not checked
by a new host-style admission layer in this body.

## Insertion and aliasing

7996F0 compares spare capacity with insertion count. On shortage it chooses
`max(oldSize+count, oldSize==0 ? 1 : 2*oldSize)`, allocates16bytes per capacity
element, copies the prefix, fills the new elements, copies the suffix, frees the
old allocation and publishes the new begin/end/capacity pointers. Allocator tags
and its actual failure behavior remain subordinate boundaries.

With spare capacity and nonzero count it first snapshots the four-word fill
value. If count is smaller than the suffix, it copies the last count elements
to the old end, advances end, moves the remaining suffix **backwards** through
5C74B0 and fills the gap. Otherwise it fills the extension, copies the suffix to
its new place and fills the old prefix of the gap. Zero count returns unchanged
on the ordinary admitted path. Count/size arithmetic and allocation faults do
not become exception-safe transactions merely because these stages are ordered.

The copy helpers establish their exact traversal:

- AB42D0 repeats four DWORDs while destination!=end, advancing16.
- 7FFF00 copies four DWORDs forward while source!=end.
- 6C8480 also writes the advanced destination through its first argument. It
  skips an individual write when destination is null but still advances; this
  does not provide a safe allocation-failure path for an arbitrary range.
- 4AA1B0 decrements while count!=0. A negative count is not rejected or clamped;
  ordinary vector insertion supplies the valid nonnegative input.
- 5C74B0 starts with the last element and decrements both ends16. This is the
  relevant overlap direction for a rightward shift, not a universal memmove.

## Connection to compressed marker storage

Existing AC2ED0 first compares all four requested words with a uniform block's
four-word value. Equal words return without expanding. A change appends exactly
**16 four-word cells** (256bytes) through AC08B0, then AB42D0 fills those cells
with the old uniform value before the selected cell is overwritten. The block
tag changes from uniform0x8000 to the dense-block ordinal; the existing AB3E50
reader and AC3140/AC32C0 wire order remain in the
[foundation storage contract](deck-foundation-query-boundaries.md#selected-quarter-edit-compatibility-and-live-compressed-storage).

Consequently an update to one quarter does not initialize the other fifteen
cells to empty. It preserves the previous uniform four-word value throughout
the expanded block. A resize-to-zero retains capacity and is not world-resource
retirement. Borrowed cell pointers can be invalidated by reallocation; no lease,
thread safety, atomic publication, rollback, allocation failure guarantee or
complete compression lifecycle follows from these helpers. The original
allocator and owning grid remain responsible for their own boundaries.
