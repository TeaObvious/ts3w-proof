# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7500 (ScriptCore.CASUtils::CASUtils_GetColorInfoBytesImpl)
Paired Ghidra pseudocode: 005A7500_ScriptCore_CASUtils_CASUtils_GetColorInfoBytesImpl.c
Window: [0x005a7500, 0x005a7610) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7500: 83 ec 1c 8b 44 24 28 8b 4c 24 2c 8b 54 24 20 89
005a7510: 44 24 0c 8b 44 24 24 89 4c 24 10 89 54 24 14 89
005a7520: 44 24 18 e8 58 89 f0 ff 85 c0 75 04 83 c4 1c c3
005a7530: 8b 10 8b 52 44 53 8d 4c 24 10 51 8b c8 ff d2 8b
005a7540: d8 85 db 74 23 8b 03 8b 40 34 6a 00 6a 01 6a 06
005a7550: 6a 01 8d 4c 24 14 51 8d 54 24 24 52 8b cb ff d0
005a7560: 8b 4c 24 04 85 c9 75 07 33 c0 5b 83 c4 1c c3 8b
005a7570: 11 8b 42 18 56 57 ff d0 8b f8 8b 17 8b 42 1c 8b
005a7580: cf ff d0 89 44 24 2c e8 04 1e 1c 00 8b f0 8b 44
005a7590: 24 2c 8b 16 8b 92 80 00 00 00 50 8d 4c 24 14 51
005a75a0: 8b ce ff d2 8b 06 8d 4c 24 2c 51 8b 4c 24 14 8d
005a75b0: 54 24 18 52 8b 50 70 51 8b ce ff d2 8b 4c 24 2c
005a75c0: 8b 07 8b 54 24 14 8b 40 30 51 52 8b cf ff d0 8b
005a75d0: 44 24 2c 8b 4c 24 14 8b 16 8b 92 98 00 00 00 50
005a75e0: 6a 00 51 8d 44 24 1c 50 8b ce ff d2 8b 4c 24 0c
005a75f0: 8b 03 8b 50 3c 51 8b cb ff d2 8b 4c 24 0c 8b 01
005a7600: 8b 50 08 ff d2 8b 44 24 10 5f 5e 5b 83 c4 1c c3

LINEAR DISASSEMBLY
005a7500 <.text+0x1a6500>:
  5a7500:	83 ec 1c                                        	sub    esp,0x1c
  5a7503:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  5a7507:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a750b:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a750f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  5a7513:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  5a7517:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  5a751b:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a751f:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5a7523:	e8 58 89 f0 ff                                  	call   0x4afe80
  5a7528:	85 c0                                           	test   eax,eax
  5a752a:	75 04                                           	jne    0x5a7530
  5a752c:	83 c4 1c                                        	add    esp,0x1c
  5a752f:	c3                                              	ret
  5a7530:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7532:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  5a7535:	53                                              	push   ebx
  5a7536:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a753a:	51                                              	push   ecx
  5a753b:	8b c8                                           	mov    ecx,eax
  5a753d:	ff d2                                           	call   edx
  5a753f:	8b d8                                           	mov    ebx,eax
  5a7541:	85 db                                           	test   ebx,ebx
  5a7543:	74 23                                           	je     0x5a7568
  5a7545:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5a7547:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
  5a754a:	6a 00                                           	push   0x0
  5a754c:	6a 01                                           	push   0x1
  5a754e:	6a 06                                           	push   0x6
  5a7550:	6a 01                                           	push   0x1
  5a7552:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a7556:	51                                              	push   ecx
  5a7557:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  5a755b:	52                                              	push   edx
  5a755c:	8b cb                                           	mov    ecx,ebx
  5a755e:	ff d0                                           	call   eax
  5a7560:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a7564:	85 c9                                           	test   ecx,ecx
  5a7566:	75 07                                           	jne    0x5a756f
  5a7568:	33 c0                                           	xor    eax,eax
  5a756a:	5b                                              	pop    ebx
  5a756b:	83 c4 1c                                        	add    esp,0x1c
  5a756e:	c3                                              	ret
  5a756f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5a7571:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  5a7574:	56                                              	push   esi
  5a7575:	57                                              	push   edi
  5a7576:	ff d0                                           	call   eax
  5a7578:	8b f8                                           	mov    edi,eax
  5a757a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a757c:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a757f:	8b cf                                           	mov    ecx,edi
  5a7581:	ff d0                                           	call   eax
  5a7583:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  5a7587:	e8 04 1e 1c 00                                  	call   0x769390
  5a758c:	8b f0                                           	mov    esi,eax
  5a758e:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a7592:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a7594:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
  5a759a:	50                                              	push   eax
  5a759b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a759f:	51                                              	push   ecx
  5a75a0:	8b ce                                           	mov    ecx,esi
  5a75a2:	ff d2                                           	call   edx
  5a75a4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a75a6:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5a75aa:	51                                              	push   ecx
  5a75ab:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a75af:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  5a75b3:	52                                              	push   edx
  5a75b4:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  5a75b7:	51                                              	push   ecx
  5a75b8:	8b ce                                           	mov    ecx,esi
  5a75ba:	ff d2                                           	call   edx
  5a75bc:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a75c0:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a75c2:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a75c6:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
  5a75c9:	51                                              	push   ecx
  5a75ca:	52                                              	push   edx
  5a75cb:	8b cf                                           	mov    ecx,edi
  5a75cd:	ff d0                                           	call   eax
  5a75cf:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a75d3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a75d7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a75d9:	8b 92 98 00 00 00                               	mov    edx,DWORD PTR [edx+0x98]
  5a75df:	50                                              	push   eax
  5a75e0:	6a 00                                           	push   0x0
  5a75e2:	51                                              	push   ecx
  5a75e3:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  5a75e7:	50                                              	push   eax
  5a75e8:	8b ce                                           	mov    ecx,esi
  5a75ea:	ff d2                                           	call   edx
  5a75ec:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a75f0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5a75f2:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  5a75f5:	51                                              	push   ecx
  5a75f6:	8b cb                                           	mov    ecx,ebx
  5a75f8:	ff d2                                           	call   edx
  5a75fa:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a75fe:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7600:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5a7603:	ff d2                                           	call   edx
  5a7605:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5a7609:	5f                                              	pop    edi
  5a760a:	5e                                              	pop    esi
  5a760b:	5b                                              	pop    ebx
  5a760c:	83 c4 1c                                        	add    esp,0x1c
  5a760f:	c3                                              	ret
