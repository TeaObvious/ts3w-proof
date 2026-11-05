# Floor visibility flags

PC1.67 TS3W.exe; names identify analyst-established roles. The byte grid at
FloorManager+28 and B125533A/group0093D6A5 is FLOOR VISIBILITY FLAGS,not floor
elevation. Each low bit1/2/4/8 is a quarter; upper bits are retained independently.

## Read/write closure

A98CD0,while contextgood andflags28null,constructs ByteWorldGrid and calls shared
C6D950. The header consumes versionUInt32 WITHOUT comparing its value,then three
raw dimension DWORDs. Low32 multiplication determines allocation; raw dimensions
are stored in grid+4/+8/+C. There is no equality check with enclosing lot shape
and no exactEOF. Caller reads vectorend14-begin10 bytes,accumulates status,closes,
then calls A8D6A0(false). Header failure frees/nullsflags andreturns; accumulated
body failure prevents later normal pattern processing. Native allocation/wrap
and partial failed owner behavior must not be mistaken for portable safety rules.

A95BB0's first save branch writes this same+28 grid through grid-header writer
under0093D6A5,then its raw byte vector,accumulatesstatus andcloses. Earlier plate
wording calling this elevation was incorrect and is corrected in the database.
Remaining full pattern/rotation/map branches are preserved; this guide does not
claim a new complete re-analysis of every other stored resource.

## Post-load perimeter and bit mutation

A8D6A0 runs only for nonnull bound lot with byte+4BC set. Packedtile fields are
signedBYTE X,Z,authoredlevel and maskBYTE. It visits x along z0 and z(depth-1),
then z along x0 and x(width-1),always authored level0/mask0F. Actual load passes
false. A8D130 clears only selected lower four bits; it preserves all upper bits.
The raw setter emits no message; A96920 is a separate mutation/message wrapper.
Large/degenerate coordinates can truncate into unsafe native addresses; do not
present that as a portable supported input profile.

Flat retained index is ((authoredLevel-managerMin10)*gridWidth4+x)*gridDepth8+z.
No descriptor-shape normalization occurs. A8CB10 tests ANY requested lowbit,
whereas A8E090/A8D300 separately choose ALL/ANY pattern-and-flag admission.

## Complete canonical bodies

- Floor read dispatcher: [ASM](../../evidence/native/functions/00A98CD0_FloorManager_ReadResources.asm) ([annotated Ghidra C](../../evidence/native/functions/00A98CD0_FloorManager_ReadResources.c)).
- Floor write dispatcher: [ASM](../../evidence/native/functions/00A95BB0_FloorManager_WriteResources.asm) ([annotated Ghidra C](../../evidence/native/functions/00A95BB0_FloorManager_WriteResources.c)).
- Shared header read: [ASM](../../evidence/native/functions/00C6D950_LotGrid_ReadHeaderResource.asm) ([annotated Ghidra C](../../evidence/native/functions/00C6D950_LotGrid_ReadHeaderResource.c)).
- Restricted-ground perimeter: [ASM](../../evidence/native/functions/00A8D6A0_FloorManager_SetRestrictedGroundPerimeter.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8D6A0_FloorManager_SetRestrictedGroundPerimeter.c)).
- Raw lowquarter setter: [ASM](../../evidence/native/functions/00A8D130_FloorManager_SetQuarterFlagsRaw.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8D130_FloorManager_SetQuarterFlagsRaw.c)).
- ANY visibility consumer: [ASM](../../evidence/native/functions/00A8CB10_FloorManager_TileHasAnyRequestedFlag.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8CB10_FloorManager_TileHasAnyRequestedFlag.c)).

Read/write dispatchers are thiscall four physical stackwords RET10hex,void.
Shared header is thiscall context/group/64-bitID four words RET10hex,lowALstatus;
its resize virtual receives one element-count word (retained local override).
Perimeter is thiscall one word lowBYTE enabled RET4void;rawsetter enabled plus
pointer RET8void;ANY getter one pointer RET4lowALBoolean. Original bytes unchanged,
actual full annotated Ghidra C,owned Listing and gapbytes retained. Static proof;
no live tool/save/perimeter/FP or concurrency execution implied. Full current
edit-layer ownership and native package duplicate arbitration remain separate.
