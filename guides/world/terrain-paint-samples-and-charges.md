# Terrain paint samples and conditional live funds

Original shipped PC1.67 TS3W.exe, statically reviewed in the explicit original
Ghidra program. Analyst sample types/roles and ABI refinements do not change
original file/memory bytes. Full erase metadata is recovered from concrete
instructions through its RET4; the annotated database is saved clean. No brush,
money,undo or gameplay execution is claimed.

## Typed sample and transfer

CEE1E0 and recoveredCEE3D0 take ECX tool plus one sample pointer/RET4,ALBoolean.
The selected sample layout is signed sampleX/Z at0/4,texel byte8,brush pointer4C,
softnessFloat32 at50,fadeFloat32 at54; brush strength isFloat32 at20. MOVSS/MULSS
reinterpret these fields as floats,not numeric conversions from uint bit patterns.

Intensity is ordered fade*softness,*strength,*texel inFloat32. >=255 saturates;
negative rejects. Unordered/NaN enters conversion,CVTTSS2SI indefinite80000000
thenLOWBYTE0,not a negative-sentinel refusal,under the masked x86 FP profile.
Texel0/currentokfalse skip before transfer; a computed0 from nonzero texel can
still reach charge/mix. Exception flags/denormal/NaNpayload are not emulated.

Add maps sample*.25 toclampedlocal0..W/D,computesfloor via rounding/remainder,
stores signedBYTEtileX/Z andlevel0. The border vertexW/D is not moved to the
lastinteriortile. Invalid signedtile skips floor query. A8E090 passesmaskF,
requireAll1,checkFlags1 toA8D300: ALLfour RAWpatternIDs nonzero ANDALLfourflagbits,
withinlotrange. FFFF is nonzero in thispredicate; catalog-TGI semantic floor
classification is a different operation. Erase has no exposed-floor query.

D244B0 receives selectedlayer,x,z,alphaBYTE andliteralotherDecrease1. D24550
no-paint returnsAL1/ok1 withno charge/capture; otherwise charges before mutation.
Both use actual original layer mixing and existing firsttouch sample journal.

## Funds are conditional live operations

BaseconstructorD1AF00 initializesfree14=1 and toolworldC. The actualBegin virtual
D1A870 queries FamilyFundsCanBeCharged and replacesfree14. Withfreeflagfalse,
Add usespriceB0,D1A8D0 affordability,D1A8B0 actualcharge; eraseD23EC0 does the same.
Withfreeflagtrue the amountis0 and no household debit is applied. It is invalid
to infer allpaintingfree solely from the constructor or a historycostfield.

D395D0 compares requestedpositivecost to Float32(live event49funds)-world
fractionalremainder20. D39580 ADDSS accumulatesamount at20,storesFloat32,FISTP
converts using CURRENTx87roundingmode; ifn!=0,pushes NEGATEDInt32n to physical
cdecl7913F0(event50,oneargument),ignoresreturn,andSUBSS float(n)fromremainder.
This is realcallbackwork,not a stroke-startsnapshot orprivatecounteronly.
Normal nearest-even is a common selected environment,not set in this function.
Native callback-failure rollback is not established by these instructions.

Original Worldevents49/50 preserve the loaded managed hooks; host code must not
duplicate household accounting. Existing [event mapping](../callbacks/event-map.json)
provides their registered identities. 7913F0's inherited noargs/stdcall metadata
was contradicted bycallee stackread,callerPUSH/ADDESP4 andplainRET. It is now
cdecl signedamount/ALresult; query791370 has noargs/fullInt32 result.

Paint constructorD24190 initializespriceB0/TotalCostB4zero; actualtoolbegin later
setsB0 fromcatalogprice. D240F0/D24120 callSwapPaintState then apply-/+B4.
FirsttouchD243C0 snapshots rawmapalphas underpackedz<<16+x;D23FF0 swaps layer
selection/reuse andcapturedbefore/after alpha,thenupdates usage. These selected
bodies contain noB4accumulation. ALLotherTotalCostwriters/lifecycle must still be
closed before claiming a global refundpolicy or thatB4alwaysstayszero. A raw
historygetterorzero-initializer is not evidence actualpaintingneverdebitsfunds.

Actual Ghidra C still renders COMISS/JC as f<255 and hides unordered NaN.
The remove C's sample._0_1_ is a reused parameter STACK SLOT,not a write to the
sample object's first coordinate. Both artifacts are annotated inside genuine C;
raw CF/PF branches and stack stores govern the port,not those C aliases.

## Concrete change predicate and cost getter

D23FC0 has a complete38byte body: its success path atD23FE0
uses MOV EAX,1 then RET atD23FE5. Status60=0 returnsALfalse;status1 with empty
captured-point map begin8C==end90 alsofalse;otherwise true. A host accepted-sample
count is a different representation of native journal presence,not a new raw
layer selection rule.

D24230 is exactly7bytes,FLD Float32[ECX+B4];RET,ST0result,no stackarguments.
It is the TotalCost getter,not per-sampleB0 or world fractionalremainder20.
Original vtable01086AF0 slot34hex at01086B24 containsD24230; the necessary
[original slot excerpt](../../evidence/world/paint-undoable-cost-target.bin)
retains those4bytes. ConstructorD24190 installs that table; actual paint tool
moveCEEFA0 invokes virtual34 for its display price. This getter doesnot itself
write/computeB4 or close all potential TotalCost producers.

## Physical and tool limits

