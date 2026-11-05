# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec13d0 (ScriptCore.GameUtils::GameUtils_UnpauseImpl)
Paired Ghidra pseudocode: 00EC13D0_ScriptCore_GameUtils_GameUtils_UnpauseImpl.c
Window: [0x00ec13d0, 0x00ec13e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec13e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec13d0: 6a 01 b9 48 ed 1c 01 e8 64 3a 6d ff c3 cc cc cc

LINEAR DISASSEMBLY
00ec13d0 <.text+0xac03d0>:
  ec13d0:	6a 01                                           	push   0x1
  ec13d2:	b9 48 ed 1c 01                                  	mov    ecx,0x11ced48
  ec13d7:	e8 64 3a 6d ff                                  	call   0x594e40
  ec13dc:	c3                                              	ret
  ec13dd:	cc                                              	int3
  ec13de:	cc                                              	int3
  ec13df:	cc                                              	int3
