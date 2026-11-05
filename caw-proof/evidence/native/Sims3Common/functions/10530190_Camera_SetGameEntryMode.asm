# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530190 (Camera_SetGameEntryMode)
Paired Ghidra pseudocode: 10530190_Camera_SetGameEntryMode.c
Window: [0x10530190, 0x105301d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105301d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530190: e8 9b c4 22 00 85 c0 74 34 8b c8 e8 e0 78 40 00
105301a0: 85 c0 74 29 8b c8 e8 a5 c7 22 00 85 c0 74 1e 8b
105301b0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
105301c0: 0c 8b 4c 24 04 51 8b c8 e8 13 28 23 00 c3 cc cc

LINEAR DISASSEMBLY
10530190 <.text+0x52f190>:
10530190:	e8 9b c4 22 00                                  	call   0x1075c630
10530195:	85 c0                                           	test   eax,eax
10530197:	74 34                                           	je     0x105301cd
10530199:	8b c8                                           	mov    ecx,eax
1053019b:	e8 e0 78 40 00                                  	call   0x10937a80
105301a0:	85 c0                                           	test   eax,eax
105301a2:	74 29                                           	je     0x105301cd
105301a4:	8b c8                                           	mov    ecx,eax
105301a6:	e8 a5 c7 22 00                                  	call   0x1075c950
105301ab:	85 c0                                           	test   eax,eax
105301ad:	74 1e                                           	je     0x105301cd
105301af:	8b 10                                           	mov    edx,DWORD PTR [eax]
105301b1:	8b c8                                           	mov    ecx,eax
105301b3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
105301b6:	68 89 dd 0f 11                                  	push   0x110fdd89
105301bb:	ff d0                                           	call   eax
105301bd:	85 c0                                           	test   eax,eax
105301bf:	74 0c                                           	je     0x105301cd
105301c1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105301c5:	51                                              	push   ecx
105301c6:	8b c8                                           	mov    ecx,eax
105301c8:	e8 13 28 23 00                                  	call   0x107629e0
105301cd:	c3                                              	ret
105301ce:	cc                                              	int3
105301cf:	cc                                              	int3
