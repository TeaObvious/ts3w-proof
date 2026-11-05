# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ac3d0 (ScriptCore.CASUtils::CASUtils_InjectEyebrowColorImpl)
Paired Ghidra pseudocode: 005AC3D0_ScriptCore_CASUtils_CASUtils_InjectEyebrowColorImpl.c
Window: [0x005ac3d0, 0x005ac6b0) (736 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ac6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ac3d0: 81 ec f4 00 00 00 55 56 57 e8 b2 cf 1b 00 8b 8c
005ac3e0: 24 50 01 00 00 8b e8 8b 45 00 8b 50 58 51 8b cd
005ac3f0: ff d2 8b f0 33 ff 3b f7 75 0c 5f 5e 33 c0 5d 81
005ac400: c4 f4 00 00 00 c3 53 8b 9c 24 08 01 00 00 8b c3
005ac410: 25 00 00 00 ff 3d 00 00 00 35 0f 85 9a 01 00 00
005ac420: e8 6b cf 1b 00 8b 10 8b c8 8b 82 cc 00 00 00 53
005ac430: ff d0 8b d8 3b df 0f 84 7e 01 00 00 8d 8c 24 a4
005ac440: 00 00 00 e8 78 36 01 00 56 8d 8c 24 a8 00 00 00
005ac450: e8 0b 3c 01 00 8d 4c 24 2c 51 8d 54 24 64 52 68
005ac460: f8 f6 fd 00 8d 8c 24 b0 00 00 00 e8 00 30 01 00
005ac470: 84 c0 8b 84 24 58 01 00 00 0f 84 8c 00 00 00 39
005ac480: 44 24 2c 0f 85 82 00 00 00 8d 44 24 28 50 56 8d
005ac490: 4c 24 58 c7 44 24 30 0c f9 fd 00 e8 e0 f3 e5 ff
005ac4a0: 8d 4c 24 50 51 8d 4c 24 68 e8 f2 ed ff ff 8b 55
005ac4b0: 00 8b 52 50 8d 44 24 10 50 8d 4c 24 68 51 8b cd
005ac4c0: ff d2 f6 44 24 6c 04 8b 74 24 10 c7 44 24 64 f4
005ac4d0: a6 fb 00 74 0a 57 8d 4c 24 68 e8 81 92 f4 ff 8b
005ac4e0: 4c 24 58 8b 44 24 50 2b c8 83 e1 fe 83 f9 02 0f
005ac4f0: 8e 9f 01 00 00 3b c7 0f 84 97 01 00 00 50 e8 dd
005ac500: 7f f3 ff 83 c4 04 e9 89 01 00 00 57 50 6a 02 68
005ac510: f8 f6 fd 00 8d 8c 24 b4 00 00 00 e8 70 2d 01 00
005ac520: 84 c0 8d 8c 24 a4 00 00 00 0f 84 86 00 00 00 e8
005ac530: 1c 2a 01 00 84 c0 74 76 8b 84 24 18 01 00 00 8b
005ac540: 94 24 14 01 00 00 8b 8c 24 0c 01 00 00 89 44 24
005ac550: 34 8d 44 24 30 89 54 24 30 8b 94 24 10 01 00 00
005ac560: 50 89 4c 24 3c 53 8d 8c 24 ac 00 00 00 89 54 24
005ac570: 44 e8 ea 29 01 00 84 c0 74 34 57 57 8d 4c 24 1c
005ac580: 51 8d 8c 24 b0 00 00 00 89 7c 24 20 89 7c 24 24
005ac590: 89 7c 24 28 c7 44 24 2c 0c f9 fd 00 e8 6f 3d 01
005ac5a0: 00 84 c0 75 22 8d 4c 24 14 e8 22 ed ff ff 8d 8c
005ac5b0: 24 a4 00 00 00 e8 26 37 01 00 5b 5f 5e 33 c0 5d
005ac5c0: 81 c4 f4 00 00 00 c3 8b 74 24 14 8b 7c 24 18 3b
005ac5d0: f7 74 23 8b 06 8b 56 04 0f b6 4e 08 50 52 8b 50
005ac5e0: 58 51 52 8d 44 24 40 50 8b cb e8 e1 70 03 00 83
005ac5f0: c6 0c 3b f7 75 dd 8d 4c 24 10 51 8d 4c 24 44 c7
005ac600: 44 24 14 0c f9 fd 00 e8 e4 c2 e5 ff 8d 54 24 40
005ac610: 52 8d 8c 24 a8 00 00 00 e8 03 37 01 00 8d 44 24
005ac620: 40 50 8d 8c 24 88 00 00 00 e8 72 ec ff ff 8b 55
005ac630: 00 8b 52 50 8d 44 24 24 50 8d 8c 24 88 00 00 00
005ac640: 51 8b cd ff d2 f6 84 24 8c 00 00 00 04 8b 74 24
005ac650: 24 c7 84 24 84 00 00 00 f4 a6 fb 00 74 0e 6a 00
005ac660: 8d 8c 24 88 00 00 00 e8 f4 90 f4 ff 8b 4c 24 48
005ac670: 8b 44 24 40 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0
005ac680: 74 09 50 e8 58 7e f3 ff 83 c4 04 8d 4c 24 14 e8
005ac690: 3c ec ff ff 8d 8c 24 a4 00 00 00 e8 40 36 01 00
005ac6a0: 5b 5f 8b c6 5e 5d 81 c4 f4 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
005ac3d0 <.text+0x1ab3d0>:
  5ac3d0:	81 ec f4 00 00 00                               	sub    esp,0xf4
  5ac3d6:	55                                              	push   ebp
  5ac3d7:	56                                              	push   esi
  5ac3d8:	57                                              	push   edi
  5ac3d9:	e8 b2 cf 1b 00                                  	call   0x769390
  5ac3de:	8b 8c 24 50 01 00 00                            	mov    ecx,DWORD PTR [esp+0x150]
  5ac3e5:	8b e8                                           	mov    ebp,eax
  5ac3e7:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5ac3ea:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5ac3ed:	51                                              	push   ecx
  5ac3ee:	8b cd                                           	mov    ecx,ebp
  5ac3f0:	ff d2                                           	call   edx
  5ac3f2:	8b f0                                           	mov    esi,eax
  5ac3f4:	33 ff                                           	xor    edi,edi
  5ac3f6:	3b f7                                           	cmp    esi,edi
  5ac3f8:	75 0c                                           	jne    0x5ac406
  5ac3fa:	5f                                              	pop    edi
  5ac3fb:	5e                                              	pop    esi
  5ac3fc:	33 c0                                           	xor    eax,eax
  5ac3fe:	5d                                              	pop    ebp
  5ac3ff:	81 c4 f4 00 00 00                               	add    esp,0xf4
  5ac405:	c3                                              	ret
  5ac406:	53                                              	push   ebx
  5ac407:	8b 9c 24 08 01 00 00                            	mov    ebx,DWORD PTR [esp+0x108]
  5ac40e:	8b c3                                           	mov    eax,ebx
  5ac410:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ac415:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ac41a:	0f 85 9a 01 00 00                               	jne    0x5ac5ba
  5ac420:	e8 6b cf 1b 00                                  	call   0x769390
  5ac425:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ac427:	8b c8                                           	mov    ecx,eax
  5ac429:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ac42f:	53                                              	push   ebx
  5ac430:	ff d0                                           	call   eax
  5ac432:	8b d8                                           	mov    ebx,eax
  5ac434:	3b df                                           	cmp    ebx,edi
  5ac436:	0f 84 7e 01 00 00                               	je     0x5ac5ba
  5ac43c:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  5ac443:	e8 78 36 01 00                                  	call   0x5bfac0
  5ac448:	56                                              	push   esi
  5ac449:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  5ac450:	e8 0b 3c 01 00                                  	call   0x5c0060
  5ac455:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5ac459:	51                                              	push   ecx
  5ac45a:	8d 54 24 64                                     	lea    edx,[esp+0x64]
  5ac45e:	52                                              	push   edx
  5ac45f:	68 f8 f6 fd 00                                  	push   0xfdf6f8
  5ac464:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  5ac46b:	e8 00 30 01 00                                  	call   0x5bf470
  5ac470:	84 c0                                           	test   al,al
  5ac472:	8b 84 24 58 01 00 00                            	mov    eax,DWORD PTR [esp+0x158]
  5ac479:	0f 84 8c 00 00 00                               	je     0x5ac50b
  5ac47f:	39 44 24 2c                                     	cmp    DWORD PTR [esp+0x2c],eax
  5ac483:	0f 85 82 00 00 00                               	jne    0x5ac50b
  5ac489:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  5ac48d:	50                                              	push   eax
  5ac48e:	56                                              	push   esi
  5ac48f:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  5ac493:	c7 44 24 30 0c f9 fd 00                         	mov    DWORD PTR [esp+0x30],0xfdf90c
  5ac49b:	e8 e0 f3 e5 ff                                  	call   0x40b880
  5ac4a0:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  5ac4a4:	51                                              	push   ecx
  5ac4a5:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5ac4a9:	e8 f2 ed ff ff                                  	call   0x5ab2a0
  5ac4ae:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5ac4b1:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5ac4b4:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5ac4b8:	50                                              	push   eax
  5ac4b9:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5ac4bd:	51                                              	push   ecx
  5ac4be:	8b cd                                           	mov    ecx,ebp
  5ac4c0:	ff d2                                           	call   edx
  5ac4c2:	f6 44 24 6c 04                                  	test   BYTE PTR [esp+0x6c],0x4
  5ac4c7:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  5ac4cb:	c7 44 24 64 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x64],0xfba6f4
  5ac4d3:	74 0a                                           	je     0x5ac4df
  5ac4d5:	57                                              	push   edi
  5ac4d6:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5ac4da:	e8 81 92 f4 ff                                  	call   0x4f5760
  5ac4df:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  5ac4e3:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  5ac4e7:	2b c8                                           	sub    ecx,eax
  5ac4e9:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ac4ec:	83 f9 02                                        	cmp    ecx,0x2
  5ac4ef:	0f 8e 9f 01 00 00                               	jle    0x5ac694
  5ac4f5:	3b c7                                           	cmp    eax,edi
  5ac4f7:	0f 84 97 01 00 00                               	je     0x5ac694
  5ac4fd:	50                                              	push   eax
  5ac4fe:	e8 dd 7f f3 ff                                  	call   0x4e44e0
  5ac503:	83 c4 04                                        	add    esp,0x4
  5ac506:	e9 89 01 00 00                                  	jmp    0x5ac694
  5ac50b:	57                                              	push   edi
  5ac50c:	50                                              	push   eax
  5ac50d:	6a 02                                           	push   0x2
  5ac50f:	68 f8 f6 fd 00                                  	push   0xfdf6f8
  5ac514:	8d 8c 24 b4 00 00 00                            	lea    ecx,[esp+0xb4]
  5ac51b:	e8 70 2d 01 00                                  	call   0x5bf290
  5ac520:	84 c0                                           	test   al,al
  5ac522:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  5ac529:	0f 84 86 00 00 00                               	je     0x5ac5b5
  5ac52f:	e8 1c 2a 01 00                                  	call   0x5bef50
  5ac534:	84 c0                                           	test   al,al
  5ac536:	74 76                                           	je     0x5ac5ae
  5ac538:	8b 84 24 18 01 00 00                            	mov    eax,DWORD PTR [esp+0x118]
  5ac53f:	8b 94 24 14 01 00 00                            	mov    edx,DWORD PTR [esp+0x114]
  5ac546:	8b 8c 24 0c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x10c]
  5ac54d:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  5ac551:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  5ac555:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
  5ac559:	8b 94 24 10 01 00 00                            	mov    edx,DWORD PTR [esp+0x110]
  5ac560:	50                                              	push   eax
  5ac561:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  5ac565:	53                                              	push   ebx
  5ac566:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  5ac56d:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
  5ac571:	e8 ea 29 01 00                                  	call   0x5bef60
  5ac576:	84 c0                                           	test   al,al
  5ac578:	74 34                                           	je     0x5ac5ae
  5ac57a:	57                                              	push   edi
  5ac57b:	57                                              	push   edi
  5ac57c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ac580:	51                                              	push   ecx
  5ac581:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  5ac588:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  5ac58c:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  5ac590:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  5ac594:	c7 44 24 2c 0c f9 fd 00                         	mov    DWORD PTR [esp+0x2c],0xfdf90c
  5ac59c:	e8 6f 3d 01 00                                  	call   0x5c0310
  5ac5a1:	84 c0                                           	test   al,al
  5ac5a3:	75 22                                           	jne    0x5ac5c7
  5ac5a5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5ac5a9:	e8 22 ed ff ff                                  	call   0x5ab2d0
  5ac5ae:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  5ac5b5:	e8 26 37 01 00                                  	call   0x5bfce0
  5ac5ba:	5b                                              	pop    ebx
  5ac5bb:	5f                                              	pop    edi
  5ac5bc:	5e                                              	pop    esi
  5ac5bd:	33 c0                                           	xor    eax,eax
  5ac5bf:	5d                                              	pop    ebp
  5ac5c0:	81 c4 f4 00 00 00                               	add    esp,0xf4
  5ac5c6:	c3                                              	ret
  5ac5c7:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  5ac5cb:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  5ac5cf:	3b f7                                           	cmp    esi,edi
  5ac5d1:	74 23                                           	je     0x5ac5f6
  5ac5d3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ac5d5:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  5ac5d8:	0f b6 4e 08                                     	movzx  ecx,BYTE PTR [esi+0x8]
  5ac5dc:	50                                              	push   eax
  5ac5dd:	52                                              	push   edx
  5ac5de:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5ac5e1:	51                                              	push   ecx
  5ac5e2:	52                                              	push   edx
  5ac5e3:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  5ac5e7:	50                                              	push   eax
  5ac5e8:	8b cb                                           	mov    ecx,ebx
  5ac5ea:	e8 e1 70 03 00                                  	call   0x5e36d0
  5ac5ef:	83 c6 0c                                        	add    esi,0xc
  5ac5f2:	3b f7                                           	cmp    esi,edi
  5ac5f4:	75 dd                                           	jne    0x5ac5d3
  5ac5f6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5ac5fa:	51                                              	push   ecx
  5ac5fb:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5ac5ff:	c7 44 24 14 0c f9 fd 00                         	mov    DWORD PTR [esp+0x14],0xfdf90c
  5ac607:	e8 e4 c2 e5 ff                                  	call   0x4088f0
  5ac60c:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  5ac610:	52                                              	push   edx
  5ac611:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  5ac618:	e8 03 37 01 00                                  	call   0x5bfd20
  5ac61d:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  5ac621:	50                                              	push   eax
  5ac622:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  5ac629:	e8 72 ec ff ff                                  	call   0x5ab2a0
  5ac62e:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5ac631:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5ac634:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  5ac638:	50                                              	push   eax
  5ac639:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  5ac640:	51                                              	push   ecx
  5ac641:	8b cd                                           	mov    ecx,ebp
  5ac643:	ff d2                                           	call   edx
  5ac645:	f6 84 24 8c 00 00 00 04                         	test   BYTE PTR [esp+0x8c],0x4
  5ac64d:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  5ac651:	c7 84 24 84 00 00 00 f4 a6 fb 00                	mov    DWORD PTR [esp+0x84],0xfba6f4
  5ac65c:	74 0e                                           	je     0x5ac66c
  5ac65e:	6a 00                                           	push   0x0
  5ac660:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  5ac667:	e8 f4 90 f4 ff                                  	call   0x4f5760
  5ac66c:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  5ac670:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  5ac674:	2b c8                                           	sub    ecx,eax
  5ac676:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ac679:	83 f9 02                                        	cmp    ecx,0x2
  5ac67c:	7e 0d                                           	jle    0x5ac68b
  5ac67e:	85 c0                                           	test   eax,eax
  5ac680:	74 09                                           	je     0x5ac68b
  5ac682:	50                                              	push   eax
  5ac683:	e8 58 7e f3 ff                                  	call   0x4e44e0
  5ac688:	83 c4 04                                        	add    esp,0x4
  5ac68b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5ac68f:	e8 3c ec ff ff                                  	call   0x5ab2d0
  5ac694:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  5ac69b:	e8 40 36 01 00                                  	call   0x5bfce0
  5ac6a0:	5b                                              	pop    ebx
  5ac6a1:	5f                                              	pop    edi
  5ac6a2:	8b c6                                           	mov    eax,esi
  5ac6a4:	5e                                              	pop    esi
  5ac6a5:	5d                                              	pop    ebp
  5ac6a6:	81 c4 f4 00 00 00                               	add    esp,0xf4
  5ac6ac:	c3                                              	ret
  5ac6ad:	cc                                              	int3
  5ac6ae:	cc                                              	int3
  5ac6af:	cc                                              	int3
