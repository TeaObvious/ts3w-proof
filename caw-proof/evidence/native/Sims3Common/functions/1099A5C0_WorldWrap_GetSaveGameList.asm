# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a5c0 (WorldWrap_GetSaveGameList)
Paired Ghidra pseudocode: 1099A5C0_WorldWrap_GetSaveGameList.c
Window: [0x1099a5c0, 0x1099a6c0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a5c0: 8b 4c 24 04 83 ec 10 56 33 f6 3b ce 75 07 33 c0
1099a5d0: 5e 83 c4 10 c3 53 57 e8 34 ae 0b 00 8b f8 e8 7d
1099a5e0: 48 6d ff 3b fe 0f 84 c5 00 00 00 3b c6 0f 84 bd
1099a5f0: 00 00 00 8d 4c 24 0c 51 57 8b c8 89 74 24 14 89
1099a600: 74 24 18 89 74 24 1c c7 44 24 20 98 7c b9 10 e8
1099a610: 7c 9b 6d ff 84 c0 74 74 8b 44 24 0c 8b 5c 24 10
1099a620: 3b c3 74 70 2b d8 c1 fb 04 53 56 6a 08 ff 15 e4
1099a630: b6 aa 10 8b f8 3b fe 89 7c 24 20 74 4f 57 ff 15
1099a640: e8 b6 aa 10 85 c0 7c 44 3b de 55 8b 6f 0c 76 22
1099a650: 33 ff 8b 54 24 10 8b 04 17 50 ff 15 c4 b6 aa 10
1099a660: 89 44 b5 00 83 c6 01 83 c7 10 3b f3 72 e4 8b 7c
1099a670: 24 24 57 ff 15 ec b6 aa 10 8d 4c 24 10 e8 5e 45
1099a680: 91 ff 5d 8b c7 5f 5b 5e 83 c4 10 c3 8b 5c 24 10
1099a690: 8b 44 24 0c 53 50 8d 4c 24 14 e8 61 64 b9 ff 8b
1099a6a0: 44 24 0c 3b c6 74 09 50 e8 e3 e7 f7 ff 83 c4 04
1099a6b0: 5f 5b 33 c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1099a5c0 <.text+0x9995c0>:
1099a5c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1099a5c4:	83 ec 10                                        	sub    esp,0x10
1099a5c7:	56                                              	push   esi
1099a5c8:	33 f6                                           	xor    esi,esi
1099a5ca:	3b ce                                           	cmp    ecx,esi
1099a5cc:	75 07                                           	jne    0x1099a5d5
1099a5ce:	33 c0                                           	xor    eax,eax
1099a5d0:	5e                                              	pop    esi
1099a5d1:	83 c4 10                                        	add    esp,0x10
1099a5d4:	c3                                              	ret
1099a5d5:	53                                              	push   ebx
1099a5d6:	57                                              	push   edi
1099a5d7:	e8 34 ae 0b 00                                  	call   0x10a55410
1099a5dc:	8b f8                                           	mov    edi,eax
1099a5de:	e8 7d 48 6d ff                                  	call   0x1006ee60
1099a5e3:	3b fe                                           	cmp    edi,esi
1099a5e5:	0f 84 c5 00 00 00                               	je     0x1099a6b0
1099a5eb:	3b c6                                           	cmp    eax,esi
1099a5ed:	0f 84 bd 00 00 00                               	je     0x1099a6b0
1099a5f3:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1099a5f7:	51                                              	push   ecx
1099a5f8:	57                                              	push   edi
1099a5f9:	8b c8                                           	mov    ecx,eax
1099a5fb:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
1099a5ff:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
1099a603:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1099a607:	c7 44 24 20 98 7c b9 10                         	mov    DWORD PTR [esp+0x20],0x10b97c98
1099a60f:	e8 7c 9b 6d ff                                  	call   0x10074190
1099a614:	84 c0                                           	test   al,al
1099a616:	74 74                                           	je     0x1099a68c
1099a618:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1099a61c:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1099a620:	3b c3                                           	cmp    eax,ebx
1099a622:	74 70                                           	je     0x1099a694
1099a624:	2b d8                                           	sub    ebx,eax
1099a626:	c1 fb 04                                        	sar    ebx,0x4
1099a629:	53                                              	push   ebx
1099a62a:	56                                              	push   esi
1099a62b:	6a 08                                           	push   0x8
1099a62d:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
1099a633:	8b f8                                           	mov    edi,eax
1099a635:	3b fe                                           	cmp    edi,esi
1099a637:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1099a63b:	74 4f                                           	je     0x1099a68c
1099a63d:	57                                              	push   edi
1099a63e:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
1099a644:	85 c0                                           	test   eax,eax
1099a646:	7c 44                                           	jl     0x1099a68c
1099a648:	3b de                                           	cmp    ebx,esi
1099a64a:	55                                              	push   ebp
1099a64b:	8b 6f 0c                                        	mov    ebp,DWORD PTR [edi+0xc]
1099a64e:	76 22                                           	jbe    0x1099a672
1099a650:	33 ff                                           	xor    edi,edi
1099a652:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1099a656:	8b 04 17                                        	mov    eax,DWORD PTR [edi+edx*1]
1099a659:	50                                              	push   eax
1099a65a:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1099a660:	89 44 b5 00                                     	mov    DWORD PTR [ebp+esi*4+0x0],eax
1099a664:	83 c6 01                                        	add    esi,0x1
1099a667:	83 c7 10                                        	add    edi,0x10
1099a66a:	3b f3                                           	cmp    esi,ebx
1099a66c:	72 e4                                           	jb     0x1099a652
1099a66e:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
1099a672:	57                                              	push   edi
1099a673:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
1099a679:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1099a67d:	e8 5e 45 91 ff                                  	call   0x102aebe0
1099a682:	5d                                              	pop    ebp
1099a683:	8b c7                                           	mov    eax,edi
1099a685:	5f                                              	pop    edi
1099a686:	5b                                              	pop    ebx
1099a687:	5e                                              	pop    esi
1099a688:	83 c4 10                                        	add    esp,0x10
1099a68b:	c3                                              	ret
1099a68c:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1099a690:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1099a694:	53                                              	push   ebx
1099a695:	50                                              	push   eax
1099a696:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1099a69a:	e8 61 64 b9 ff                                  	call   0x10530b00
1099a69f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1099a6a3:	3b c6                                           	cmp    eax,esi
1099a6a5:	74 09                                           	je     0x1099a6b0
1099a6a7:	50                                              	push   eax
1099a6a8:	e8 e3 e7 f7 ff                                  	call   0x10918e90
1099a6ad:	83 c4 04                                        	add    esp,0x4
1099a6b0:	5f                                              	pop    edi
1099a6b1:	5b                                              	pop    ebx
1099a6b2:	33 c0                                           	xor    eax,eax
1099a6b4:	5e                                              	pop    esi
1099a6b5:	83 c4 10                                        	add    esp,0x10
1099a6b8:	c3                                              	ret
1099a6b9:	cc                                              	int3
1099a6ba:	cc                                              	int3
1099a6bb:	cc                                              	int3
1099a6bc:	cc                                              	int3
1099a6bd:	cc                                              	int3
1099a6be:	cc                                              	int3
1099a6bf:	cc                                              	int3
