# Paint input coordinates and edge response

PC 1.67 TS3W.exe. Names are analyst roles,not recovered symbols. Point storage is
Float32 X at0,Float32 Z at4 and signedInt32 authored level at8. Earlier float
parameter inference incorrectly made level accesses look like numeric float casts.

## Click,move and bounds

Click requires same active lot,its terrain manager and selected brush/profile.
For each axis: Float32 multiply4,add0.5,store; x87 FISTP signedInt32 under the
CURRENT control word; CVTSI2SS; subtract0.5,multiply0.25. The functions do not set
the x87 rounding mode. Default nearest-even is a bounded host profile,not a
universal property of ROUND in the genuine decompiler. Masked invalid FISTP
returns signed indefinite; FP traps/control modes are not established here.

Click checks raw signed level==0 and then inclusive local XY0..W/0..D AND the
lot's LIVE signed min17C..max180. COMISS/JC rejects unordered coordinates.
A642D0 is a separate context refusal after geometry: AB0830/ACEC30/AB0A40 chain,
optional error7. Its underlying policy is not closed by this wrapper alone.
After admission,centre=snappedXY-0.125. It initializes undoable paid/free mode,
price and paint layer before resolution4 grid/raster episode and immediate stamp.

Move computes the same snapped coordinates. During active64 it stores/calls stamp
with centre-0.125; it does NOT repeat click bounds/context checks. It reads actual
undoable virtual34 total cost for display. Do not infer another money debit.

## Edge fade and timed stamp

Outer click/move ECX is a subobject at+28 relative to the generic brush this used
by ApplyTimedStamp. Explicit LEA ECX,ESI-28 proves the relation; differing member
offsets in C are not contradictory field definitions on one unadjusted object.

Stamp requires active8C/lot34/brushD8,elapsed time at least nextEC,raw level0.
It computes from the UNCLAMPED input centre:

1. oppositeX=abs(integerW-x),storedFloat32;dx=(x>oppositeX?oppositeX:x).
2. Likewise oppositeZ and dz.
3. d=(dx>dz?dz:dx).
4. If ordered d<4,fade=d*.25;otherwise1. COMISS4,d/JBE takes unordered to1.

Negative near-left/bottom input is not clamped to0. Do not remove ABS on the
opposite edge or replace comparisons with a language minimum having different
NaN behavior. The original dimension subtraction uses x87 FILD/FSUB/FABS and
Float32 stores. Raster D195C0 performs its own later point clamping. After raster,
next=stored elapsedFloat32+50. Feedback and stop behavior remain original body.

## Complete canonical bodies

- Click: [ASM](../../evidence/native/functions/00CEEC80_LotPaintTool_OnLotClick.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEEC80_LotPaintTool_OnLotClick.c)).
- Move: [ASM](../../evidence/native/functions/00CEEFA0_LotPaintTool_OnLotMove.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEEFA0_LotPaintTool_OnLotMove.c)).
- Stamp: [ASM](../../evidence/native/functions/00CEE920_LotPaintTool_ApplyTimedStamp.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEE920_LotPaintTool_ApplyTimedStamp.c)).
- Bounds: [ASM](../../evidence/native/functions/0074AA80_Lot_ContainsLocalPoint.asm) ([annotated Ghidra C](../../evidence/native/functions/0074AA80_Lot_ContainsLocalPoint.c)).
- Context wrapper: [ASM](../../evidence/native/functions/00A642D0_FUN_00a642d0.asm) ([annotated Ghidra C](../../evidence/native/functions/00A642D0_FUN_00a642d0.c)).

Physical click/move=thiscall two pointer words,RET8,ALBoolean;stamp=thiscall
one pointer,RET4,void;bounds=thiscall one pointer,RET4,normalized fullEAX0/1;
context=cdecl three words,plainRET,ALBoolean. Complete original bodies and actual
annotated decompiler exports; original bytes unchanged. Static evidence only;
no gameplay or FP-control runtime measurement is implied.
