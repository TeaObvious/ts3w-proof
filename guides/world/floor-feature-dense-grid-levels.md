# Dense floor-feature grids and level changes

## Original ownership and physical calls

Static original PC1.67 TS3W.exe. Analyst names describe roles verified against
instructions. Canonical pairs contain complete owned Listing, raw nonowned gaps
and actual annotated Ghidra pseudocode. No original bytes were changed; database
saved clean. No original process, game, compiler or fixture run is claimed.

| Entry | Analyst role | Complete original pair |
| --- | --- | --- |
| 00A81060 | ByteWorldGrid_Construct | [ASM](../../evidence/native/functions/00A81060_ByteWorldGrid_Construct.asm) ([C](../../evidence/native/functions/00A81060_ByteWorldGrid_Construct.c)) |
| 00A81090 | UInt16WorldGrid_Construct | [ASM](../../evidence/native/functions/00A81090_UInt16WorldGrid_Construct.asm) ([C](../../evidence/native/functions/00A81090_UInt16WorldGrid_Construct.c)) |
| 00C6D840 | WorldGrid_SetDimensions | [ASM](../../evidence/native/functions/00C6D840_WorldGrid_SetDimensions.asm) ([C](../../evidence/native/functions/00C6D840_WorldGrid_SetDimensions.c)) |
| 00A810C0 | UInt16WorldGrid_FillAll | [ASM](../../evidence/native/functions/00A810C0_UInt16WorldGrid_FillAll.asm) ([C](../../evidence/native/functions/00A810C0_UInt16WorldGrid_FillAll.c)) |
| 00A810E0 | UInt16WorldGrid_FillLevelRange | [ASM](../../evidence/native/functions/00A810E0_UInt16WorldGrid_FillLevelRange.asm) ([C](../../evidence/native/functions/00A810E0_UInt16WorldGrid_FillLevelRange.c)) |
| 00A82C60 | ByteWorldGrid_ChangeLevelCount | [ASM](../../evidence/native/functions/00A82C60_ByteWorldGrid_ChangeLevelCount.asm) ([C](../../evidence/native/functions/00A82C60_ByteWorldGrid_ChangeLevelCount.c)) |
| 00A82D30 | ByteWorldGrid_ResizeElements | [ASM](../../evidence/native/functions/00A82D30_ByteWorldGrid_ResizeElements.asm) ([C](../../evidence/native/functions/00A82D30_ByteWorldGrid_ResizeElements.c)) |
| 00A82D40 | UInt16WorldGrid_ChangeLevelCount | [ASM](../../evidence/native/functions/00A82D40_UInt16WorldGrid_ChangeLevelCount.asm) ([C](../../evidence/native/functions/00A82D40_UInt16WorldGrid_ChangeLevelCount.c)) |
| 00A82E20 | UInt16WorldGrid_ResizeElements | [ASM](../../evidence/native/functions/00A82E20_UInt16WorldGrid_ResizeElements.asm) ([C](../../evidence/native/functions/00A82E20_UInt16WorldGrid_ResizeElements.c)) |
| 00412E20 | ByteVector_ResizeZeroed | [ASM](../../evidence/native/functions/00412E20_ByteVector_ResizeZeroed.asm) ([C](../../evidence/native/functions/00412E20_ByteVector_ResizeZeroed.c)) |
| 0067F5E0 | UInt16Vector_ResizeZeroed | [ASM](../../evidence/native/functions/0067F5E0_UInt16Vector_ResizeZeroed.asm) ([C](../../evidence/native/functions/0067F5E0_UInt16Vector_ResizeZeroed.c)) |
| 00ACDA80 | Lot_InsertFloorLevelsAndBasementRows | [ASM](../../evidence/native/functions/00ACDA80_Lot_InsertFloorLevelsAndBasementRows.asm) ([C](../../evidence/native/functions/00ACDA80_Lot_InsertFloorLevelsAndBasementRows.c)) |

## Layout, construction and allocation

A81060/A81090 construct a32byte dense World3DArray. Both preserve ECX in EAX and
RET4, returning the allocated object, not void. Fields are vtable0, raw Int32
width4/depth8/levelsC, vector begin10/end14/capacity18 and allocation tag1C.
Dimensions and vector pointers start zero; absent tag uses the native empty tag.
The grid contains no signed minimum-level origin. The enclosing lot supplies
that origin during addressing.

