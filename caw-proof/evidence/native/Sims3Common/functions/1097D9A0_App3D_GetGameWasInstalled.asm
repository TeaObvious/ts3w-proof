# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d9a0 (App3D_GetGameWasInstalled)
Paired Ghidra pseudocode: 1097D9A0_App3D_GetGameWasInstalled.c
Window: [0x1097d9a0, 0x1097d9c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d9a0: b9 c0 26 c7 10 e9 26 0d a1 ff cc cc cc cc cc cc
1097d9b0: b8 68 40 ab 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d9a0 <.text+0x97c9a0>:
1097d9a0:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097d9a5:	e9 26 0d a1 ff                                  	jmp    0x1038e6d0
1097d9aa:	cc                                              	int3
1097d9ab:	cc                                              	int3
1097d9ac:	cc                                              	int3
1097d9ad:	cc                                              	int3
1097d9ae:	cc                                              	int3
1097d9af:	cc                                              	int3
1097d9b0:	b8 68 40 ab 10                                  	mov    eax,0x10ab4068
1097d9b5:	c3                                              	ret
1097d9b6:	cc                                              	int3
1097d9b7:	cc                                              	int3
1097d9b8:	cc                                              	int3
1097d9b9:	cc                                              	int3
1097d9ba:	cc                                              	int3
1097d9bb:	cc                                              	int3
1097d9bc:	cc                                              	int3
1097d9bd:	cc                                              	int3
1097d9be:	cc                                              	int3
1097d9bf:	cc                                              	int3
