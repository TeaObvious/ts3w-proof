# Sculpt fractional cost and history

PC1.67 TS3W.exe; analyst-assigned roles. See
[sample response](terrain-sculpt-response.md) for actual per-height cost producer
D2BE20 and pre-charge CB0710 admission. This guide closes concrete constructor,
getter,history wrappers and release consumers,without inferring full abort policy.

## Persistent cost and concrete dispatch

ConstructorD2C130 binds lot,base floor-elevation undoable and primaryvtable01087498.
UnitCostFloat32 at108 starts1;accumulatedabsheight10C andrawTotalCost110 start0.
Height journal usesBC/C0/C4;pond journalDC/E0/E4;tempeditedvector114/118/11C.
SetUnitCostD2BE00 writesrawfloat108 andzeroes10C,not110. Click calls it after
actualBegin setspaid/free14. Normal supported episode captures that price once.

D2C250 is complete7byte FLDfloat[ECX+110];RET,ST0Float32. The actual costslot
+34 is not per-unit price or an integer display rounding.

The16-byte [original selected vtable words](../../evidence/world/sculpt-cost-history-targets.bin)
are ordered as follows (each LE UInt32,checked against pristine mapped bytes andMCP):

| File offset | Original VA | Vtable offset | Target |
| --- | --- | --- | --- |
|0|010874CC|34|00D2C250 cost getter|
|4|010874DC|44|00D2C090 undo|
|8|010874E0|48|00D2C0C0 redo|
|12|010874E8|50|00D2C260 release gate|

D2C260 is complete12byte normalizedEAX0/1 fromheightentrycountC4!=0. Base+24
D213A0 is a different9byte predicateword68!=0; the floor capture count,not the independent water count84. Flat smoothing can returnrasterAL1 without creatingC4entry;
nonzero-texel raise/lower can capture an entry even for unchanged target.

## Undo,redo and release

D2C090 FIRST invokes D2BF20 state swap,THEN passes NEGATEDrawfloatTotalCost110
to baseApplyChargeD1A8B0. D2C0C0 swapsfirst,then passes POSITIVErawfloat110.
Both returnfullEAXstatus0. Shared ToolWorld fractional remainder and captured
free14 apply; this is not an independently rounded integer refund/debit.
The wrappers do not callCanCharge; outer redoeligibility and callback rejection
are separate from the selected wrappers. Existing stricter host affordability/
context guards must be described as such.

D2BF20 first swaps base elevation state. It walks captured water heights and
swaps prior/current when unequal; walks packed pondparts,sets the journaled bit
then inverts the stored bit; refreshes water/pond rendering when entries/owner
exist. Neither its complete owned body nor the selected base swap contains a direct moneycallback; downstream height/water messages remain separate callee contracts. A host full immutable revision swap is an
ownership strategy,not proof that all native journal internals have been rebuilt.

BaseD213B0 requires boundlot50 and floorcount68 or watercount84. It brackets the floor manager,swaps raw Float32 height pairs in the floor and water journals,and toggles pond-part bits before refreshing water. The actual FLD/MOVSS accesses disprove numeric Int32-to-float casts in the genuine decompiler output; its plate annotation records that correction.

D19FC0 engaged release tests virtual50;true submits throughCD3A20,false invokes
virtual8. It clears owned pointer178 before local release,then flags/cursor/level
state,and stops/clears sound16C. There is no second direct household debit in
this complete release body. Do not infer whole cancel/refund behavior merely
from that absence: virtual8/base undoable/ToolWorld callers are distinct.

D2C0E0 swaps state,clears heightmap/count,rewinds tempvector andzeroes110,with no
direct moneycallback. It is a reset path,not normalRedo. Full abort policy remains
an explicit further lifecycle question.

## Complete canonical bodies

- Unit cost: [ASM](../../evidence/native/functions/00D2BE00_TerrainSculptUndoable_SetUnitCost.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2BE00_TerrainSculptUndoable_SetUnitCost.c)).
- Constructor: [ASM](../../evidence/native/functions/00D2C130_TerrainSculptUndoable_Initialize.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C130_TerrainSculptUndoable_Initialize.c)).
- Getter: [ASM](../../evidence/native/functions/00D2C250_TerrainSculptUndoable_GetTotalCost.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C250_TerrainSculptUndoable_GetTotalCost.c)).
- Release gate: [ASM](../../evidence/native/functions/00D2C260_TerrainSculptUndoable_HasHeightEntries.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C260_TerrainSculptUndoable_HasHeightEntries.c)).
- Base predicate: [ASM](../../evidence/native/functions/00D213A0_FloorElevationUndoable_HasBaseChanges.asm) ([annotated Ghidra C](../../evidence/native/functions/00D213A0_FloorElevationUndoable_HasBaseChanges.c)).
- Undo: [ASM](../../evidence/native/functions/00D2C090_TerrainSculptUndoable_Undo.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C090_TerrainSculptUndoable_Undo.c)).
- Redo: [ASM](../../evidence/native/functions/00D2C0C0_TerrainSculptUndoable_Redo.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C0C0_TerrainSculptUndoable_Redo.c)).
- State swap: [ASM](../../evidence/native/functions/00D2BF20_TerrainSculptUndoable_SwapHeightAndPondState.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2BF20_TerrainSculptUndoable_SwapHeightAndPondState.c)).
- Base state swap: [ASM](../../evidence/native/functions/00D213B0_FloorElevationUndoable_SwapCapturedState.asm) ([annotated Ghidra C](../../evidence/native/functions/00D213B0_FloorElevationUndoable_SwapCapturedState.c)).
- Reset: [ASM](../../evidence/native/functions/00D2C0E0_TerrainSculptUndoable_ResetCapturedState.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C0E0_TerrainSculptUndoable_ResetCapturedState.c)).
- Release: [ASM](../../evidence/native/functions/00D19FC0_TerrainSculptTool_OnLotRelease.asm) ([annotated Ghidra C](../../evidence/native/functions/00D19FC0_TerrainSculptTool_OnLotRelease.c)).
- Timed stamp: [ASM](../../evidence/native/functions/00D1A120_TerrainSculptTool_ApplyTimedStamp.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1A120_TerrainSculptTool_ApplyTimedStamp.c)).

Physical accessors/undo/redo/swap/reset/release useECXthis,no stackargs/plainRET;
costsetter andconstructor one word/RET4;timedstamp one typedpoint/RET4. Costgetter
returnsST0,submit/base predicates normalizedEAX0/1,releaseALBoolean,history status
fullEAX0. Seededfastcall signatures didnot imply an actualEDXargument.
Complete ownedListing/gaps andactual annotated C;originalbytes intact,database
savedclean. Static evidence only,no live funds/undo/FP-mode/abort/game acceptance.
