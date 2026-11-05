# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec13c0 (ScriptCore.GameUtils::GameUtils_PauseImpl)
Paired Ghidra pseudocode: 00EC13C0_ScriptCore_GameUtils_GameUtils_PauseImpl.c
Window: [0x00ec13c0, 0x00ec13d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec13d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec13c0: 6a 01 b9 48 ed 1c 01 e8 44 3a 6d ff c3 cc cc cc

LINEAR DISASSEMBLY
00ec13c0 <.text+0xac03c0>:
  ec13c0:	6a 01                                           	push   0x1
  ec13c2:	b9 48 ed 1c 01                                  	mov    ecx,0x11ced48
  ec13c7:	e8 44 3a 6d ff                                  	call   0x594e10
  ec13cc:	c3                                              	ret
  ec13cd:	cc                                              	int3
  ec13ce:	cc                                              	int3
  ec13cf:	cc                                              	int3
