# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073b3f0 (ScriptCore.Animation::Animation_StartRandomClipController)
Paired Ghidra pseudocode: 0073B3F0_ScriptCore_Animation_Animation_StartRandomClipController.c
Window: [0x0073b3f0, 0x0073b7e0) (1008 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073b7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073b3f0: 83 ec 70 53 55 56 57 e8 74 c1 1f 00 8b 8c 24 88
0073b400: 00 00 00 8b 94 24 84 00 00 00 51 52 8b c8 e8 6d
0073b410: cb 1f 00 8b d8 33 ff 3b df 89 5c 24 2c 0f 84 a9
0073b420: 03 00 00 8d 6b 04 8b c5 b9 01 00 00 00 f0 0f c1
0073b430: 08 8b 15 84 d4 1d 01 52 8b cb e8 21 8e 1f 00 8b
0073b440: f0 3b f7 89 74 24 14 0f 84 61 03 00 00 e8 3e df
0073b450: 02 00 8d 4c 24 10 51 8b 8c 24 a8 00 00 00 8b d8
0073b460: 8d 54 24 24 52 89 7c 24 28 8b 03 8b 50 68 51 8b
0073b470: cb ff d2 8d 4c 24 18 51 8b 8c 24 ac 00 00 00 8d
0073b480: 54 24 28 52 89 7c 24 2c 8b 03 8b 50 78 51 8b cb
0073b490: ff d2 8d 4c 24 1c 51 8b 8c 24 b0 00 00 00 8d 54
0073b4a0: 24 2c 52 89 7c 24 30 8b 03 8b 50 78 51 8b cb ff
0073b4b0: d2 8b 44 24 18 3b 44 24 10 8d 44 24 18 7c 04 8d
0073b4c0: 44 24 10 8b 00 39 44 24 1c 89 44 24 10 8d 44 24
0073b4d0: 1c 7c 04 8d 44 24 10 8b 00 50 8d 4c 24 34 89 44
0073b4e0: 24 14 89 7c 24 34 89 7c 24 38 89 7c 24 3c c7 44
0073b4f0: 24 40 b8 fe ff 00 89 7c 24 44 89 7c 24 48 89 7c
0073b500: 24 4c c7 44 24 50 84 fe ff 00 89 7c 24 54 89 7c
0073b510: 24 58 89 7c 24 5c c7 44 24 60 50 fe ff 00 e8 5d
0073b520: 9e 63 00 8b 4c 24 10 51 8d 4c 24 44 e8 1f a1 d9
0073b530: ff 8b 5c 24 34 33 ed 39 7c 24 10 0f 8e c6 00 00
0073b540: 00 8b 44 24 20 8b 0c e8 8b 54 e8 04 33 ff 3b 5c
0073b550: 24 38 be f3 c4 20 6b 89 4c 24 60 89 54 24 64 89
0073b560: 74 24 68 89 7c 24 6c 73 1a 8b c3 83 c3 10 85 c0
0073b570: 89 5c 24 34 74 20 89 08 89 50 04 89 70 08 89 78
0073b580: 0c eb 13 8d 54 24 60 52 53 8d 4c 24 38 e8 1e eb
0073b590: 58 00 8b 5c 24 34 8b 54 24 44 3b 54 24 48 8b 44
0073b5a0: 24 24 8d 04 a8 73 13 8b ca 83 c2 04 85 c9 89 54
0073b5b0: 24 44 74 11 d9 00 d9 19 eb 0b 50 52 8d 4c 24 48
0073b5c0: e8 bb a9 cc ff 8b 54 24 54 3b 54 24 58 8b 4c 24
0073b5d0: 28 8d 04 a9 73 13 8b ca 83 c2 04 85 c9 89 54 24
0073b5e0: 54 74 11 d9 00 d9 19 eb 0b 50 52 8d 4c 24 58 e8
0073b5f0: 8c a9 cc ff 83 c5 01 3b 6c 24 10 0f 8c 40 ff ff
0073b600: ff 8b 74 24 14 33 ff 8b 94 24 8c 00 00 00 52 8b
0073b610: ce e8 8a 15 20 00 3b c7 74 19 8d 48 08 8b 01 8b
0073b620: 50 04 68 61 2d c1 06 ff d2 3b c7 74 06 83 40 04
0073b630: 01 8b f8 85 ff 8b f7 74 06 83 47 04 01 eb 37 6a
0073b640: 00 6a 00 6a 00 6a 00 68 30 fe ff 00 68 88 00 00
0073b650: 00 e8 aa 8e da ff 83 c4 18 85 c0 74 19 8b 4c 24
0073b660: 14 83 c1 08 51 8b c8 e8 34 22 e3 ff 85 c0 74 06
0073b670: 83 40 04 01 8b f0 8b 94 24 9c 00 00 00 d9 84 24
0073b680: 90 00 00 00 8b 8c 24 94 00 00 00 8b 84 24 a0 00
0073b690: 00 00 89 54 24 70 8b 94 24 98 00 00 00 51 89 4c
0073b6a0: 24 7c d9 1c 24 8b ce 89 44 24 78 89 94 24 80 00
0073b6b0: 00 00 e8 c9 1a e3 ff 8d 44 24 70 50 8b ce e8 bd
0073b6c0: 1d e3 ff 8b 6c 24 30 8b 4c 24 50 2b dd c1 fb 04
0073b6d0: 53 8b 5c 24 44 51 53 55 8b ce e8 71 2a e3 ff d9
0073b6e0: 84 24 90 00 00 00 8b 4c 24 14 8b 51 08 8b 84 24
0073b6f0: 8c 00 00 00 8b 52 14 6a 00 6a 00 6a 00 6a 01 83
0073b700: ec 08 d9 54 24 04 83 c1 08 d9 1c 24 6a 00 56 50
0073b710: ff d2 8b 46 20 89 44 24 14 8b 46 04 83 c0 ff 89
0073b720: 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02 6a
0073b730: 01 8b ce ff d0 85 ff 74 1c 8b 47 04 83 c0 ff 89
0073b740: 47 04 75 11 c7 47 04 01 00 00 00 8b 17 8b 02 6a
0073b750: 01 8b cf ff d0 8b 44 24 50 85 c0 74 09 50 e8 7d
0073b760: 8d da ff 83 c4 04 85 db 74 09 53 e8 70 8d da ff
0073b770: 83 c4 04 85 ed 74 09 55 e8 63 8d da ff 83 c4 04
0073b780: 8b 4c 24 2c 8d 41 04 8b d0 83 ce ff f0 0f c1 32
0073b790: 4e 75 0f ba 01 00 00 00 87 10 8b 01 8b 10 6a 01
0073b7a0: ff d2 8b 44 24 14 5f 5e 5d 5b 83 c4 70 c3 8b c5
0073b7b0: 83 c9 ff f0 0f c1 08 49 75 12 ba 01 00 00 00 87
0073b7c0: 55 00 8b 03 8b 10 6a 01 8b cb ff d2 5f 5e 5d 33
0073b7d0: c0 5b 83 c4 70 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073b3f0 <.text+0x33a3f0>:
  73b3f0:	83 ec 70                                        	sub    esp,0x70
  73b3f3:	53                                              	push   ebx
  73b3f4:	55                                              	push   ebp
  73b3f5:	56                                              	push   esi
  73b3f6:	57                                              	push   edi
  73b3f7:	e8 74 c1 1f 00                                  	call   0x937570
  73b3fc:	8b 8c 24 88 00 00 00                            	mov    ecx,DWORD PTR [esp+0x88]
  73b403:	8b 94 24 84 00 00 00                            	mov    edx,DWORD PTR [esp+0x84]
  73b40a:	51                                              	push   ecx
  73b40b:	52                                              	push   edx
  73b40c:	8b c8                                           	mov    ecx,eax
  73b40e:	e8 6d cb 1f 00                                  	call   0x937f80
  73b413:	8b d8                                           	mov    ebx,eax
  73b415:	33 ff                                           	xor    edi,edi
  73b417:	3b df                                           	cmp    ebx,edi
  73b419:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  73b41d:	0f 84 a9 03 00 00                               	je     0x73b7cc
  73b423:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
  73b426:	8b c5                                           	mov    eax,ebp
  73b428:	b9 01 00 00 00                                  	mov    ecx,0x1
  73b42d:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73b431:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73b437:	52                                              	push   edx
  73b438:	8b cb                                           	mov    ecx,ebx
  73b43a:	e8 21 8e 1f 00                                  	call   0x934260
  73b43f:	8b f0                                           	mov    esi,eax
  73b441:	3b f7                                           	cmp    esi,edi
  73b443:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  73b447:	0f 84 61 03 00 00                               	je     0x73b7ae
  73b44d:	e8 3e df 02 00                                  	call   0x769390
  73b452:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73b456:	51                                              	push   ecx
  73b457:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
  73b45e:	8b d8                                           	mov    ebx,eax
  73b460:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  73b464:	52                                              	push   edx
  73b465:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  73b469:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  73b46b:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  73b46e:	51                                              	push   ecx
  73b46f:	8b cb                                           	mov    ecx,ebx
  73b471:	ff d2                                           	call   edx
  73b473:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  73b477:	51                                              	push   ecx
  73b478:	8b 8c 24 ac 00 00 00                            	mov    ecx,DWORD PTR [esp+0xac]
  73b47f:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  73b483:	52                                              	push   edx
  73b484:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  73b488:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  73b48a:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  73b48d:	51                                              	push   ecx
  73b48e:	8b cb                                           	mov    ecx,ebx
  73b490:	ff d2                                           	call   edx
  73b492:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  73b496:	51                                              	push   ecx
  73b497:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
  73b49e:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  73b4a2:	52                                              	push   edx
  73b4a3:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  73b4a7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  73b4a9:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  73b4ac:	51                                              	push   ecx
  73b4ad:	8b cb                                           	mov    ecx,ebx
  73b4af:	ff d2                                           	call   edx
  73b4b1:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  73b4b5:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
  73b4b9:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  73b4bd:	7c 04                                           	jl     0x73b4c3
  73b4bf:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  73b4c3:	8b 00                                           	mov    eax,DWORD PTR [eax]
  73b4c5:	39 44 24 1c                                     	cmp    DWORD PTR [esp+0x1c],eax
  73b4c9:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  73b4cd:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  73b4d1:	7c 04                                           	jl     0x73b4d7
  73b4d3:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  73b4d7:	8b 00                                           	mov    eax,DWORD PTR [eax]
  73b4d9:	50                                              	push   eax
  73b4da:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  73b4de:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  73b4e2:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  73b4e6:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  73b4ea:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  73b4ee:	c7 44 24 40 b8 fe ff 00                         	mov    DWORD PTR [esp+0x40],0xfffeb8
  73b4f6:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  73b4fa:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  73b4fe:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
  73b502:	c7 44 24 50 84 fe ff 00                         	mov    DWORD PTR [esp+0x50],0xfffe84
  73b50a:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
  73b50e:	89 7c 24 58                                     	mov    DWORD PTR [esp+0x58],edi
  73b512:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
  73b516:	c7 44 24 60 50 fe ff 00                         	mov    DWORD PTR [esp+0x60],0xfffe50
  73b51e:	e8 5d 9e 63 00                                  	call   0xd75380
  73b523:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73b527:	51                                              	push   ecx
  73b528:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  73b52c:	e8 1f a1 d9 ff                                  	call   0x4d5650
  73b531:	8b 5c 24 34                                     	mov    ebx,DWORD PTR [esp+0x34]
  73b535:	33 ed                                           	xor    ebp,ebp
  73b537:	39 7c 24 10                                     	cmp    DWORD PTR [esp+0x10],edi
  73b53b:	0f 8e c6 00 00 00                               	jle    0x73b607
  73b541:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  73b545:	8b 0c e8                                        	mov    ecx,DWORD PTR [eax+ebp*8]
  73b548:	8b 54 e8 04                                     	mov    edx,DWORD PTR [eax+ebp*8+0x4]
  73b54c:	33 ff                                           	xor    edi,edi
  73b54e:	3b 5c 24 38                                     	cmp    ebx,DWORD PTR [esp+0x38]
  73b552:	be f3 c4 20 6b                                  	mov    esi,0x6b20c4f3
  73b557:	89 4c 24 60                                     	mov    DWORD PTR [esp+0x60],ecx
  73b55b:	89 54 24 64                                     	mov    DWORD PTR [esp+0x64],edx
  73b55f:	89 74 24 68                                     	mov    DWORD PTR [esp+0x68],esi
  73b563:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
  73b567:	73 1a                                           	jae    0x73b583
  73b569:	8b c3                                           	mov    eax,ebx
  73b56b:	83 c3 10                                        	add    ebx,0x10
  73b56e:	85 c0                                           	test   eax,eax
  73b570:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  73b574:	74 20                                           	je     0x73b596
  73b576:	89 08                                           	mov    DWORD PTR [eax],ecx
  73b578:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  73b57b:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
  73b57e:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
  73b581:	eb 13                                           	jmp    0x73b596
  73b583:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  73b587:	52                                              	push   edx
  73b588:	53                                              	push   ebx
  73b589:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  73b58d:	e8 1e eb 58 00                                  	call   0xcca0b0
  73b592:	8b 5c 24 34                                     	mov    ebx,DWORD PTR [esp+0x34]
  73b596:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  73b59a:	3b 54 24 48                                     	cmp    edx,DWORD PTR [esp+0x48]
  73b59e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  73b5a2:	8d 04 a8                                        	lea    eax,[eax+ebp*4]
  73b5a5:	73 13                                           	jae    0x73b5ba
  73b5a7:	8b ca                                           	mov    ecx,edx
  73b5a9:	83 c2 04                                        	add    edx,0x4
  73b5ac:	85 c9                                           	test   ecx,ecx
  73b5ae:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
  73b5b2:	74 11                                           	je     0x73b5c5
  73b5b4:	d9 00                                           	fld    DWORD PTR [eax]
  73b5b6:	d9 19                                           	fstp   DWORD PTR [ecx]
  73b5b8:	eb 0b                                           	jmp    0x73b5c5
  73b5ba:	50                                              	push   eax
  73b5bb:	52                                              	push   edx
  73b5bc:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  73b5c0:	e8 bb a9 cc ff                                  	call   0x405f80
  73b5c5:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  73b5c9:	3b 54 24 58                                     	cmp    edx,DWORD PTR [esp+0x58]
  73b5cd:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  73b5d1:	8d 04 a9                                        	lea    eax,[ecx+ebp*4]
  73b5d4:	73 13                                           	jae    0x73b5e9
  73b5d6:	8b ca                                           	mov    ecx,edx
  73b5d8:	83 c2 04                                        	add    edx,0x4
  73b5db:	85 c9                                           	test   ecx,ecx
  73b5dd:	89 54 24 54                                     	mov    DWORD PTR [esp+0x54],edx
  73b5e1:	74 11                                           	je     0x73b5f4
  73b5e3:	d9 00                                           	fld    DWORD PTR [eax]
  73b5e5:	d9 19                                           	fstp   DWORD PTR [ecx]
  73b5e7:	eb 0b                                           	jmp    0x73b5f4
  73b5e9:	50                                              	push   eax
  73b5ea:	52                                              	push   edx
  73b5eb:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  73b5ef:	e8 8c a9 cc ff                                  	call   0x405f80
  73b5f4:	83 c5 01                                        	add    ebp,0x1
  73b5f7:	3b 6c 24 10                                     	cmp    ebp,DWORD PTR [esp+0x10]
  73b5fb:	0f 8c 40 ff ff ff                               	jl     0x73b541
  73b601:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  73b605:	33 ff                                           	xor    edi,edi
  73b607:	8b 94 24 8c 00 00 00                            	mov    edx,DWORD PTR [esp+0x8c]
  73b60e:	52                                              	push   edx
  73b60f:	8b ce                                           	mov    ecx,esi
  73b611:	e8 8a 15 20 00                                  	call   0x93cba0
  73b616:	3b c7                                           	cmp    eax,edi
  73b618:	74 19                                           	je     0x73b633
  73b61a:	8d 48 08                                        	lea    ecx,[eax+0x8]
  73b61d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73b61f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73b622:	68 61 2d c1 06                                  	push   0x6c12d61
  73b627:	ff d2                                           	call   edx
  73b629:	3b c7                                           	cmp    eax,edi
  73b62b:	74 06                                           	je     0x73b633
  73b62d:	83 40 04 01                                     	add    DWORD PTR [eax+0x4],0x1
  73b631:	8b f8                                           	mov    edi,eax
  73b633:	85 ff                                           	test   edi,edi
  73b635:	8b f7                                           	mov    esi,edi
  73b637:	74 06                                           	je     0x73b63f
  73b639:	83 47 04 01                                     	add    DWORD PTR [edi+0x4],0x1
  73b63d:	eb 37                                           	jmp    0x73b676
  73b63f:	6a 00                                           	push   0x0
  73b641:	6a 00                                           	push   0x0
  73b643:	6a 00                                           	push   0x0
  73b645:	6a 00                                           	push   0x0
  73b647:	68 30 fe ff 00                                  	push   0xfffe30
  73b64c:	68 88 00 00 00                                  	push   0x88
  73b651:	e8 aa 8e da ff                                  	call   0x4e4500
  73b656:	83 c4 18                                        	add    esp,0x18
  73b659:	85 c0                                           	test   eax,eax
  73b65b:	74 19                                           	je     0x73b676
  73b65d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  73b661:	83 c1 08                                        	add    ecx,0x8
  73b664:	51                                              	push   ecx
  73b665:	8b c8                                           	mov    ecx,eax
  73b667:	e8 34 22 e3 ff                                  	call   0x56d8a0
  73b66c:	85 c0                                           	test   eax,eax
  73b66e:	74 06                                           	je     0x73b676
  73b670:	83 40 04 01                                     	add    DWORD PTR [eax+0x4],0x1
  73b674:	8b f0                                           	mov    esi,eax
  73b676:	8b 94 24 9c 00 00 00                            	mov    edx,DWORD PTR [esp+0x9c]
  73b67d:	d9 84 24 90 00 00 00                            	fld    DWORD PTR [esp+0x90]
  73b684:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  73b68b:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
  73b692:	89 54 24 70                                     	mov    DWORD PTR [esp+0x70],edx
  73b696:	8b 94 24 98 00 00 00                            	mov    edx,DWORD PTR [esp+0x98]
  73b69d:	51                                              	push   ecx
  73b69e:	89 4c 24 7c                                     	mov    DWORD PTR [esp+0x7c],ecx
  73b6a2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73b6a5:	8b ce                                           	mov    ecx,esi
  73b6a7:	89 44 24 78                                     	mov    DWORD PTR [esp+0x78],eax
  73b6ab:	89 94 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],edx
  73b6b2:	e8 c9 1a e3 ff                                  	call   0x56d180
  73b6b7:	8d 44 24 70                                     	lea    eax,[esp+0x70]
  73b6bb:	50                                              	push   eax
  73b6bc:	8b ce                                           	mov    ecx,esi
  73b6be:	e8 bd 1d e3 ff                                  	call   0x56d480
  73b6c3:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
  73b6c7:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  73b6cb:	2b dd                                           	sub    ebx,ebp
  73b6cd:	c1 fb 04                                        	sar    ebx,0x4
  73b6d0:	53                                              	push   ebx
  73b6d1:	8b 5c 24 44                                     	mov    ebx,DWORD PTR [esp+0x44]
  73b6d5:	51                                              	push   ecx
  73b6d6:	53                                              	push   ebx
  73b6d7:	55                                              	push   ebp
  73b6d8:	8b ce                                           	mov    ecx,esi
  73b6da:	e8 71 2a e3 ff                                  	call   0x56e150
  73b6df:	d9 84 24 90 00 00 00                            	fld    DWORD PTR [esp+0x90]
  73b6e6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  73b6ea:	8b 51 08                                        	mov    edx,DWORD PTR [ecx+0x8]
  73b6ed:	8b 84 24 8c 00 00 00                            	mov    eax,DWORD PTR [esp+0x8c]
  73b6f4:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  73b6f7:	6a 00                                           	push   0x0
  73b6f9:	6a 00                                           	push   0x0
  73b6fb:	6a 00                                           	push   0x0
  73b6fd:	6a 01                                           	push   0x1
  73b6ff:	83 ec 08                                        	sub    esp,0x8
  73b702:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  73b706:	83 c1 08                                        	add    ecx,0x8
  73b709:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73b70c:	6a 00                                           	push   0x0
  73b70e:	56                                              	push   esi
  73b70f:	50                                              	push   eax
  73b710:	ff d2                                           	call   edx
  73b712:	8b 46 20                                        	mov    eax,DWORD PTR [esi+0x20]
  73b715:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  73b719:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73b71c:	83 c0 ff                                        	add    eax,0xffffffff
  73b71f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  73b722:	75 11                                           	jne    0x73b735
  73b724:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  73b72b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73b72d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73b72f:	6a 01                                           	push   0x1
  73b731:	8b ce                                           	mov    ecx,esi
  73b733:	ff d0                                           	call   eax
  73b735:	85 ff                                           	test   edi,edi
  73b737:	74 1c                                           	je     0x73b755
  73b739:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  73b73c:	83 c0 ff                                        	add    eax,0xffffffff
  73b73f:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  73b742:	75 11                                           	jne    0x73b755
  73b744:	c7 47 04 01 00 00 00                            	mov    DWORD PTR [edi+0x4],0x1
  73b74b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  73b74d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73b74f:	6a 01                                           	push   0x1
  73b751:	8b cf                                           	mov    ecx,edi
  73b753:	ff d0                                           	call   eax
  73b755:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  73b759:	85 c0                                           	test   eax,eax
  73b75b:	74 09                                           	je     0x73b766
  73b75d:	50                                              	push   eax
  73b75e:	e8 7d 8d da ff                                  	call   0x4e44e0
  73b763:	83 c4 04                                        	add    esp,0x4
  73b766:	85 db                                           	test   ebx,ebx
  73b768:	74 09                                           	je     0x73b773
  73b76a:	53                                              	push   ebx
  73b76b:	e8 70 8d da ff                                  	call   0x4e44e0
  73b770:	83 c4 04                                        	add    esp,0x4
  73b773:	85 ed                                           	test   ebp,ebp
  73b775:	74 09                                           	je     0x73b780
  73b777:	55                                              	push   ebp
  73b778:	e8 63 8d da ff                                  	call   0x4e44e0
  73b77d:	83 c4 04                                        	add    esp,0x4
  73b780:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  73b784:	8d 41 04                                        	lea    eax,[ecx+0x4]
  73b787:	8b d0                                           	mov    edx,eax
  73b789:	83 ce ff                                        	or     esi,0xffffffff
  73b78c:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  73b790:	4e                                              	dec    esi
  73b791:	75 0f                                           	jne    0x73b7a2
  73b793:	ba 01 00 00 00                                  	mov    edx,0x1
  73b798:	87 10                                           	xchg   DWORD PTR [eax],edx
  73b79a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73b79c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73b79e:	6a 01                                           	push   0x1
  73b7a0:	ff d2                                           	call   edx
  73b7a2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  73b7a6:	5f                                              	pop    edi
  73b7a7:	5e                                              	pop    esi
  73b7a8:	5d                                              	pop    ebp
  73b7a9:	5b                                              	pop    ebx
  73b7aa:	83 c4 70                                        	add    esp,0x70
  73b7ad:	c3                                              	ret
  73b7ae:	8b c5                                           	mov    eax,ebp
  73b7b0:	83 c9 ff                                        	or     ecx,0xffffffff
  73b7b3:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73b7b7:	49                                              	dec    ecx
  73b7b8:	75 12                                           	jne    0x73b7cc
  73b7ba:	ba 01 00 00 00                                  	mov    edx,0x1
  73b7bf:	87 55 00                                        	xchg   DWORD PTR [ebp+0x0],edx
  73b7c2:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  73b7c4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73b7c6:	6a 01                                           	push   0x1
  73b7c8:	8b cb                                           	mov    ecx,ebx
  73b7ca:	ff d2                                           	call   edx
  73b7cc:	5f                                              	pop    edi
  73b7cd:	5e                                              	pop    esi
  73b7ce:	5d                                              	pop    ebp
  73b7cf:	33 c0                                           	xor    eax,eax
  73b7d1:	5b                                              	pop    ebx
  73b7d2:	83 c4 70                                        	add    esp,0x70
  73b7d5:	c3                                              	ret
  73b7d6:	cc                                              	int3
  73b7d7:	cc                                              	int3
  73b7d8:	cc                                              	int3
  73b7d9:	cc                                              	int3
  73b7da:	cc                                              	int3
  73b7db:	cc                                              	int3
  73b7dc:	cc                                              	int3
  73b7dd:	cc                                              	int3
  73b7de:	cc                                              	int3
  73b7df:	cc                                              	int3
