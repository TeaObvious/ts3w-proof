# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007793f0 (ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateThumbnail)
Paired Ghidra pseudocode: 007793F0_ScriptCore_ThumbnailManager_ThumbnailManager_InvalidateThumbnail.c
Window: [0x007793f0, 0x007794e0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x007794e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007793f0: 55 8b ec 83 e4 f8 81 ec 3c 01 00 00 53 8b 1d 30
00779400: ec 1e 01 85 db 56 57 0f 84 c2 00 00 00 8d 44 24
00779410: 10 50 8d 4d 0c e8 c6 2c ff ff 8b 4d 30 8b 55 2c
00779420: 8b 75 20 8b 7d 1c 6a 00 6a 00 68 d7 7c c2 e1 51
00779430: 8b 4d 28 52 8b 55 24 6a 00 6a 00 51 52 8b 10 56
00779440: 57 83 ec 10 8b cc 89 11 8b 50 04 89 51 04 8b 50
00779450: 08 8b 40 0c 89 51 08 89 41 0c 8d 4c 24 5c e8 9d
00779460: fd ff ff 8b cf 0b ce 74 22 8d 54 24 20 52 56 57
00779470: 8b cb e8 c9 2f 5d 00 84 c0 75 10 8d 4c 24 20 e8
00779480: 8c cf e6 ff 5f 5e 5b 8b e5 5d c3 8b 45 08 50 8d
00779490: 4c 24 24 51 8b cb e8 e5 76 5e 00 8b 84 24 b0 00
007794a0: 00 00 85 c0 74 12 3b 84 24 c0 00 00 00 74 09 50
007794b0: e8 2b b0 d6 ff 83 c4 04 8b 44 24 20 85 c0 74 0f
007794c0: 3b 44 24 30 74 09 50 e8 14 b0 d6 ff 83 c4 04 5f
007794d0: 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007793f0 <.text+0x3783f0>:
  7793f0:	55                                              	push   ebp
  7793f1:	8b ec                                           	mov    ebp,esp
  7793f3:	83 e4 f8                                        	and    esp,0xfffffff8
  7793f6:	81 ec 3c 01 00 00                               	sub    esp,0x13c
  7793fc:	53                                              	push   ebx
  7793fd:	8b 1d 30 ec 1e 01                               	mov    ebx,DWORD PTR ds:0x11eec30
  779403:	85 db                                           	test   ebx,ebx
  779405:	56                                              	push   esi
  779406:	57                                              	push   edi
  779407:	0f 84 c2 00 00 00                               	je     0x7794cf
  77940d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  779411:	50                                              	push   eax
  779412:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
  779415:	e8 c6 2c ff ff                                  	call   0x76c0e0
  77941a:	8b 4d 30                                        	mov    ecx,DWORD PTR [ebp+0x30]
  77941d:	8b 55 2c                                        	mov    edx,DWORD PTR [ebp+0x2c]
  779420:	8b 75 20                                        	mov    esi,DWORD PTR [ebp+0x20]
  779423:	8b 7d 1c                                        	mov    edi,DWORD PTR [ebp+0x1c]
  779426:	6a 00                                           	push   0x0
  779428:	6a 00                                           	push   0x0
  77942a:	68 d7 7c c2 e1                                  	push   0xe1c27cd7
  77942f:	51                                              	push   ecx
  779430:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
  779433:	52                                              	push   edx
  779434:	8b 55 24                                        	mov    edx,DWORD PTR [ebp+0x24]
  779437:	6a 00                                           	push   0x0
  779439:	6a 00                                           	push   0x0
  77943b:	51                                              	push   ecx
  77943c:	52                                              	push   edx
  77943d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77943f:	56                                              	push   esi
  779440:	57                                              	push   edi
  779441:	83 ec 10                                        	sub    esp,0x10
  779444:	8b cc                                           	mov    ecx,esp
  779446:	89 11                                           	mov    DWORD PTR [ecx],edx
  779448:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77944b:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  77944e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  779451:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  779454:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  779457:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  77945a:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  77945e:	e8 9d fd ff ff                                  	call   0x779200
  779463:	8b cf                                           	mov    ecx,edi
  779465:	0b ce                                           	or     ecx,esi
  779467:	74 22                                           	je     0x77948b
  779469:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77946d:	52                                              	push   edx
  77946e:	56                                              	push   esi
  77946f:	57                                              	push   edi
  779470:	8b cb                                           	mov    ecx,ebx
  779472:	e8 c9 2f 5d 00                                  	call   0xd4c440
  779477:	84 c0                                           	test   al,al
  779479:	75 10                                           	jne    0x77948b
  77947b:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77947f:	e8 8c cf e6 ff                                  	call   0x5e6410
  779484:	5f                                              	pop    edi
  779485:	5e                                              	pop    esi
  779486:	5b                                              	pop    ebx
  779487:	8b e5                                           	mov    esp,ebp
  779489:	5d                                              	pop    ebp
  77948a:	c3                                              	ret
  77948b:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  77948e:	50                                              	push   eax
  77948f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  779493:	51                                              	push   ecx
  779494:	8b cb                                           	mov    ecx,ebx
  779496:	e8 e5 76 5e 00                                  	call   0xd60b80
  77949b:	8b 84 24 b0 00 00 00                            	mov    eax,DWORD PTR [esp+0xb0]
  7794a2:	85 c0                                           	test   eax,eax
  7794a4:	74 12                                           	je     0x7794b8
  7794a6:	3b 84 24 c0 00 00 00                            	cmp    eax,DWORD PTR [esp+0xc0]
  7794ad:	74 09                                           	je     0x7794b8
  7794af:	50                                              	push   eax
  7794b0:	e8 2b b0 d6 ff                                  	call   0x4e44e0
  7794b5:	83 c4 04                                        	add    esp,0x4
  7794b8:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7794bc:	85 c0                                           	test   eax,eax
  7794be:	74 0f                                           	je     0x7794cf
  7794c0:	3b 44 24 30                                     	cmp    eax,DWORD PTR [esp+0x30]
  7794c4:	74 09                                           	je     0x7794cf
  7794c6:	50                                              	push   eax
  7794c7:	e8 14 b0 d6 ff                                  	call   0x4e44e0
  7794cc:	83 c4 04                                        	add    esp,0x4
  7794cf:	5f                                              	pop    edi
  7794d0:	5e                                              	pop    esi
  7794d1:	5b                                              	pop    ebx
  7794d2:	8b e5                                           	mov    esp,ebp
  7794d4:	5d                                              	pop    ebp
  7794d5:	c3                                              	ret
  7794d6:	cc                                              	int3
  7794d7:	cc                                              	int3
  7794d8:	cc                                              	int3
  7794d9:	cc                                              	int3
  7794da:	cc                                              	int3
  7794db:	cc                                              	int3
  7794dc:	cc                                              	int3
  7794dd:	cc                                              	int3
  7794de:	cc                                              	int3
  7794df:	cc                                              	int3