D244B0 is thiscall7stackwords/RET1C,ALBoolean;D24550 has5words/RET14,ALBoolean.
Small alpha/flag fields occupy word-sized ABI arguments. A8E090 has3words/RET0C;
A8D300 has4words/RET10; bothALonly. D1A8B0/D39580 areFloat32thiscall/RET4void;
D395D0normalizesfullEAX0/1. Actual C preserves native indirect/stack aliases;
Scalar fields and physical callback ABI are instruction-derived,not invented C.

## Canonical complete evidence

- 00CEE1E0: [ASM](../../evidence/native/functions/00CEE1E0_LotPaintTool_AddSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEE1E0_LotPaintTool_AddSample.c)).
- 00CEE3D0: [ASM](../../evidence/native/functions/00CEE3D0_LotPaintTool_RemoveSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEE3D0_LotPaintTool_RemoveSample.c)).
- 00A8E090: [ASM](../../evidence/native/functions/00A8E090_FloorManager_AllPatternParts.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8E090_FloorManager_AllPatternParts.c)).
- 00A8D300: [ASM](../../evidence/native/functions/00A8D300_FloorManager_TestPatternParts.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8D300_FloorManager_TestPatternParts.c)).
- 00D244B0: [ASM](../../evidence/native/functions/00D244B0_PaintUndoable_AddPaintAtSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00D244B0_PaintUndoable_AddPaintAtSample.c)).
- 00D24550: [ASM](../../evidence/native/functions/00D24550_PaintUndoable_DiminishPaintAtSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00D24550_PaintUndoable_DiminishPaintAtSample.c)).
- 00D1A8D0: [ASM](../../evidence/native/functions/00D1A8D0_ToolUndoable_CanCharge.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1A8D0_ToolUndoable_CanCharge.c)).
- 00D1A8B0: [ASM](../../evidence/native/functions/00D1A8B0_ToolUndoable_ApplyCharge.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1A8B0_ToolUndoable_ApplyCharge.c)).
- 00D23EC0: [ASM](../../evidence/native/functions/00D23EC0_PaintUndoable_TryChargeSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00D23EC0_PaintUndoable_TryChargeSample.c)).
- 00D39580: [ASM](../../evidence/native/functions/00D39580_ToolWorld_ApplyFractionalCharge.asm) ([annotated Ghidra C](../../evidence/native/functions/00D39580_ToolWorld_ApplyFractionalCharge.c)).
- 00D395D0: [ASM](../../evidence/native/functions/00D395D0_ToolWorld_CanCharge.asm) ([annotated Ghidra C](../../evidence/native/functions/00D395D0_ToolWorld_CanCharge.c)).
- 007913F0: [ASM](../../evidence/native/functions/007913F0_WorldCallback_FamilyFundsMakeChange.asm) ([annotated Ghidra C](../../evidence/native/functions/007913F0_WorldCallback_FamilyFundsMakeChange.c)).
- 00791370: [ASM](../../evidence/native/functions/00791370_WorldCallback_FamilyFundsQueryAvailable.asm) ([annotated Ghidra C](../../evidence/native/functions/00791370_WorldCallback_FamilyFundsQueryAvailable.c)).
- 00D1A870: [ASM](../../evidence/native/functions/00D1A870_ToolUndoable_Begin.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1A870_ToolUndoable_Begin.c)).
- 00D1AF00: [ASM](../../evidence/native/functions/00D1AF00_ToolUndoable_Initialize.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1AF00_ToolUndoable_Initialize.c)).
- 00D24190: [ASM](../../evidence/native/functions/00D24190_PaintUndoable_Initialize.asm) ([annotated Ghidra C](../../evidence/native/functions/00D24190_PaintUndoable_Initialize.c)).
- 00D240F0: [ASM](../../evidence/native/functions/00D240F0_PaintUndoable_Undo.asm) ([annotated Ghidra C](../../evidence/native/functions/00D240F0_PaintUndoable_Undo.c)).
- 00D24120: [ASM](../../evidence/native/functions/00D24120_PaintUndoable_Redo.asm) ([annotated Ghidra C](../../evidence/native/functions/00D24120_PaintUndoable_Redo.c)).
- 00D243C0: [ASM](../../evidence/native/functions/00D243C0_PaintUndoable_CaptureSampleBefore.asm) ([annotated Ghidra C](../../evidence/native/functions/00D243C0_PaintUndoable_CaptureSampleBefore.c)).
- 00D23FF0: [ASM](../../evidence/native/functions/00D23FF0_PaintUndoable_SwapPaintState.asm) ([annotated Ghidra C](../../evidence/native/functions/00D23FF0_PaintUndoable_SwapPaintState.c)).
- Original charge-mode callback007914D0: [ASM](../../evidence/native/functions/007914D0_WorldCallback_FamilyFundsCanBeCharged.asm) ([annotated Ghidra C](../../evidence/native/functions/007914D0_WorldCallback_FamilyFundsCanBeCharged.c)).
- 00D23FC0: [ASM](../../evidence/native/functions/00D23FC0_PaintUndoable_HasLocalChanges.asm) ([annotated Ghidra C](../../evidence/native/functions/00D23FC0_PaintUndoable_HasLocalChanges.c)).
- 00D24230: [ASM](../../evidence/native/functions/00D24230_PaintUndoable_GetTotalCost.asm) ([annotated Ghidra C](../../evidence/native/functions/00D24230_PaintUndoable_GetTotalCost.c)).
