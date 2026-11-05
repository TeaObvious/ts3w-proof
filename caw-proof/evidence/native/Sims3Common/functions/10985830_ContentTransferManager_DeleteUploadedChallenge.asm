# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985830 (ContentTransferManager_DeleteUploadedChallenge)
Paired Ghidra pseudocode: 10985830_ContentTransferManager_DeleteUploadedChallenge.c
Window: [0x10985830, 0x10985990) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985830: b8 9c 12 00 00 e8 b6 b0 10 00 56 6a 02 8d 8c 24
10985840: 18 02 00 00 e8 87 97 c3 ff b8 44 82 ca 10 89 44
10985850: 24 04 89 44 24 08 a1 dc 88 c7 10 85 c0 be 2c 89
10985860: b2 10 89 b4 24 14 02 00 00 c7 44 24 10 24 b3 b1
10985870: 10 c7 44 24 0c 45 82 ca 10 74 05 83 c0 f8 eb 02
10985880: 33 c0 8d 4c 24 04 51 8b 88 1c 01 00 00 6a 01 e8
10985890: dc 22 bb ff a1 dc 88 c7 10 85 c0 74 05 83 c0 f8
109858a0: eb 02 33 c0 8b 94 24 a4 12 00 00 8b 80 68 0e 00
109858b0: 00 52 50 8d 4c 24 1c 68 a8 68 b9 10 51 ff 15 28
109858c0: b6 aa 10 83 c4 10 8d 54 24 14 52 8d 8c 24 18 02
109858d0: 00 00 e8 49 a1 e5 ff 84 c0 74 74 8b 54 24 04 52
109858e0: 68 f8 03 b4 10 8d 8c 24 94 12 00 00 e8 8f a0 e5
109858f0: ff 6a 00 6a 00 6a 00 6a 00 8d 8c 24 24 02 00 00
10985900: e8 9b 9b e5 ff 84 c0 74 46 81 bc 24 30 02 00 00
10985910: c8 00 00 00 8b 44 24 04 75 39 8b 54 24 0c 2b d0
10985920: 83 fa 01 7e 0d 85 c0 74 09 50 e8 61 35 f9 ff 83
10985930: c4 04 8d 8c 24 14 02 00 00 89 b4 24 14 02 00 00
10985940: e8 2b 97 c3 ff b0 01 5e 81 c4 9c 12 00 00 c3 8b
10985950: 44 24 04 8b 4c 24 0c 2b c8 83 f9 01 7e 0d 85 c0
10985960: 74 09 50 e8 28 35 f9 ff 83 c4 04 8d 8c 24 14 02
10985970: 00 00 89 b4 24 14 02 00 00 e8 f2 96 c3 ff 32 c0
10985980: 5e 81 c4 9c 12 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985830 <.text+0x984830>:
10985830:	b8 9c 12 00 00                                  	mov    eax,0x129c
10985835:	e8 b6 b0 10 00                                  	call   0x10a908f0
1098583a:	56                                              	push   esi
1098583b:	6a 02                                           	push   0x2
1098583d:	8d 8c 24 18 02 00 00                            	lea    ecx,[esp+0x218]
10985844:	e8 87 97 c3 ff                                  	call   0x105befd0
10985849:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1098584e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10985852:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10985856:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
1098585b:	85 c0                                           	test   eax,eax
1098585d:	be 2c 89 b2 10                                  	mov    esi,0x10b2892c
10985862:	89 b4 24 14 02 00 00                            	mov    DWORD PTR [esp+0x214],esi
10985869:	c7 44 24 10 24 b3 b1 10                         	mov    DWORD PTR [esp+0x10],0x10b1b324
10985871:	c7 44 24 0c 45 82 ca 10                         	mov    DWORD PTR [esp+0xc],0x10ca8245
10985879:	74 05                                           	je     0x10985880
1098587b:	83 c0 f8                                        	add    eax,0xfffffff8
1098587e:	eb 02                                           	jmp    0x10985882
10985880:	33 c0                                           	xor    eax,eax
10985882:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10985886:	51                                              	push   ecx
10985887:	8b 88 1c 01 00 00                               	mov    ecx,DWORD PTR [eax+0x11c]
1098588d:	6a 01                                           	push   0x1
1098588f:	e8 dc 22 bb ff                                  	call   0x10537b70
10985894:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
10985899:	85 c0                                           	test   eax,eax
1098589b:	74 05                                           	je     0x109858a2
1098589d:	83 c0 f8                                        	add    eax,0xfffffff8
109858a0:	eb 02                                           	jmp    0x109858a4
109858a2:	33 c0                                           	xor    eax,eax
109858a4:	8b 94 24 a4 12 00 00                            	mov    edx,DWORD PTR [esp+0x12a4]
109858ab:	8b 80 68 0e 00 00                               	mov    eax,DWORD PTR [eax+0xe68]
109858b1:	52                                              	push   edx
109858b2:	50                                              	push   eax
109858b3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
109858b7:	68 a8 68 b9 10                                  	push   0x10b968a8
109858bc:	51                                              	push   ecx
109858bd:	ff 15 28 b6 aa 10                               	call   DWORD PTR ds:0x10aab628
109858c3:	83 c4 10                                        	add    esp,0x10
109858c6:	8d 54 24 14                                     	lea    edx,[esp+0x14]
109858ca:	52                                              	push   edx
109858cb:	8d 8c 24 18 02 00 00                            	lea    ecx,[esp+0x218]
109858d2:	e8 49 a1 e5 ff                                  	call   0x107dfa20
109858d7:	84 c0                                           	test   al,al
109858d9:	74 74                                           	je     0x1098594f
109858db:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
109858df:	52                                              	push   edx
109858e0:	68 f8 03 b4 10                                  	push   0x10b403f8
109858e5:	8d 8c 24 94 12 00 00                            	lea    ecx,[esp+0x1294]
109858ec:	e8 8f a0 e5 ff                                  	call   0x107df980
109858f1:	6a 00                                           	push   0x0
109858f3:	6a 00                                           	push   0x0
109858f5:	6a 00                                           	push   0x0
109858f7:	6a 00                                           	push   0x0
109858f9:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
10985900:	e8 9b 9b e5 ff                                  	call   0x107df4a0
10985905:	84 c0                                           	test   al,al
10985907:	74 46                                           	je     0x1098594f
10985909:	81 bc 24 30 02 00 00 c8 00 00 00                	cmp    DWORD PTR [esp+0x230],0xc8
10985914:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10985918:	75 39                                           	jne    0x10985953
1098591a:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098591e:	2b d0                                           	sub    edx,eax
10985920:	83 fa 01                                        	cmp    edx,0x1
10985923:	7e 0d                                           	jle    0x10985932
10985925:	85 c0                                           	test   eax,eax
10985927:	74 09                                           	je     0x10985932
10985929:	50                                              	push   eax
1098592a:	e8 61 35 f9 ff                                  	call   0x10918e90
1098592f:	83 c4 04                                        	add    esp,0x4
10985932:	8d 8c 24 14 02 00 00                            	lea    ecx,[esp+0x214]
10985939:	89 b4 24 14 02 00 00                            	mov    DWORD PTR [esp+0x214],esi
10985940:	e8 2b 97 c3 ff                                  	call   0x105bf070
10985945:	b0 01                                           	mov    al,0x1
10985947:	5e                                              	pop    esi
10985948:	81 c4 9c 12 00 00                               	add    esp,0x129c
1098594e:	c3                                              	ret
1098594f:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10985953:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10985957:	2b c8                                           	sub    ecx,eax
10985959:	83 f9 01                                        	cmp    ecx,0x1
1098595c:	7e 0d                                           	jle    0x1098596b
1098595e:	85 c0                                           	test   eax,eax
10985960:	74 09                                           	je     0x1098596b
10985962:	50                                              	push   eax
10985963:	e8 28 35 f9 ff                                  	call   0x10918e90
10985968:	83 c4 04                                        	add    esp,0x4
1098596b:	8d 8c 24 14 02 00 00                            	lea    ecx,[esp+0x214]
10985972:	89 b4 24 14 02 00 00                            	mov    DWORD PTR [esp+0x214],esi
10985979:	e8 f2 96 c3 ff                                  	call   0x105bf070
1098597e:	32 c0                                           	xor    al,al
10985980:	5e                                              	pop    esi
10985981:	81 c4 9c 12 00 00                               	add    esp,0x129c
10985987:	c3                                              	ret
10985988:	cc                                              	int3
10985989:	cc                                              	int3
1098598a:	cc                                              	int3
1098598b:	cc                                              	int3
1098598c:	cc                                              	int3
1098598d:	cc                                              	int3
1098598e:	cc                                              	int3
1098598f:	cc                                              	int3
