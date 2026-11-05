# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1410 (ScriptCore.GameUtils::GameUtils_GetGameTimeScaleImpl)
Paired Ghidra pseudocode: 00EC1410_ScriptCore_GameUtils_GameUtils_GetGameTimeScaleImpl.c
Window: [0x00ec1410, 0x00ec1420) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1410: d9 05 b0 ed 1c 01 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1410 <.text+0xac0410>:
  ec1410:	d9 05 b0 ed 1c 01                               	fld    DWORD PTR ds:0x11cedb0
  ec1416:	c3                                              	ret
  ec1417:	cc                                              	int3
  ec1418:	cc                                              	int3
  ec1419:	cc                                              	int3
  ec141a:	cc                                              	int3
  ec141b:	cc                                              	int3
  ec141c:	cc                                              	int3
  ec141d:	cc                                              	int3
  ec141e:	cc                                              	int3
  ec141f:	cc                                              	int3