| Table address | Slot0 destructor | Slot4 level change | Slot8 element resize |
| --- | --- | --- | --- |
| 01063204 byte grid | 00ABA310 | 00A82C60 | 00A82D30 |
| 01063210 ushort grid | 00ABA310 | 00A82D40 | 00A82E20 |

[Original vtable words](../../evidence/native/data/floor-feature-grid-vtables.tsv)
are the24 necessary bytes, read little endian. These dense grids are distinct
from block-compressed ByteTileGrid_CellPointer A8B3B0 and its4x4 reference layout.
Do not infer the dense layout merely from the reused word 'byte'.

C6D840 receives ECXgrid plus three DWORD dimension carriers and RET0C. It multiplies
low32 dimension words, invokes virtual8 with exactly **one** count word/ECXgrid,
then stores width/depth/levels. Actual resize entries A82D30/A82E20 each contain
ADD ECX,10hex and tail JMP to a vector helper; those targets RET4. The element
count means bytes or ushorts respectively. The adjustor entries have complete
8byte bodies; their following CC padding is not part of those functions.

412E20/67F5E0 grow the actual vector by inserting zero-valued byte/ushort elements
at the old end. Existing prefix survives. Shrink updates the end at requested
count, in units1/2 respectively; the emitted memmove length is0. Capacity/allocation
and insertion failure are still native vector mechanisms. Raw overflowing sizes
are not a safe portable allocation contract.

## Signed level change and independent fill

Both level-change functions take ECXgrid, signed count, byte appendMode and byte
dimensionsOnly, with three DWORD argument slots and RET0C. The ushort routine's
A82D98..9F alignment gap is not owned code.

| Inputs | Original effect |
| --- | --- |
| dimensionsOnly!=0 | levels+=count only; vector and cell data untouched |
| dimensionsOnly=0, appendMode0, positive count, oldlevels>0 | Resize to new raw width*depth*levels, then copy old planes BACKWARD into the new tail. This inserts leading storage planes. |
| Same but oldlevels<=0 | Resize; no old-plane shift |
| appendMode0, negative count, 0<-count<oldlevels | Copy remaining planes forward over removed leading planes, then update count/resize |
| Other negative/zero and nonzero appendMode | Update count/resize without that leading-plane copy |
| Nonzero appendMode, positive count | Append zero-initialized tail elements; no old-plane shift |

The shift itself does not supply the final feature defaults for every inserted
location. ACDA80 calls virtual4 on each existing flag29C/mask2A0 grid with
(count,mode,0). An absent pointer remains absent. Each present grid keeps its own
width/depth and adds count to its own level count.

For positive count the caller chooses insertion start0 when mode's low byte is0;
otherwise it uses the **lot's previous level count DWORD+184**, read atACDB18.
It fills byte flags0 and ushort masksFFFF over that count-wide plane interval.
A810E0 takes inclusive first/last relative levels, filling each grid's own plane
size. A810C0 instead fills every actual ushort element; legacy AC91D0 uses it to
initialize synthesized masks.

Therefore appending to a decoded grid whose retained level count differs from
the live lot is not simply 'fill the new vector tail withFFFF': vector growth
first supplies zero, and the later fill interval is selected from the lot count.
Mismatch can change which cells are overwritten. Native does not clamp the fill
to a reconstructed host shape. Undefined out-of-allocation native accesses should
remain distinct from valid retained shapes and safe portable admission.

## Reader/writer and consumers

The [header/source-version contract](floor-feature-grid-and-mask-persistence.md)
retains each resource's raw dimensions; normal write uses those retained fields
and actual vector bodies. There is no equality check between flags, masks or live
lot dimensions in C6D950. Modern byte and ushort resources are independent;
legacy mask construction copies flag dimensions and fillsFFFF everywhere.

ABB5F0 and AB6600 compute dense offsets from each actual grid's own width/depth,
with relative level=packed signedlevel minus the live lot minimum. Physical vector
contents include zero-flag masks and any retained cells outside a current live
query projection. A save should not silently discard them by re-keying only
visible cells. Raw original word arithmetic and unsupported pointer/overflow
failure must not be confused with a newly invented exact-shape read rule.

ACDA80 also resizes floor, room, foundation and other layers. This guide closes
its selected feature-grid calls and initialization; it does not claim every
neighboring callback, undo topology or entire lot transaction reconstructed.
