# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007874b0 (ScriptCore.World::World_HasPagodaRoofsImpl)
Paired Ghidra pseudocode: 007874B0_ScriptCore_World_World_HasPagodaRoofsImpl.c
Window: [0x007874b0, 0x007874c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007874c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007874b0: e9 fb 54 37 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007874b0 <.text+0x3864b0>:
  7874b0:	e9 fb 54 37 00                                  	jmp    0xafc9b0
  7874b5:	cc                                              	int3
  7874b6:	cc                                              	int3
  7874b7:	cc                                              	int3
  7874b8:	cc                                              	int3
  7874b9:	cc                                              	int3
  7874ba:	cc                                              	int3
  7874bb:	cc                                              	int3
  7874bc:	cc                                              	int3
  7874bd:	cc                                              	int3
  7874be:	cc                                              	int3
  7874bf:	cc                                              	int3
