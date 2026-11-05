# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105813d0 (World_GetObjectsImpl)
Paired Ghidra pseudocode: 105813D0_World_GetObjectsImpl.c
Window: [0x105813d0, 0x105814f0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x105814f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105813d0: 83 ec 20 53 e8 47 9d fd ff 8b 0d c4 00 c7 10 85
105813e0: c9 8b d8 0f 84 f4 00 00 00 8b 44 24 2c 8b 54 24
105813f0: 28 6a 00 50 52 e8 16 5c cb ff 85 c0 0f 84 db 00
10581400: 00 00 8a 4c 24 30 8a 54 24 34 56 57 6a 05 6a 00
10581410: 6a 0f 6a 01 88 4c 24 1c 8a 4c 24 50 6a 00 88 54
10581420: 24 21 6a 00 88 4c 24 26 8d 54 24 34 52 8d 4c 24
10581430: 28 51 8b c8 c7 44 24 3c 00 00 00 00 c7 44 24 40
10581440: 00 00 00 00 c7 44 24 44 00 00 00 00 c7 44 24 48
10581450: 6c 58 ab 10 e8 97 c0 b0 ff 8b 74 24 20 2b 74 24
10581460: 1c 8b 13 8b 92 88 00 00 00 c1 fe 02 56 8d 44 24
10581470: 14 50 8b cb ff d2 33 ff 85 f6 7e 43 8d 64 24 00
10581480: 8b 44 24 1c 8b 0c b8 85 c9 74 08 8b 41 08 8b 49
10581490: 0c eb 04 33 c0 33 c9 8b 13 8b 92 a0 00 00 00 6a
105814a0: 01 89 44 24 18 57 89 4c 24 20 8d 44 24 1c 50 8d
105814b0: 4c 24 1c 51 8b cb ff d2 83 c7 01 3b fe 7c c1 8b
105814c0: 44 24 1c 85 c0 8b 74 24 10 74 09 50 e8 bf 79 39
105814d0: 00 83 c4 04 5f 8b c6 5e 5b 83 c4 20 c3 33 c0 5b
105814e0: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105813d0 <.text+0x5803d0>:
105813d0:	83 ec 20                                        	sub    esp,0x20
105813d3:	53                                              	push   ebx
105813d4:	e8 47 9d fd ff                                  	call   0x1055b120
105813d9:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105813df:	85 c9                                           	test   ecx,ecx
105813e1:	8b d8                                           	mov    ebx,eax
105813e3:	0f 84 f4 00 00 00                               	je     0x105814dd
105813e9:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105813ed:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
105813f1:	6a 00                                           	push   0x0
105813f3:	50                                              	push   eax
105813f4:	52                                              	push   edx
105813f5:	e8 16 5c cb ff                                  	call   0x10237010
105813fa:	85 c0                                           	test   eax,eax
105813fc:	0f 84 db 00 00 00                               	je     0x105814dd
10581402:	8a 4c 24 30                                     	mov    cl,BYTE PTR [esp+0x30]
10581406:	8a 54 24 34                                     	mov    dl,BYTE PTR [esp+0x34]
1058140a:	56                                              	push   esi
1058140b:	57                                              	push   edi
1058140c:	6a 05                                           	push   0x5
1058140e:	6a 00                                           	push   0x0
10581410:	6a 0f                                           	push   0xf
10581412:	6a 01                                           	push   0x1
10581414:	88 4c 24 1c                                     	mov    BYTE PTR [esp+0x1c],cl
10581418:	8a 4c 24 50                                     	mov    cl,BYTE PTR [esp+0x50]
1058141c:	6a 00                                           	push   0x0
1058141e:	88 54 24 21                                     	mov    BYTE PTR [esp+0x21],dl
10581422:	6a 00                                           	push   0x0
10581424:	88 4c 24 26                                     	mov    BYTE PTR [esp+0x26],cl
10581428:	8d 54 24 34                                     	lea    edx,[esp+0x34]
1058142c:	52                                              	push   edx
1058142d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10581431:	51                                              	push   ecx
10581432:	8b c8                                           	mov    ecx,eax
10581434:	c7 44 24 3c 00 00 00 00                         	mov    DWORD PTR [esp+0x3c],0x0
1058143c:	c7 44 24 40 00 00 00 00                         	mov    DWORD PTR [esp+0x40],0x0
10581444:	c7 44 24 44 00 00 00 00                         	mov    DWORD PTR [esp+0x44],0x0
1058144c:	c7 44 24 48 6c 58 ab 10                         	mov    DWORD PTR [esp+0x48],0x10ab586c
10581454:	e8 97 c0 b0 ff                                  	call   0x1008d4f0
10581459:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1058145d:	2b 74 24 1c                                     	sub    esi,DWORD PTR [esp+0x1c]
10581461:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10581463:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
10581469:	c1 fe 02                                        	sar    esi,0x2
1058146c:	56                                              	push   esi
1058146d:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10581471:	50                                              	push   eax
10581472:	8b cb                                           	mov    ecx,ebx
10581474:	ff d2                                           	call   edx
10581476:	33 ff                                           	xor    edi,edi
10581478:	85 f6                                           	test   esi,esi
1058147a:	7e 43                                           	jle    0x105814bf
1058147c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
10581480:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10581484:	8b 0c b8                                        	mov    ecx,DWORD PTR [eax+edi*4]
10581487:	85 c9                                           	test   ecx,ecx
10581489:	74 08                                           	je     0x10581493
1058148b:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1058148e:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
10581491:	eb 04                                           	jmp    0x10581497
10581493:	33 c0                                           	xor    eax,eax
10581495:	33 c9                                           	xor    ecx,ecx
10581497:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10581499:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
1058149f:	6a 01                                           	push   0x1
105814a1:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
105814a5:	57                                              	push   edi
105814a6:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
105814aa:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
105814ae:	50                                              	push   eax
105814af:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105814b3:	51                                              	push   ecx
105814b4:	8b cb                                           	mov    ecx,ebx
105814b6:	ff d2                                           	call   edx
105814b8:	83 c7 01                                        	add    edi,0x1
105814bb:	3b fe                                           	cmp    edi,esi
105814bd:	7c c1                                           	jl     0x10581480
105814bf:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105814c3:	85 c0                                           	test   eax,eax
105814c5:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
105814c9:	74 09                                           	je     0x105814d4
105814cb:	50                                              	push   eax
105814cc:	e8 bf 79 39 00                                  	call   0x10918e90
105814d1:	83 c4 04                                        	add    esp,0x4
105814d4:	5f                                              	pop    edi
105814d5:	8b c6                                           	mov    eax,esi
105814d7:	5e                                              	pop    esi
105814d8:	5b                                              	pop    ebx
105814d9:	83 c4 20                                        	add    esp,0x20
105814dc:	c3                                              	ret
105814dd:	33 c0                                           	xor    eax,eax
105814df:	5b                                              	pop    ebx
105814e0:	83 c4 20                                        	add    esp,0x20
105814e3:	c3                                              	ret
105814e4:	cc                                              	int3
105814e5:	cc                                              	int3
105814e6:	cc                                              	int3
105814e7:	cc                                              	int3
105814e8:	cc                                              	int3
105814e9:	cc                                              	int3
105814ea:	cc                                              	int3
105814eb:	cc                                              	int3
105814ec:	cc                                              	int3
105814ed:	cc                                              	int3
105814ee:	cc                                              	int3
105814ef:	cc                                              	int3
