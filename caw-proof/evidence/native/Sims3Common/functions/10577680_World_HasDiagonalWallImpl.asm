# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577680 (World_HasDiagonalWallImpl)
Paired Ghidra pseudocode: 10577680_World_HasDiagonalWallImpl.c
Window: [0x10577680, 0x105776e0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105776e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577680: 51 8b 0d c4 00 c7 10 85 c9 74 43 8b 44 24 0c 8b
10577690: 54 24 08 6a 00 50 52 e8 74 f9 cb ff 85 c0 74 2e
105776a0: 8b 80 98 02 00 00 85 c0 74 24 8a 4c 24 10 8a 54
105776b0: 24 14 88 0c 24 8a 4c 24 18 88 54 24 01 8d 14 24
105776c0: 88 4c 24 02 52 8b c8 e8 a4 b7 b9 ff 59 c3 32 c0
105776d0: 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577680 <.text+0x576680>:
10577680:	51                                              	push   ecx
10577681:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577687:	85 c9                                           	test   ecx,ecx
10577689:	74 43                                           	je     0x105776ce
1057768b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057768f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10577693:	6a 00                                           	push   0x0
10577695:	50                                              	push   eax
10577696:	52                                              	push   edx
10577697:	e8 74 f9 cb ff                                  	call   0x10237010
1057769c:	85 c0                                           	test   eax,eax
1057769e:	74 2e                                           	je     0x105776ce
105776a0:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
105776a6:	85 c0                                           	test   eax,eax
105776a8:	74 24                                           	je     0x105776ce
105776aa:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
105776ae:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
105776b2:	88 0c 24                                        	mov    BYTE PTR [esp],cl
105776b5:	8a 4c 24 18                                     	mov    cl,BYTE PTR [esp+0x18]
105776b9:	88 54 24 01                                     	mov    BYTE PTR [esp+0x1],dl
105776bd:	8d 14 24                                        	lea    edx,[esp]
105776c0:	88 4c 24 02                                     	mov    BYTE PTR [esp+0x2],cl
105776c4:	52                                              	push   edx
105776c5:	8b c8                                           	mov    ecx,eax
105776c7:	e8 a4 b7 b9 ff                                  	call   0x10112e70
105776cc:	59                                              	pop    ecx
105776cd:	c3                                              	ret
105776ce:	32 c0                                           	xor    al,al
105776d0:	59                                              	pop    ecx
105776d1:	c3                                              	ret
105776d2:	cc                                              	int3
105776d3:	cc                                              	int3
105776d4:	cc                                              	int3
105776d5:	cc                                              	int3
105776d6:	cc                                              	int3
105776d7:	cc                                              	int3
105776d8:	cc                                              	int3
105776d9:	cc                                              	int3
105776da:	cc                                              	int3
105776db:	cc                                              	int3
105776dc:	cc                                              	int3
105776dd:	cc                                              	int3
105776de:	cc                                              	int3
105776df:	cc                                              	int3
