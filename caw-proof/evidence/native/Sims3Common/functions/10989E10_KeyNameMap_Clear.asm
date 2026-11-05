# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989e10 (KeyNameMap_Clear)
Paired Ghidra pseudocode: 10989E10_KeyNameMap_Clear.c
Window: [0x10989e10, 0x10989e20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989e10: 8b 4c 24 04 e9 57 83 b9 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989e10 <.text+0x988e10>:
10989e10:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10989e14:	e9 57 83 b9 ff                                  	jmp    0x10522170
10989e19:	cc                                              	int3
10989e1a:	cc                                              	int3
10989e1b:	cc                                              	int3
10989e1c:	cc                                              	int3
10989e1d:	cc                                              	int3
10989e1e:	cc                                              	int3
10989e1f:	cc                                              	int3
