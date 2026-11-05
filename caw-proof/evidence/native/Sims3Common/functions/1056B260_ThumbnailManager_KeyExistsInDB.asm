# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056b260 (ThumbnailManager_KeyExistsInDB)
Paired Ghidra pseudocode: 1056B260_ThumbnailManager_KeyExistsInDB.c
Window: [0x1056b260, 0x1056b320) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056b320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056b260: 55 8b ec 83 e4 f8 81 ec 38 01 00 00 53 56 8b 35
1056b270: 50 11 c7 10 85 f6 75 08 32 c0 5e 5b 8b e5 5d c3
1056b280: 8d 44 24 08 50 8d 4d 08 e8 23 29 ff ff 8b 4d 2c
1056b290: 8b 55 28 6a 00 6a 00 68 d7 7c c2 e1 51 8b 4d 24
1056b2a0: 52 8b 55 20 6a 00 6a 00 51 8b 4d 1c 52 8b 55 18
1056b2b0: 51 52 8b 10 83 ec 10 8b cc 89 11 8b 50 04 89 51
1056b2c0: 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8d 4c 24
1056b2d0: 54 e8 4a 46 b9 ff 8d 4c 24 18 51 8b ce e8 de b7
1056b2e0: db ff 8a d8 8b 84 24 a8 00 00 00 85 c0 74 12 3b
1056b2f0: 84 24 b8 00 00 00 74 09 50 e8 92 db 3a 00 83 c4
1056b300: 04 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74 09 50
1056b310: e8 7b db 3a 00 83 c4 04 5e 8a c3 5b 8b e5 5d c3

LINEAR DISASSEMBLY
1056b260 <.text+0x56a260>:
1056b260:	55                                              	push   ebp
1056b261:	8b ec                                           	mov    ebp,esp
1056b263:	83 e4 f8                                        	and    esp,0xfffffff8
1056b266:	81 ec 38 01 00 00                               	sub    esp,0x138
1056b26c:	53                                              	push   ebx
1056b26d:	56                                              	push   esi
1056b26e:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
1056b274:	85 f6                                           	test   esi,esi
1056b276:	75 08                                           	jne    0x1056b280
1056b278:	32 c0                                           	xor    al,al
1056b27a:	5e                                              	pop    esi
1056b27b:	5b                                              	pop    ebx
1056b27c:	8b e5                                           	mov    esp,ebp
1056b27e:	5d                                              	pop    ebp
1056b27f:	c3                                              	ret
1056b280:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1056b284:	50                                              	push   eax
1056b285:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1056b288:	e8 23 29 ff ff                                  	call   0x1055dbb0
1056b28d:	8b 4d 2c                                        	mov    ecx,DWORD PTR [ebp+0x2c]
1056b290:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
1056b293:	6a 00                                           	push   0x0
1056b295:	6a 00                                           	push   0x0
1056b297:	68 d7 7c c2 e1                                  	push   0xe1c27cd7
1056b29c:	51                                              	push   ecx
1056b29d:	8b 4d 24                                        	mov    ecx,DWORD PTR [ebp+0x24]
1056b2a0:	52                                              	push   edx
1056b2a1:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
1056b2a4:	6a 00                                           	push   0x0
1056b2a6:	6a 00                                           	push   0x0
1056b2a8:	51                                              	push   ecx
1056b2a9:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
1056b2ac:	52                                              	push   edx
1056b2ad:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
1056b2b0:	51                                              	push   ecx
1056b2b1:	52                                              	push   edx
1056b2b2:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056b2b4:	83 ec 10                                        	sub    esp,0x10
1056b2b7:	8b cc                                           	mov    ecx,esp
1056b2b9:	89 11                                           	mov    DWORD PTR [ecx],edx
1056b2bb:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1056b2be:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1056b2c1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056b2c4:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1056b2c7:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1056b2ca:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1056b2cd:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
1056b2d1:	e8 4a 46 b9 ff                                  	call   0x100ff920
1056b2d6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056b2da:	51                                              	push   ecx
1056b2db:	8b ce                                           	mov    ecx,esi
1056b2dd:	e8 de b7 db ff                                  	call   0x10326ac0
1056b2e2:	8a d8                                           	mov    bl,al
1056b2e4:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
1056b2eb:	85 c0                                           	test   eax,eax
1056b2ed:	74 12                                           	je     0x1056b301
1056b2ef:	3b 84 24 b8 00 00 00                            	cmp    eax,DWORD PTR [esp+0xb8]
1056b2f6:	74 09                                           	je     0x1056b301
1056b2f8:	50                                              	push   eax
1056b2f9:	e8 92 db 3a 00                                  	call   0x10918e90
1056b2fe:	83 c4 04                                        	add    esp,0x4
1056b301:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1056b305:	85 c0                                           	test   eax,eax
1056b307:	74 0f                                           	je     0x1056b318
1056b309:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
1056b30d:	74 09                                           	je     0x1056b318
1056b30f:	50                                              	push   eax
1056b310:	e8 7b db 3a 00                                  	call   0x10918e90
1056b315:	83 c4 04                                        	add    esp,0x4
1056b318:	5e                                              	pop    esi
1056b319:	8a c3                                           	mov    al,bl
1056b31b:	5b                                              	pop    ebx
1056b31c:	8b e5                                           	mov    esp,ebp
1056b31e:	5d                                              	pop    ebp
1056b31f:	c3                                              	ret
