# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec10c0 (ScriptCore.GameUtils::GameUtils_GetGameTimeSpeedLevel)
Paired Ghidra pseudocode: 00EC10C0_ScriptCore_GameUtils_GameUtils_GetGameTimeSpeedLevel.c
Window: [0x00ec10c0, 0x00ec10d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec10d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec10c0: a1 b4 ed 1c 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec10c0 <.text+0xac00c0>:
  ec10c0:	a1 b4 ed 1c 01                                  	mov    eax,ds:0x11cedb4
  ec10c5:	c3                                              	ret
  ec10c6:	cc                                              	int3
  ec10c7:	cc                                              	int3
  ec10c8:	cc                                              	int3
  ec10c9:	cc                                              	int3
  ec10ca:	cc                                              	int3
  ec10cb:	cc                                              	int3
  ec10cc:	cc                                              	int3
  ec10cd:	cc                                              	int3
  ec10ce:	cc                                              	int3
  ec10cf:	cc                                              	int3
