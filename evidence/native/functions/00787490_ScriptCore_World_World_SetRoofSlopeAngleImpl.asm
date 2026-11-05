# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787490 (ScriptCore.World::World_SetRoofSlopeAngleImpl)
Paired Ghidra pseudocode: 00787490_ScriptCore_World_World_SetRoofSlopeAngleImpl.c
Window: [0x00787490, 0x007874a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007874a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787490: e9 4b 17 38 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787490 <.text+0x386490>:
  787490:	e9 4b 17 38 00                                  	jmp    0xb08be0
  787495:	cc                                              	int3
  787496:	cc                                              	int3
  787497:	cc                                              	int3
  787498:	cc                                              	int3
  787499:	cc                                              	int3
  78749a:	cc                                              	int3
  78749b:	cc                                              	int3
  78749c:	cc                                              	int3
  78749d:	cc                                              	int3
  78749e:	cc                                              	int3
  78749f:	cc                                              	int3
