# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992580 (Sims3PackFile_Create)
Paired Ghidra pseudocode: 10992580_Sims3PackFile_Create.c
Window: [0x10992580, 0x109925b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109925b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992580: 6a 00 6a 00 6a 00 6a 00 68 d4 73 b9 10 68 d4 01
10992590: 00 00 e8 19 69 f8 ff 83 c4 18 85 c0 74 07 8b c8
109925a0: e9 eb 2e e2 ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992580 <.text+0x991580>:
10992580:	6a 00                                           	push   0x0
10992582:	6a 00                                           	push   0x0
10992584:	6a 00                                           	push   0x0
10992586:	6a 00                                           	push   0x0
10992588:	68 d4 73 b9 10                                  	push   0x10b973d4
1099258d:	68 d4 01 00 00                                  	push   0x1d4
10992592:	e8 19 69 f8 ff                                  	call   0x10918eb0
10992597:	83 c4 18                                        	add    esp,0x18
1099259a:	85 c0                                           	test   eax,eax
1099259c:	74 07                                           	je     0x109925a5
1099259e:	8b c8                                           	mov    ecx,eax
109925a0:	e9 eb 2e e2 ff                                  	jmp    0x107b5490
109925a5:	33 c0                                           	xor    eax,eax
109925a7:	c3                                              	ret
109925a8:	cc                                              	int3
109925a9:	cc                                              	int3
109925aa:	cc                                              	int3
109925ab:	cc                                              	int3
109925ac:	cc                                              	int3
109925ad:	cc                                              	int3
109925ae:	cc                                              	int3
109925af:	cc                                              	int3
