# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007784b0 (ScriptCore.ThumbnailManager::ThumbnailManager_GeneratePromPicture)
Paired Ghidra pseudocode: 007784B0_ScriptCore_ThumbnailManager_ThumbnailManager_GeneratePromPicture.c
Window: [0x007784b0, 0x007785e0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x007785e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007784b0: 83 ec 24 53 55 56 57 8b 3d 30 ec 1e 01 89 7c 24
007784c0: 10 e8 ca 0e ff ff 8b f0 8b 06 8b 90 18 01 00 00
007784d0: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 a8 00 00 00
007784e0: 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8
007784f0: 0c c0 d6 ff 83 c4 18 85 c0 74 7c 8b 4c 24 4c 51
00778500: 53 55 8b c8 e8 67 f7 ff ff 8b f8 85 ff 74 09 8b
00778510: 17 8b 42 04 8b cf ff d0 8b 4c 24 48 8b 54 24 44
00778520: 8b 44 24 40 57 51 8b 4c 24 44 52 8b 54 24 44 50
00778530: 51 8b 4c 24 24 52 e8 05 63 5e 00 84 c0 74 3c 8b
00778540: 4c 24 4c 8b 06 8b 90 20 01 00 00 6a 00 51 6a ff
00778550: 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce
00778560: ff d2 85 ff 74 6e 8b 07 8b 50 08 8b cf ff d2 5f
00778570: 5e 5d 5b 83 c4 24 c3 33 ff eb 9d 85 ff 74 09 8b
00778580: 07 8b 50 08 8b cf ff d2 8b 54 24 4c 6a 00 8d 4c
00778590: 24 18 51 53 bf f4 a6 fb 00 89 7c 24 20 c6 44 24
007785a0: 30 00 66 c7 44 24 2a 01 00 66 c7 44 24 28 00 00
007785b0: 8b 06 8b 80 30 01 00 00 55 52 8b ce ff d0 f6 44
007785c0: 24 1c 04 89 7c 24 14 74 0b 6a 00 8d 4c 24 18 e8
007785d0: 8c d1 d7 ff 5f 5e 5d 5b 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
007784b0 <.text+0x3774b0>:
  7784b0:	83 ec 24                                        	sub    esp,0x24
  7784b3:	53                                              	push   ebx
  7784b4:	55                                              	push   ebp
  7784b5:	56                                              	push   esi
  7784b6:	57                                              	push   edi
  7784b7:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  7784bd:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  7784c1:	e8 ca 0e ff ff                                  	call   0x769390
  7784c6:	8b f0                                           	mov    esi,eax
  7784c8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7784ca:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7784d0:	8b ce                                           	mov    ecx,esi
  7784d2:	ff d2                                           	call   edx
  7784d4:	85 ff                                           	test   edi,edi
  7784d6:	8b e8                                           	mov    ebp,eax
  7784d8:	8b da                                           	mov    ebx,edx
  7784da:	0f 84 a8 00 00 00                               	je     0x778588
  7784e0:	6a 00                                           	push   0x0
  7784e2:	6a 00                                           	push   0x0
  7784e4:	6a 00                                           	push   0x0
  7784e6:	6a 00                                           	push   0x0
  7784e8:	68 44 e2 00 01                                  	push   0x100e244
  7784ed:	6a 38                                           	push   0x38
  7784ef:	e8 0c c0 d6 ff                                  	call   0x4e4500
  7784f4:	83 c4 18                                        	add    esp,0x18
  7784f7:	85 c0                                           	test   eax,eax
  7784f9:	74 7c                                           	je     0x778577
  7784fb:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7784ff:	51                                              	push   ecx
  778500:	53                                              	push   ebx
  778501:	55                                              	push   ebp
  778502:	8b c8                                           	mov    ecx,eax
  778504:	e8 67 f7 ff ff                                  	call   0x777c70
  778509:	8b f8                                           	mov    edi,eax
  77850b:	85 ff                                           	test   edi,edi
  77850d:	74 09                                           	je     0x778518
  77850f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778511:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778514:	8b cf                                           	mov    ecx,edi
  778516:	ff d0                                           	call   eax
  778518:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  77851c:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  778520:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  778524:	57                                              	push   edi
  778525:	51                                              	push   ecx
  778526:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  77852a:	52                                              	push   edx
  77852b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  77852f:	50                                              	push   eax
  778530:	51                                              	push   ecx
  778531:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  778535:	52                                              	push   edx
  778536:	e8 05 63 5e 00                                  	call   0xd5e840
  77853b:	84 c0                                           	test   al,al
  77853d:	74 3c                                           	je     0x77857b
  77853f:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  778543:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778545:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
  77854b:	6a 00                                           	push   0x0
  77854d:	51                                              	push   ecx
  77854e:	6a ff                                           	push   0xffffffff
  778550:	53                                              	push   ebx
  778551:	55                                              	push   ebp
  778552:	8b ce                                           	mov    ecx,esi
  778554:	ff d2                                           	call   edx
  778556:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778558:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  77855e:	8b ce                                           	mov    ecx,esi
  778560:	ff d2                                           	call   edx
  778562:	85 ff                                           	test   edi,edi
  778564:	74 6e                                           	je     0x7785d4
  778566:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778568:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  77856b:	8b cf                                           	mov    ecx,edi
  77856d:	ff d2                                           	call   edx
  77856f:	5f                                              	pop    edi
  778570:	5e                                              	pop    esi
  778571:	5d                                              	pop    ebp
  778572:	5b                                              	pop    ebx
  778573:	83 c4 24                                        	add    esp,0x24
  778576:	c3                                              	ret
  778577:	33 ff                                           	xor    edi,edi
  778579:	eb 9d                                           	jmp    0x778518
  77857b:	85 ff                                           	test   edi,edi
  77857d:	74 09                                           	je     0x778588
  77857f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778581:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778584:	8b cf                                           	mov    ecx,edi
  778586:	ff d2                                           	call   edx
  778588:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  77858c:	6a 00                                           	push   0x0
  77858e:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778592:	51                                              	push   ecx
  778593:	53                                              	push   ebx
  778594:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  778599:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  77859d:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  7785a2:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  7785a9:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  7785b0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7785b2:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  7785b8:	55                                              	push   ebp
  7785b9:	52                                              	push   edx
  7785ba:	8b ce                                           	mov    ecx,esi
  7785bc:	ff d0                                           	call   eax
  7785be:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  7785c3:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7785c7:	74 0b                                           	je     0x7785d4
  7785c9:	6a 00                                           	push   0x0
  7785cb:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7785cf:	e8 8c d1 d7 ff                                  	call   0x4f5760
  7785d4:	5f                                              	pop    edi
  7785d5:	5e                                              	pop    esi
  7785d6:	5d                                              	pop    ebp
  7785d7:	5b                                              	pop    ebx
  7785d8:	83 c4 24                                        	add    esp,0x24
  7785db:	c3                                              	ret
  7785dc:	cc                                              	int3
  7785dd:	cc                                              	int3
  7785de:	cc                                              	int3
  7785df:	cc                                              	int3
