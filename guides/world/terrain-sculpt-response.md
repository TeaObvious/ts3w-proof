# Sculpt response and live cost boundary

PC1.67 TS3W.exe,analyst-supported names/types. Sample fields share the typed
BrushRasterSample layout. Native points are Float32XY plus SIGNEDInt32level.

## Scalar input and target

D19950 has5physicalwords/RET14hex,thiscall,ALBoolean. Softness input4B6E3B1
storesstaticFloat32 then computes ((1-softness*.1)*12)+1 using separateSSE
stages. Width input4B6E377 updates width/cursor but not that softness factor.
OtherIDs delegate all5words to base setter; full inherited input policy is not
established here.

D19AE0/D19B90 each169bytes check currentokE4 and sampletexel!=0. Value isFloat32
texel*softness;COMISS/JBE selects that value on <=255 ORUNORDERED,otherwise255.
Raise FLDstrength/FMULstoredvalue/FADDcurrent/FSTPtargetFloat32. Lower usesFSUBR
current instead. There is NO intermediateFloat32product store. Current x87
precision/CW is not set here; portableDouble53-bit intermediate is a bounded
host profile,not universal64-mantissa parity. Nonzero texel can still reach
mutation for unchanged target. Native selected ground is manager18-relativeMin10.

D19C40 ignores texel/strength/softness and reads3x3 current ground values. Actual
ADDSS sequence is left+sum,middle+that,right+that for each increasingZ row.
Do not port genuine C's associative-looking right+middle+left+sum regrouping.
Target=((sum*inverse9-current)*.2)+current,separateFloat32 operations.
Exact unchanged target returnsAL1 WITHOUTmutation;the rasterbox can therefore
include flat points. UnorderedNaN still reaches mutation,not a nativeNaNskip.

## Click and actual funds boundary

D1A400 FISTPInt32 currentCW/CVTSI2SS snaps integer vertices with noquarteroffset.
Rawlevel must0,then74AA80 checksinclusiveXY andLIVE level range. Actualundoable
Begin initializespaid/free policy; D2BE00 takescatalogprice. The original does
not setnearest-even mode in this click function.

D2C420 firstchecksnonnullboundlot,setsokouttrue,formscompact groundtile,executes
CB0710 with1190734ruleflags. Rule refusal returnsfalse withokstilltrue. Ifadmitted,
D2BE20 updatesFloat32sumabsdh at10C;cost108 forpaid or0iffree14;total=sum*cost;
amount=total-prior110. ACTUALlive affordability D1A8D0 thenACTUALcallbackD1A8B0
precede stored110newtotal. Refusal subtractsabsdh fromsum (not necessarily exact
bit restoration) and clearsok. Successcapturesfirstvertex,appliesD223F0using
1190730 andrecordsnewchangedcoordinates once. Deferred release-only household
charge is not this original path. Full history/refund and failed-publication
ownership are separate from sample calculations.

## Constants

Original mapped memory verified directly through MCP guards and pristinePE:

| VA | Float32 bits | Value |
| --- | --- | --- |
|0104487C|3DCCCCCD|0.1|
|00FAAD94|41400000|12|
|00F998F8|3F800000|1|
|00FA4134|437F0000|255|
|0107457C|3DE38E39|1/9 roundedFloat32|
|01085C18|3E4CCCCD|0.2|

## Complete canonical bodies

- Input setter: [ASM](../../evidence/native/functions/00D19950_TerrainSculptTool_SetAdditionalInput.asm) ([annotated Ghidra C](../../evidence/native/functions/00D19950_TerrainSculptTool_SetAdditionalInput.c)).
- Raise: [ASM](../../evidence/native/functions/00D19AE0_TerrainSculptTool_RaiseSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00D19AE0_TerrainSculptTool_RaiseSample.c)).
- Lower: [ASM](../../evidence/native/functions/00D19B90_TerrainSculptTool_LowerSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00D19B90_TerrainSculptTool_LowerSample.c)).
- Smooth: [ASM](../../evidence/native/functions/00D19C40_TerrainSculptTool_SmoothSample.asm) ([annotated Ghidra C](../../evidence/native/functions/00D19C40_TerrainSculptTool_SmoothSample.c)).
- Click: [ASM](../../evidence/native/functions/00D1A400_TerrainSculptTool_OnLotClick.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1A400_TerrainSculptTool_OnLotClick.c)).
- Incremental cost: [ASM](../../evidence/native/functions/00D2BE20_TerrainUndoable_ChargeHeightDifference.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2BE20_TerrainUndoable_ChargeHeightDifference.c)).
- Mutation: [ASM](../../evidence/native/functions/00D2C420_TerrainUndoable_ChangeGroundElevation.asm) ([annotated Ghidra C](../../evidence/native/functions/00D2C420_TerrainUndoable_ChangeGroundElevation.c)).

