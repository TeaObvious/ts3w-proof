# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a390 (World_CapturePhoto)
Paired Ghidra pseudocode: 1058A390_World_CapturePhoto.c
Window: [0x1058a390, 0x1058a540) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a390: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 53 56 57 e8
1058a3a0: dc 2d 24 00 8b d8 89 5c 24 1c e8 71 0d fd ff 33
1058a3b0: ff 3b df 8b f0 0f 84 72 01 00 00 3b f7 0f 84 6a
1058a3c0: 01 00 00 8b 45 0c 3b c7 89 7c 24 20 89 7c 24 24
1058a3d0: 89 7c 24 28 c7 44 24 2c a8 1c b2 10 74 55 8b 16
1058a3e0: 8b 52 68 8d 4c 24 10 51 8d 4c 24 18 51 50 8b ce
1058a3f0: 89 7c 24 20 89 7c 24 1c ff d2 8b 44 24 10 50 8d
1058a400: 4c 24 24 e8 b8 cb aa ff 33 c0 39 7c 24 10 7e 23
1058a410: 8b 4c 24 14 8b 14 c1 8b 7c 24 20 89 14 c7 8b 4c
1058a420: c1 04 8b 54 24 20 89 4c c2 04 83 c0 01 3b 44 24
1058a430: 10 7c dd 8b 06 8b 90 18 01 00 00 8b ce ff d2 8b
1058a440: 4d 10 6a 00 51 8b da 6a ff 8b f8 8b 06 8b 90 20
1058a450: 01 00 00 53 57 8b ce ff d2 8d 44 24 30 50 8d 4c
1058a460: 24 1c 51 8d 54 24 48 52 8d 44 24 5c 50 8d 4c 24
1058a470: 30 51 e8 69 67 1e 00 d9 44 24 2c 83 c4 14 53 57
1058a480: 8d 54 24 38 52 8b 55 08 51 d9 1c 24 8d 44 24 50
1058a490: 50 8d 4c 24 64 51 8b 4c 24 34 52 8d 44 24 3c 50
1058a4a0: e8 db 1c 24 00 84 c0 74 0e 8b 16 8b 82 1c 01 00
1058a4b0: 00 8b ce ff d0 eb 65 6a 01 6a 10 33 c0 8d 4c 24
1058a4c0: 68 51 50 68 87 00 00 00 8d 8c 24 84 00 00 00 c7
1058a4d0: 84 24 84 00 00 00 b4 a5 ac 10 66 89 84 24 8c 00
1058a4e0: 00 00 66 89 84 24 8e 00 00 00 e8 a1 e6 39 00 8b
1058a4f0: 16 8b 92 24 01 00 00 8d 44 24 70 50 53 57 8b ce
1058a500: ff d2 f6 44 24 78 04 c7 44 24 70 b4 a5 ac 10 74
1058a510: 0b 6a 00 8d 4c 24 74 e8 74 e5 39 00 8b 44 24 20
1058a520: 85 c0 74 09 50 e8 66 e9 38 00 83 c4 04 5f 5e 5b
1058a530: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058a390 <.text+0x589390>:
1058a390:	55                                              	push   ebp
1058a391:	8b ec                                           	mov    ebp,esp
1058a393:	83 e4 f0                                        	and    esp,0xfffffff0
1058a396:	81 ec 84 00 00 00                               	sub    esp,0x84
1058a39c:	53                                              	push   ebx
1058a39d:	56                                              	push   esi
1058a39e:	57                                              	push   edi
1058a39f:	e8 dc 2d 24 00                                  	call   0x107cd180
1058a3a4:	8b d8                                           	mov    ebx,eax
1058a3a6:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
1058a3aa:	e8 71 0d fd ff                                  	call   0x1055b120
1058a3af:	33 ff                                           	xor    edi,edi
1058a3b1:	3b df                                           	cmp    ebx,edi
1058a3b3:	8b f0                                           	mov    esi,eax
1058a3b5:	0f 84 72 01 00 00                               	je     0x1058a52d
1058a3bb:	3b f7                                           	cmp    esi,edi
1058a3bd:	0f 84 6a 01 00 00                               	je     0x1058a52d
1058a3c3:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1058a3c6:	3b c7                                           	cmp    eax,edi
1058a3c8:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1058a3cc:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1058a3d0:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1058a3d4:	c7 44 24 2c a8 1c b2 10                         	mov    DWORD PTR [esp+0x2c],0x10b21ca8
1058a3dc:	74 55                                           	je     0x1058a433
1058a3de:	8b 16                                           	mov    edx,DWORD PTR [esi]
1058a3e0:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
1058a3e3:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1058a3e7:	51                                              	push   ecx
1058a3e8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1058a3ec:	51                                              	push   ecx
1058a3ed:	50                                              	push   eax
1058a3ee:	8b ce                                           	mov    ecx,esi
1058a3f0:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1058a3f4:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
1058a3f8:	ff d2                                           	call   edx
1058a3fa:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1058a3fe:	50                                              	push   eax
1058a3ff:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1058a403:	e8 b8 cb aa ff                                  	call   0x10036fc0
1058a408:	33 c0                                           	xor    eax,eax
1058a40a:	39 7c 24 10                                     	cmp    DWORD PTR [esp+0x10],edi
1058a40e:	7e 23                                           	jle    0x1058a433
1058a410:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1058a414:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
1058a417:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
1058a41b:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
1058a41e:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
1058a422:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1058a426:	89 4c c2 04                                     	mov    DWORD PTR [edx+eax*8+0x4],ecx
1058a42a:	83 c0 01                                        	add    eax,0x1
1058a42d:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
1058a431:	7c dd                                           	jl     0x1058a410
1058a433:	8b 06                                           	mov    eax,DWORD PTR [esi]
1058a435:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1058a43b:	8b ce                                           	mov    ecx,esi
1058a43d:	ff d2                                           	call   edx
1058a43f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1058a442:	6a 00                                           	push   0x0
1058a444:	51                                              	push   ecx
1058a445:	8b da                                           	mov    ebx,edx
1058a447:	6a ff                                           	push   0xffffffff
1058a449:	8b f8                                           	mov    edi,eax
1058a44b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1058a44d:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1058a453:	53                                              	push   ebx
1058a454:	57                                              	push   edi
1058a455:	8b ce                                           	mov    ecx,esi
1058a457:	ff d2                                           	call   edx
1058a459:	8d 44 24 30                                     	lea    eax,[esp+0x30]
1058a45d:	50                                              	push   eax
1058a45e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1058a462:	51                                              	push   ecx
1058a463:	8d 54 24 48                                     	lea    edx,[esp+0x48]
1058a467:	52                                              	push   edx
1058a468:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
1058a46c:	50                                              	push   eax
1058a46d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1058a471:	51                                              	push   ecx
1058a472:	e8 69 67 1e 00                                  	call   0x10770be0
1058a477:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
1058a47b:	83 c4 14                                        	add    esp,0x14
1058a47e:	53                                              	push   ebx
1058a47f:	57                                              	push   edi
1058a480:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1058a484:	52                                              	push   edx
1058a485:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1058a488:	51                                              	push   ecx
1058a489:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1058a48c:	8d 44 24 50                                     	lea    eax,[esp+0x50]
1058a490:	50                                              	push   eax
1058a491:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1058a495:	51                                              	push   ecx
1058a496:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1058a49a:	52                                              	push   edx
1058a49b:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
1058a49f:	50                                              	push   eax
1058a4a0:	e8 db 1c 24 00                                  	call   0x107cc180
1058a4a5:	84 c0                                           	test   al,al
1058a4a7:	74 0e                                           	je     0x1058a4b7
1058a4a9:	8b 16                                           	mov    edx,DWORD PTR [esi]
1058a4ab:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
1058a4b1:	8b ce                                           	mov    ecx,esi
1058a4b3:	ff d0                                           	call   eax
1058a4b5:	eb 65                                           	jmp    0x1058a51c
1058a4b7:	6a 01                                           	push   0x1
1058a4b9:	6a 10                                           	push   0x10
1058a4bb:	33 c0                                           	xor    eax,eax
1058a4bd:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1058a4c1:	51                                              	push   ecx
1058a4c2:	50                                              	push   eax
1058a4c3:	68 87 00 00 00                                  	push   0x87
1058a4c8:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
1058a4cf:	c7 84 24 84 00 00 00 b4 a5 ac 10                	mov    DWORD PTR [esp+0x84],0x10aca5b4
1058a4da:	66 89 84 24 8c 00 00 00                         	mov    WORD PTR [esp+0x8c],ax
1058a4e2:	66 89 84 24 8e 00 00 00                         	mov    WORD PTR [esp+0x8e],ax
1058a4ea:	e8 a1 e6 39 00                                  	call   0x10928b90
1058a4ef:	8b 16                                           	mov    edx,DWORD PTR [esi]
1058a4f1:	8b 92 24 01 00 00                               	mov    edx,DWORD PTR [edx+0x124]
1058a4f7:	8d 44 24 70                                     	lea    eax,[esp+0x70]
1058a4fb:	50                                              	push   eax
1058a4fc:	53                                              	push   ebx
1058a4fd:	57                                              	push   edi
1058a4fe:	8b ce                                           	mov    ecx,esi
1058a500:	ff d2                                           	call   edx
1058a502:	f6 44 24 78 04                                  	test   BYTE PTR [esp+0x78],0x4
1058a507:	c7 44 24 70 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x70],0x10aca5b4
1058a50f:	74 0b                                           	je     0x1058a51c
1058a511:	6a 00                                           	push   0x0
1058a513:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
1058a517:	e8 74 e5 39 00                                  	call   0x10928a90
1058a51c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058a520:	85 c0                                           	test   eax,eax
1058a522:	74 09                                           	je     0x1058a52d
1058a524:	50                                              	push   eax
1058a525:	e8 66 e9 38 00                                  	call   0x10918e90
1058a52a:	83 c4 04                                        	add    esp,0x4
1058a52d:	5f                                              	pop    edi
1058a52e:	5e                                              	pop    esi
1058a52f:	5b                                              	pop    ebx
1058a530:	8b e5                                           	mov    esp,ebp
1058a532:	5d                                              	pop    ebp
1058a533:	c3                                              	ret
1058a534:	cc                                              	int3
1058a535:	cc                                              	int3
1058a536:	cc                                              	int3
1058a537:	cc                                              	int3
1058a538:	cc                                              	int3
1058a539:	cc                                              	int3
1058a53a:	cc                                              	int3
1058a53b:	cc                                              	int3
1058a53c:	cc                                              	int3
1058a53d:	cc                                              	int3
1058a53e:	cc                                              	int3
1058a53f:	cc                                              	int3
