# Water brush target and input admission

Original shipped PC1.67 TS3W.exe, static instruction/physical ABI review.
Names are analyst assignments, not recovered original symbols. Complete original
body envelopes and actual annotated Ghidra C establish the scoped facts below.
No numeric, brush, callback, game or FP-control runtime experiment was performed.

| Entry | Role | Complete original pair |
| --- | --- | --- |
| 00D3FD80 | WaterTool_DigSample | [ASM](../../evidence/native/functions/00D3FD80_WaterTool_DigSample.asm) ([annotated C](../../evidence/native/functions/00D3FD80_WaterTool_DigSample.c)) |
| 00D391B0 | WaterUndoable_ChangeGroundElevation | [ASM](../../evidence/native/functions/00D391B0_WaterUndoable_ChangeGroundElevation.asm) ([annotated C](../../evidence/native/functions/00D391B0_WaterUndoable_ChangeGroundElevation.c)) |
| 00D400F0 | WaterTool_StampPoint | [ASM](../../evidence/native/functions/00D400F0_WaterTool_StampPoint.asm) ([annotated C](../../evidence/native/functions/00D400F0_WaterTool_StampPoint.c)) |
| 00D402E0 | WaterTool_OnLotClick | [ASM](../../evidence/native/functions/00D402E0_WaterTool_OnLotClick.asm) ([annotated C](../../evidence/native/functions/00D402E0_WaterTool_OnLotClick.c)) |
| 0074AA80 | Lot_ContainsLocalPoint, reused | [ASM](../../evidence/native/functions/0074AA80_Lot_ContainsLocalPoint.asm) ([annotated C](../../evidence/native/functions/0074AA80_Lot_ContainsLocalPoint.c)) |
| 00D3FB80 | WaterTool_InitializeBrushAspects, reused | [ASM](../../evidence/native/functions/00D3FB80_WaterTool_InitializeBrushAspects.asm) ([annotated C](../../evidence/native/functions/00D3FB80_WaterTool_InitializeBrushAspects.c)) |

## Dig sample arithmetic and physical values

D3FD80 is ECX WaterTool plus one BrushRasterSample pointer, RET4, ALBoolean.
It rejects texel byte+8==0 or current tool ok byte+E4==0. Sample+4C is the brush
product aspect, whose+20 is Float32 strength; sample+50 is Float32 softness;
X/Z at0/4 are full signed Int32. The ground manager selects the current plane
relative to its retained minimum and preserves its two grid strides. No polygon
or rendering AABB supplies this height.

AtD3FDD4 FLD strength; D3FDD9 FMUL sample softness; D3FDEF FIMUL the zero-extended
texel byte; D3FDF7 FSUBR current ground; D3FDFA stores Float32 target. There is no
intermediate Float32 product store, clamp255, equality shortcut or explicit NaN
skip. The result is current minus the full product, with multiplication order
strength, softness, integer texel. Current x87 CW is not set here. A portable53-bit
intermediate profile must be explicit; full64-bit mantissa, alternate CW, traps,
NaN payload and denormal parity are not established. The actual C reuses its
incoming sample stack slot for the zero-extended texel, so the temporary pointer
cast in that expression is a decompiler artifact; Listing MOVZX/FIMUL establishes
the numerical byte input. The routine calls D391B0 with target and the same ok/error
state, returning its AL directly.

D391B0 is ECX undoable, five words RET14hex, ALBoolean. It sets *ok=true, packs
low coordinate bytes plus raw level0 for CB0710, and uses current global1190794
OR800; image defaults1190790/94 are1F97B7/1F97F7. Rule refusal returnsfalse with
ok stilltrue. If undoable free14 is clear, actual CanCharge(0) and ApplyCharge(0)
callbacks run; callback refusal sets okfalse. On success it captures the vertex,
writes the target's raw Float32 bits, invokes D223F0 and adds an edited-coordinate
once through entry14 bit0. It returnsAL1 even when target equals the prior value;
its Boolean is not proof of an actual height difference. Full general mutation,
zero-charge callbacks, history/refund and publication recovery are separate owners.

