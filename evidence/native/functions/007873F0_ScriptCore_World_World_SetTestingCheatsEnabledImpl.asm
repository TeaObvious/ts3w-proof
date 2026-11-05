# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007873f0 (ScriptCore.World::World_SetTestingCheatsEnabledImpl)
Paired Ghidra pseudocode: 007873F0_ScriptCore_World_World_SetTestingCheatsEnabledImpl.c
Window: [0x007873f0, 0x00787400) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007873f0: e9 8b 5c 33 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007873f0 <.text+0x3863f0>:
  7873f0:	e9 8b 5c 33 00                                  	jmp    0xabd080
  7873f5:	cc                                              	int3
  7873f6:	cc                                              	int3
  7873f7:	cc                                              	int3
  7873f8:	cc                                              	int3
  7873f9:	cc                                              	int3
  7873fa:	cc                                              	int3
  7873fb:	cc                                              	int3
  7873fc:	cc                                              	int3
  7873fd:	cc                                              	int3
  7873fe:	cc                                              	int3
  7873ff:	cc                                              	int3
