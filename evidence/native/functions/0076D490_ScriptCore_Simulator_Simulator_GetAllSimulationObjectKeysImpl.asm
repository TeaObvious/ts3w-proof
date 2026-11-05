# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d490 (ScriptCore.Simulator::Simulator_GetAllSimulationObjectKeysImpl)
Paired Ghidra pseudocode: 0076D490_ScriptCore_Simulator_Simulator_GetAllSimulationObjectKeysImpl.c
Window: [0x0076d490, 0x0076d5c0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d5c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d490: 83 ec 2c 53 55 56 57 e8 f4 be ff ff 8b f8 e8 dd
0076d4a0: 29 d4 ff 33 ed 8b d8 55 8d 4c 24 20 c7 44 24 20
0076d4b0: b0 92 fd 00 c7 44 24 24 3f 34 dc 02 89 6c 24 30
0076d4c0: 89 6c 24 34 89 6c 24 38 c7 44 24 3c cc 8e 00 01
0076d4d0: 8b 03 8b 40 20 51 8d 54 24 34 52 8b cb ff d0 8d
0076d4e0: 4c 24 2c 51 e8 47 29 d4 ff 8b 44 24 34 2b 44 24
0076d4f0: 30 8b 17 8b 92 88 00 00 00 83 c4 04 c1 f8 04 50
0076d500: 8d 4c 24 18 51 8b cf ff d2 8b 44 24 30 8b 74 24
0076d510: 2c 3b f0 89 44 24 18 0f 84 83 00 00 00 8d 49 00
0076d520: 8b 03 8b 50 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24
0076d530: 20 51 56 8b cb c7 44 24 28 00 00 00 00 ff d2 84
0076d540: c0 74 3e 8b 4c 24 10 85 c9 74 45 8b 01 8b 50 0c
0076d550: 68 50 34 dc 02 ff d2 85 c0 74 26 8b 06 8b 4e 04
0076d560: 8b 17 8b 92 a0 00 00 00 6a 01 89 44 24 28 55 89
0076d570: 4c 24 30 8d 44 24 2c 50 8d 4c 24 20 51 8b cf ff
0076d580: d2 8b 4c 24 10 85 c9 74 07 8b 01 8b 50 04 ff d2
0076d590: 83 c6 10 83 c5 01 3b 74 24 18 75 84 8b 74 24 2c
0076d5a0: 85 f6 8b 7c 24 14 74 09 56 e8 32 6f d7 ff 83 c4
0076d5b0: 04 8b c7 5f 5e 5d 5b 83 c4 2c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0076d490 <.text+0x36c490>:
  76d490:	83 ec 2c                                        	sub    esp,0x2c
  76d493:	53                                              	push   ebx
  76d494:	55                                              	push   ebp
  76d495:	56                                              	push   esi
  76d496:	57                                              	push   edi
  76d497:	e8 f4 be ff ff                                  	call   0x769390
  76d49c:	8b f8                                           	mov    edi,eax
  76d49e:	e8 dd 29 d4 ff                                  	call   0x4afe80
  76d4a3:	33 ed                                           	xor    ebp,ebp
  76d4a5:	8b d8                                           	mov    ebx,eax
  76d4a7:	55                                              	push   ebp
  76d4a8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  76d4ac:	c7 44 24 20 b0 92 fd 00                         	mov    DWORD PTR [esp+0x20],0xfd92b0
  76d4b4:	c7 44 24 24 3f 34 dc 02                         	mov    DWORD PTR [esp+0x24],0x2dc343f
  76d4bc:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  76d4c0:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  76d4c4:	89 6c 24 38                                     	mov    DWORD PTR [esp+0x38],ebp
  76d4c8:	c7 44 24 3c cc 8e 00 01                         	mov    DWORD PTR [esp+0x3c],0x1008ecc
  76d4d0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  76d4d2:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
  76d4d5:	51                                              	push   ecx
  76d4d6:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  76d4da:	52                                              	push   edx
  76d4db:	8b cb                                           	mov    ecx,ebx
  76d4dd:	ff d0                                           	call   eax
  76d4df:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  76d4e3:	51                                              	push   ecx
  76d4e4:	e8 47 29 d4 ff                                  	call   0x4afe30
  76d4e9:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  76d4ed:	2b 44 24 30                                     	sub    eax,DWORD PTR [esp+0x30]
  76d4f1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76d4f3:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  76d4f9:	83 c4 04                                        	add    esp,0x4
  76d4fc:	c1 f8 04                                        	sar    eax,0x4
  76d4ff:	50                                              	push   eax
  76d500:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76d504:	51                                              	push   ecx
  76d505:	8b cf                                           	mov    ecx,edi
  76d507:	ff d2                                           	call   edx
  76d509:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  76d50d:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  76d511:	3b f0                                           	cmp    esi,eax
  76d513:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  76d517:	0f 84 83 00 00 00                               	je     0x76d5a0
  76d51d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  76d520:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  76d522:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  76d525:	6a 00                                           	push   0x0
  76d527:	6a 00                                           	push   0x0
  76d529:	6a 00                                           	push   0x0
  76d52b:	6a 00                                           	push   0x0
  76d52d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  76d531:	51                                              	push   ecx
  76d532:	56                                              	push   esi
  76d533:	8b cb                                           	mov    ecx,ebx
  76d535:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  76d53d:	ff d2                                           	call   edx
  76d53f:	84 c0                                           	test   al,al
  76d541:	74 3e                                           	je     0x76d581
  76d543:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76d547:	85 c9                                           	test   ecx,ecx
  76d549:	74 45                                           	je     0x76d590
  76d54b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d54d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  76d550:	68 50 34 dc 02                                  	push   0x2dc3450
  76d555:	ff d2                                           	call   edx
  76d557:	85 c0                                           	test   eax,eax
  76d559:	74 26                                           	je     0x76d581
  76d55b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76d55d:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  76d560:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76d562:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
  76d568:	6a 01                                           	push   0x1
  76d56a:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  76d56e:	55                                              	push   ebp
  76d56f:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  76d573:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  76d577:	50                                              	push   eax
  76d578:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  76d57c:	51                                              	push   ecx
  76d57d:	8b cf                                           	mov    ecx,edi
  76d57f:	ff d2                                           	call   edx
  76d581:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76d585:	85 c9                                           	test   ecx,ecx
  76d587:	74 07                                           	je     0x76d590
  76d589:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76d58b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76d58e:	ff d2                                           	call   edx
  76d590:	83 c6 10                                        	add    esi,0x10
  76d593:	83 c5 01                                        	add    ebp,0x1
  76d596:	3b 74 24 18                                     	cmp    esi,DWORD PTR [esp+0x18]
  76d59a:	75 84                                           	jne    0x76d520
  76d59c:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  76d5a0:	85 f6                                           	test   esi,esi
  76d5a2:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76d5a6:	74 09                                           	je     0x76d5b1
  76d5a8:	56                                              	push   esi
  76d5a9:	e8 32 6f d7 ff                                  	call   0x4e44e0
  76d5ae:	83 c4 04                                        	add    esp,0x4
  76d5b1:	8b c7                                           	mov    eax,edi
  76d5b3:	5f                                              	pop    edi
  76d5b4:	5e                                              	pop    esi
  76d5b5:	5d                                              	pop    ebp
  76d5b6:	5b                                              	pop    ebx
  76d5b7:	83 c4 2c                                        	add    esp,0x2c
  76d5ba:	c3                                              	ret
  76d5bb:	cc                                              	int3
  76d5bc:	cc                                              	int3
  76d5bd:	cc                                              	int3
  76d5be:	cc                                              	int3
  76d5bf:	cc                                              	int3
