# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105300d0 (Camera_IsMapViewModeEnabled)
Paired Ghidra pseudocode: 105300D0_Camera_IsMapViewModeEnabled.c
Window: [0x105300d0, 0x10530110) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105300d0: e8 5b c5 22 00 85 c0 74 2f 8b c8 e8 a0 79 40 00
105300e0: 85 c0 74 24 8b c8 e8 65 c8 22 00 85 c0 74 19 8b
105300f0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530100: 07 8a 80 b9 08 00 00 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105300d0 <.text+0x52f0d0>:
105300d0:	e8 5b c5 22 00                                  	call   0x1075c630
105300d5:	85 c0                                           	test   eax,eax
105300d7:	74 2f                                           	je     0x10530108
105300d9:	8b c8                                           	mov    ecx,eax
105300db:	e8 a0 79 40 00                                  	call   0x10937a80
105300e0:	85 c0                                           	test   eax,eax
105300e2:	74 24                                           	je     0x10530108
105300e4:	8b c8                                           	mov    ecx,eax
105300e6:	e8 65 c8 22 00                                  	call   0x1075c950
105300eb:	85 c0                                           	test   eax,eax
105300ed:	74 19                                           	je     0x10530108
105300ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
105300f1:	8b c8                                           	mov    ecx,eax
105300f3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
105300f6:	68 89 dd 0f 11                                  	push   0x110fdd89
105300fb:	ff d0                                           	call   eax
105300fd:	85 c0                                           	test   eax,eax
105300ff:	74 07                                           	je     0x10530108
10530101:	8a 80 b9 08 00 00                               	mov    al,BYTE PTR [eax+0x8b9]
10530107:	c3                                              	ret
10530108:	32 c0                                           	xor    al,al
1053010a:	c3                                              	ret
1053010b:	cc                                              	int3
1053010c:	cc                                              	int3
1053010d:	cc                                              	int3
1053010e:	cc                                              	int3
1053010f:	cc                                              	int3
