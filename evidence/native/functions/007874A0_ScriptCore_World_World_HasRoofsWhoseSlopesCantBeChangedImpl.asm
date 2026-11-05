# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007874a0 (ScriptCore.World::World_HasRoofsWhoseSlopesCantBeChangedImpl)
Paired Ghidra pseudocode: 007874A0_ScriptCore_World_World_HasRoofsWhoseSlopesCantBeChangedImpl.c
Window: [0x007874a0, 0x007874b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007874b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007874a0: e9 cb 54 37 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007874a0 <.text+0x3864a0>:
  7874a0:	e9 cb 54 37 00                                  	jmp    0xafc970
  7874a5:	cc                                              	int3
  7874a6:	cc                                              	int3
  7874a7:	cc                                              	int3
  7874a8:	cc                                              	int3
  7874a9:	cc                                              	int3
  7874aa:	cc                                              	int3
  7874ab:	cc                                              	int3
  7874ac:	cc                                              	int3
  7874ad:	cc                                              	int3
  7874ae:	cc                                              	int3
  7874af:	cc                                              	int3