## Click and stamp use distinct admission

D402E0 uses the interactive receiver at WaterTool+28; negative28 adjustments
precede the WaterTool children. Physical inputs are lot pointer and LotPaintPoint
pointer, RET8ALBoolean. It requires the active nonnull same lot and a selected
brush; point+8 is RAW signed Int32 level, required0. It calls74AA80, whose ordered
Float32 comparisons admit inclusive X/Z0..lotWidth/depth, then signed minLevel<=
rawLevel<=maxLevel. These are live lot bounds. No snapping, quarter offset or
rounding is in this click gate. NaN/infinite coordinates fail the ordered bounds.
A raw ground0 outside the current range must reject even with in-bounds X/Z.

D400F0 is ECX WaterTool, one LotPaintPoint pointer, RET4void. It separately requires
active state, bound lot and operation pointer, and gates by its scaled elapsed
clock against next-stamp. It checks point.level DWORD==0 EVERY stamp. The ground
path invokes existing raster/episode logic using the same unrounded X/Z; valid
changed bounds trigger water adjustment. Nonground stamps produce errorD8 without
raster. The no-edited-bounds path inspects the leading error; D7 removal through
AD7860 precedes appending D8 and display. The retained-point producer is closed below; exact episode
and sound ownership, zero-charge callback behavior, full history and report-list
semantics require their own complete controller integration; scalar arithmetic
and click admission do not establish it.

D3FB80 preserves authored width*multiplier without paint clamps and uses the shared
ordered softness mapping; see [paint/water response](paint-water-brush-response.md).
Profile/image/raster dispatch and current FP control remain independent scopes.

## Evidence boundary

Four new complete annotated pairs contain1308 bytes/431 instructions. Reused lot
and initializer pairs add293 bytes/71 instructions. Every envelope reconstructs
from actual owned Listing, with no gap in these six functions, and matches pristine
original PE bytes. Metadata edits preserved all original FileBytes and were saved
clean. Complete physical point/sample types disambiguate raw levels and byte texels;
C casts do not override the reviewed Listing. No original instruction bytes, PE bytes, allocators or gameplay assemblies were changed.

## Retained point producer closure

| Entry | Role | Complete original pair |
| --- | --- | --- |
| 00D3F930 | WaterTool_OnLotMoveRetainPoint | [ASM](../../evidence/native/functions/00D3F930_WaterTool_OnLotMoveRetainPoint.asm) ([annotated C](../../evidence/native/functions/00D3F930_WaterTool_OnLotMoveRetainPoint.c)) |
| 00D40660 | WaterTool_TickRetainedPoint | [ASM](../../evidence/native/functions/00D40660_WaterTool_TickRetainedPoint.asm) ([annotated C](../../evidence/native/functions/00D40660_WaterTool_TickRetainedPoint.c)) |
| 00D40480 | WaterTool_UpdateRetainedPoint | [ASM](../../evidence/native/functions/00D40480_WaterTool_UpdateRetainedPoint.asm) ([annotated C](../../evidence/native/functions/00D40480_WaterTool_UpdateRetainedPoint.c)) |

D3F930 is60bytes/20instructions, thiscall two words RET8ALtrue. ECX is the
interactive subobject, WaterTool+28. It copies the point's rawX/Z/Int32level into
interactive+D8/DC/E0 (fulltool+100/104/108), preserving the initial engaged CMP
flags through all MOVs. Thus it updates all3words even while engaged; only the
not-engaged branch calls the existing virtual+74 presentation callback.

