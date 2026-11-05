# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f6a0 (Camera_SetMotion)
Paired Ghidra pseudocode: 1052F6A0_Camera_SetMotion.c
Window: [0x1052f6a0, 0x1052f6e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f6e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f6a0: e8 8b cf 22 00 85 c0 74 29 8b c8 e8 d0 83 40 00
1052f6b0: 85 c0 74 1e 8b c8 e8 95 d2 22 00 85 c0 74 13 8b
1052f6c0: 4c 24 08 8b 10 8b 52 40 51 8b 4c 24 08 51 8b c8
1052f6d0: ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f6a0 <.text+0x52e6a0>:
1052f6a0:	e8 8b cf 22 00                                  	call   0x1075c630
1052f6a5:	85 c0                                           	test   eax,eax
1052f6a7:	74 29                                           	je     0x1052f6d2
1052f6a9:	8b c8                                           	mov    ecx,eax
1052f6ab:	e8 d0 83 40 00                                  	call   0x10937a80
1052f6b0:	85 c0                                           	test   eax,eax
1052f6b2:	74 1e                                           	je     0x1052f6d2
1052f6b4:	8b c8                                           	mov    ecx,eax
1052f6b6:	e8 95 d2 22 00                                  	call   0x1075c950
1052f6bb:	85 c0                                           	test   eax,eax
1052f6bd:	74 13                                           	je     0x1052f6d2
1052f6bf:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052f6c3:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f6c5:	8b 52 40                                        	mov    edx,DWORD PTR [edx+0x40]
1052f6c8:	51                                              	push   ecx
1052f6c9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052f6cd:	51                                              	push   ecx
1052f6ce:	8b c8                                           	mov    ecx,eax
1052f6d0:	ff d2                                           	call   edx
1052f6d2:	c3                                              	ret
1052f6d3:	cc                                              	int3
1052f6d4:	cc                                              	int3
1052f6d5:	cc                                              	int3
1052f6d6:	cc                                              	int3
1052f6d7:	cc                                              	int3
1052f6d8:	cc                                              	int3
1052f6d9:	cc                                              	int3
1052f6da:	cc                                              	int3
1052f6db:	cc                                              	int3
1052f6dc:	cc                                              	int3
1052f6dd:	cc                                              	int3
1052f6de:	cc                                              	int3
1052f6df:	cc                                              	int3
