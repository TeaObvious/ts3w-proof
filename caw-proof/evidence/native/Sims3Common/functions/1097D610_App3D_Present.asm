# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d610 (App3D_Present)
Paired Ghidra pseudocode: 1097D610_App3D_Present.c
Window: [0x1097d610, 0x1097d620) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d610: e8 ab be a8 ff 8b c8 e9 74 f3 a8 ff cc cc cc cc

LINEAR DISASSEMBLY
1097d610 <.text+0x97c610>:
1097d610:	e8 ab be a8 ff                                  	call   0x104094c0
1097d615:	8b c8                                           	mov    ecx,eax
1097d617:	e9 74 f3 a8 ff                                  	jmp    0x1040c990
1097d61c:	cc                                              	int3
1097d61d:	cc                                              	int3
1097d61e:	cc                                              	int3
1097d61f:	cc                                              	int3
