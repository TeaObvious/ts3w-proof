# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a540 (World_GetRainPuddlesOnLotImpl)
Paired Ghidra pseudocode: 1058A540_World_GetRainPuddlesOnLotImpl.c
Window: [0x1058a540, 0x1058a810) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a540: 55 8b ec 83 e4 f0 81 ec 94 00 00 00 53 56 8b 35
1058a550: c4 00 c7 10 33 db 3b f3 57 0f 84 a8 02 00 00 8b
1058a560: 45 0c 8b 4d 08 53 50 51 8b ce e8 a1 ca ca ff 8b
1058a570: f8 3b fb 89 7c 24 5c 0f 84 8a 02 00 00 8b 4e 74
1058a580: 3b cb 89 4c 24 58 0f 84 7b 02 00 00 39 9f 98 02
1058a590: 00 00 0f 84 6f 02 00 00 e8 e3 87 db ff 84 c0 0f
1058a5a0: 84 62 02 00 00 8d 54 24 38 33 f6 52 8b cf 89 5c
1058a5b0: 24 1c 89 74 24 20 89 5c 24 24 c7 44 24 28 dc 1c
1058a5c0: b2 10 89 5c 24 3c 89 5c 24 40 89 5c 24 44 c7 44
1058a5d0: 24 48 bc 1c b2 10 e8 15 af ae ff 84 c0 75 12 8d
1058a5e0: 4c 24 38 e8 d8 a6 ad ff 32 c0 5f 5e 5b 8b e5 5d
1058a5f0: c3 8b bf 80 01 00 00 85 ff 0f 8c f2 01 00 00 83
1058a600: c7 01 89 5c 24 28 89 7c 24 34 8d 9b 00 00 00 00
1058a610: 8b 44 24 38 8b 4c 24 28 8d 3c 01 8d 54 24 2c 52
1058a620: 8b cf 89 7c 24 4c e8 85 af d9 ff 8b 47 08 8b 4f
1058a630: 04 8b 7c 24 2c 3b 3c 81 0f 84 4b 01 00 00 8b ff
1058a640: 8b 5c 24 5c 8d 54 24 60 52 57 53 e8 c0 47 b3 ff
1058a650: 83 c4 0c 8d 44 24 60 8b c8 50 51 8b cb e8 fe 1e
1058a660: af ff 8b 4c 24 58 6a 00 6a 00 53 8d 54 24 6c 52
1058a670: e8 1b cc db ff 84 c0 0f 84 d2 00 00 00 3b 74 24
1058a680: 20 0f 28 44 24 60 0f 29 84 24 80 00 00 00 f3 0f
1058a690: 10 84 24 80 00 00 00 f3 0f 11 44 24 54 73 13 8b
1058a6a0: c6 83 c6 04 85 c0 89 74 24 1c 74 19 f3 0f 11 00
1058a6b0: eb 13 8d 44 24 54 50 56 8d 4c 24 20 e8 8f 9e af
1058a6c0: ff 8b 74 24 1c 3b 74 24 20 0f 28 44 24 60 0f 29
1058a6d0: 44 24 70 f3 0f 10 44 24 74 f3 0f 11 44 24 4c 73
1058a6e0: 13 8b c6 83 c6 04 85 c0 89 74 24 1c 74 19 f3 0f
1058a6f0: 11 00 eb 13 8d 4c 24 4c 51 56 8d 4c 24 20 e8 4d
1058a700: 9e af ff 8b 74 24 1c 3b 74 24 20 0f 28 44 24 60
1058a710: 0f 29 84 24 90 00 00 00 f3 0f 10 84 24 98 00 00
1058a720: 00 f3 0f 11 44 24 50 73 13 8b c6 83 c6 04 85 c0
1058a730: 89 74 24 1c 74 19 f3 0f 11 00 eb 13 8d 54 24 50
1058a740: 52 56 8d 4c 24 20 e8 05 9e af ff 8b 74 24 1c 8b
1058a750: 7f 04 85 ff 89 7c 24 2c 75 1c 8d 9b 00 00 00 00
1058a760: 8b 44 24 30 8b 78 04 83 c0 04 85 ff 89 44 24 30
1058a770: 89 7c 24 2c 74 ea 8b 44 24 48 8b 48 08 8b 50 04
1058a780: 3b 3c 8a 0f 85 b7 fe ff ff 83 44 24 28 20 83 6c
1058a790: 24 34 01 0f 85 77 fe ff ff 8b 5c 24 18 3b de 74
1058a7a0: 50 e8 7a 09 fd ff 8b 4d 10 2b f3 8b f8 8b 07 8b
1058a7b0: 90 90 00 00 00 c1 fe 02 56 51 8b cf ff d2 8b 4d
1058a7c0: 10 8b 07 8b 90 a8 00 00 00 56 6a 00 53 51 8b cf
1058a7d0: ff d2 8d 4c 24 38 e8 e5 a4 ad ff 85 db 74 09 53
1058a7e0: e8 ab e6 38 00 83 c4 04 b0 01 5f 5e 5b 8b e5 5d
1058a7f0: c3 8d 4c 24 38 e8 c6 a4 ad ff 85 db 74 09 53 e8
1058a800: 8c e6 38 00 83 c4 04 5f 5e 32 c0 5b 8b e5 5d c3

