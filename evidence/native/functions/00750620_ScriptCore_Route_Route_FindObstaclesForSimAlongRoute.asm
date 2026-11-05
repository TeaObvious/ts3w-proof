# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750620 (ScriptCore.Route::Route_FindObstaclesForSimAlongRoute)
Paired Ghidra pseudocode: 00750620_ScriptCore_Route_Route_FindObstaclesForSimAlongRoute.c
Window: [0x00750620, 0x00750760) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750620: 83 ec 14 8b 0d c4 50 1d 01 33 c0 85 c9 89 04 24
00750630: 0f 84 1e 01 00 00 8b 44 24 20 55 50 e8 6f ae ff
00750640: ff 8b e8 85 ed 0f 84 04 01 00 00 8b 55 00 8b 42
00750650: 10 56 8b cd ff d0 80 bd f4 00 00 00 00 74 08 8b
00750660: b5 ec 00 00 00 eb 13 8d 85 e0 00 00 00 39 00 0f
00750670: 84 cf 00 00 00 8b 08 8b 71 08 85 f6 0f 84 c2 00
00750680: 00 00 e8 e9 6e 1e 00 8b 54 24 24 8b 4c 24 20 52
00750690: 51 8b c8 e8 e8 78 1e 00 85 c0 0f 84 a4 00 00 00
007506a0: 8b 15 38 a1 1e 01 52 8b c8 e8 b2 3b 1e 00 85 c0
007506b0: 0f 84 8e 00 00 00 6a 01 6a 01 8d 4c 24 14 51 83
007506c0: c0 08 56 50 c7 44 24 20 00 00 00 00 c7 44 24 24
007506d0: 00 00 00 00 c7 44 24 28 00 00 00 00 c7 44 24 2c
007506e0: 80 53 00 01 e8 a7 ef 10 00 8b 4c 24 20 8b 44 24
007506f0: 24 83 c4 14 3b c8 74 3f 2b c1 c1 f8 03 57 8b f8
00750700: e8 8b 8c 01 00 8b f0 8b 16 8b 92 88 00 00 00 57
00750710: 8d 44 24 10 50 8b ce ff d2 8b 4c 24 10 8b 06 8b
00750720: 80 a0 00 00 00 57 6a 00 51 8d 54 24 18 52 8b ce
00750730: ff d0 8b 4c 24 10 5f 85 c9 74 09 51 e8 9f 3d d9
00750740: ff 83 c4 04 8b 55 00 8b 42 14 8b cd ff d0 5e 8b
00750750: 44 24 04 5d 83 c4 14 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00750620 <.text+0x34f620>:
  750620:	83 ec 14                                        	sub    esp,0x14
  750623:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  750629:	33 c0                                           	xor    eax,eax
  75062b:	85 c9                                           	test   ecx,ecx
  75062d:	89 04 24                                        	mov    DWORD PTR [esp],eax
  750630:	0f 84 1e 01 00 00                               	je     0x750754
  750636:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  75063a:	55                                              	push   ebp
  75063b:	50                                              	push   eax
  75063c:	e8 6f ae ff ff                                  	call   0x74b4b0
  750641:	8b e8                                           	mov    ebp,eax
  750643:	85 ed                                           	test   ebp,ebp
  750645:	0f 84 04 01 00 00                               	je     0x75074f
  75064b:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  75064e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  750651:	56                                              	push   esi
  750652:	8b cd                                           	mov    ecx,ebp
  750654:	ff d0                                           	call   eax
  750656:	80 bd f4 00 00 00 00                            	cmp    BYTE PTR [ebp+0xf4],0x0
  75065d:	74 08                                           	je     0x750667
  75065f:	8b b5 ec 00 00 00                               	mov    esi,DWORD PTR [ebp+0xec]
  750665:	eb 13                                           	jmp    0x75067a
  750667:	8d 85 e0 00 00 00                               	lea    eax,[ebp+0xe0]
  75066d:	39 00                                           	cmp    DWORD PTR [eax],eax
  75066f:	0f 84 cf 00 00 00                               	je     0x750744
  750675:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  750677:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  75067a:	85 f6                                           	test   esi,esi
  75067c:	0f 84 c2 00 00 00                               	je     0x750744
  750682:	e8 e9 6e 1e 00                                  	call   0x937570
  750687:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  75068b:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  75068f:	52                                              	push   edx
  750690:	51                                              	push   ecx
  750691:	8b c8                                           	mov    ecx,eax
  750693:	e8 e8 78 1e 00                                  	call   0x937f80
  750698:	85 c0                                           	test   eax,eax
  75069a:	0f 84 a4 00 00 00                               	je     0x750744
  7506a0:	8b 15 38 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea138
  7506a6:	52                                              	push   edx
  7506a7:	8b c8                                           	mov    ecx,eax
  7506a9:	e8 b2 3b 1e 00                                  	call   0x934260
  7506ae:	85 c0                                           	test   eax,eax
  7506b0:	0f 84 8e 00 00 00                               	je     0x750744
  7506b6:	6a 01                                           	push   0x1
  7506b8:	6a 01                                           	push   0x1
  7506ba:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7506be:	51                                              	push   ecx
  7506bf:	83 c0 08                                        	add    eax,0x8
  7506c2:	56                                              	push   esi
  7506c3:	50                                              	push   eax
  7506c4:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  7506cc:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  7506d4:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  7506dc:	c7 44 24 2c 80 53 00 01                         	mov    DWORD PTR [esp+0x2c],0x1005380
  7506e4:	e8 a7 ef 10 00                                  	call   0x85f690
  7506e9:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7506ed:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  7506f1:	83 c4 14                                        	add    esp,0x14
  7506f4:	3b c8                                           	cmp    ecx,eax
  7506f6:	74 3f                                           	je     0x750737
  7506f8:	2b c1                                           	sub    eax,ecx
  7506fa:	c1 f8 03                                        	sar    eax,0x3
  7506fd:	57                                              	push   edi
  7506fe:	8b f8                                           	mov    edi,eax
  750700:	e8 8b 8c 01 00                                  	call   0x769390
  750705:	8b f0                                           	mov    esi,eax
  750707:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750709:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
  75070f:	57                                              	push   edi
  750710:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  750714:	50                                              	push   eax
  750715:	8b ce                                           	mov    ecx,esi
  750717:	ff d2                                           	call   edx
  750719:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  75071d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75071f:	8b 80 a0 00 00 00                               	mov    eax,DWORD PTR [eax+0xa0]
  750725:	57                                              	push   edi
  750726:	6a 00                                           	push   0x0
  750728:	51                                              	push   ecx
  750729:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  75072d:	52                                              	push   edx
  75072e:	8b ce                                           	mov    ecx,esi
  750730:	ff d0                                           	call   eax
  750732:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  750736:	5f                                              	pop    edi
  750737:	85 c9                                           	test   ecx,ecx
  750739:	74 09                                           	je     0x750744
  75073b:	51                                              	push   ecx
  75073c:	e8 9f 3d d9 ff                                  	call   0x4e44e0
  750741:	83 c4 04                                        	add    esp,0x4
  750744:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  750747:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75074a:	8b cd                                           	mov    ecx,ebp
  75074c:	ff d0                                           	call   eax
  75074e:	5e                                              	pop    esi
  75074f:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  750753:	5d                                              	pop    ebp
  750754:	83 c4 14                                        	add    esp,0x14
  750757:	c3                                              	ret
  750758:	cc                                              	int3
  750759:	cc                                              	int3
  75075a:	cc                                              	int3
  75075b:	cc                                              	int3
  75075c:	cc                                              	int3
  75075d:	cc                                              	int3
  75075e:	cc                                              	int3
  75075f:	cc                                              	int3
