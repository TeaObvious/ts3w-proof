# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1520 (ScriptCore.GameUtils::GameUtils_HasBeenToWorldImpl)
Paired Ghidra pseudocode: 00EC1520_ScriptCore_GameUtils_GameUtils_HasBeenToWorldImpl.c
Window: [0x00ec1520, 0x00ec15d0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec15d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1520: 81 ec 10 04 00 00 53 56 57 e8 92 84 be ff 8b d8
00ec1530: e8 5b 7e 8a ff 85 db 8b f0 74 7f 85 f6 74 7b 8b
00ec1540: 8c 24 20 04 00 00 8b 06 8b 50 58 51 8b ce ff d2
00ec1550: 8b 8c 24 24 04 00 00 8b f8 8b 06 8b 50 58 51 8b
00ec1560: ce ff d2 85 ff 8b f0 74 51 85 f6 74 4d 8d 4c 24
00ec1570: 0c e8 6a b2 62 ff 8d 44 24 0c 50 8b cb e8 de 84
00ec1580: be ff 56 8d 4c 24 10 e8 c4 cc 62 ff 6a 00 57 8d
00ec1590: 4c 24 14 e8 68 ce 62 ff 8d 4c 24 0c e8 ff 3b 92
00ec15a0: ff 50 e8 c9 a7 61 ff 83 c4 04 84 c0 74 0c 5f 5e
00ec15b0: b0 01 5b 81 c4 10 04 00 00 c3 5f 5e 32 c0 5b 81
00ec15c0: c4 10 04 00 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1520 <.text+0xac0520>:
  ec1520:	81 ec 10 04 00 00                               	sub    esp,0x410
  ec1526:	53                                              	push   ebx
  ec1527:	56                                              	push   esi
  ec1528:	57                                              	push   edi
  ec1529:	e8 92 84 be ff                                  	call   0xaa99c0
  ec152e:	8b d8                                           	mov    ebx,eax
  ec1530:	e8 5b 7e 8a ff                                  	call   0x769390
  ec1535:	85 db                                           	test   ebx,ebx
  ec1537:	8b f0                                           	mov    esi,eax
  ec1539:	74 7f                                           	je     0xec15ba
  ec153b:	85 f6                                           	test   esi,esi
  ec153d:	74 7b                                           	je     0xec15ba
  ec153f:	8b 8c 24 20 04 00 00                            	mov    ecx,DWORD PTR [esp+0x420]
  ec1546:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec1548:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec154b:	51                                              	push   ecx
  ec154c:	8b ce                                           	mov    ecx,esi
  ec154e:	ff d2                                           	call   edx
  ec1550:	8b 8c 24 24 04 00 00                            	mov    ecx,DWORD PTR [esp+0x424]
  ec1557:	8b f8                                           	mov    edi,eax
  ec1559:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec155b:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec155e:	51                                              	push   ecx
  ec155f:	8b ce                                           	mov    ecx,esi
  ec1561:	ff d2                                           	call   edx
  ec1563:	85 ff                                           	test   edi,edi
  ec1565:	8b f0                                           	mov    esi,eax
  ec1567:	74 51                                           	je     0xec15ba
  ec1569:	85 f6                                           	test   esi,esi
  ec156b:	74 4d                                           	je     0xec15ba
  ec156d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec1571:	e8 6a b2 62 ff                                  	call   0x4ec7e0
  ec1576:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ec157a:	50                                              	push   eax
  ec157b:	8b cb                                           	mov    ecx,ebx
  ec157d:	e8 de 84 be ff                                  	call   0xaa9a60
  ec1582:	56                                              	push   esi
  ec1583:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec1587:	e8 c4 cc 62 ff                                  	call   0x4ee250
  ec158c:	6a 00                                           	push   0x0
  ec158e:	57                                              	push   edi
  ec158f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec1593:	e8 68 ce 62 ff                                  	call   0x4ee400
  ec1598:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec159c:	e8 ff 3b 92 ff                                  	call   0x7e51a0
  ec15a1:	50                                              	push   eax
  ec15a2:	e8 c9 a7 61 ff                                  	call   0x4dbd70
  ec15a7:	83 c4 04                                        	add    esp,0x4
  ec15aa:	84 c0                                           	test   al,al
  ec15ac:	74 0c                                           	je     0xec15ba
  ec15ae:	5f                                              	pop    edi
  ec15af:	5e                                              	pop    esi
  ec15b0:	b0 01                                           	mov    al,0x1
  ec15b2:	5b                                              	pop    ebx
  ec15b3:	81 c4 10 04 00 00                               	add    esp,0x410
  ec15b9:	c3                                              	ret
  ec15ba:	5f                                              	pop    edi
  ec15bb:	5e                                              	pop    esi
  ec15bc:	32 c0                                           	xor    al,al
  ec15be:	5b                                              	pop    ebx
  ec15bf:	81 c4 10 04 00 00                               	add    esp,0x410
  ec15c5:	c3                                              	ret
  ec15c6:	cc                                              	int3
  ec15c7:	cc                                              	int3
  ec15c8:	cc                                              	int3
  ec15c9:	cc                                              	int3
  ec15ca:	cc                                              	int3
  ec15cb:	cc                                              	int3
  ec15cc:	cc                                              	int3
  ec15cd:	cc                                              	int3
  ec15ce:	cc                                              	int3
  ec15cf:	cc                                              	int3
