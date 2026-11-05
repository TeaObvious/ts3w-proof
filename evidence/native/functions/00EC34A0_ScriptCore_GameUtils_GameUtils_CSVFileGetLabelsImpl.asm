# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec34a0 (ScriptCore.GameUtils::GameUtils_CSVFileGetLabelsImpl)
Paired Ghidra pseudocode: 00EC34A0_ScriptCore_GameUtils_GameUtils_CSVFileGetLabelsImpl.c
Window: [0x00ec34a0, 0x00ec3630) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec3630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec34a0: 83 ec 64 53 56 57 e8 e5 5e 8a ff 8b 5c 24 74 8b
00ec34b0: f8 8b c3 25 00 00 00 ff 33 f6 3d 00 00 00 40 74
00ec34c0: 04 33 db eb 14 e8 c6 5e 8a ff 8b 10 8b c8 8b 82
00ec34d0: cc 00 00 00 53 ff d0 8b d8 3b fe 0f 84 90 00 00
00ec34e0: 00 3b de 0f 85 88 00 00 00 68 c4 a6 fb 00 8d 4c
00ec34f0: 24 24 89 74 24 24 89 74 24 28 89 74 24 2c c7 44
00ec3500: 24 30 f0 3b 00 01 e8 85 80 54 ff 6a 01 6a 10 8d
00ec3510: 4c 24 28 51 6a 09 bb f4 a6 fb 00 6a 13 8d 4c 24
00ec3520: 44 89 5c 24 44 66 89 74 24 4c 66 89 74 24 4e e8
00ec3530: 8c 24 63 ff 8b 17 8b 52 50 8d 44 24 74 50 8d 4c
00ec3540: 24 34 51 8b cf 89 74 24 7c ff d2 f6 44 24 38 04
00ec3550: 8b 7c 24 74 89 5c 24 30 74 0a 56 8d 4c 24 34 e8
00ec3560: fc 21 63 ff 8b 4c 24 28 8b 44 24 20 e9 94 00 00
00ec3570: 00 68 c4 a6 fb 00 8d 4c 24 14 89 74 24 14 89 74
00ec3580: 24 18 89 74 24 1c c7 44 24 20 f0 3b 00 01 e8 fd
00ec3590: 7f 54 ff 68 00 e0 00 00 8d 54 24 14 52 8b cb e8
00ec35a0: fc 65 90 ff 6a 01 6a 10 8d 44 24 18 50 6a 09 bb
00ec35b0: f4 a6 fb 00 6a 13 8d 4c 24 64 89 5c 24 64 66 89
00ec35c0: 74 24 6c 66 89 74 24 6e e8 f3 23 63 ff 8d 44 24
00ec35d0: 0c 89 74 24 0c 8b 17 8b 52 50 50 8d 4c 24 54 51
00ec35e0: 8b cf ff d2 f6 44 24 58 04 8b 7c 24 0c 89 5c 24
00ec35f0: 50 74 0a 56 8d 4c 24 54 e8 63 21 63 ff 8b 4c 24
00ec3600: 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 3b
00ec3610: c6 74 09 50 e8 c7 0e 62 ff 83 c4 04 8b c7 5f 5e
00ec3620: 5b 83 c4 64 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec34a0 <.text+0xac24a0>:
  ec34a0:	83 ec 64                                        	sub    esp,0x64
  ec34a3:	53                                              	push   ebx
  ec34a4:	56                                              	push   esi
  ec34a5:	57                                              	push   edi
  ec34a6:	e8 e5 5e 8a ff                                  	call   0x769390
  ec34ab:	8b 5c 24 74                                     	mov    ebx,DWORD PTR [esp+0x74]
  ec34af:	8b f8                                           	mov    edi,eax
  ec34b1:	8b c3                                           	mov    eax,ebx
  ec34b3:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec34b8:	33 f6                                           	xor    esi,esi
  ec34ba:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec34bf:	74 04                                           	je     0xec34c5
  ec34c1:	33 db                                           	xor    ebx,ebx
  ec34c3:	eb 14                                           	jmp    0xec34d9
  ec34c5:	e8 c6 5e 8a ff                                  	call   0x769390
  ec34ca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec34cc:	8b c8                                           	mov    ecx,eax
  ec34ce:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec34d4:	53                                              	push   ebx
  ec34d5:	ff d0                                           	call   eax
  ec34d7:	8b d8                                           	mov    ebx,eax
  ec34d9:	3b fe                                           	cmp    edi,esi
  ec34db:	0f 84 90 00 00 00                               	je     0xec3571
  ec34e1:	3b de                                           	cmp    ebx,esi
  ec34e3:	0f 85 88 00 00 00                               	jne    0xec3571
  ec34e9:	68 c4 a6 fb 00                                  	push   0xfba6c4
  ec34ee:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec34f2:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  ec34f6:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  ec34fa:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  ec34fe:	c7 44 24 30 f0 3b 00 01                         	mov    DWORD PTR [esp+0x30],0x1003bf0
  ec3506:	e8 85 80 54 ff                                  	call   0x40b590
  ec350b:	6a 01                                           	push   0x1
  ec350d:	6a 10                                           	push   0x10
  ec350f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ec3513:	51                                              	push   ecx
  ec3514:	6a 09                                           	push   0x9
  ec3516:	bb f4 a6 fb 00                                  	mov    ebx,0xfba6f4
  ec351b:	6a 13                                           	push   0x13
  ec351d:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ec3521:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  ec3525:	66 89 74 24 4c                                  	mov    WORD PTR [esp+0x4c],si
  ec352a:	66 89 74 24 4e                                  	mov    WORD PTR [esp+0x4e],si
  ec352f:	e8 8c 24 63 ff                                  	call   0x4f59c0
  ec3534:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec3536:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec3539:	8d 44 24 74                                     	lea    eax,[esp+0x74]
  ec353d:	50                                              	push   eax
  ec353e:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ec3542:	51                                              	push   ecx
  ec3543:	8b cf                                           	mov    ecx,edi
  ec3545:	89 74 24 7c                                     	mov    DWORD PTR [esp+0x7c],esi
  ec3549:	ff d2                                           	call   edx
  ec354b:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  ec3550:	8b 7c 24 74                                     	mov    edi,DWORD PTR [esp+0x74]
  ec3554:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  ec3558:	74 0a                                           	je     0xec3564
  ec355a:	56                                              	push   esi
  ec355b:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ec355f:	e8 fc 21 63 ff                                  	call   0x4f5760
  ec3564:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ec3568:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ec356c:	e9 94 00 00 00                                  	jmp    0xec3605
  ec3571:	68 c4 a6 fb 00                                  	push   0xfba6c4
  ec3576:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec357a:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  ec357e:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  ec3582:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  ec3586:	c7 44 24 20 f0 3b 00 01                         	mov    DWORD PTR [esp+0x20],0x1003bf0
  ec358e:	e8 fd 7f 54 ff                                  	call   0x40b590
  ec3593:	68 00 e0 00 00                                  	push   0xe000
  ec3598:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  ec359c:	52                                              	push   edx
  ec359d:	8b cb                                           	mov    ecx,ebx
  ec359f:	e8 fc 65 90 ff                                  	call   0x7c9ba0
  ec35a4:	6a 01                                           	push   0x1
  ec35a6:	6a 10                                           	push   0x10
  ec35a8:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  ec35ac:	50                                              	push   eax
  ec35ad:	6a 09                                           	push   0x9
  ec35af:	bb f4 a6 fb 00                                  	mov    ebx,0xfba6f4
  ec35b4:	6a 13                                           	push   0x13
  ec35b6:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  ec35ba:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
  ec35be:	66 89 74 24 6c                                  	mov    WORD PTR [esp+0x6c],si
  ec35c3:	66 89 74 24 6e                                  	mov    WORD PTR [esp+0x6e],si
  ec35c8:	e8 f3 23 63 ff                                  	call   0x4f59c0
  ec35cd:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ec35d1:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  ec35d5:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec35d7:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec35da:	50                                              	push   eax
  ec35db:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  ec35df:	51                                              	push   ecx
  ec35e0:	8b cf                                           	mov    ecx,edi
  ec35e2:	ff d2                                           	call   edx
  ec35e4:	f6 44 24 58 04                                  	test   BYTE PTR [esp+0x58],0x4
  ec35e9:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  ec35ed:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
  ec35f1:	74 0a                                           	je     0xec35fd
  ec35f3:	56                                              	push   esi
  ec35f4:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  ec35f8:	e8 63 21 63 ff                                  	call   0x4f5760
  ec35fd:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ec3601:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec3605:	2b c8                                           	sub    ecx,eax
  ec3607:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec360a:	83 f9 02                                        	cmp    ecx,0x2
  ec360d:	7e 0d                                           	jle    0xec361c
  ec360f:	3b c6                                           	cmp    eax,esi
  ec3611:	74 09                                           	je     0xec361c
  ec3613:	50                                              	push   eax
  ec3614:	e8 c7 0e 62 ff                                  	call   0x4e44e0
  ec3619:	83 c4 04                                        	add    esp,0x4
  ec361c:	8b c7                                           	mov    eax,edi
  ec361e:	5f                                              	pop    edi
  ec361f:	5e                                              	pop    esi
  ec3620:	5b                                              	pop    ebx
  ec3621:	83 c4 64                                        	add    esp,0x64
  ec3624:	c3                                              	ret
  ec3625:	cc                                              	int3
  ec3626:	cc                                              	int3
  ec3627:	cc                                              	int3
  ec3628:	cc                                              	int3
  ec3629:	cc                                              	int3
  ec362a:	cc                                              	int3
  ec362b:	cc                                              	int3
  ec362c:	cc                                              	int3
  ec362d:	cc                                              	int3
  ec362e:	cc                                              	int3
  ec362f:	cc                                              	int3