Three missing exact functions recovered against complete Listing/RET boundaries:
input215bytes,raise169bytes,lower169bytes; padding remains outside. Pointer-table
references include01085C7C(input) and01085CD8(raise). Callbacks are thiscall one
samplepointer/RET4,ALBoolean;click two words/RET8;cost oneFloat32/RET4;mutation
fivewords/RET14hex. Original bytes unchanged,database savedclean,actual genuine
C retains annotations. Static only;no runtime FP-mode,sculpt,undo,funds or game test.


## Shared vertex admission and actual upper-height propagation

The caller D2C420 uses [CB0710 ASM](../../evidence/native/functions/00CB0710_FUN_00cb0710.asm) ([qualified genuine C](../../evidence/native/functions/00CB0710_FUN_00cb0710.c)) before charging. The complete1016-byte/371-instruction cdecl body takes seven physical words and returns only AL. Its packed point has signed byte X/Z/logical level; storage is derived from the manager minimum. CAF0F0 validity runs first; locked-border, edit-zone A64260 and shell CAF3A0 precede the unchanged-height shortcut. Later selected rule children run only if global byte01187934 is nonzero. Its writers, public control and default are not established by this reader alone.

The small-change skip is strict abs(delta)<0.05; exact-near comparison uses1.5258789e-05 plus bit18. With a null diagnostic destination, a failing rule returns immediately. With a nonnull destination, the function clears accumulated success but continues later checks. Thus a first-error-only host API does not preserve the full original diagnostic collection. The complete child dispatch order is floorable, floor pattern, object, above, below, walls, pool, basement, submersible, fence, pattern-flatness, roof, pond. Above/below receive bit6-adjusted flags; the fence receives original flags. This dispatcher does not by itself prove each child's complete data and error contract.

After charging, D2C420 calls [D223F0 ASM](../../evidence/native/functions/00D223F0_FUN_00d223f0.asm) ([qualified genuine C](../../evidence/native/functions/00D223F0_FUN_00d223f0.c)) with low-byte mode0 and last physical input1. This function is ECX plus eight physical words/RET20hex. Its owned ranges exclude seven alignment bytes; the generated C misleadingly represents the integer maxlevel and low-byte mode as float temporaries/parameters. InstructionsD2246E,D22541,D2262A andD226B2 establish their actual uses.

Before modifying the chosen vertex, it captures each prior upper height. Up to the signed cutoff, target=priorUpper+initialDelta; above the cutoff, target=previousResult+AB02D0 stride. A level1 path can first raise the preceding height to current water. Original lot+408/40C and byte4B0 choose additional sea-height branches; their complete identities/producers/admission remain open. Basement neighbor B0B810 and fountain AFF850 select the below-ground follower. Each upper rule refusal breaks after already committed earlier writes; CB0710 is called with null diagnostics/context. D22100 journal, D221D0 consequences and AB0940 publication/notification are distinct callees.

The shared [D228E0 wrapper ASM](../../evidence/native/functions/00D228E0_FUN_00d228e0.asm) ([qualified C](../../evidence/native/functions/00D228E0_FUN_00d228e0.c)) forwards eight inputs with a reordered cutoff, compares the original and resulting level0 height and calls D21EC0 water adjustment only when it changed. Do not infer identical scalar or mutation behavior merely from a renamed terrain editor. A current host that always advances upper levels by3.0 still needs its productive input/admission cases compared with the cutoff1 caller; this analysis does not invent an authored gameplay counterexample or accept the difference.

These are three existing functions newly exported once, with owned bytes and instruction starts independently checked against PC1.67 PE; six strictly serialized MCP read tasks all retrieved terminal. No function/body/prototype/analysis/annotation/save or original-byte mutation. Full rule children/global control, recursive/error/floorability/pool/pond semantics, selected ground, native partial-journal/callback lifetime and all runtime/FP/game acceptance remain open.
