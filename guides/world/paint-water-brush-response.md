# Paint width and paint/water softness response

Original shipped PC1.67 TS3W.exe, static instruction/constant review in the
explicit original Ghidra program. Analyst role names, pristine original bytes
and clean saved database; no brush or numeric runtime experiment.

CEDFB0 is physical thiscall Float32 multiplier/RET4void. Store global118A008;
when productE0 exists,MULSS its width+1C by multiplier,store toolD4,then conditional
upper20 andlower0.25. Missing product leaves D4 unchanged. Unordered comparisons
skip replacement,soNaN is not a default width. CursorrefreshCEDB30 follows.

CEE040 thiscall Float32 softness/RET4void stores global118A00C and responseE4.
Its exact scalar SSE stages are:

- Equality5 ->1.
- Below5 -> delta=5-s;delta*=0.2;delta*=3;result=delta+1.
- Above OR unordered ->delta=s-5;delta*=0.2;delta*=0.75;result=1-delta.

Each SUBSS/MULSS/ADDSS roundsFloat32. Precombining .2*3 or.2*.75 changes results.
UCOMISS/LAHF/TEST AH44/JP distinguishes equality from unordered: NaN does not take
constant1; it reaches above arithmetic and yieldsNaN. No range clamp is in this
setter. Cursor receives current width and softness*0.1 separately; no inference
that scalar response alone implements setter globals,cursor or tool lifecycle.

D3FB80 water-tool initialization is ECX/no stack/plainRETvoid and repeats that
same SSE softness sequence. Water width is authored width*118A00 with NOpaint
clamp. It additionally resolves profile,selects operation7 and updates cursor;
those image/raster/game responsibilities are outside this scalar contract.

Verified original Float32 constants:

| Address | Bits | Value |
| --- | --- | --- |
| 01083144 | 3E800000 | 0.25 |
| 01083148 | 41A00000 | 20 |
| 0108314C | 40A00000 | 5 |
| 00FAB214 | 3E4CCCCD | 0.2 |
| 0103FD64 | 3F400000 | 0.75 |
| 00FA2B9C | 40400000 | 3 |
| 00F998F8 | 3F800000 | 1 |

Independent finite arithmetic examples (statically derived from these stages,
not executed C# tests): softness bits3BC49BA6 ->407FC504; former precombined
below-slope expression gives407FC505. Bits42C80000(100) ->C1540000;
precombined above slope givesC1540001. These are scalar finite-value expectations
under ordinary nearest-even rounding. Native MXCSR/denormal/trap state,NaNpayload
or cross-platform exception signaling are not established by this scope.

## Canonical complete evidence

- 00CEDFB0: [ASM](../../evidence/native/functions/00CEDFB0_LotPaintTool_SetWidthMultiplier.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEDFB0_LotPaintTool_SetWidthMultiplier.c)).
- 00CEE040: [ASM](../../evidence/native/functions/00CEE040_LotPaintTool_SetSoftness.asm) ([annotated Ghidra C](../../evidence/native/functions/00CEE040_LotPaintTool_SetSoftness.c)).
- 00D3FB80: [ASM](../../evidence/native/functions/00D3FB80_WaterTool_InitializeBrushAspects.asm) ([annotated Ghidra C](../../evidence/native/functions/00D3FB80_WaterTool_InitializeBrushAspects.c)).
