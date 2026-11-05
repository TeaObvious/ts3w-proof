# Roof pitch gesture and raw activation scale

Original PC1.67 TS3W.exe SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Ten actual annotated C/full owned Listing pairs:1429 original bytes/485 instructions.
Names and appended entry PLATEs are analyst metadata; bytes, function bodies,
prototypes, existing metadata, definitions and analysis are unchanged. Actual annotations are included in the paired Ghidra pseudocode.

|Entry|Analyst name|Owned bytes|Instructions|Actual pair|
|---|---|---:|---:|---|
|`00d0ec40`|RoofPitch_UpdateHoveredRoof|334|118|[full owned ASM](../../evidence/native/functions/00D0EC40_RoofPitch_UpdateHoveredRoof.asm) ([annotated C](../../evidence/native/functions/00D0EC40_RoofPitch_UpdateHoveredRoof.c))|
|`00d0edd0`|RoofPitch_Press|270|92|[full owned ASM](../../evidence/native/functions/00D0EDD0_RoofPitch_Press.asm) ([annotated C](../../evidence/native/functions/00D0EDD0_RoofPitch_Press.c))|
|`00d0eee0`|RoofPitch_Release|250|92|[full owned ASM](../../evidence/native/functions/00D0EEE0_RoofPitch_Release.asm) ([annotated C](../../evidence/native/functions/00D0EEE0_RoofPitch_Release.c))|
|`00d0efe0`|RoofPitch_Move|346|120|[full owned ASM](../../evidence/native/functions/00D0EFE0_RoofPitch_Move.asm) ([annotated C](../../evidence/native/functions/00D0EFE0_RoofPitch_Move.c))|
|`00d0ed90`|RoofPitch_Retire|51|18|[full owned ASM](../../evidence/native/functions/00D0ED90_RoofPitch_Retire.asm) ([annotated C](../../evidence/native/functions/00D0ED90_RoofPitch_Retire.c))|
|`0060ed20`|Graphics_ReadThreeDeviceWords|44|12|[full owned ASM](../../evidence/native/functions/0060ED20_Graphics_ReadThreeDeviceWords.asm) ([annotated C](../../evidence/native/functions/0060ED20_Graphics_ReadThreeDeviceWords.c))|
|`0060e910`|Graphics_GetManagerSingleton|6|2|[full owned ASM](../../evidence/native/functions/0060E910_Graphics_GetManagerSingleton.asm) ([annotated C](../../evidence/native/functions/0060E910_Graphics_GetManagerSingleton.c))|
|`00d0e9f0`|RoofPitch_Construct|110|25|[full owned ASM](../../evidence/native/functions/00D0E9F0_RoofPitch_Construct.asm) ([annotated C](../../evidence/native/functions/00D0E9F0_RoofPitch_Construct.c))|
|`00cce7f0`|UserTool_MarkPressed|9|3|[full owned ASM](../../evidence/native/functions/00CCE7F0_UserTool_MarkPressed.asm) ([annotated C](../../evidence/native/functions/00CCE7F0_UserTool_MarkPressed.c))|
|`00cce800`|UserTool_MarkReleased|9|3|[full owned ASM](../../evidence/native/functions/00CCE800_UserTool_MarkReleased.asm) ([annotated C](../../evidence/native/functions/00CCE800_UserTool_MarkReleased.c))|

## Physical input and state

Existing canonical [left press](../../evidence/native/functions/00CEF820_UserToolManager_ForwardLeftMousePress.c),
[move](../../evidence/native/functions/00CEF980_UserToolManager_ForwardMouseMove.c), and
[modifier producer](../../evidence/native/functions/00CCE930_UserTool_ApplyUiModifiers.c) are reused.
They establish floor pointer coordinates, left1000 admission and UI Shift1/
Control2/Alt4 mapping to tool2/1/4. No duplicate index rows are supplied.
Base CCE7F0/CCE800 only set byte14=1/0, return AL0 and RET8; inferred fastcall C
omits two ignored caller stack words. Constructor D0E9F0 sets acceptedY68=-100.
Press storesY64 without resetting68, toggles selection under multi59 and clears
hover5C. Move admits wrapped signed integer abs(acceptedY-currentY)>10, computes
CVTSI2SS(currentY-pressY)/scale60 then SUBSS from negative zero, and writes acceptedY
only after pitch/preview/highlight. Press/move/release physically consume two
pointer words/RET8 despite release's inferred one-parameter C rendering.

Hover distinguishes failed picks, unpitchable roof and non-roof success; these
raw/highlight distinctions and geometry are not a claim of current host parity.
Release submits changed undoable and replaces it; unchanged non-multi clears
selection. Retirement rolls back undoable through virtual+8, clears highlights
and tail JMPs CD3510; no local RET is manufactured. Undoable children remain open.

## Honest nonfunction evidence and unresolved device producer

The actual annotated bounded nonfunction Listing
retains D0E86028bytes and D0E8C0163bytes. Neither is a defined Ghidra Function;
there is no invented C or function-body/index entry. Mode0 clears multi59,
mode2 sets it, others preserve. Activation calls0060ED20 through011CFCC8,
CVTSI2SS converts the second output, multiplies exact .02f and stores scale60.
[Original necessary data/getter bytes](../../evidence/native/data/roof-pitch-data.txt)
retain the88-byte vtable, .02 constant, negative zero and nearby4-byte D0E9E0
flag getter. That getter is distinct from the defined D0E9F0 constructor.

0060ED20 follows managerE0 and copies device184/188/1B4. Getter0060E910 returns
011CFCC8. Native raw pitch span is .02×signed device188; its exact writer,
width/height/units and relation to a logical viewport remain unresolved. The
separately read0060EBA0 manager mode record and006948F0 device consumer do not
close that identity. Imported BSS zeros are not a PE raw/live singleton value.
No full-viewport50-degree or arbitrary FPU/JIT numerical parity is inferred.

This is static original evidence. No target execution, geometry or numerical
acceptance is claimed. Only selected numeric E8 CALLs enter the direct-call
supplement; computed calls and tail JMPs are not represented as direct CALLs.
