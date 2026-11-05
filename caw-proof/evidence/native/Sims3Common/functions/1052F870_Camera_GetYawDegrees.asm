# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f870 (Camera_GetYawDegrees)
Paired Ghidra pseudocode: 1052F870_Camera_GetYawDegrees.c
Window: [0x1052f870, 0x1052f8b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f8b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f870: e8 bb cd 22 00 85 c0 74 2f 8b c8 e8 00 82 40 00
1052f880: 85 c0 74 24 8b c8 e8 c5 d0 22 00 85 c0 74 19 8b
1052f890: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052f8a0: 07 8b c8 e9 98 3f 23 00 d9 ee c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1052f870 <.text+0x52e870>:
1052f870:	e8 bb cd 22 00                                  	call   0x1075c630
1052f875:	85 c0                                           	test   eax,eax
1052f877:	74 2f                                           	je     0x1052f8a8
1052f879:	8b c8                                           	mov    ecx,eax
1052f87b:	e8 00 82 40 00                                  	call   0x10937a80
1052f880:	85 c0                                           	test   eax,eax
1052f882:	74 24                                           	je     0x1052f8a8
1052f884:	8b c8                                           	mov    ecx,eax
1052f886:	e8 c5 d0 22 00                                  	call   0x1075c950
1052f88b:	85 c0                                           	test   eax,eax
1052f88d:	74 19                                           	je     0x1052f8a8
1052f88f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f891:	8b c8                                           	mov    ecx,eax
1052f893:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052f896:	68 89 dd 0f 11                                  	push   0x110fdd89
1052f89b:	ff d0                                           	call   eax
1052f89d:	85 c0                                           	test   eax,eax
1052f89f:	74 07                                           	je     0x1052f8a8
1052f8a1:	8b c8                                           	mov    ecx,eax
1052f8a3:	e9 98 3f 23 00                                  	jmp    0x10763840
1052f8a8:	d9 ee                                           	fldz
1052f8aa:	c3                                              	ret
1052f8ab:	cc                                              	int3
1052f8ac:	cc                                              	int3
1052f8ad:	cc                                              	int3
1052f8ae:	cc                                              	int3
1052f8af:	cc                                              	int3
