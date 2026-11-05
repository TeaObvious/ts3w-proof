# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec39a0 (ScriptCore.GameUtils::GameUtils_GetModFilesName)
Paired Ghidra pseudocode: 00EC39A0_ScriptCore_GameUtils_GameUtils_GetModFilesName.c
Window: [0x00ec39a0, 0x00ec39b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec39b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec39a0: e9 8b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec39a0 <.text+0xac29a0>:
  ec39a0:	e9 8b fd ff ff                                  	jmp    0xec3730
  ec39a5:	cc                                              	int3
  ec39a6:	cc                                              	int3
  ec39a7:	cc                                              	int3
  ec39a8:	cc                                              	int3
  ec39a9:	cc                                              	int3
  ec39aa:	cc                                              	int3
  ec39ab:	cc                                              	int3
  ec39ac:	cc                                              	int3
  ec39ad:	cc                                              	int3
  ec39ae:	cc                                              	int3
  ec39af:	cc                                              	int3
