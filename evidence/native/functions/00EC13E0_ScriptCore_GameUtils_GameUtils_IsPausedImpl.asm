# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec13e0 (ScriptCore.GameUtils::GameUtils_IsPausedImpl)
Paired Ghidra pseudocode: 00EC13E0_ScriptCore_GameUtils_GameUtils_IsPausedImpl.c
Window: [0x00ec13e0, 0x00ec13f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec13f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec13e0: b9 48 ed 1c 01 e9 e6 3a 6d ff cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec13e0 <.text+0xac03e0>:
  ec13e0:	b9 48 ed 1c 01                                  	mov    ecx,0x11ced48
  ec13e5:	e9 e6 3a 6d ff                                  	jmp    0x594ed0
  ec13ea:	cc                                              	int3
  ec13eb:	cc                                              	int3
  ec13ec:	cc                                              	int3
  ec13ed:	cc                                              	int3
  ec13ee:	cc                                              	int3
  ec13ef:	cc                                              	int3
