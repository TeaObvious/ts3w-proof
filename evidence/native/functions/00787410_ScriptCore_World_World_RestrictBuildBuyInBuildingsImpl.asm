# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787410 (ScriptCore.World::World_RestrictBuildBuyInBuildingsImpl)
Paired Ghidra pseudocode: 00787410_ScriptCore_World_World_RestrictBuildBuyInBuildingsImpl.c
Window: [0x00787410, 0x00787420) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787410: e9 2b 21 33 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787410 <.text+0x386410>:
  787410:	e9 2b 21 33 00                                  	jmp    0xab9540
  787415:	cc                                              	int3
  787416:	cc                                              	int3
  787417:	cc                                              	int3
  787418:	cc                                              	int3
  787419:	cc                                              	int3
  78741a:	cc                                              	int3
  78741b:	cc                                              	int3
  78741c:	cc                                              	int3
  78741d:	cc                                              	int3
  78741e:	cc                                              	int3
  78741f:	cc                                              	int3
