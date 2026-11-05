# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f7a0 (Camera_GetZoom)
Paired Ghidra pseudocode: 1052F7A0_Camera_GetZoom.c
Window: [0x1052f7a0, 0x1052f7e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f7a0: e8 8b ce 22 00 85 c0 74 2f 8b c8 e8 d0 82 40 00
1052f7b0: 85 c0 74 24 8b c8 e8 95 d1 22 00 85 c0 74 19 8b
1052f7c0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052f7d0: 07 8b c8 e9 d8 3f 23 00 d9 ee c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1052f7a0 <.text+0x52e7a0>:
1052f7a0:	e8 8b ce 22 00                                  	call   0x1075c630
1052f7a5:	85 c0                                           	test   eax,eax
1052f7a7:	74 2f                                           	je     0x1052f7d8
1052f7a9:	8b c8                                           	mov    ecx,eax
1052f7ab:	e8 d0 82 40 00                                  	call   0x10937a80
1052f7b0:	85 c0                                           	test   eax,eax
1052f7b2:	74 24                                           	je     0x1052f7d8
1052f7b4:	8b c8                                           	mov    ecx,eax
1052f7b6:	e8 95 d1 22 00                                  	call   0x1075c950
1052f7bb:	85 c0                                           	test   eax,eax
1052f7bd:	74 19                                           	je     0x1052f7d8
1052f7bf:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f7c1:	8b c8                                           	mov    ecx,eax
1052f7c3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052f7c6:	68 89 dd 0f 11                                  	push   0x110fdd89
1052f7cb:	ff d0                                           	call   eax
1052f7cd:	85 c0                                           	test   eax,eax
1052f7cf:	74 07                                           	je     0x1052f7d8
1052f7d1:	8b c8                                           	mov    ecx,eax
1052f7d3:	e9 d8 3f 23 00                                  	jmp    0x107637b0
1052f7d8:	d9 ee                                           	fldz
1052f7da:	c3                                              	ret
1052f7db:	cc                                              	int3
1052f7dc:	cc                                              	int3
1052f7dd:	cc                                              	int3
1052f7de:	cc                                              	int3
1052f7df:	cc                                              	int3
