# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994540 (TextureDatabase_Create)
Paired Ghidra pseudocode: 10994540_TextureDatabase_Create.c
Window: [0x10994540, 0x109945b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109945b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994540: 56 6a 00 6a 00 6a 00 6a 00 68 c4 77 b9 10 6a 68
10994550: e8 5b 49 f8 ff 8b f0 83 c4 18 85 f6 74 41 c7 46
10994560: 04 00 00 00 00 c7 46 08 dc 59 ab 10 c7 06 3c 77
10994570: b9 10 c7 46 08 18 77 b9 10 8d 46 10 c7 46 0c 00
10994580: 00 00 00 c7 40 08 84 77 b9 10 8d 4e 20 89 00 89
10994590: 40 04 e8 79 de b8 ff 83 46 04 01 8b c6 5e c3 33
109945a0: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10994540 <.text+0x993540>:
10994540:	56                                              	push   esi
10994541:	6a 00                                           	push   0x0
10994543:	6a 00                                           	push   0x0
10994545:	6a 00                                           	push   0x0
10994547:	6a 00                                           	push   0x0
10994549:	68 c4 77 b9 10                                  	push   0x10b977c4
1099454e:	6a 68                                           	push   0x68
10994550:	e8 5b 49 f8 ff                                  	call   0x10918eb0
10994555:	8b f0                                           	mov    esi,eax
10994557:	83 c4 18                                        	add    esp,0x18
1099455a:	85 f6                                           	test   esi,esi
1099455c:	74 41                                           	je     0x1099459f
1099455e:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
10994565:	c7 46 08 dc 59 ab 10                            	mov    DWORD PTR [esi+0x8],0x10ab59dc
1099456c:	c7 06 3c 77 b9 10                               	mov    DWORD PTR [esi],0x10b9773c
10994572:	c7 46 08 18 77 b9 10                            	mov    DWORD PTR [esi+0x8],0x10b97718
10994579:	8d 46 10                                        	lea    eax,[esi+0x10]
1099457c:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
10994583:	c7 40 08 84 77 b9 10                            	mov    DWORD PTR [eax+0x8],0x10b97784
1099458a:	8d 4e 20                                        	lea    ecx,[esi+0x20]
1099458d:	89 00                                           	mov    DWORD PTR [eax],eax
1099458f:	89 40 04                                        	mov    DWORD PTR [eax+0x4],eax
10994592:	e8 79 de b8 ff                                  	call   0x10522410
10994597:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1099459b:	8b c6                                           	mov    eax,esi
1099459d:	5e                                              	pop    esi
1099459e:	c3                                              	ret
1099459f:	33 c0                                           	xor    eax,eax
109945a1:	5e                                              	pop    esi
109945a2:	c3                                              	ret
109945a3:	cc                                              	int3
109945a4:	cc                                              	int3
109945a5:	cc                                              	int3
109945a6:	cc                                              	int3
109945a7:	cc                                              	int3
109945a8:	cc                                              	int3
109945a9:	cc                                              	int3
109945aa:	cc                                              	int3
109945ab:	cc                                              	int3
109945ac:	cc                                              	int3
109945ad:	cc                                              	int3
109945ae:	cc                                              	int3
109945af:	cc                                              	int3
