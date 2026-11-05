# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109998a0 (WorldWrap_GetThumbnailFilePathStatic)
Paired Ghidra pseudocode: 109998A0_WorldWrap_GetThumbnailFilePathStatic.c
Window: [0x109998a0, 0x10999910) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109998a0: 81 ec a0 00 00 00 8d 0c 24 e8 82 27 a0 ff 8b 8c
109998b0: 24 a4 00 00 00 6a 00 8d 44 24 04 50 51 e8 ce e9
109998c0: ff ff 83 c4 0c 84 c0 75 11 8d 0c 24 e8 1f 28 a0
109998d0: ff 33 c0 81 c4 a0 00 00 00 c3 8b 4c 24 40 8b c1
109998e0: 2b 44 24 44 56 f7 d8 1b c0 23 c1 50 ff 15 c4 b6
109998f0: aa 10 8d 4c 24 04 8b f0 e8 f3 27 a0 ff 8b c6 5e
10999900: 81 c4 a0 00 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109998a0 <.text+0x9988a0>:
109998a0:	81 ec a0 00 00 00                               	sub    esp,0xa0
109998a6:	8d 0c 24                                        	lea    ecx,[esp]
109998a9:	e8 82 27 a0 ff                                  	call   0x1039c030
109998ae:	8b 8c 24 a4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa4]
109998b5:	6a 00                                           	push   0x0
109998b7:	8d 44 24 04                                     	lea    eax,[esp+0x4]
109998bb:	50                                              	push   eax
109998bc:	51                                              	push   ecx
109998bd:	e8 ce e9 ff ff                                  	call   0x10998290
109998c2:	83 c4 0c                                        	add    esp,0xc
109998c5:	84 c0                                           	test   al,al
109998c7:	75 11                                           	jne    0x109998da
109998c9:	8d 0c 24                                        	lea    ecx,[esp]
109998cc:	e8 1f 28 a0 ff                                  	call   0x1039c0f0
109998d1:	33 c0                                           	xor    eax,eax
109998d3:	81 c4 a0 00 00 00                               	add    esp,0xa0
109998d9:	c3                                              	ret
109998da:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
109998de:	8b c1                                           	mov    eax,ecx
109998e0:	2b 44 24 44                                     	sub    eax,DWORD PTR [esp+0x44]
109998e4:	56                                              	push   esi
109998e5:	f7 d8                                           	neg    eax
109998e7:	1b c0                                           	sbb    eax,eax
109998e9:	23 c1                                           	and    eax,ecx
109998eb:	50                                              	push   eax
109998ec:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109998f2:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
109998f6:	8b f0                                           	mov    esi,eax
109998f8:	e8 f3 27 a0 ff                                  	call   0x1039c0f0
109998fd:	8b c6                                           	mov    eax,esi
109998ff:	5e                                              	pop    esi
10999900:	81 c4 a0 00 00 00                               	add    esp,0xa0
10999906:	c3                                              	ret
10999907:	cc                                              	int3
10999908:	cc                                              	int3
10999909:	cc                                              	int3
1099990a:	cc                                              	int3
1099990b:	cc                                              	int3
1099990c:	cc                                              	int3
1099990d:	cc                                              	int3
1099990e:	cc                                              	int3
1099990f:	cc                                              	int3
