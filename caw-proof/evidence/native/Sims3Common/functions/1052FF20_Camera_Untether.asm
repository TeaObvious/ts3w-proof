# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ff20 (Camera_Untether)
Paired Ghidra pseudocode: 1052FF20_Camera_Untether.c
Window: [0x1052ff20, 0x1052ff60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ff60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ff20: e8 0b c7 22 00 85 c0 74 2f 8b c8 e8 50 7b 40 00
1052ff30: 85 c0 74 24 8b c8 e8 15 ca 22 00 85 c0 74 19 8b
1052ff40: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052ff50: 07 8b c8 e9 18 68 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052ff20 <.text+0x52ef20>:
1052ff20:	e8 0b c7 22 00                                  	call   0x1075c630
1052ff25:	85 c0                                           	test   eax,eax
1052ff27:	74 2f                                           	je     0x1052ff58
1052ff29:	8b c8                                           	mov    ecx,eax
1052ff2b:	e8 50 7b 40 00                                  	call   0x10937a80
1052ff30:	85 c0                                           	test   eax,eax
1052ff32:	74 24                                           	je     0x1052ff58
1052ff34:	8b c8                                           	mov    ecx,eax
1052ff36:	e8 15 ca 22 00                                  	call   0x1075c950
1052ff3b:	85 c0                                           	test   eax,eax
1052ff3d:	74 19                                           	je     0x1052ff58
1052ff3f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052ff41:	8b c8                                           	mov    ecx,eax
1052ff43:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052ff46:	68 89 dd 0f 11                                  	push   0x110fdd89
1052ff4b:	ff d0                                           	call   eax
1052ff4d:	85 c0                                           	test   eax,eax
1052ff4f:	74 07                                           	je     0x1052ff58
1052ff51:	8b c8                                           	mov    ecx,eax
1052ff53:	e9 18 68 23 00                                  	jmp    0x10766770
1052ff58:	c3                                              	ret
1052ff59:	cc                                              	int3
1052ff5a:	cc                                              	int3
1052ff5b:	cc                                              	int3
1052ff5c:	cc                                              	int3
1052ff5d:	cc                                              	int3
1052ff5e:	cc                                              	int3
1052ff5f:	cc                                              	int3
