# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f530 (UIManager_RegisterCustomControlDelegatesImpl)
Paired Ghidra pseudocode: 1056F530_UIManager_RegisterCustomControlDelegatesImpl.c
Window: [0x1056f530, 0x1056f540) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f530: e9 0b d1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f530 <.text+0x56e530>:
1056f530:	e9 0b d1 ff ff                                  	jmp    0x1056c640
1056f535:	cc                                              	int3
1056f536:	cc                                              	int3
1056f537:	cc                                              	int3
1056f538:	cc                                              	int3
1056f539:	cc                                              	int3
1056f53a:	cc                                              	int3
1056f53b:	cc                                              	int3
1056f53c:	cc                                              	int3
1056f53d:	cc                                              	int3
1056f53e:	cc                                              	int3
1056f53f:	cc                                              	int3