D40660 is27bytes/7instructions, thiscall one ignored word RET4void. Engagement
at interactive+5E gates its branch. If engaged it replaces its incoming argument
with LEAinteractive+D8, subtracts28 from ECX and tailJMPs D40480. The original word
is not read, so its semantic time/Float32 type is not inferred. D40480 is95bytes/
41instructions, fulltool thiscall one point pointer RET4void. It first calls the
interactive presentation callback, then if engaged forwards the SAME pointer to
D400F0, with undoable feedback handled afterward. No raw level or coordinate is
normalized. The tick producer reads the tool's retained point; it performs no fresh
active-floor/cursor lookup. Without a point-update callback the prior level stays
retained. The first-click D402E0 instead immediately stamps its supplied admitted
point, then copies all3words into the same cache. Higher input/floor event dispatch
is a separate owner; these leaves alone do not close its behavior.

The three complete pairs add182bytes/68instructions. Their Listing was already
fully defined. Only exact function metadata for D3F930/D40660 was missing; no
instruction recovery, disassembly, codeunit clearing or adjacent change occurred.
Original bytes and adjacent codeunits were guarded; all actual owned Listing
reconstructs the pristine PE envelopes. The producer annotations were saved clean.

The host retains point and level together on event0/2; its every-stamp ground gate
checks that cached raw level. Rejected stamps leave nextStamp unchanged. On ground,
host advances nextStamp before raster while native advances afterward: full clock,
exception, episode and report-list sequencing remain legacy. Admission proof does
not establish parity of feedback placement or higher input dispatch.

## Feedback position is still a separate legacy owner

| Entry | Role | Complete original pair |
| --- | --- | --- |
| 00AD6720 | BuildEditErrorRecord_InitializeAtLotPoint | [ASM](../../evidence/native/functions/00AD6720_BuildEditErrorRecord_InitializeAtLotPoint.asm) ([annotated C](../../evidence/native/functions/00AD6720_BuildEditErrorRecord_InitializeAtLotPoint.c)) |
| 00ADC750 | LotPoint_ResolveLevelPosition | [ASM](../../evidence/native/functions/00ADC750_LotPoint_ResolveLevelPosition.asm) ([annotated C](../../evidence/native/functions/00ADC750_LotPoint_ResolveLevelPosition.c)) |
| 00A8C690 | LotLevelHeight_SampleLocalPosition, reused | [ASM](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.asm) ([annotated C](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.c)) |

AD6720 is80bytes/29instructions, incomingECX destination record, five stackwords
RET0x14. It stores errorCode, lot identifier words (orzero fornull), two unassigned
raw auxiliarywords and zero field2C, then passes lot, SAMErawpoint and record+10
to ADC750cdecl and cleans12bytes. Final EAX=ESI returns the destinationpointer;
EAX is not its incoming this register. Null lot only affects identifier copying,
not a safety guarantee for the later dereference.

ADC750 is106bytes/31instructions, cdecl three stackwords, plainRETvoid. It aligns
its frame, copies pointX/Z to output0/8 and calls A8C690 with lot+290 and the SAME
pointpointer. That sampler reads signed point.level+8. FSTPFloat32 writes height
to output4; outputC is preserved. This leaf returns a lot-local position; it does
not transform X/Z to world. No forced level0 or fresh active-floor query appears.

Host ShowBuildFeedback accepts Vector2 and blockingObjectId; its final0 argument
is an object identifier, not a level. Its separate shared RaiseBuildFeedback owner
uses ground ConstructionVertex and world conversion, so rejected nonzero-level
feedback height is not proven equivalent. This existing difference is explicitly
outside the water response/admission unit. Full feedback world/event conversion,
all callers and the sampler's full exceptional/outside behavior need their own
complete scope before a correction. No feedback source/signature change is made.

These two complete pairs add186bytes/60instructions, annotations only, saved clean
with original FileBytes pristine and no Listing changes. Across the water target,
admission, producer and feedback leaves there are nine selected new pairs1676bytes/
559instructions; reused lot/initializer add293bytes/71instructions, eleven pairs
1969bytes/630instructions. A8C690 is an additional reused sampler frontier with
its own complete annotated pair. Static evidence does not establish runtime or
full controller/feedback parity.