LINEAR DISASSEMBLY
1058a540 <.text+0x589540>:
1058a540:	55                                              	push   ebp
1058a541:	8b ec                                           	mov    ebp,esp
1058a543:	83 e4 f0                                        	and    esp,0xfffffff0
1058a546:	81 ec 94 00 00 00                               	sub    esp,0x94
1058a54c:	53                                              	push   ebx
1058a54d:	56                                              	push   esi
1058a54e:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
1058a554:	33 db                                           	xor    ebx,ebx
1058a556:	3b f3                                           	cmp    esi,ebx
1058a558:	57                                              	push   edi
1058a559:	0f 84 a8 02 00 00                               	je     0x1058a807
1058a55f:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1058a562:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1058a565:	53                                              	push   ebx
1058a566:	50                                              	push   eax
1058a567:	51                                              	push   ecx
1058a568:	8b ce                                           	mov    ecx,esi
1058a56a:	e8 a1 ca ca ff                                  	call   0x10237010
1058a56f:	8b f8                                           	mov    edi,eax
1058a571:	3b fb                                           	cmp    edi,ebx
1058a573:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
1058a577:	0f 84 8a 02 00 00                               	je     0x1058a807
1058a57d:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
1058a580:	3b cb                                           	cmp    ecx,ebx
1058a582:	89 4c 24 58                                     	mov    DWORD PTR [esp+0x58],ecx
1058a586:	0f 84 7b 02 00 00                               	je     0x1058a807
1058a58c:	39 9f 98 02 00 00                               	cmp    DWORD PTR [edi+0x298],ebx
1058a592:	0f 84 6f 02 00 00                               	je     0x1058a807
1058a598:	e8 e3 87 db ff                                  	call   0x10342d80
1058a59d:	84 c0                                           	test   al,al
1058a59f:	0f 84 62 02 00 00                               	je     0x1058a807
1058a5a5:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1058a5a9:	33 f6                                           	xor    esi,esi
1058a5ab:	52                                              	push   edx
1058a5ac:	8b cf                                           	mov    ecx,edi
1058a5ae:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
1058a5b2:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
1058a5b6:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
1058a5ba:	c7 44 24 28 dc 1c b2 10                         	mov    DWORD PTR [esp+0x28],0x10b21cdc
1058a5c2:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
1058a5c6:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
1058a5ca:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
1058a5ce:	c7 44 24 48 bc 1c b2 10                         	mov    DWORD PTR [esp+0x48],0x10b21cbc
1058a5d6:	e8 15 af ae ff                                  	call   0x100754f0
1058a5db:	84 c0                                           	test   al,al
1058a5dd:	75 12                                           	jne    0x1058a5f1
1058a5df:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1058a5e3:	e8 d8 a6 ad ff                                  	call   0x10064cc0
1058a5e8:	32 c0                                           	xor    al,al
1058a5ea:	5f                                              	pop    edi
1058a5eb:	5e                                              	pop    esi
1058a5ec:	5b                                              	pop    ebx
1058a5ed:	8b e5                                           	mov    esp,ebp
1058a5ef:	5d                                              	pop    ebp
1058a5f0:	c3                                              	ret
1058a5f1:	8b bf 80 01 00 00                               	mov    edi,DWORD PTR [edi+0x180]
1058a5f7:	85 ff                                           	test   edi,edi
1058a5f9:	0f 8c f2 01 00 00                               	jl     0x1058a7f1
1058a5ff:	83 c7 01                                        	add    edi,0x1
1058a602:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
1058a606:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
1058a60a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1058a610:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1058a614:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1058a618:	8d 3c 01                                        	lea    edi,[ecx+eax*1]
1058a61b:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
1058a61f:	52                                              	push   edx
1058a620:	8b cf                                           	mov    ecx,edi
1058a622:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
1058a626:	e8 85 af d9 ff                                  	call   0x103255b0
1058a62b:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
1058a62e:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
1058a631:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
1058a635:	3b 3c 81                                        	cmp    edi,DWORD PTR [ecx+eax*4]
1058a638:	0f 84 4b 01 00 00                               	je     0x1058a789
1058a63e:	8b ff                                           	mov    edi,edi
1058a640:	8b 5c 24 5c                                     	mov    ebx,DWORD PTR [esp+0x5c]
1058a644:	8d 54 24 60                                     	lea    edx,[esp+0x60]
1058a648:	52                                              	push   edx
1058a649:	57                                              	push   edi
1058a64a:	53                                              	push   ebx
1058a64b:	e8 c0 47 b3 ff                                  	call   0x100bee10
1058a650:	83 c4 0c                                        	add    esp,0xc
1058a653:	8d 44 24 60                                     	lea    eax,[esp+0x60]
1058a657:	8b c8                                           	mov    ecx,eax
1058a659:	50                                              	push   eax
1058a65a:	51                                              	push   ecx
1058a65b:	8b cb                                           	mov    ecx,ebx
1058a65d:	e8 fe 1e af ff                                  	call   0x1007c560
1058a662:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
1058a666:	6a 00                                           	push   0x0
1058a668:	6a 00                                           	push   0x0
1058a66a:	53                                              	push   ebx
1058a66b:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
1058a66f:	52                                              	push   edx
1058a670:	e8 1b cc db ff                                  	call   0x10347290
1058a675:	84 c0                                           	test   al,al
1058a677:	0f 84 d2 00 00 00                               	je     0x1058a74f
1058a67d:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
1058a681:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
1058a686:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
1058a68e:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
1058a697:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
1058a69d:	73 13                                           	jae    0x1058a6b2
1058a69f:	8b c6                                           	mov    eax,esi
1058a6a1:	83 c6 04                                        	add    esi,0x4
1058a6a4:	85 c0                                           	test   eax,eax
1058a6a6:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1058a6aa:	74 19                                           	je     0x1058a6c5
1058a6ac:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
1058a6b0:	eb 13                                           	jmp    0x1058a6c5
1058a6b2:	8d 44 24 54                                     	lea    eax,[esp+0x54]
1058a6b6:	50                                              	push   eax
1058a6b7:	56                                              	push   esi
1058a6b8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1058a6bc:	e8 8f 9e af ff                                  	call   0x10084550
1058a6c1:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1058a6c5:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
1058a6c9:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
1058a6ce:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
1058a6d3:	f3 0f 10 44 24 74                               	movss  xmm0,DWORD PTR [esp+0x74]
1058a6d9:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
1058a6df:	73 13                                           	jae    0x1058a6f4
1058a6e1:	8b c6                                           	mov    eax,esi
1058a6e3:	83 c6 04                                        	add    esi,0x4
1058a6e6:	85 c0                                           	test   eax,eax
1058a6e8:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1058a6ec:	74 19                                           	je     0x1058a707
1058a6ee:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
1058a6f2:	eb 13                                           	jmp    0x1058a707
1058a6f4:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
1058a6f8:	51                                              	push   ecx
1058a6f9:	56                                              	push   esi
1058a6fa:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1058a6fe:	e8 4d 9e af ff                                  	call   0x10084550
1058a703:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1058a707:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
1058a70b:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
1058a710:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
1058a718:	f3 0f 10 84 24 98 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x98]
1058a721:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
1058a727:	73 13                                           	jae    0x1058a73c
1058a729:	8b c6                                           	mov    eax,esi
1058a72b:	83 c6 04                                        	add    esi,0x4
1058a72e:	85 c0                                           	test   eax,eax
1058a730:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1058a734:	74 19                                           	je     0x1058a74f
1058a736:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
1058a73a:	eb 13                                           	jmp    0x1058a74f
1058a73c:	8d 54 24 50                                     	lea    edx,[esp+0x50]
1058a740:	52                                              	push   edx
1058a741:	56                                              	push   esi
1058a742:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1058a746:	e8 05 9e af ff                                  	call   0x10084550
1058a74b:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1058a74f:	8b 7f 04                                        	mov    edi,DWORD PTR [edi+0x4]
1058a752:	85 ff                                           	test   edi,edi
1058a754:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1058a758:	75 1c                                           	jne    0x1058a776
1058a75a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1058a760:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1058a764:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
1058a767:	83 c0 04                                        	add    eax,0x4
1058a76a:	85 ff                                           	test   edi,edi
1058a76c:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1058a770:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1058a774:	74 ea                                           	je     0x1058a760
1058a776:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1058a77a:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1058a77d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1058a780:	3b 3c 8a                                        	cmp    edi,DWORD PTR [edx+ecx*4]
1058a783:	0f 85 b7 fe ff ff                               	jne    0x1058a640
1058a789:	83 44 24 28 20                                  	add    DWORD PTR [esp+0x28],0x20
1058a78e:	83 6c 24 34 01                                  	sub    DWORD PTR [esp+0x34],0x1
1058a793:	0f 85 77 fe ff ff                               	jne    0x1058a610
1058a799:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
1058a79d:	3b de                                           	cmp    ebx,esi
1058a79f:	74 50                                           	je     0x1058a7f1
1058a7a1:	e8 7a 09 fd ff                                  	call   0x1055b120
1058a7a6:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1058a7a9:	2b f3                                           	sub    esi,ebx
1058a7ab:	8b f8                                           	mov    edi,eax
1058a7ad:	8b 07                                           	mov    eax,DWORD PTR [edi]
1058a7af:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
1058a7b5:	c1 fe 02                                        	sar    esi,0x2
1058a7b8:	56                                              	push   esi
1058a7b9:	51                                              	push   ecx
1058a7ba:	8b cf                                           	mov    ecx,edi
1058a7bc:	ff d2                                           	call   edx
1058a7be:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1058a7c1:	8b 07                                           	mov    eax,DWORD PTR [edi]
1058a7c3:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
1058a7c9:	56                                              	push   esi
1058a7ca:	6a 00                                           	push   0x0
1058a7cc:	53                                              	push   ebx
1058a7cd:	51                                              	push   ecx
1058a7ce:	8b cf                                           	mov    ecx,edi
1058a7d0:	ff d2                                           	call   edx
1058a7d2:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1058a7d6:	e8 e5 a4 ad ff                                  	call   0x10064cc0
1058a7db:	85 db                                           	test   ebx,ebx
1058a7dd:	74 09                                           	je     0x1058a7e8
1058a7df:	53                                              	push   ebx
1058a7e0:	e8 ab e6 38 00                                  	call   0x10918e90
1058a7e5:	83 c4 04                                        	add    esp,0x4
1058a7e8:	b0 01                                           	mov    al,0x1
1058a7ea:	5f                                              	pop    edi
1058a7eb:	5e                                              	pop    esi
1058a7ec:	5b                                              	pop    ebx
1058a7ed:	8b e5                                           	mov    esp,ebp
1058a7ef:	5d                                              	pop    ebp
1058a7f0:	c3                                              	ret
1058a7f1:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1058a7f5:	e8 c6 a4 ad ff                                  	call   0x10064cc0
1058a7fa:	85 db                                           	test   ebx,ebx
1058a7fc:	74 09                                           	je     0x1058a807
1058a7fe:	53                                              	push   ebx
1058a7ff:	e8 8c e6 38 00                                  	call   0x10918e90
1058a804:	83 c4 04                                        	add    esp,0x4
1058a807:	5f                                              	pop    edi
1058a808:	5e                                              	pop    esi
1058a809:	32 c0                                           	xor    al,al
1058a80b:	5b                                              	pop    ebx
1058a80c:	8b e5                                           	mov    esp,ebp
1058a80e:	5d                                              	pop    ebp
1058a80f:	c3                                              	ret
