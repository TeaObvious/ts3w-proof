# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec16a0 (ScriptCore.GameUtils::GameUtils_SetMemoryTrackingMode)
Paired Ghidra pseudocode: 00EC16A0_ScriptCore_GameUtils_GameUtils_SetMemoryTrackingMode.c
Window: [0x00ec16a0, 0x00ec16c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec16c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec16a0: e8 7b e3 a6 ff 8b 44 24 04 83 f8 03 73 05 a3 8c
00ec16b0: d1 1d 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec16a0 <.text+0xac06a0>:
  ec16a0:	e8 7b e3 a6 ff                                  	call   0x92fa20
  ec16a5:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ec16a9:	83 f8 03                                        	cmp    eax,0x3
  ec16ac:	73 05                                           	jae    0xec16b3
  ec16ae:	a3 8c d1 1d 01                                  	mov    ds:0x11dd18c,eax
  ec16b3:	c3                                              	ret
  ec16b4:	cc                                              	int3
  ec16b5:	cc                                              	int3
  ec16b6:	cc                                              	int3
  ec16b7:	cc                                              	int3
  ec16b8:	cc                                              	int3
  ec16b9:	cc                                              	int3
  ec16ba:	cc                                              	int3
  ec16bb:	cc                                              	int3
  ec16bc:	cc                                              	int3
  ec16bd:	cc                                              	int3
  ec16be:	cc                                              	int3
  ec16bf:	cc                                              	int3
