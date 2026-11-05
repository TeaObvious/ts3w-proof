# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007885c0 (ScriptCore.World::World_EnableObjectScreenCoverage)
Paired Ghidra pseudocode: 007885C0_ScriptCore_World_World_EnableObjectScreenCoverage.c
Window: [0x007885c0, 0x007885e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007885e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007885c0: e8 0b 6d e1 ff 83 7c 24 04 00 8b c8 74 05 e9 ad
007885d0: 69 e1 ff e9 b8 6c e1 ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007885c0 <.text+0x3875c0>:
  7885c0:	e8 0b 6d e1 ff                                  	call   0x59f2d0
  7885c5:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
  7885ca:	8b c8                                           	mov    ecx,eax
  7885cc:	74 05                                           	je     0x7885d3
  7885ce:	e9 ad 69 e1 ff                                  	jmp    0x59ef80
  7885d3:	e9 b8 6c e1 ff                                  	jmp    0x59f290
  7885d8:	cc                                              	int3
  7885d9:	cc                                              	int3
  7885da:	cc                                              	int3
  7885db:	cc                                              	int3
  7885dc:	cc                                              	int3
  7885dd:	cc                                              	int3
  7885de:	cc                                              	int3
  7885df:	cc                                              	int3
