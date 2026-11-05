# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105301d0 (Camera_SetTutorialMode)
Paired Ghidra pseudocode: 105301D0_Camera_SetTutorialMode.c
Window: [0x105301d0, 0x10530210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105301d0: e8 5b c4 22 00 85 c0 74 34 8b c8 e8 a0 78 40 00
105301e0: 85 c0 74 29 8b c8 e8 65 c7 22 00 85 c0 74 1e 8b
105301f0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530200: 0c 8b 4c 24 04 51 8b c8 e8 e3 27 23 00 c3 cc cc

LINEAR DISASSEMBLY
105301d0 <.text+0x52f1d0>:
105301d0:	e8 5b c4 22 00                                  	call   0x1075c630
105301d5:	85 c0                                           	test   eax,eax
105301d7:	74 34                                           	je     0x1053020d
105301d9:	8b c8                                           	mov    ecx,eax
105301db:	e8 a0 78 40 00                                  	call   0x10937a80
105301e0:	85 c0                                           	test   eax,eax
105301e2:	74 29                                           	je     0x1053020d
105301e4:	8b c8                                           	mov    ecx,eax
105301e6:	e8 65 c7 22 00                                  	call   0x1075c950
105301eb:	85 c0                                           	test   eax,eax
105301ed:	74 1e                                           	je     0x1053020d
105301ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
105301f1:	8b c8                                           	mov    ecx,eax
105301f3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
105301f6:	68 89 dd 0f 11                                  	push   0x110fdd89
105301fb:	ff d0                                           	call   eax
105301fd:	85 c0                                           	test   eax,eax
105301ff:	74 0c                                           	je     0x1053020d
10530201:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10530205:	51                                              	push   ecx
10530206:	8b c8                                           	mov    ecx,eax
10530208:	e8 e3 27 23 00                                  	call   0x107629f0
1053020d:	c3                                              	ret
1053020e:	cc                                              	int3
1053020f:	cc                                              	int3
