# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007674d0 (SACS_RequestStateImpl)
Paired Ghidra pseudocode: 007674D0_SACS_RequestStateImpl.c
Window: [0x007674d0, 0x00767590) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007674d0: 53 56 e8 b9 1e 00 00 8b 4c 24 0c 8b f0 8b 06 8b
007674e0: 90 cc 00 00 00 51 8b ce ff d2 8b d8 85 db 75 06
007674f0: 5e 8d 43 fe 5b c3 8b 44 24 20 57 33 ff 85 c0 74
00767500: 0f 8b 16 50 8b 82 cc 00 00 00 8b ce ff d0 8b f8
00767510: 8b 74 24 1c 33 c0 85 ff 55 8b 6c 24 1c 74 36 6a
00767520: 28 e8 fa 38 00 00 83 c4 04 85 c0 74 26 8b 4c 24
00767530: 2c d9 ee 8b 54 24 24 51 57 52 51 8b 4c 24 28 d9
00767540: 1c 24 56 55 51 53 6a 00 6a 00 8b c8 e8 cf fc ff
00767550: ff eb 02 33 c0 8b 54 24 18 6a 00 50 56 55 52 8b
00767560: cb e8 ba c8 09 00 f7 c6 00 02 00 00 8b f8 5d 74
00767570: 0e 8b 0d 40 9d 1d 01 6a 01 53 e8 81 5a 09 00 8b
00767580: c7 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007674d0 <.text+0x3664d0>:
  7674d0:	53                                              	push   ebx
  7674d1:	56                                              	push   esi
  7674d2:	e8 b9 1e 00 00                                  	call   0x769390
  7674d7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7674db:	8b f0                                           	mov    esi,eax
  7674dd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7674df:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  7674e5:	51                                              	push   ecx
  7674e6:	8b ce                                           	mov    ecx,esi
  7674e8:	ff d2                                           	call   edx
  7674ea:	8b d8                                           	mov    ebx,eax
  7674ec:	85 db                                           	test   ebx,ebx
  7674ee:	75 06                                           	jne    0x7674f6
  7674f0:	5e                                              	pop    esi
  7674f1:	8d 43 fe                                        	lea    eax,[ebx-0x2]
  7674f4:	5b                                              	pop    ebx
  7674f5:	c3                                              	ret
  7674f6:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7674fa:	57                                              	push   edi
  7674fb:	33 ff                                           	xor    edi,edi
  7674fd:	85 c0                                           	test   eax,eax
  7674ff:	74 0f                                           	je     0x767510
  767501:	8b 16                                           	mov    edx,DWORD PTR [esi]
  767503:	50                                              	push   eax
  767504:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  76750a:	8b ce                                           	mov    ecx,esi
  76750c:	ff d0                                           	call   eax
  76750e:	8b f8                                           	mov    edi,eax
  767510:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  767514:	33 c0                                           	xor    eax,eax
  767516:	85 ff                                           	test   edi,edi
  767518:	55                                              	push   ebp
  767519:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
  76751d:	74 36                                           	je     0x767555
  76751f:	6a 28                                           	push   0x28
  767521:	e8 fa 38 00 00                                  	call   0x76ae20
  767526:	83 c4 04                                        	add    esp,0x4
  767529:	85 c0                                           	test   eax,eax
  76752b:	74 26                                           	je     0x767553
  76752d:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  767531:	d9 ee                                           	fldz
  767533:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  767537:	51                                              	push   ecx
  767538:	57                                              	push   edi
  767539:	52                                              	push   edx
  76753a:	51                                              	push   ecx
  76753b:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  76753f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  767542:	56                                              	push   esi
  767543:	55                                              	push   ebp
  767544:	51                                              	push   ecx
  767545:	53                                              	push   ebx
  767546:	6a 00                                           	push   0x0
  767548:	6a 00                                           	push   0x0
  76754a:	8b c8                                           	mov    ecx,eax
  76754c:	e8 cf fc ff ff                                  	call   0x767220
  767551:	eb 02                                           	jmp    0x767555
  767553:	33 c0                                           	xor    eax,eax
  767555:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  767559:	6a 00                                           	push   0x0
  76755b:	50                                              	push   eax
  76755c:	56                                              	push   esi
  76755d:	55                                              	push   ebp
  76755e:	52                                              	push   edx
  76755f:	8b cb                                           	mov    ecx,ebx
  767561:	e8 ba c8 09 00                                  	call   0x803e20
  767566:	f7 c6 00 02 00 00                               	test   esi,0x200
  76756c:	8b f8                                           	mov    edi,eax
  76756e:	5d                                              	pop    ebp
  76756f:	74 0e                                           	je     0x76757f
  767571:	8b 0d 40 9d 1d 01                               	mov    ecx,DWORD PTR ds:0x11d9d40
  767577:	6a 01                                           	push   0x1
  767579:	53                                              	push   ebx
  76757a:	e8 81 5a 09 00                                  	call   0x7fd000
  76757f:	8b c7                                           	mov    eax,edi
  767581:	5f                                              	pop    edi
  767582:	5e                                              	pop    esi
  767583:	5b                                              	pop    ebx
  767584:	c3                                              	ret
  767585:	cc                                              	int3
  767586:	cc                                              	int3
  767587:	cc                                              	int3
  767588:	cc                                              	int3
  767589:	cc                                              	int3
  76758a:	cc                                              	int3
  76758b:	cc                                              	int3
  76758c:	cc                                              	int3
  76758d:	cc                                              	int3
  76758e:	cc                                              	int3
  76758f:	cc                                              	int3
