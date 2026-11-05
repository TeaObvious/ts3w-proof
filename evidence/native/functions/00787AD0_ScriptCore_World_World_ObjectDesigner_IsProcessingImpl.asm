# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787ad0 (ScriptCore.World::World_ObjectDesigner_IsProcessingImpl)
Paired Ghidra pseudocode: 00787AD0_ScriptCore_World_World_ObjectDesigner_IsProcessingImpl.c
Window: [0x00787ad0, 0x00787ae0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787ad0: e8 cb 87 3a 00 8b c8 e9 64 97 3a 00 cc cc cc cc

LINEAR DISASSEMBLY
00787ad0 <.text+0x386ad0>:
  787ad0:	e8 cb 87 3a 00                                  	call   0xb302a0
  787ad5:	8b c8                                           	mov    ecx,eax
  787ad7:	e9 64 97 3a 00                                  	jmp    0xb31240
  787adc:	cc                                              	int3
  787add:	cc                                              	int3
  787ade:	cc                                              	int3
  787adf:	cc                                              	int3
