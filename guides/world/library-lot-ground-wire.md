# Library lot ground: matching float producer, reader and consumer

Reference: shipped PC1.67 TS3W.exe. Names below are analyst descriptions, not
recovered original symbols. Static instruction evidence; no runtime import test.

## Canonical complete original pairs

| Role | Complete original instructions and actual annotated Ghidra C |
| --- | --- |
| Header and external dimensions | [C6DA60 ASM](../../evidence/native/functions/00C6DA60_LotGrid_ReadExternalDimensions.asm) ([C](../../evidence/native/functions/00C6DA60_LotGrid_ReadExternalDimensions.c)) |
| Matching elevation writer | [A8B1E0 ASM](../../evidence/native/functions/00A8B1E0_FloorManager_WriteElevationResources.asm) ([C](../../evidence/native/functions/00A8B1E0_FloorManager_WriteElevationResources.c)) |
| Ground selection and placement | [AC3630 ASM](../../evidence/native/functions/00AC3630_LotImport_ChooseTerrainPlacement.asm) ([C](../../evidence/native/functions/00AC3630_LotImport_ChooseTerrainPlacement.c)) |
| Common grid header writer | [C6D880 ASM](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.asm) ([C](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.c)) |
| Actual array-read thunk | [4DDA40 ASM](../../evidence/native/functions/004DDA40_Stream_ReadUInt32ArrayByByteOrder.asm) ([C](../../evidence/native/functions/004DDA40_Stream_ReadUInt32ArrayByByteOrder.c)) |
| Raw DWORD array reader | [4DD9D0 ASM](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.asm) ([C](../../evidence/native/functions/004DD9D0_Stream_ReadUInt32ArrayByByteOrder.c)) |
| Float-grid level changes | [A92650 ASM](../../evidence/native/functions/00A92650_FloatWorldGrid_ChangeLevelCount.asm) ([C](../../evidence/native/functions/00A92650_FloatWorldGrid_ChangeLevelCount.c)) |
| Float-grid resize adjustor | [A927C0 ASM](../../evidence/native/functions/00A927C0_FloatWorldGrid_ResizeElements.asm) ([C](../../evidence/native/functions/00A927C0_FloatWorldGrid_ResizeElements.c)) |
| Shared 32-bit vector resize | [56DDD0 ASM](../../evidence/native/functions/0056DDD0_Word32Vector_Resize.asm) ([C](../../evidence/native/functions/0056DDD0_Word32Vector_Resize.c)) |

## Writer and wire

A8B1E0 is used by both ordinary
[lot save ASM](../../evidence/native/functions/00ACAA10_Lot_SaveCurrentState.asm) ([C](../../evidence/native/functions/00ACAA10_Lot_SaveCurrentState.c))
and [lot export ASM](../../evidence/native/functions/00ACAF70_Lot_ExportCurrentState.asm) ([C](../../evidence/native/functions/00ACAF70_Lot_ExportCurrentState.c)).
It writes metadata type05E4FAF7, supplied group/instance, version0D and manager
byte+114, closes it, then—while sticky status remains successful—writes the
actual float grid at manager+24 as B125533A/group0093D6D4 at that instance.
C6D880 writes version1 and retained width/depth/levels. The caller writes the
complete DWORD vector, count=(end14-begin10)>>2, using context byte order, then
closes. A95BB0's separate flags/pattern writer begins with group0093D6A5; that
must not be confused with the elevation payload.

The grid payload is tag,width,depth,levels, followed by width*depth*levels raw
32-bit words. In the original little-endian context, those words preserve the
binary32 float representation. Layout is ((storageLevel*width+x)*depth+z).
No target-lot dimension equality is established by this generic wire reader.

## Reader and level zero

C6DA60 receives ECX auxiliary grid and nine stack DWORDs, RET24hex. Inputs are
context,group,instanceLow,instanceHigh,signed minimum,signed maximum and three
output pointers. The maximum word is physically present but unused here. It
opens B125533A in read mode0 only if no resource is already attached. Four DWORD
reads consume tag,width,depth,levels and accumulate sticky status. The tag is
not compared. Output count is width*depth*levels modulo32. Failed status closes;
success leaves the stream open for its caller. No exact-EOF test is present.

AC3630 supplies content ID and group0093D6D4. On header success it allocates the
raw vector, reads the declared count through4DDA40 with four physical cdecl words
and ADD ESP10, accumulates status, closes, then tests vector emptiness. The
underlying4DD9D0 requests count*4 bytes and compares the read byte count; endian
flag1 preserves little-endian words, otherwise it swaps each DWORD. The thunk's
actual C retains a previously documented decompiler context artifact; its JMP
and the annotated target instructions govern.

AC3890/95 multiplies the content's signed minimum by depth and width. Ground
samples negate that plane displacement: (-minimum*width+x)*depth+z, selecting
world level0. Floating-point instructions consume the selected words directly;
pointer-shaped temporaries and packed coordinate outputs in the decompiler do
not imply conversion from integer-valued heights. The destination samples come
from the actual floor-manager grid. No zero-height substitute exists in these
sample loads. Full placement scoring and water-lot corrections are separate.

## Virtual ABI and recovered bodies

The original12-byte vtable excerpt is retained as
[float-grid virtual targets](../../evidence/native/data/float-grid-vtable.tsv):
ABA310,A92650,A927C0. A92650 and A927C0 were existing instructions without function
ownership and are now recovered as complete360-byte and8-byte bodies.
A92650 is thiscall, signed count/mode byte/dimensions-only byte, RET0C. It changes
level count and shifts leading planes for mode0, using x87 FLD/FSTP float copies.
A927C0 adds10hex to ECX and tail-jumps56DDD0, whose single element-count word is
popped by RET4. C6DA60's local virtual calls now have these physical signatures;
the corrected actual C no longer invents a return-address value as the level word.
No global virtual table type or original instruction was changed.

The word vector is shared with raw DWORD import storage. It is not exclusively
a float-valued container. Its growth passes a local zero word to56DB20; allocator
and failure internals remain separate. Native x87 level-shift copies should not
be claimed to preserve arbitrary signaling-NaN bits.

## Safe-host scope

A managed selected-level reader may retain only the requested plane while
requiring the complete declared body. It should accept trailing bytes and any
consumed tag, preserve raw float words, and use the source dimensions and signed
minimum. Positive dimensions, representable storage, available level0 and full
body are an explicitly bounded safe input domain; native arithmetic overflow,
unsafe allocations and partial-read consequences are not clean error contracts.
Missing destination heights cannot be replaced with fabricated zero samples;
a host can reject unsupported input explicitly without claiming the original
returned that exception. Main world elevation loading, package resolution,
placement scoring, objects, rollback and whole import lifetime remain separate.
