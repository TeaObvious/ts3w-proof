# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109945b0 (TextureDatabase_Init)
Paired Ghidra pseudocode: 109945B0_TextureDatabase_Init.c
Window: [0x109945b0, 0x109945c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109945c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109945b0: 8b 4c 24 04 e9 a7 fd ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109945b0 <.text+0x9935b0>:
109945b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109945b4:	e9 a7 fd ff ff                                  	jmp    0x10994360
109945b9:	cc                                              	int3
109945ba:	cc                                              	int3
109945bb:	cc                                              	int3
109945bc:	cc                                              	int3
109945bd:	cc                                              	int3
109945be:	cc                                              	int3
109945bf:	cc                                              	int3
