# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779330 (ScriptCore.ThumbnailManager::ThumbnailManager_KeyExistsInDB)
Paired Ghidra pseudocode: 00779330_ScriptCore_ThumbnailManager_ThumbnailManager_KeyExistsInDB.c
Window: [0x00779330, 0x007793f0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x007793f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779330: 55 8b ec 83 e4 f8 81 ec 38 01 00 00 53 56 8b 35
00779340: 30 ec 1e 01 85 f6 75 08 32 c0 5e 5b 8b e5 5d c3
00779350: 8d 44 24 08 50 8d 4d 08 e8 83 2d ff ff 8b 4d 2c
00779360: 8b 55 28 6a 00 6a 00 68 d7 7c c2 e1 51 8b 4d 24
00779370: 52 8b 55 20 6a 00 6a 00 51 8b 4d 1c 52 8b 55 18
00779380: 51 52 8b 10 83 ec 10 8b cc 89 11 8b 50 04 89 51
00779390: 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8d 4c 24
007793a0: 54 e8 5a fe ff ff 8d 4c 24 18 51 8b ce e8 1e 52
007793b0: 5d 00 8a d8 8b 84 24 a8 00 00 00 85 c0 74 12 3b
007793c0: 84 24 b8 00 00 00 74 09 50 e8 12 b1 d6 ff 83 c4
007793d0: 04 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74 09 50
007793e0: e8 fb b0 d6 ff 83 c4 04 5e 8a c3 5b 8b e5 5d c3

LINEAR DISASSEMBLY
00779330 <.text+0x378330>:
  779330:	55                                              	push   ebp
  779331:	8b ec                                           	mov    ebp,esp
  779333:	83 e4 f8                                        	and    esp,0xfffffff8
  779336:	81 ec 38 01 00 00                               	sub    esp,0x138
  77933c:	53                                              	push   ebx
  77933d:	56                                              	push   esi
  77933e:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  779344:	85 f6                                           	test   esi,esi
  779346:	75 08                                           	jne    0x779350
  779348:	32 c0                                           	xor    al,al
  77934a:	5e                                              	pop    esi
  77934b:	5b                                              	pop    ebx
  77934c:	8b e5                                           	mov    esp,ebp
  77934e:	5d                                              	pop    ebp
  77934f:	c3                                              	ret
  779350:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  779354:	50                                              	push   eax
  779355:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  779358:	e8 83 2d ff ff                                  	call   0x76c0e0
  77935d:	8b 4d 2c                                        	mov    ecx,DWORD PTR [ebp+0x2c]
  779360:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
  779363:	6a 00                                           	push   0x0
  779365:	6a 00                                           	push   0x0
  779367:	68 d7 7c c2 e1                                  	push   0xe1c27cd7
  77936c:	51                                              	push   ecx
  77936d:	8b 4d 24                                        	mov    ecx,DWORD PTR [ebp+0x24]
  779370:	52                                              	push   edx
  779371:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
  779374:	6a 00                                           	push   0x0
  779376:	6a 00                                           	push   0x0
  779378:	51                                              	push   ecx
  779379:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  77937c:	52                                              	push   edx
  77937d:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  779380:	51                                              	push   ecx
  779381:	52                                              	push   edx
  779382:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779384:	83 ec 10                                        	sub    esp,0x10
  779387:	8b cc                                           	mov    ecx,esp
  779389:	89 11                                           	mov    DWORD PTR [ecx],edx
  77938b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77938e:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  779391:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  779394:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  779397:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  77939a:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  77939d:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  7793a1:	e8 5a fe ff ff                                  	call   0x779200
  7793a6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7793aa:	51                                              	push   ecx
  7793ab:	8b ce                                           	mov    ecx,esi
  7793ad:	e8 1e 52 5d 00                                  	call   0xd4e5d0
  7793b2:	8a d8                                           	mov    bl,al
  7793b4:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
  7793bb:	85 c0                                           	test   eax,eax
  7793bd:	74 12                                           	je     0x7793d1
  7793bf:	3b 84 24 b8 00 00 00                            	cmp    eax,DWORD PTR [esp+0xb8]
  7793c6:	74 09                                           	je     0x7793d1
  7793c8:	50                                              	push   eax
  7793c9:	e8 12 b1 d6 ff                                  	call   0x4e44e0
  7793ce:	83 c4 04                                        	add    esp,0x4
  7793d1:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7793d5:	85 c0                                           	test   eax,eax
  7793d7:	74 0f                                           	je     0x7793e8
  7793d9:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  7793dd:	74 09                                           	je     0x7793e8
  7793df:	50                                              	push   eax
  7793e0:	e8 fb b0 d6 ff                                  	call   0x4e44e0
  7793e5:	83 c4 04                                        	add    esp,0x4
  7793e8:	5e                                              	pop    esi
  7793e9:	8a c3                                           	mov    al,bl
  7793eb:	5b                                              	pop    ebx
  7793ec:	8b e5                                           	mov    esp,ebp
  7793ee:	5d                                              	pop    ebp
  7793ef:	c3                                              	ret
