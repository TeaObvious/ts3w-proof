# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998360 (WorldWrap_IsThumbnailValidStatic)
Paired Ghidra pseudocode: 10998360_WorldWrap_IsThumbnailValidStatic.c
Window: [0x10998360, 0x109983c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x109983c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998360: 81 ec a0 00 00 00 8d 0c 24 e8 c2 3c a0 ff 8b 8c
10998370: 24 a4 00 00 00 6a 01 8d 44 24 04 50 51 e8 0e ff
10998380: ff ff 83 c4 0c 84 c0 8d 0c 24 75 0e e8 5f 3d a0
10998390: ff 32 c0 81 c4 a0 00 00 00 c3 83 7c 24 68 00 53
109983a0: 0f 95 c3 e8 48 3d a0 ff 8a c3 5b 81 c4 a0 00 00
109983b0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998360 <.text+0x997360>:
10998360:	81 ec a0 00 00 00                               	sub    esp,0xa0
10998366:	8d 0c 24                                        	lea    ecx,[esp]
10998369:	e8 c2 3c a0 ff                                  	call   0x1039c030
1099836e:	8b 8c 24 a4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa4]
10998375:	6a 01                                           	push   0x1
10998377:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1099837b:	50                                              	push   eax
1099837c:	51                                              	push   ecx
1099837d:	e8 0e ff ff ff                                  	call   0x10998290
10998382:	83 c4 0c                                        	add    esp,0xc
10998385:	84 c0                                           	test   al,al
10998387:	8d 0c 24                                        	lea    ecx,[esp]
1099838a:	75 0e                                           	jne    0x1099839a
1099838c:	e8 5f 3d a0 ff                                  	call   0x1039c0f0
10998391:	32 c0                                           	xor    al,al
10998393:	81 c4 a0 00 00 00                               	add    esp,0xa0
10998399:	c3                                              	ret
1099839a:	83 7c 24 68 00                                  	cmp    DWORD PTR [esp+0x68],0x0
1099839f:	53                                              	push   ebx
109983a0:	0f 95 c3                                        	setne  bl
109983a3:	e8 48 3d a0 ff                                  	call   0x1039c0f0
109983a8:	8a c3                                           	mov    al,bl
109983aa:	5b                                              	pop    ebx
109983ab:	81 c4 a0 00 00 00                               	add    esp,0xa0
109983b1:	c3                                              	ret
109983b2:	cc                                              	int3
109983b3:	cc                                              	int3
109983b4:	cc                                              	int3
109983b5:	cc                                              	int3
109983b6:	cc                                              	int3
109983b7:	cc                                              	int3
109983b8:	cc                                              	int3
109983b9:	cc                                              	int3
109983ba:	cc                                              	int3
109983bb:	cc                                              	int3
109983bc:	cc                                              	int3
109983bd:	cc                                              	int3
109983be:	cc                                              	int3
109983bf:	cc                                              	int3
