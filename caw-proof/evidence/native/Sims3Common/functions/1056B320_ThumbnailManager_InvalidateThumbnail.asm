# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056b320 (ThumbnailManager_InvalidateThumbnail)
Paired Ghidra pseudocode: 1056B320_ThumbnailManager_InvalidateThumbnail.c
Window: [0x1056b320, 0x1056b410) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056b410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056b320: 55 8b ec 83 e4 f8 81 ec 3c 01 00 00 53 8b 1d 50
1056b330: 11 c7 10 85 db 56 57 0f 84 c2 00 00 00 8d 44 24
1056b340: 10 50 8d 4d 0c e8 66 28 ff ff 8b 4d 30 8b 55 2c
1056b350: 8b 75 20 8b 7d 1c 6a 00 6a 00 68 d7 7c c2 e1 51
1056b360: 8b 4d 28 52 8b 55 24 6a 00 6a 00 51 52 8b 10 56
1056b370: 57 83 ec 10 8b cc 89 11 8b 50 04 89 51 04 8b 50
1056b380: 08 8b 40 0c 89 51 08 89 41 0c 8d 4c 24 5c e8 8d
1056b390: 45 b9 ff 8b cf 0b ce 74 22 8d 54 24 20 52 56 57
1056b3a0: 8b cb e8 49 93 db ff 84 c0 75 10 8d 4c 24 20 e8
1056b3b0: 4c f6 b8 ff 5f 5e 5b 8b e5 5d c3 8b 45 08 50 8d
1056b3c0: 4c 24 24 51 8b cb e8 e5 e2 dc ff 8b 84 24 b0 00
1056b3d0: 00 00 85 c0 74 12 3b 84 24 c0 00 00 00 74 09 50
1056b3e0: e8 ab da 3a 00 83 c4 04 8b 44 24 20 85 c0 74 0f
1056b3f0: 3b 44 24 30 74 09 50 e8 94 da 3a 00 83 c4 04 5f
1056b400: 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056b320 <.text+0x56a320>:
1056b320:	55                                              	push   ebp
1056b321:	8b ec                                           	mov    ebp,esp
1056b323:	83 e4 f8                                        	and    esp,0xfffffff8
1056b326:	81 ec 3c 01 00 00                               	sub    esp,0x13c
1056b32c:	53                                              	push   ebx
1056b32d:	8b 1d 50 11 c7 10                               	mov    ebx,DWORD PTR ds:0x10c71150
1056b333:	85 db                                           	test   ebx,ebx
1056b335:	56                                              	push   esi
1056b336:	57                                              	push   edi
1056b337:	0f 84 c2 00 00 00                               	je     0x1056b3ff
1056b33d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1056b341:	50                                              	push   eax
1056b342:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
1056b345:	e8 66 28 ff ff                                  	call   0x1055dbb0
1056b34a:	8b 4d 30                                        	mov    ecx,DWORD PTR [ebp+0x30]
1056b34d:	8b 55 2c                                        	mov    edx,DWORD PTR [ebp+0x2c]
1056b350:	8b 75 20                                        	mov    esi,DWORD PTR [ebp+0x20]
1056b353:	8b 7d 1c                                        	mov    edi,DWORD PTR [ebp+0x1c]
1056b356:	6a 00                                           	push   0x0
1056b358:	6a 00                                           	push   0x0
1056b35a:	68 d7 7c c2 e1                                  	push   0xe1c27cd7
1056b35f:	51                                              	push   ecx
1056b360:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
1056b363:	52                                              	push   edx
1056b364:	8b 55 24                                        	mov    edx,DWORD PTR [ebp+0x24]
1056b367:	6a 00                                           	push   0x0
1056b369:	6a 00                                           	push   0x0
1056b36b:	51                                              	push   ecx
1056b36c:	52                                              	push   edx
1056b36d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056b36f:	56                                              	push   esi
1056b370:	57                                              	push   edi
1056b371:	83 ec 10                                        	sub    esp,0x10
1056b374:	8b cc                                           	mov    ecx,esp
1056b376:	89 11                                           	mov    DWORD PTR [ecx],edx
1056b378:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1056b37b:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1056b37e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056b381:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1056b384:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1056b387:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1056b38a:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
1056b38e:	e8 8d 45 b9 ff                                  	call   0x100ff920
1056b393:	8b cf                                           	mov    ecx,edi
1056b395:	0b ce                                           	or     ecx,esi
1056b397:	74 22                                           	je     0x1056b3bb
1056b399:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1056b39d:	52                                              	push   edx
1056b39e:	56                                              	push   esi
1056b39f:	57                                              	push   edi
1056b3a0:	8b cb                                           	mov    ecx,ebx
1056b3a2:	e8 49 93 db ff                                  	call   0x103246f0
1056b3a7:	84 c0                                           	test   al,al
1056b3a9:	75 10                                           	jne    0x1056b3bb
1056b3ab:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1056b3af:	e8 4c f6 b8 ff                                  	call   0x100faa00
1056b3b4:	5f                                              	pop    edi
1056b3b5:	5e                                              	pop    esi
1056b3b6:	5b                                              	pop    ebx
1056b3b7:	8b e5                                           	mov    esp,ebp
1056b3b9:	5d                                              	pop    ebp
1056b3ba:	c3                                              	ret
1056b3bb:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1056b3be:	50                                              	push   eax
1056b3bf:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1056b3c3:	51                                              	push   ecx
1056b3c4:	8b cb                                           	mov    ecx,ebx
1056b3c6:	e8 e5 e2 dc ff                                  	call   0x103396b0
1056b3cb:	8b 84 24 b0 00 00 00                            	mov    eax,DWORD PTR [esp+0xb0]
1056b3d2:	85 c0                                           	test   eax,eax
1056b3d4:	74 12                                           	je     0x1056b3e8
1056b3d6:	3b 84 24 c0 00 00 00                            	cmp    eax,DWORD PTR [esp+0xc0]
1056b3dd:	74 09                                           	je     0x1056b3e8
1056b3df:	50                                              	push   eax
1056b3e0:	e8 ab da 3a 00                                  	call   0x10918e90
1056b3e5:	83 c4 04                                        	add    esp,0x4
1056b3e8:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1056b3ec:	85 c0                                           	test   eax,eax
1056b3ee:	74 0f                                           	je     0x1056b3ff
1056b3f0:	3b 44 24 30                                     	cmp    eax,DWORD PTR [esp+0x30]
1056b3f4:	74 09                                           	je     0x1056b3ff
1056b3f6:	50                                              	push   eax
1056b3f7:	e8 94 da 3a 00                                  	call   0x10918e90
1056b3fc:	83 c4 04                                        	add    esp,0x4
1056b3ff:	5f                                              	pop    edi
1056b400:	5e                                              	pop    esi
1056b401:	5b                                              	pop    ebx
1056b402:	8b e5                                           	mov    esp,ebp
1056b404:	5d                                              	pop    ebp
1056b405:	c3                                              	ret
1056b406:	cc                                              	int3
1056b407:	cc                                              	int3
1056b408:	cc                                              	int3
1056b409:	cc                                              	int3
1056b40a:	cc                                              	int3
1056b40b:	cc                                              	int3
1056b40c:	cc                                              	int3
1056b40d:	cc                                              	int3
1056b40e:	cc                                              	int3
1056b40f:	cc                                              	int3
