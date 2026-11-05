# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00778380 (ScriptCore.ThumbnailManager::ThumbnailManager_GenerateThumbnailForSimsUsingObject)
Paired Ghidra pseudocode: 00778380_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateThumbnailForSimsUsingObject.c
Window: [0x00778380, 0x007784b0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x007784b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00778380: 83 ec 24 53 55 56 57 8b 3d 30 ec 1e 01 89 7c 24
00778390: 10 e8 fa 0f ff ff 8b f0 8b 06 8b 90 18 01 00 00
007783a0: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 9e 00 00 00
007783b0: 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8
007783c0: 3c c1 d6 ff 83 c4 18 85 c0 74 72 8b 4c 24 44 51
007783d0: 53 55 8b c8 e8 97 f8 ff ff 8b f8 85 ff 74 09 8b
007783e0: 17 8b 42 04 8b cf ff d0 8b 4c 24 40 8b 54 24 3c
007783f0: 8b 44 24 38 57 51 8b 4c 24 18 52 50 e8 bf 68 5e
00778400: 00 84 c0 74 3c 8b 44 24 44 8b 16 8b 92 20 01 00
00778410: 00 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90
00778420: 1c 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50
00778430: 08 8b cf ff d2 5f 5e 5d 5b 83 c4 24 c3 33 ff eb
00778440: a7 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54
00778450: 24 44 6a 00 8d 4c 24 18 51 53 bf f4 a6 fb 00 89
00778460: 7c 24 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66
00778470: c7 44 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52
00778480: 8b ce ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a
00778490: 00 8d 4c 24 18 e8 c6 d2 d7 ff 5f 5e 5d 5b 83 c4
007784a0: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00778380 <.text+0x377380>:
  778380:	83 ec 24                                        	sub    esp,0x24
  778383:	53                                              	push   ebx
  778384:	55                                              	push   ebp
  778385:	56                                              	push   esi
  778386:	57                                              	push   edi
  778387:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  77838d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  778391:	e8 fa 0f ff ff                                  	call   0x769390
  778396:	8b f0                                           	mov    esi,eax
  778398:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77839a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7783a0:	8b ce                                           	mov    ecx,esi
  7783a2:	ff d2                                           	call   edx
  7783a4:	85 ff                                           	test   edi,edi
  7783a6:	8b e8                                           	mov    ebp,eax
  7783a8:	8b da                                           	mov    ebx,edx
  7783aa:	0f 84 9e 00 00 00                               	je     0x77844e
  7783b0:	6a 00                                           	push   0x0
  7783b2:	6a 00                                           	push   0x0
  7783b4:	6a 00                                           	push   0x0
  7783b6:	6a 00                                           	push   0x0
  7783b8:	68 44 e2 00 01                                  	push   0x100e244
  7783bd:	6a 38                                           	push   0x38
  7783bf:	e8 3c c1 d6 ff                                  	call   0x4e4500
  7783c4:	83 c4 18                                        	add    esp,0x18
  7783c7:	85 c0                                           	test   eax,eax
  7783c9:	74 72                                           	je     0x77843d
  7783cb:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  7783cf:	51                                              	push   ecx
  7783d0:	53                                              	push   ebx
  7783d1:	55                                              	push   ebp
  7783d2:	8b c8                                           	mov    ecx,eax
  7783d4:	e8 97 f8 ff ff                                  	call   0x777c70
  7783d9:	8b f8                                           	mov    edi,eax
  7783db:	85 ff                                           	test   edi,edi
  7783dd:	74 09                                           	je     0x7783e8
  7783df:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7783e1:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7783e4:	8b cf                                           	mov    ecx,edi
  7783e6:	ff d0                                           	call   eax
  7783e8:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7783ec:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  7783f0:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  7783f4:	57                                              	push   edi
  7783f5:	51                                              	push   ecx
  7783f6:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7783fa:	52                                              	push   edx
  7783fb:	50                                              	push   eax
  7783fc:	e8 bf 68 5e 00                                  	call   0xd5ecc0
  778401:	84 c0                                           	test   al,al
  778403:	74 3c                                           	je     0x778441
  778405:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  778409:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77840b:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  778411:	6a 00                                           	push   0x0
  778413:	50                                              	push   eax
  778414:	6a ff                                           	push   0xffffffff
  778416:	53                                              	push   ebx
  778417:	55                                              	push   ebp
  778418:	8b ce                                           	mov    ecx,esi
  77841a:	ff d2                                           	call   edx
  77841c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77841e:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  778424:	8b ce                                           	mov    ecx,esi
  778426:	ff d2                                           	call   edx
  778428:	85 ff                                           	test   edi,edi
  77842a:	74 6e                                           	je     0x77849a
  77842c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77842e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778431:	8b cf                                           	mov    ecx,edi
  778433:	ff d2                                           	call   edx
  778435:	5f                                              	pop    edi
  778436:	5e                                              	pop    esi
  778437:	5d                                              	pop    ebp
  778438:	5b                                              	pop    ebx
  778439:	83 c4 24                                        	add    esp,0x24
  77843c:	c3                                              	ret
  77843d:	33 ff                                           	xor    edi,edi
  77843f:	eb a7                                           	jmp    0x7783e8
  778441:	85 ff                                           	test   edi,edi
  778443:	74 09                                           	je     0x77844e
  778445:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778447:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  77844a:	8b cf                                           	mov    ecx,edi
  77844c:	ff d2                                           	call   edx
  77844e:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  778452:	6a 00                                           	push   0x0
  778454:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778458:	51                                              	push   ecx
  778459:	53                                              	push   ebx
  77845a:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  77845f:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  778463:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  778468:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  77846f:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  778476:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778478:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  77847e:	55                                              	push   ebp
  77847f:	52                                              	push   edx
  778480:	8b ce                                           	mov    ecx,esi
  778482:	ff d0                                           	call   eax
  778484:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  778489:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  77848d:	74 0b                                           	je     0x77849a
  77848f:	6a 00                                           	push   0x0
  778491:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778495:	e8 c6 d2 d7 ff                                  	call   0x4f5760
  77849a:	5f                                              	pop    edi
  77849b:	5e                                              	pop    esi
  77849c:	5d                                              	pop    ebp
  77849d:	5b                                              	pop    ebx
  77849e:	83 c4 24                                        	add    esp,0x24
  7784a1:	c3                                              	ret
  7784a2:	cc                                              	int3
  7784a3:	cc                                              	int3
  7784a4:	cc                                              	int3
  7784a5:	cc                                              	int3
  7784a6:	cc                                              	int3
  7784a7:	cc                                              	int3
  7784a8:	cc                                              	int3
  7784a9:	cc                                              	int3
  7784aa:	cc                                              	int3
  7784ab:	cc                                              	int3
  7784ac:	cc                                              	int3
  7784ad:	cc                                              	int3
  7784ae:	cc                                              	int3
  7784af:	cc                                              	int3
