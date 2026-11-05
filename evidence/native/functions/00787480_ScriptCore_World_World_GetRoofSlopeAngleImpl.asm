# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787480 (ScriptCore.World::World_GetRoofSlopeAngleImpl)
Paired Ghidra pseudocode: 00787480_ScriptCore_World_World_GetRoofSlopeAngleImpl.c
Window: [0x00787480, 0x00787490) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787480: e9 1b b3 37 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787480 <.text+0x386480>:
  787480:	e9 1b b3 37 00                                  	jmp    0xb027a0
  787485:	cc                                              	int3
  787486:	cc                                              	int3
  787487:	cc                                              	int3
  787488:	cc                                              	int3
  787489:	cc                                              	int3
  78748a:	cc                                              	int3
  78748b:	cc                                              	int3
  78748c:	cc                                              	int3
  78748d:	cc                                              	int3
  78748e:	cc                                              	int3
  78748f:	cc                                              	int3
