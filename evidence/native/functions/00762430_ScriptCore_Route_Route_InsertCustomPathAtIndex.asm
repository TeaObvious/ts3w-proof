# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00762430 (ScriptCore.Route::Route_InsertCustomPathAtIndex)
Paired Ghidra pseudocode: 00762430_ScriptCore_Route_Route_InsertCustomPathAtIndex.c
Window: [0x00762430, 0x00762a10) (1504 bytes; stop exclusive)
Next defined Ghidra entry: 0x00762a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00762430: 55 8b ec 83 e4 f0 83 ec 54 53 56 57 e8 4f 6f 00
00762440: 00 8b 0d c4 50 1d 01 33 db 3b cb 8b f0 0f 84 af
00762450: 05 00 00 8b 45 08 50 e8 54 90 fe ff 8b f8 3b fb
00762460: 89 7c 24 10 0f 84 98 05 00 00 8b 17 8b 42 10 8b
00762470: cf ff d0 8b 4d 10 8b 01 3b c3 0f 84 79 05 00 00
00762480: 3b f3 0f 84 71 05 00 00 8b 16 8b 52 78 8d 4c 24
00762490: 28 51 8d 4c 24 1c 51 50 8b ce 89 5c 24 24 89 5c
007624a0: 24 34 ff d2 8b 4c 24 28 b8 56 55 55 55 f7 e9 8b
007624b0: f2 c1 ee 1f 03 f2 83 fe 02 7d 12 8b 07 8b 50 14
007624c0: 8b cf ff d2 32 c0 5f 5e 5b 8b e5 5d c3 53 53 53
007624d0: 53 68 6c 59 00 01 68 90 01 00 00 e8 20 20 d8 ff
007624e0: 83 c4 18 3b c3 0f 84 91 00 00 00 8b c8 e8 2e db
007624f0: 0b 00 8b f8 3b fb 89 7c 24 24 74 0c 8d 47 04 b9
00762500: 01 00 00 00 f0 0f c1 08 8b 55 1c 8b 07 89 97 b0
00762510: 00 00 00 8b 90 dc 00 00 00 8b cf ff d2 56 8b c8
00762520: 89 44 24 18 e8 67 d8 ff ff 8b 5c 24 18 f3 0f 10
00762530: 03 f3 0f 10 4b 04 f3 0f 10 53 08 0f 57 f6 33 c9
00762540: 3b f1 f3 0f 11 44 24 3c f3 0f 11 54 24 38 f3 0f
00762550: 11 4c 24 34 f3 0f 11 44 24 30 0f 28 6c 24 30 0f
00762560: 28 fe f3 0f 11 7c 24 1c 0f 8e 0b 01 00 00 0f 57
00762570: c9 0f 29 4c 24 40 89 4c 24 20 eb 1d 89 5c 24 24
00762580: 8b fb eb 84 eb 0a 8d a4 24 00 00 00 00 8d 49 00
00762590: 8b 5c 24 18 0f 28 4c 24 40 80 7d 14 00 0f 28 e1
007625a0: 0f 28 c6 75 0b 8d 46 ff 3b c8 0f 8d 8a 00 00 00
007625b0: 8d 41 01 99 f7 fe 8d 14 52 f3 0f 10 04 93 f3 0f
007625c0: 10 4c 93 04 f3 0f 10 54 93 08 f3 0f 11 44 24 3c
007625d0: f3 0f 11 44 24 30 8d 04 93 f3 0f 11 54 24 38 f3
007625e0: 0f 11 4c 24 34 0f 28 64 24 30 0f 28 cc 0f 5c cd
007625f0: 0f 28 c1 0f 59 c1 0f 28 d8 0f 28 d0 0f c6 d0 02
00762600: 0f c6 d8 01 0f 58 d3 0f 58 d0 0f 28 c2 0f c6 c0
00762610: 00 0f 51 c0 0f 29 44 24 50 f3 0f 10 44 24 50 0f
00762620: 2f c6 76 16 f3 0f 10 15 f8 98 f9 00 f3 0f 5e d0
00762630: 0f c6 d2 00 0f 59 d1 0f 28 ca 8b 44 24 14 8b 00
00762640: 8b 54 24 20 03 c2 0f 29 28 f3 0f 11 40 20 83 c1
00762650: 01 83 c2 30 3b ce 0f 29 48 10 f3 0f 11 78 24 f3
00762660: 0f 58 c7 0f 28 f8 0f 28 ec 89 54 24 20 0f 8c 1d
00762670: ff ff ff f3 0f 11 7c 24 1c 8b 17 d9 44 24 1c 8b
00762680: 82 30 01 00 00 51 8b cf d9 1c 24 ff d0 6a 00 6a
00762690: 00 8b cf e8 a8 ac 0b 00 8b 5c 24 10 8b 83 e0 00
007626a0: 00 00 8b 4d 0c 81 c3 e0 00 00 00 33 d2 3b c3 89
007626b0: 54 24 14 74 18 85 c9 0f 84 c8 00 00 00 8b 00 83
007626c0: e9 01 83 c2 01 3b c3 75 ec 89 54 24 14 8d 77 04
007626d0: 8b c6 b9 01 00 00 00 f0 0f c1 08 8b 53 08 68 e7
007626e0: 00 00 00 68 88 99 f9 00 6a 00 6a 00 52 6a 0c e8
007626f0: 0c 1e d8 ff 8d 48 08 83 c4 18 85 c9 74 0d 89 39
00762700: 8b ce ba 01 00 00 00 f0 0f c1 11 89 18 8b 4b 04
00762710: 89 48 04 8b 53 04 89 02 89 43 04 83 c8 ff f0 0f
00762720: c1 06 48 75 14 b9 01 00 00 00 8d 47 04 87 08 8b
00762730: 17 8b 02 6a 01 8b cf ff d0 39 1b 0f 85 9e 00 00
00762740: 00 8b 74 24 10 8b 8e ec 00 00 00 85 c9 0f 84 df
00762750: 00 00 00 c7 86 ec 00 00 00 00 00 00 00 8d 41 04
00762760: 83 ca ff f0 0f c1 10 4a 0f 85 c4 00 00 00 ba 01
00762770: 00 00 00 8d 41 04 87 10 8b 01 8b 10 6a 01 ff d2
00762780: e9 ad 00 00 00 3b c3 89 54 24 14 0f 84 3c ff ff
00762790: ff 8d 77 04 89 7c 24 20 8b ce ba 01 00 00 00 f0
007627a0: 0f c1 11 8d 4c 24 20 51 51 8b cc 8d 54 24 24 89
007627b0: 01 52 8b cb e8 37 3d ff ff 8b c6 83 c9 ff f0 0f
007627c0: c1 08 49 0f 85 70 ff ff ff ba 01 00 00 00 87 16
007627d0: 8b 07 8b 10 6a 01 8b cf ff d2 e9 5a ff ff ff 8b
007627e0: 03 8b 4c 24 10 8b 40 08 8b 89 ec 00 00 00 3b c1
007627f0: 74 3c 85 c0 74 0c 8d 50 04 be 01 00 00 00 f0 0f
00762800: c1 32 85 c9 8b 54 24 10 89 82 ec 00 00 00 74 1e
00762810: 8d 41 04 8b d0 83 ce ff f0 0f c1 32 4e 75 0f ba
00762820: 01 00 00 00 87 10 8b 01 8b 10 6a 01 ff d2 8b 74
00762830: 24 10 8b 03 3b c3 0f 84 3d 01 00 00 89 44 24 1c
00762840: 8b 44 24 1c 8b 70 08 85 f6 74 0c 8d 4e 04 ba 01
00762850: 00 00 00 f0 0f c1 11 8b 44 24 10 8b 16 05 58 01
00762860: 00 00 50 8b 42 10 8b ce ff d0 8b 16 8b 42 0c 8b
00762870: ce ff d0 8b 4c 24 10 8b 49 3c 51 8b c8 e8 8e 9c
00762880: 0b 00 50 56 e8 57 cd 0f 00 8d 46 04 83 c4 0c 8b
00762890: d0 83 c9 ff f0 0f c1 0a 49 75 11 ba 01 00 00 00
007628a0: 87 10 8b 06 8b 10 6a 01 8b ce ff d2 8b 44 24 1c
007628b0: 8b 00 3b c3 89 44 24 1c 75 86 8b 03 8b 08 3b cb
007628c0: 89 44 24 1c 89 4c 24 20 0f 84 a7 00 00 00 eb 08
007628d0: 8b 4c 24 20 8b 44 24 1c 8b 78 08 85 ff 74 0c 8d
007628e0: 57 04 b8 01 00 00 00 f0 0f c1 02 8b 71 08 85 f6
007628f0: 74 0c 8d 4e 04 ba 01 00 00 00 f0 0f c1 11 8b 07
00762900: 8b 50 78 56 8b cf ff d2 8b 06 8b 90 80 00 00 00
00762910: 57 8b ce ff d2 8d 46 04 8b c8 83 ca ff f0 0f c1
00762920: 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a
00762930: 01 8b ce ff d0 8d 47 04 8b c8 83 ca ff f0 0f c1
00762940: 11 4a 75 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a
00762950: 01 8b cf ff d0 8b 44 24 20 8b 4c 24 1c 8b 00 3b
00762960: c3 8b 11 89 54 24 1c 89 44 24 20 0f 85 5f ff ff
00762970: ff 8b 7c 24 24 8b 74 24 10 80 7d 18 00 74 09 6a
00762980: 00 8b ce e8 a8 d7 fe ff 8b ce e8 c1 da fe ff 80
00762990: 7d 14 00 74 0c 8b 44 24 14 3b 86 f0 00 00 00 eb
007629a0: 17 8b 8e f0 00 00 00 85 c9 7c 1c 8b c1 3b 44 24
007629b0: 14 7c 0d 83 c0 01 3b c1 74 0d 89 86 f0 00 00 00
007629c0: 8b ce e8 b9 49 ff ff 8d 47 04 8b c8 83 ca ff f0
007629d0: 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 17 8b
007629e0: 02 6a 01 8b cf ff d0 8b 16 8b 42 14 8b ce ff d0
007629f0: b0 01 5f 5e 5b 8b e5 5d c3 8b 17 8b 42 14 8b cf
00762a00: ff d0 5f 5e 32 c0 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00762430 <.text+0x361430>:
  762430:	55                                              	push   ebp
  762431:	8b ec                                           	mov    ebp,esp
  762433:	83 e4 f0                                        	and    esp,0xfffffff0
  762436:	83 ec 54                                        	sub    esp,0x54
  762439:	53                                              	push   ebx
  76243a:	56                                              	push   esi
  76243b:	57                                              	push   edi
  76243c:	e8 4f 6f 00 00                                  	call   0x769390
  762441:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  762447:	33 db                                           	xor    ebx,ebx
  762449:	3b cb                                           	cmp    ecx,ebx
  76244b:	8b f0                                           	mov    esi,eax
  76244d:	0f 84 af 05 00 00                               	je     0x762a02
  762453:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  762456:	50                                              	push   eax
  762457:	e8 54 90 fe ff                                  	call   0x74b4b0
  76245c:	8b f8                                           	mov    edi,eax
  76245e:	3b fb                                           	cmp    edi,ebx
  762460:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  762464:	0f 84 98 05 00 00                               	je     0x762a02
  76246a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76246c:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  76246f:	8b cf                                           	mov    ecx,edi
  762471:	ff d0                                           	call   eax
  762473:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  762476:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  762478:	3b c3                                           	cmp    eax,ebx
  76247a:	0f 84 79 05 00 00                               	je     0x7629f9
  762480:	3b f3                                           	cmp    esi,ebx
  762482:	0f 84 71 05 00 00                               	je     0x7629f9
  762488:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76248a:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  76248d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  762491:	51                                              	push   ecx
  762492:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  762496:	51                                              	push   ecx
  762497:	50                                              	push   eax
  762498:	8b ce                                           	mov    ecx,esi
  76249a:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  76249e:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  7624a2:	ff d2                                           	call   edx
  7624a4:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7624a8:	b8 56 55 55 55                                  	mov    eax,0x55555556
  7624ad:	f7 e9                                           	imul   ecx
  7624af:	8b f2                                           	mov    esi,edx
  7624b1:	c1 ee 1f                                        	shr    esi,0x1f
  7624b4:	03 f2                                           	add    esi,edx
  7624b6:	83 fe 02                                        	cmp    esi,0x2
  7624b9:	7d 12                                           	jge    0x7624cd
  7624bb:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7624bd:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7624c0:	8b cf                                           	mov    ecx,edi
  7624c2:	ff d2                                           	call   edx
  7624c4:	32 c0                                           	xor    al,al
  7624c6:	5f                                              	pop    edi
  7624c7:	5e                                              	pop    esi
  7624c8:	5b                                              	pop    ebx
  7624c9:	8b e5                                           	mov    esp,ebp
  7624cb:	5d                                              	pop    ebp
  7624cc:	c3                                              	ret
  7624cd:	53                                              	push   ebx
  7624ce:	53                                              	push   ebx
  7624cf:	53                                              	push   ebx
  7624d0:	53                                              	push   ebx
  7624d1:	68 6c 59 00 01                                  	push   0x100596c
  7624d6:	68 90 01 00 00                                  	push   0x190
  7624db:	e8 20 20 d8 ff                                  	call   0x4e4500
  7624e0:	83 c4 18                                        	add    esp,0x18
  7624e3:	3b c3                                           	cmp    eax,ebx
  7624e5:	0f 84 91 00 00 00                               	je     0x76257c
  7624eb:	8b c8                                           	mov    ecx,eax
  7624ed:	e8 2e db 0b 00                                  	call   0x820020
  7624f2:	8b f8                                           	mov    edi,eax
  7624f4:	3b fb                                           	cmp    edi,ebx
  7624f6:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  7624fa:	74 0c                                           	je     0x762508
  7624fc:	8d 47 04                                        	lea    eax,[edi+0x4]
  7624ff:	b9 01 00 00 00                                  	mov    ecx,0x1
  762504:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  762508:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
  76250b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76250d:	89 97 b0 00 00 00                               	mov    DWORD PTR [edi+0xb0],edx
  762513:	8b 90 dc 00 00 00                               	mov    edx,DWORD PTR [eax+0xdc]
  762519:	8b cf                                           	mov    ecx,edi
  76251b:	ff d2                                           	call   edx
  76251d:	56                                              	push   esi
  76251e:	8b c8                                           	mov    ecx,eax
  762520:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  762524:	e8 67 d8 ff ff                                  	call   0x75fd90
  762529:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  76252d:	f3 0f 10 03                                     	movss  xmm0,DWORD PTR [ebx]
  762531:	f3 0f 10 4b 04                                  	movss  xmm1,DWORD PTR [ebx+0x4]
  762536:	f3 0f 10 53 08                                  	movss  xmm2,DWORD PTR [ebx+0x8]
  76253b:	0f 57 f6                                        	xorps  xmm6,xmm6
  76253e:	33 c9                                           	xor    ecx,ecx
  762540:	3b f1                                           	cmp    esi,ecx
  762542:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  762548:	f3 0f 11 54 24 38                               	movss  DWORD PTR [esp+0x38],xmm2
  76254e:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  762554:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  76255a:	0f 28 6c 24 30                                  	movaps xmm5,XMMWORD PTR [esp+0x30]
  76255f:	0f 28 fe                                        	movaps xmm7,xmm6
  762562:	f3 0f 11 7c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm7
  762568:	0f 8e 0b 01 00 00                               	jle    0x762679
  76256e:	0f 57 c9                                        	xorps  xmm1,xmm1
  762571:	0f 29 4c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm1
  762576:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  76257a:	eb 1d                                           	jmp    0x762599
  76257c:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  762580:	8b fb                                           	mov    edi,ebx
  762582:	eb 84                                           	jmp    0x762508
  762584:	eb 0a                                           	jmp    0x762590
  762586:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  76258d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  762590:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  762594:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
  762599:	80 7d 14 00                                     	cmp    BYTE PTR [ebp+0x14],0x0
  76259d:	0f 28 e1                                        	movaps xmm4,xmm1
  7625a0:	0f 28 c6                                        	movaps xmm0,xmm6
  7625a3:	75 0b                                           	jne    0x7625b0
  7625a5:	8d 46 ff                                        	lea    eax,[esi-0x1]
  7625a8:	3b c8                                           	cmp    ecx,eax
  7625aa:	0f 8d 8a 00 00 00                               	jge    0x76263a
  7625b0:	8d 41 01                                        	lea    eax,[ecx+0x1]
  7625b3:	99                                              	cdq
  7625b4:	f7 fe                                           	idiv   esi
  7625b6:	8d 14 52                                        	lea    edx,[edx+edx*2]
  7625b9:	f3 0f 10 04 93                                  	movss  xmm0,DWORD PTR [ebx+edx*4]
  7625be:	f3 0f 10 4c 93 04                               	movss  xmm1,DWORD PTR [ebx+edx*4+0x4]
  7625c4:	f3 0f 10 54 93 08                               	movss  xmm2,DWORD PTR [ebx+edx*4+0x8]
  7625ca:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  7625d0:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  7625d6:	8d 04 93                                        	lea    eax,[ebx+edx*4]
  7625d9:	f3 0f 11 54 24 38                               	movss  DWORD PTR [esp+0x38],xmm2
  7625df:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  7625e5:	0f 28 64 24 30                                  	movaps xmm4,XMMWORD PTR [esp+0x30]
  7625ea:	0f 28 cc                                        	movaps xmm1,xmm4
  7625ed:	0f 5c cd                                        	subps  xmm1,xmm5
  7625f0:	0f 28 c1                                        	movaps xmm0,xmm1
  7625f3:	0f 59 c1                                        	mulps  xmm0,xmm1
  7625f6:	0f 28 d8                                        	movaps xmm3,xmm0
  7625f9:	0f 28 d0                                        	movaps xmm2,xmm0
  7625fc:	0f c6 d0 02                                     	shufps xmm2,xmm0,0x2
  762600:	0f c6 d8 01                                     	shufps xmm3,xmm0,0x1
  762604:	0f 58 d3                                        	addps  xmm2,xmm3
  762607:	0f 58 d0                                        	addps  xmm2,xmm0
  76260a:	0f 28 c2                                        	movaps xmm0,xmm2
  76260d:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  762611:	0f 51 c0                                        	sqrtps xmm0,xmm0
  762614:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  762619:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  76261f:	0f 2f c6                                        	comiss xmm0,xmm6
  762622:	76 16                                           	jbe    0x76263a
  762624:	f3 0f 10 15 f8 98 f9 00                         	movss  xmm2,DWORD PTR ds:0xf998f8
  76262c:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  762630:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  762634:	0f 59 d1                                        	mulps  xmm2,xmm1
  762637:	0f 28 ca                                        	movaps xmm1,xmm2
  76263a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  76263e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  762640:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  762644:	03 c2                                           	add    eax,edx
  762646:	0f 29 28                                        	movaps XMMWORD PTR [eax],xmm5
  762649:	f3 0f 11 40 20                                  	movss  DWORD PTR [eax+0x20],xmm0
  76264e:	83 c1 01                                        	add    ecx,0x1
  762651:	83 c2 30                                        	add    edx,0x30
  762654:	3b ce                                           	cmp    ecx,esi
  762656:	0f 29 48 10                                     	movaps XMMWORD PTR [eax+0x10],xmm1
  76265a:	f3 0f 11 78 24                                  	movss  DWORD PTR [eax+0x24],xmm7
  76265f:	f3 0f 58 c7                                     	addss  xmm0,xmm7
  762663:	0f 28 f8                                        	movaps xmm7,xmm0
  762666:	0f 28 ec                                        	movaps xmm5,xmm4
  762669:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  76266d:	0f 8c 1d ff ff ff                               	jl     0x762590
  762673:	f3 0f 11 7c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm7
  762679:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76267b:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  76267f:	8b 82 30 01 00 00                               	mov    eax,DWORD PTR [edx+0x130]
  762685:	51                                              	push   ecx
  762686:	8b cf                                           	mov    ecx,edi
  762688:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  76268b:	ff d0                                           	call   eax
  76268d:	6a 00                                           	push   0x0
  76268f:	6a 00                                           	push   0x0
  762691:	8b cf                                           	mov    ecx,edi
  762693:	e8 a8 ac 0b 00                                  	call   0x81d340
  762698:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  76269c:	8b 83 e0 00 00 00                               	mov    eax,DWORD PTR [ebx+0xe0]
  7626a2:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  7626a5:	81 c3 e0 00 00 00                               	add    ebx,0xe0
  7626ab:	33 d2                                           	xor    edx,edx
  7626ad:	3b c3                                           	cmp    eax,ebx
  7626af:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  7626b3:	74 18                                           	je     0x7626cd
  7626b5:	85 c9                                           	test   ecx,ecx
  7626b7:	0f 84 c8 00 00 00                               	je     0x762785
  7626bd:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7626bf:	83 e9 01                                        	sub    ecx,0x1
  7626c2:	83 c2 01                                        	add    edx,0x1
  7626c5:	3b c3                                           	cmp    eax,ebx
  7626c7:	75 ec                                           	jne    0x7626b5
  7626c9:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  7626cd:	8d 77 04                                        	lea    esi,[edi+0x4]
  7626d0:	8b c6                                           	mov    eax,esi
  7626d2:	b9 01 00 00 00                                  	mov    ecx,0x1
  7626d7:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7626db:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
  7626de:	68 e7 00 00 00                                  	push   0xe7
  7626e3:	68 88 99 f9 00                                  	push   0xf99988
  7626e8:	6a 00                                           	push   0x0
  7626ea:	6a 00                                           	push   0x0
  7626ec:	52                                              	push   edx
  7626ed:	6a 0c                                           	push   0xc
  7626ef:	e8 0c 1e d8 ff                                  	call   0x4e4500
  7626f4:	8d 48 08                                        	lea    ecx,[eax+0x8]
  7626f7:	83 c4 18                                        	add    esp,0x18
  7626fa:	85 c9                                           	test   ecx,ecx
  7626fc:	74 0d                                           	je     0x76270b
  7626fe:	89 39                                           	mov    DWORD PTR [ecx],edi
  762700:	8b ce                                           	mov    ecx,esi
  762702:	ba 01 00 00 00                                  	mov    edx,0x1
  762707:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76270b:	89 18                                           	mov    DWORD PTR [eax],ebx
  76270d:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  762710:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  762713:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  762716:	89 02                                           	mov    DWORD PTR [edx],eax
  762718:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
  76271b:	83 c8 ff                                        	or     eax,0xffffffff
  76271e:	f0 0f c1 06                                     	lock xadd DWORD PTR [esi],eax
  762722:	48                                              	dec    eax
  762723:	75 14                                           	jne    0x762739
  762725:	b9 01 00 00 00                                  	mov    ecx,0x1
  76272a:	8d 47 04                                        	lea    eax,[edi+0x4]
  76272d:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76272f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  762731:	8b 02                                           	mov    eax,DWORD PTR [edx]
  762733:	6a 01                                           	push   0x1
  762735:	8b cf                                           	mov    ecx,edi
  762737:	ff d0                                           	call   eax
  762739:	39 1b                                           	cmp    DWORD PTR [ebx],ebx
  76273b:	0f 85 9e 00 00 00                               	jne    0x7627df
  762741:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  762745:	8b 8e ec 00 00 00                               	mov    ecx,DWORD PTR [esi+0xec]
  76274b:	85 c9                                           	test   ecx,ecx
  76274d:	0f 84 df 00 00 00                               	je     0x762832
  762753:	c7 86 ec 00 00 00 00 00 00 00                   	mov    DWORD PTR [esi+0xec],0x0
  76275d:	8d 41 04                                        	lea    eax,[ecx+0x4]
  762760:	83 ca ff                                        	or     edx,0xffffffff
  762763:	f0 0f c1 10                                     	lock xadd DWORD PTR [eax],edx
  762767:	4a                                              	dec    edx
  762768:	0f 85 c4 00 00 00                               	jne    0x762832
  76276e:	ba 01 00 00 00                                  	mov    edx,0x1
  762773:	8d 41 04                                        	lea    eax,[ecx+0x4]
  762776:	87 10                                           	xchg   DWORD PTR [eax],edx
  762778:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76277a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76277c:	6a 01                                           	push   0x1
  76277e:	ff d2                                           	call   edx
  762780:	e9 ad 00 00 00                                  	jmp    0x762832
  762785:	3b c3                                           	cmp    eax,ebx
  762787:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  76278b:	0f 84 3c ff ff ff                               	je     0x7626cd
  762791:	8d 77 04                                        	lea    esi,[edi+0x4]
  762794:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  762798:	8b ce                                           	mov    ecx,esi
  76279a:	ba 01 00 00 00                                  	mov    edx,0x1
  76279f:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7627a3:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7627a7:	51                                              	push   ecx
  7627a8:	51                                              	push   ecx
  7627a9:	8b cc                                           	mov    ecx,esp
  7627ab:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  7627af:	89 01                                           	mov    DWORD PTR [ecx],eax
  7627b1:	52                                              	push   edx
  7627b2:	8b cb                                           	mov    ecx,ebx
  7627b4:	e8 37 3d ff ff                                  	call   0x7564f0
  7627b9:	8b c6                                           	mov    eax,esi
  7627bb:	83 c9 ff                                        	or     ecx,0xffffffff
  7627be:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7627c2:	49                                              	dec    ecx
  7627c3:	0f 85 70 ff ff ff                               	jne    0x762739
  7627c9:	ba 01 00 00 00                                  	mov    edx,0x1
  7627ce:	87 16                                           	xchg   DWORD PTR [esi],edx
  7627d0:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7627d2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7627d4:	6a 01                                           	push   0x1
  7627d6:	8b cf                                           	mov    ecx,edi
  7627d8:	ff d2                                           	call   edx
  7627da:	e9 5a ff ff ff                                  	jmp    0x762739
  7627df:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  7627e1:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7627e5:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  7627e8:	8b 89 ec 00 00 00                               	mov    ecx,DWORD PTR [ecx+0xec]
  7627ee:	3b c1                                           	cmp    eax,ecx
  7627f0:	74 3c                                           	je     0x76282e
  7627f2:	85 c0                                           	test   eax,eax
  7627f4:	74 0c                                           	je     0x762802
  7627f6:	8d 50 04                                        	lea    edx,[eax+0x4]
  7627f9:	be 01 00 00 00                                  	mov    esi,0x1
  7627fe:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  762802:	85 c9                                           	test   ecx,ecx
  762804:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  762808:	89 82 ec 00 00 00                               	mov    DWORD PTR [edx+0xec],eax
  76280e:	74 1e                                           	je     0x76282e
  762810:	8d 41 04                                        	lea    eax,[ecx+0x4]
  762813:	8b d0                                           	mov    edx,eax
  762815:	83 ce ff                                        	or     esi,0xffffffff
  762818:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  76281c:	4e                                              	dec    esi
  76281d:	75 0f                                           	jne    0x76282e
  76281f:	ba 01 00 00 00                                  	mov    edx,0x1
  762824:	87 10                                           	xchg   DWORD PTR [eax],edx
  762826:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  762828:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76282a:	6a 01                                           	push   0x1
  76282c:	ff d2                                           	call   edx
  76282e:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  762832:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  762834:	3b c3                                           	cmp    eax,ebx
  762836:	0f 84 3d 01 00 00                               	je     0x762979
  76283c:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  762840:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  762844:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  762847:	85 f6                                           	test   esi,esi
  762849:	74 0c                                           	je     0x762857
  76284b:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  76284e:	ba 01 00 00 00                                  	mov    edx,0x1
  762853:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  762857:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  76285b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76285d:	05 58 01 00 00                                  	add    eax,0x158
  762862:	50                                              	push   eax
  762863:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  762866:	8b ce                                           	mov    ecx,esi
  762868:	ff d0                                           	call   eax
  76286a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76286c:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  76286f:	8b ce                                           	mov    ecx,esi
  762871:	ff d0                                           	call   eax
  762873:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  762877:	8b 49 3c                                        	mov    ecx,DWORD PTR [ecx+0x3c]
  76287a:	51                                              	push   ecx
  76287b:	8b c8                                           	mov    ecx,eax
  76287d:	e8 8e 9c 0b 00                                  	call   0x81c510
  762882:	50                                              	push   eax
  762883:	56                                              	push   esi
  762884:	e8 57 cd 0f 00                                  	call   0x85f5e0
  762889:	8d 46 04                                        	lea    eax,[esi+0x4]
  76288c:	83 c4 0c                                        	add    esp,0xc
  76288f:	8b d0                                           	mov    edx,eax
  762891:	83 c9 ff                                        	or     ecx,0xffffffff
  762894:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  762898:	49                                              	dec    ecx
  762899:	75 11                                           	jne    0x7628ac
  76289b:	ba 01 00 00 00                                  	mov    edx,0x1
  7628a0:	87 10                                           	xchg   DWORD PTR [eax],edx
  7628a2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7628a4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7628a6:	6a 01                                           	push   0x1
  7628a8:	8b ce                                           	mov    ecx,esi
  7628aa:	ff d2                                           	call   edx
  7628ac:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7628b0:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7628b2:	3b c3                                           	cmp    eax,ebx
  7628b4:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  7628b8:	75 86                                           	jne    0x762840
  7628ba:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  7628bc:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7628be:	3b cb                                           	cmp    ecx,ebx
  7628c0:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  7628c4:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  7628c8:	0f 84 a7 00 00 00                               	je     0x762975
  7628ce:	eb 08                                           	jmp    0x7628d8
  7628d0:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7628d4:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7628d8:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  7628db:	85 ff                                           	test   edi,edi
  7628dd:	74 0c                                           	je     0x7628eb
  7628df:	8d 57 04                                        	lea    edx,[edi+0x4]
  7628e2:	b8 01 00 00 00                                  	mov    eax,0x1
  7628e7:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  7628eb:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  7628ee:	85 f6                                           	test   esi,esi
  7628f0:	74 0c                                           	je     0x7628fe
  7628f2:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  7628f5:	ba 01 00 00 00                                  	mov    edx,0x1
  7628fa:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7628fe:	8b 07                                           	mov    eax,DWORD PTR [edi]
  762900:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  762903:	56                                              	push   esi
  762904:	8b cf                                           	mov    ecx,edi
  762906:	ff d2                                           	call   edx
  762908:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76290a:	8b 90 80 00 00 00                               	mov    edx,DWORD PTR [eax+0x80]
  762910:	57                                              	push   edi
  762911:	8b ce                                           	mov    ecx,esi
  762913:	ff d2                                           	call   edx
  762915:	8d 46 04                                        	lea    eax,[esi+0x4]
  762918:	8b c8                                           	mov    ecx,eax
  76291a:	83 ca ff                                        	or     edx,0xffffffff
  76291d:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  762921:	4a                                              	dec    edx
  762922:	75 11                                           	jne    0x762935
  762924:	b9 01 00 00 00                                  	mov    ecx,0x1
  762929:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76292b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76292d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76292f:	6a 01                                           	push   0x1
  762931:	8b ce                                           	mov    ecx,esi
  762933:	ff d0                                           	call   eax
  762935:	8d 47 04                                        	lea    eax,[edi+0x4]
  762938:	8b c8                                           	mov    ecx,eax
  76293a:	83 ca ff                                        	or     edx,0xffffffff
  76293d:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  762941:	4a                                              	dec    edx
  762942:	75 11                                           	jne    0x762955
  762944:	b9 01 00 00 00                                  	mov    ecx,0x1
  762949:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76294b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76294d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76294f:	6a 01                                           	push   0x1
  762951:	8b cf                                           	mov    ecx,edi
  762953:	ff d0                                           	call   eax
  762955:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  762959:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  76295d:	8b 00                                           	mov    eax,DWORD PTR [eax]
  76295f:	3b c3                                           	cmp    eax,ebx
  762961:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  762963:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  762967:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  76296b:	0f 85 5f ff ff ff                               	jne    0x7628d0
  762971:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  762975:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  762979:	80 7d 18 00                                     	cmp    BYTE PTR [ebp+0x18],0x0
  76297d:	74 09                                           	je     0x762988
  76297f:	6a 00                                           	push   0x0
  762981:	8b ce                                           	mov    ecx,esi
  762983:	e8 a8 d7 fe ff                                  	call   0x750130
  762988:	8b ce                                           	mov    ecx,esi
  76298a:	e8 c1 da fe ff                                  	call   0x750450
  76298f:	80 7d 14 00                                     	cmp    BYTE PTR [ebp+0x14],0x0
  762993:	74 0c                                           	je     0x7629a1
  762995:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  762999:	3b 86 f0 00 00 00                               	cmp    eax,DWORD PTR [esi+0xf0]
  76299f:	eb 17                                           	jmp    0x7629b8
  7629a1:	8b 8e f0 00 00 00                               	mov    ecx,DWORD PTR [esi+0xf0]
  7629a7:	85 c9                                           	test   ecx,ecx
  7629a9:	7c 1c                                           	jl     0x7629c7
  7629ab:	8b c1                                           	mov    eax,ecx
  7629ad:	3b 44 24 14                                     	cmp    eax,DWORD PTR [esp+0x14]
  7629b1:	7c 0d                                           	jl     0x7629c0
  7629b3:	83 c0 01                                        	add    eax,0x1
  7629b6:	3b c1                                           	cmp    eax,ecx
  7629b8:	74 0d                                           	je     0x7629c7
  7629ba:	89 86 f0 00 00 00                               	mov    DWORD PTR [esi+0xf0],eax
  7629c0:	8b ce                                           	mov    ecx,esi
  7629c2:	e8 b9 49 ff ff                                  	call   0x757380
  7629c7:	8d 47 04                                        	lea    eax,[edi+0x4]
  7629ca:	8b c8                                           	mov    ecx,eax
  7629cc:	83 ca ff                                        	or     edx,0xffffffff
  7629cf:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7629d3:	4a                                              	dec    edx
  7629d4:	75 11                                           	jne    0x7629e7
  7629d6:	b9 01 00 00 00                                  	mov    ecx,0x1
  7629db:	87 08                                           	xchg   DWORD PTR [eax],ecx
  7629dd:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7629df:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7629e1:	6a 01                                           	push   0x1
  7629e3:	8b cf                                           	mov    ecx,edi
  7629e5:	ff d0                                           	call   eax
  7629e7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7629e9:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7629ec:	8b ce                                           	mov    ecx,esi
  7629ee:	ff d0                                           	call   eax
  7629f0:	b0 01                                           	mov    al,0x1
  7629f2:	5f                                              	pop    edi
  7629f3:	5e                                              	pop    esi
  7629f4:	5b                                              	pop    ebx
  7629f5:	8b e5                                           	mov    esp,ebp
  7629f7:	5d                                              	pop    ebp
  7629f8:	c3                                              	ret
  7629f9:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7629fb:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7629fe:	8b cf                                           	mov    ecx,edi
  762a00:	ff d0                                           	call   eax
  762a02:	5f                                              	pop    edi
  762a03:	5e                                              	pop    esi
  762a04:	32 c0                                           	xor    al,al
  762a06:	5b                                              	pop    ebx
  762a07:	8b e5                                           	mov    esp,ebp
  762a09:	5d                                              	pop    ebp
  762a0a:	c3                                              	ret
  762a0b:	cc                                              	int3
  762a0c:	cc                                              	int3
  762a0d:	cc                                              	int3
  762a0e:	cc                                              	int3
  762a0f:	cc                                              	int3
