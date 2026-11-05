# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d6a0 (App3D_PauseGameClock)
Paired Ghidra pseudocode: 1097D6A0_App3D_PauseGameClock.c
Window: [0x1097d6a0, 0x1097d6c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d6a0: 80 7c 24 04 00 6a 01 b9 38 26 c7 10 74 06 e8 6d
1097d6b0: 0c a1 ff c3 e8 97 0c a1 ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d6a0 <.text+0x97c6a0>:
1097d6a0:	80 7c 24 04 00                                  	cmp    BYTE PTR [esp+0x4],0x0
1097d6a5:	6a 01                                           	push   0x1
1097d6a7:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097d6ac:	74 06                                           	je     0x1097d6b4
1097d6ae:	e8 6d 0c a1 ff                                  	call   0x1038e320
1097d6b3:	c3                                              	ret
1097d6b4:	e8 97 0c a1 ff                                  	call   0x1038e350
1097d6b9:	c3                                              	ret
1097d6ba:	cc                                              	int3
1097d6bb:	cc                                              	int3
1097d6bc:	cc                                              	int3
1097d6bd:	cc                                              	int3
1097d6be:	cc                                              	int3
1097d6bf:	cc                                              	int3
