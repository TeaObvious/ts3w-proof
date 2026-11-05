# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787470 (ScriptCore.World::World_SetPagodaRoofCurveChoiceImpl)
Paired Ghidra pseudocode: 00787470_ScriptCore_World_World_SetPagodaRoofCurveChoiceImpl.c
Window: [0x00787470, 0x00787480) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787470: e9 bb 16 38 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787470 <.text+0x386470>:
  787470:	e9 bb 16 38 00                                  	jmp    0xb08b30
  787475:	cc                                              	int3
  787476:	cc                                              	int3
  787477:	cc                                              	int3
  787478:	cc                                              	int3
  787479:	cc                                              	int3
  78747a:	cc                                              	int3
  78747b:	cc                                              	int3
  78747c:	cc                                              	int3
  78747d:	cc                                              	int3
  78747e:	cc                                              	int3
  78747f:	cc                                              	int3
