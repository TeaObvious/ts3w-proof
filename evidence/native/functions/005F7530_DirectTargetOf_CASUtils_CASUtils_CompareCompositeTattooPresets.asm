# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f7530 (DirectTargetOf_CASUtils_CASUtils_CompareCompositeTattooPresets)
Paired Ghidra pseudocode: 005F7530_DirectTargetOf_CASUtils_CASUtils_CompareCompositeTattooPresets.c
Window: [0x005f7530, 0x005f78c0) (912 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f78c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f7530: 81 ec 24 02 00 00 53 56 57 e8 52 1e 17 00 8b 8c
005f7540: 24 34 02 00 00 8b f0 8b 06 8b 50 58 51 8b ce ff
005f7550: d2 8b 8c 24 38 02 00 00 8b f8 8b 06 8b 50 58 51
005f7560: 8b ce ff d2 33 db 3b fb 8b f0 0f 84 15 01 00 00
005f7570: 3b f3 0f 84 0d 01 00 00 8d 4c 24 60 e8 3f 85 fc
005f7580: ff 8d 8c 24 c0 00 00 00 e8 33 85 fc ff 57 8d 4c
005f7590: 24 64 e8 c9 8a fc ff 56 8d 8c 24 c4 00 00 00 e8
005f75a0: bc 8a fc ff 0f 57 c0 f3 0f 10 0d f8 98 f9 00 8d
005f75b0: 84 24 30 01 00 00 8b c8 89 84 24 24 01 00 00 89
005f75c0: 8c 24 20 01 00 00 8d 44 24 18 50 8d 4c 24 10 51
005f75d0: 8d 94 24 38 02 00 00 68 50 6f fe 00 8d 4c 24 6c
005f75e0: 89 5c 24 5c 89 5c 24 60 89 5c 24 64 89 5c 24 68
005f75f0: 89 5c 24 2c 89 5c 24 30 89 5c 24 34 89 5c 24 38
005f7600: f3 0f 11 44 24 4c f3 0f 11 44 24 50 f3 0f 11 4c
005f7610: 24 54 f3 0f 11 4c 24 58 f3 0f 11 44 24 3c f3 0f
005f7620: 11 44 24 40 f3 0f 11 4c 24 44 f3 0f 11 4c 24 48
005f7630: 89 94 24 34 01 00 00 88 9c 24 3c 01 00 00 c7 44
005f7640: 24 18 02 00 00 00 e8 25 7e fc ff 8d 54 24 1c 52
005f7650: 8d 44 24 10 50 68 50 6f fe 00 8d 8c 24 cc 00 00
005f7660: 00 e8 0a 7e fc ff 8b 4c 24 18 3b 4c 24 1c 74 21
005f7670: 8d 8c 24 c0 00 00 00 e8 64 86 fc ff 8d 4c 24 60
005f7680: e8 5b 86 fc ff 5f 5e 32 c0 5b 81 c4 24 02 00 00
005f7690: c3 bf 01 00 00 00 55 eb 07 8d a4 24 00 00 00 00
005f76a0: 57 8d 94 24 28 01 00 00 68 18 70 fe 00 52 e8 ed
005f76b0: 98 33 00 8b 94 24 30 01 00 00 83 c4 0c 8d 44 24
005f76c0: 17 50 8d 4c 24 14 51 52 8d 4c 24 70 c7 44 24 1c
005f76d0: 07 00 00 00 e8 27 79 fc ff 84 c0 0f 84 92 01 00
005f76e0: 00 8b 94 24 24 01 00 00 8d 44 24 16 50 8d 4c 24
005f76f0: 14 51 52 8d 8c 24 d0 00 00 00 e8 01 79 fc ff 84
005f7700: c0 0f 84 6c 01 00 00 8a 44 24 17 3a 44 24 16 0f
005f7710: 85 5e 01 00 00 3a c3 0f 84 28 01 00 00 57 8d 84
005f7720: 24 28 01 00 00 68 0c 70 fe 00 50 e8 70 98 33 00
005f7730: 8b 84 24 30 01 00 00 83 c4 0c 8d 4c 24 54 51 8d
005f7740: 54 24 14 52 50 8d 4c 24 70 c7 44 24 1c 03 00 00
005f7750: 00 e8 6a 7d fc ff 84 c0 0f 84 15 01 00 00 8b 84
005f7760: 24 24 01 00 00 8d 4c 24 24 51 8d 54 24 14 52 50
005f7770: 8d 8c 24 d0 00 00 00 e8 44 7d fc ff 84 c0 0f 84
005f7780: ef 00 00 00 8d 4c 24 24 51 8d 54 24 58 52 e8 0d
005f7790: 69 f5 ff 83 c4 08 84 c0 0f 85 d5 00 00 00 8d 44
005f77a0: 24 44 50 8d 4c 24 68 57 51 e8 b2 f9 ff ff 83 c4
005f77b0: 0c 84 c0 0f 84 ba 00 00 00 8d 54 24 34 52 8d 84
005f77c0: 24 c8 00 00 00 57 50 e8 94 f9 ff ff 83 c4 0c 84
005f77d0: c0 0f 84 9c 00 00 00 f3 0f 10 05 70 8d 15 01 33
005f77e0: c0 f3 0f 10 4c 04 44 f3 0f 5c 4c 04 34 f3 0f 11
005f77f0: 4c 24 18 81 64 24 18 ff ff ff 7f f3 0f 10 4c 24
005f7800: 18 0f 2f c8 77 6d 83 c0 04 83 f8 10 72 d3 33 f6
005f7810: 8b 8e 40 8d 15 01 57 51 8d 54 24 6c 52 e8 2e f4
005f7820: ff ff 8b e8 8b 86 40 8d 15 01 57 50 8d 4c 24 78
005f7830: 51 e8 1a f4 ff ff 83 c4 18 3b e8 75 36 83 c6 04
005f7840: 83 fe 10 72 cb 83 c7 01 83 ff 06 0f 82 4f fe ff
005f7850: ff 8d 8c 24 c4 00 00 00 e8 83 84 fc ff 8d 4c 24
005f7860: 64 e8 7a 84 fc ff 5d 5f 5e b0 01 5b 81 c4 24 02
005f7870: 00 00 c3 8d 8c 24 c4 00 00 00 e8 61 84 fc ff 8d
005f7880: 4c 24 64 e8 58 84 fc ff 5d 5f 5e 32 c0 5b 81 c4
005f7890: 24 02 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc
005f78a0: f6 44 24 04 01 56 8b f1 c7 06 d0 70 fe 00 74 09
005f78b0: 56 e8 2a cc ee ff 83 c4 04 8b c6 5e c2 04 00 cc

LINEAR DISASSEMBLY
005f7530 <.text+0x1f6530>:
  5f7530:	81 ec 24 02 00 00                               	sub    esp,0x224
  5f7536:	53                                              	push   ebx
  5f7537:	56                                              	push   esi
  5f7538:	57                                              	push   edi
  5f7539:	e8 52 1e 17 00                                  	call   0x769390
  5f753e:	8b 8c 24 34 02 00 00                            	mov    ecx,DWORD PTR [esp+0x234]
  5f7545:	8b f0                                           	mov    esi,eax
  5f7547:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f7549:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f754c:	51                                              	push   ecx
  5f754d:	8b ce                                           	mov    ecx,esi
  5f754f:	ff d2                                           	call   edx
  5f7551:	8b 8c 24 38 02 00 00                            	mov    ecx,DWORD PTR [esp+0x238]
  5f7558:	8b f8                                           	mov    edi,eax
  5f755a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f755c:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f755f:	51                                              	push   ecx
  5f7560:	8b ce                                           	mov    ecx,esi
  5f7562:	ff d2                                           	call   edx
  5f7564:	33 db                                           	xor    ebx,ebx
  5f7566:	3b fb                                           	cmp    edi,ebx
  5f7568:	8b f0                                           	mov    esi,eax
  5f756a:	0f 84 15 01 00 00                               	je     0x5f7685
  5f7570:	3b f3                                           	cmp    esi,ebx
  5f7572:	0f 84 0d 01 00 00                               	je     0x5f7685
  5f7578:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  5f757c:	e8 3f 85 fc ff                                  	call   0x5bfac0
  5f7581:	8d 8c 24 c0 00 00 00                            	lea    ecx,[esp+0xc0]
  5f7588:	e8 33 85 fc ff                                  	call   0x5bfac0
  5f758d:	57                                              	push   edi
  5f758e:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  5f7592:	e8 c9 8a fc ff                                  	call   0x5c0060
  5f7597:	56                                              	push   esi
  5f7598:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
  5f759f:	e8 bc 8a fc ff                                  	call   0x5c0060
  5f75a4:	0f 57 c0                                        	xorps  xmm0,xmm0
  5f75a7:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  5f75af:	8d 84 24 30 01 00 00                            	lea    eax,[esp+0x130]
  5f75b6:	8b c8                                           	mov    ecx,eax
  5f75b8:	89 84 24 24 01 00 00                            	mov    DWORD PTR [esp+0x124],eax
  5f75bf:	89 8c 24 20 01 00 00                            	mov    DWORD PTR [esp+0x120],ecx
  5f75c6:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5f75ca:	50                                              	push   eax
  5f75cb:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5f75cf:	51                                              	push   ecx
  5f75d0:	8d 94 24 38 02 00 00                            	lea    edx,[esp+0x238]
  5f75d7:	68 50 6f fe 00                                  	push   0xfe6f50
  5f75dc:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5f75e0:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
  5f75e4:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  5f75e8:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
  5f75ec:	89 5c 24 68                                     	mov    DWORD PTR [esp+0x68],ebx
  5f75f0:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  5f75f4:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  5f75f8:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  5f75fc:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
  5f7600:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  5f7606:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  5f760c:	f3 0f 11 4c 24 54                               	movss  DWORD PTR [esp+0x54],xmm1
  5f7612:	f3 0f 11 4c 24 58                               	movss  DWORD PTR [esp+0x58],xmm1
  5f7618:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  5f761e:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  5f7624:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
  5f762a:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  5f7630:	89 94 24 34 01 00 00                            	mov    DWORD PTR [esp+0x134],edx
  5f7637:	88 9c 24 3c 01 00 00                            	mov    BYTE PTR [esp+0x13c],bl
  5f763e:	c7 44 24 18 02 00 00 00                         	mov    DWORD PTR [esp+0x18],0x2
  5f7646:	e8 25 7e fc ff                                  	call   0x5bf470
  5f764b:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5f764f:	52                                              	push   edx
  5f7650:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5f7654:	50                                              	push   eax
  5f7655:	68 50 6f fe 00                                  	push   0xfe6f50
  5f765a:	8d 8c 24 cc 00 00 00                            	lea    ecx,[esp+0xcc]
  5f7661:	e8 0a 7e fc ff                                  	call   0x5bf470
  5f7666:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5f766a:	3b 4c 24 1c                                     	cmp    ecx,DWORD PTR [esp+0x1c]
  5f766e:	74 21                                           	je     0x5f7691
  5f7670:	8d 8c 24 c0 00 00 00                            	lea    ecx,[esp+0xc0]
  5f7677:	e8 64 86 fc ff                                  	call   0x5bfce0
  5f767c:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  5f7680:	e8 5b 86 fc ff                                  	call   0x5bfce0
  5f7685:	5f                                              	pop    edi
  5f7686:	5e                                              	pop    esi
  5f7687:	32 c0                                           	xor    al,al
  5f7689:	5b                                              	pop    ebx
  5f768a:	81 c4 24 02 00 00                               	add    esp,0x224
  5f7690:	c3                                              	ret
  5f7691:	bf 01 00 00 00                                  	mov    edi,0x1
  5f7696:	55                                              	push   ebp
  5f7697:	eb 07                                           	jmp    0x5f76a0
  5f7699:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  5f76a0:	57                                              	push   edi
  5f76a1:	8d 94 24 28 01 00 00                            	lea    edx,[esp+0x128]
  5f76a8:	68 18 70 fe 00                                  	push   0xfe7018
  5f76ad:	52                                              	push   edx
  5f76ae:	e8 ed 98 33 00                                  	call   0x930fa0
  5f76b3:	8b 94 24 30 01 00 00                            	mov    edx,DWORD PTR [esp+0x130]
  5f76ba:	83 c4 0c                                        	add    esp,0xc
  5f76bd:	8d 44 24 17                                     	lea    eax,[esp+0x17]
  5f76c1:	50                                              	push   eax
  5f76c2:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5f76c6:	51                                              	push   ecx
  5f76c7:	52                                              	push   edx
  5f76c8:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5f76cc:	c7 44 24 1c 07 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x7
  5f76d4:	e8 27 79 fc ff                                  	call   0x5bf000
  5f76d9:	84 c0                                           	test   al,al
  5f76db:	0f 84 92 01 00 00                               	je     0x5f7873
  5f76e1:	8b 94 24 24 01 00 00                            	mov    edx,DWORD PTR [esp+0x124]
  5f76e8:	8d 44 24 16                                     	lea    eax,[esp+0x16]
  5f76ec:	50                                              	push   eax
  5f76ed:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5f76f1:	51                                              	push   ecx
  5f76f2:	52                                              	push   edx
  5f76f3:	8d 8c 24 d0 00 00 00                            	lea    ecx,[esp+0xd0]
  5f76fa:	e8 01 79 fc ff                                  	call   0x5bf000
  5f76ff:	84 c0                                           	test   al,al
  5f7701:	0f 84 6c 01 00 00                               	je     0x5f7873
  5f7707:	8a 44 24 17                                     	mov    al,BYTE PTR [esp+0x17]
  5f770b:	3a 44 24 16                                     	cmp    al,BYTE PTR [esp+0x16]
  5f770f:	0f 85 5e 01 00 00                               	jne    0x5f7873
  5f7715:	3a c3                                           	cmp    al,bl
  5f7717:	0f 84 28 01 00 00                               	je     0x5f7845
  5f771d:	57                                              	push   edi
  5f771e:	8d 84 24 28 01 00 00                            	lea    eax,[esp+0x128]
  5f7725:	68 0c 70 fe 00                                  	push   0xfe700c
  5f772a:	50                                              	push   eax
  5f772b:	e8 70 98 33 00                                  	call   0x930fa0
  5f7730:	8b 84 24 30 01 00 00                            	mov    eax,DWORD PTR [esp+0x130]
  5f7737:	83 c4 0c                                        	add    esp,0xc
  5f773a:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  5f773e:	51                                              	push   ecx
  5f773f:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5f7743:	52                                              	push   edx
  5f7744:	50                                              	push   eax
  5f7745:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5f7749:	c7 44 24 1c 03 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x3
  5f7751:	e8 6a 7d fc ff                                  	call   0x5bf4c0
  5f7756:	84 c0                                           	test   al,al
  5f7758:	0f 84 15 01 00 00                               	je     0x5f7873
  5f775e:	8b 84 24 24 01 00 00                            	mov    eax,DWORD PTR [esp+0x124]
  5f7765:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5f7769:	51                                              	push   ecx
  5f776a:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5f776e:	52                                              	push   edx
  5f776f:	50                                              	push   eax
  5f7770:	8d 8c 24 d0 00 00 00                            	lea    ecx,[esp+0xd0]
  5f7777:	e8 44 7d fc ff                                  	call   0x5bf4c0
  5f777c:	84 c0                                           	test   al,al
  5f777e:	0f 84 ef 00 00 00                               	je     0x5f7873
  5f7784:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5f7788:	51                                              	push   ecx
  5f7789:	8d 54 24 58                                     	lea    edx,[esp+0x58]
  5f778d:	52                                              	push   edx
  5f778e:	e8 0d 69 f5 ff                                  	call   0x54e0a0
  5f7793:	83 c4 08                                        	add    esp,0x8
  5f7796:	84 c0                                           	test   al,al
  5f7798:	0f 85 d5 00 00 00                               	jne    0x5f7873
  5f779e:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  5f77a2:	50                                              	push   eax
  5f77a3:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5f77a7:	57                                              	push   edi
  5f77a8:	51                                              	push   ecx
  5f77a9:	e8 b2 f9 ff ff                                  	call   0x5f7160
  5f77ae:	83 c4 0c                                        	add    esp,0xc
  5f77b1:	84 c0                                           	test   al,al
  5f77b3:	0f 84 ba 00 00 00                               	je     0x5f7873
  5f77b9:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  5f77bd:	52                                              	push   edx
  5f77be:	8d 84 24 c8 00 00 00                            	lea    eax,[esp+0xc8]
  5f77c5:	57                                              	push   edi
  5f77c6:	50                                              	push   eax
  5f77c7:	e8 94 f9 ff ff                                  	call   0x5f7160
  5f77cc:	83 c4 0c                                        	add    esp,0xc
  5f77cf:	84 c0                                           	test   al,al
  5f77d1:	0f 84 9c 00 00 00                               	je     0x5f7873
  5f77d7:	f3 0f 10 05 70 8d 15 01                         	movss  xmm0,DWORD PTR ds:0x1158d70
  5f77df:	33 c0                                           	xor    eax,eax
  5f77e1:	f3 0f 10 4c 04 44                               	movss  xmm1,DWORD PTR [esp+eax*1+0x44]
  5f77e7:	f3 0f 5c 4c 04 34                               	subss  xmm1,DWORD PTR [esp+eax*1+0x34]
  5f77ed:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5f77f3:	81 64 24 18 ff ff ff 7f                         	and    DWORD PTR [esp+0x18],0x7fffffff
  5f77fb:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  5f7801:	0f 2f c8                                        	comiss xmm1,xmm0
  5f7804:	77 6d                                           	ja     0x5f7873
  5f7806:	83 c0 04                                        	add    eax,0x4
  5f7809:	83 f8 10                                        	cmp    eax,0x10
  5f780c:	72 d3                                           	jb     0x5f77e1
  5f780e:	33 f6                                           	xor    esi,esi
  5f7810:	8b 8e 40 8d 15 01                               	mov    ecx,DWORD PTR [esi+0x1158d40]
  5f7816:	57                                              	push   edi
  5f7817:	51                                              	push   ecx
  5f7818:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  5f781c:	52                                              	push   edx
  5f781d:	e8 2e f4 ff ff                                  	call   0x5f6c50
  5f7822:	8b e8                                           	mov    ebp,eax
  5f7824:	8b 86 40 8d 15 01                               	mov    eax,DWORD PTR [esi+0x1158d40]
  5f782a:	57                                              	push   edi
  5f782b:	50                                              	push   eax
  5f782c:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  5f7830:	51                                              	push   ecx
  5f7831:	e8 1a f4 ff ff                                  	call   0x5f6c50
  5f7836:	83 c4 18                                        	add    esp,0x18
  5f7839:	3b e8                                           	cmp    ebp,eax
  5f783b:	75 36                                           	jne    0x5f7873
  5f783d:	83 c6 04                                        	add    esi,0x4
  5f7840:	83 fe 10                                        	cmp    esi,0x10
  5f7843:	72 cb                                           	jb     0x5f7810
  5f7845:	83 c7 01                                        	add    edi,0x1
  5f7848:	83 ff 06                                        	cmp    edi,0x6
  5f784b:	0f 82 4f fe ff ff                               	jb     0x5f76a0
  5f7851:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
  5f7858:	e8 83 84 fc ff                                  	call   0x5bfce0
  5f785d:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  5f7861:	e8 7a 84 fc ff                                  	call   0x5bfce0
  5f7866:	5d                                              	pop    ebp
  5f7867:	5f                                              	pop    edi
  5f7868:	5e                                              	pop    esi
  5f7869:	b0 01                                           	mov    al,0x1
  5f786b:	5b                                              	pop    ebx
  5f786c:	81 c4 24 02 00 00                               	add    esp,0x224
  5f7872:	c3                                              	ret
  5f7873:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
  5f787a:	e8 61 84 fc ff                                  	call   0x5bfce0
  5f787f:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  5f7883:	e8 58 84 fc ff                                  	call   0x5bfce0
  5f7888:	5d                                              	pop    ebp
  5f7889:	5f                                              	pop    edi
  5f788a:	5e                                              	pop    esi
  5f788b:	32 c0                                           	xor    al,al
  5f788d:	5b                                              	pop    ebx
  5f788e:	81 c4 24 02 00 00                               	add    esp,0x224
  5f7894:	c3                                              	ret
  5f7895:	cc                                              	int3
  5f7896:	cc                                              	int3
  5f7897:	cc                                              	int3
  5f7898:	cc                                              	int3
  5f7899:	cc                                              	int3
  5f789a:	cc                                              	int3
  5f789b:	cc                                              	int3
  5f789c:	cc                                              	int3
  5f789d:	cc                                              	int3
  5f789e:	cc                                              	int3
  5f789f:	cc                                              	int3
  5f78a0:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
  5f78a5:	56                                              	push   esi
  5f78a6:	8b f1                                           	mov    esi,ecx
  5f78a8:	c7 06 d0 70 fe 00                               	mov    DWORD PTR [esi],0xfe70d0
  5f78ae:	74 09                                           	je     0x5f78b9
  5f78b0:	56                                              	push   esi
  5f78b1:	e8 2a cc ee ff                                  	call   0x4e44e0
  5f78b6:	83 c4 04                                        	add    esp,0x4
  5f78b9:	8b c6                                           	mov    eax,esi
  5f78bb:	5e                                              	pop    esi
  5f78bc:	c2 04 00                                        	ret    0x4
  5f78bf:	cc                                              	int3
