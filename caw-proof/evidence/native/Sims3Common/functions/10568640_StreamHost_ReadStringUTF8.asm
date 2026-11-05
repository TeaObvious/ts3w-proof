# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568640 (StreamHost_ReadStringUTF8)
Paired Ghidra pseudocode: 10568640_StreamHost_ReadStringUTF8.c
Window: [0x10568640, 0x105688e0) (672 bytes; stop exclusive)
Next defined Ghidra entry: 0x105688e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568640: 81 ec 30 03 00 00 55 56 8b b4 24 3c 03 00 00 3b
10568650: 35 a4 b0 c7 10 75 08 8b 2d a8 b0 c7 10 eb 35 8b
10568660: c6 25 00 00 00 ff 3d 00 00 00 60 74 04 33 ed eb
10568670: 23 e8 aa 2a ff ff 8b 10 8b c8 8b 82 cc 00 00 00
10568680: 56 ff d0 85 c0 74 0b a3 a8 b0 c7 10 89 35 a4 b0
10568690: c7 10 8b e8 85 ed 75 0c 5e 8d 45 fe 5d 81 c4 30
105686a0: 03 00 00 c3 53 8b 9c 24 44 03 00 00 57 33 f6 c7
105686b0: 03 00 00 00 00 33 ff 8d 4c 24 13 51 55 e8 ee 9d
105686c0: 3a 00 83 c4 08 84 c0 0f 84 fa 01 00 00 8a 44 24
105686d0: 13 0f b6 d0 83 e2 7f 8b cf d3 e2 83 c7 07 03 f2
105686e0: 84 c0 78 d3 81 fe 00 00 01 00 0f 87 35 01 00 00
105686f0: 8d 44 24 2c 8b c8 8b d0 89 44 24 28 89 4c 24 1c
10568700: 8d 84 24 2c 01 00 00 56 8d 4c 24 1c 89 54 24 1c
10568710: 89 44 24 24 c7 44 24 28 7c 04 b2 10 e8 7f 46 02
10568720: 00 8d 8c 24 40 01 00 00 8b d1 8b c1 89 8c 24 3c
10568730: 01 00 00 8d 8c 24 40 03 00 00 89 8c 24 34 01 00
10568740: 00 56 8d 8c 24 30 01 00 00 89 94 24 34 01 00 00
10568750: 89 84 24 30 01 00 00 c7 84 24 3c 01 00 00 64 04
10568760: b2 10 e8 79 fe ff ff 8b 55 00 8b 44 24 18 8b 52
10568770: 30 56 50 8b cd ff d2 3b c6 74 4f 33 c9 83 f8 ff
10568780: 8b 84 24 2c 01 00 00 0f 95 c1 85 c0 8d 4c 09 fd
10568790: 8b f1 74 12 3b 84 24 3c 01 00 00 74 09 50 e8 ed
105687a0: 06 3b 00 83 c4 04 8b 44 24 18 85 c0 74 0f 3b 44
105687b0: 24 28 74 09 50 e8 d6 06 3b 00 83 c4 04 5f 5b 8b
105687c0: c6 5e 5d 81 c4 30 03 00 00 c3 8b 84 24 2c 01 00
105687d0: 00 8b 4c 24 18 6a 10 8d 54 24 18 52 50 6a 08 56
105687e0: 51 89 74 24 2c e8 16 eb 3b 00 83 c4 18 3b c6 74
105687f0: 44 8b 84 24 2c 01 00 00 85 c0 74 12 3b 84 24 3c
10568800: 01 00 00 74 09 50 e8 85 06 3b 00 83 c4 04 8b 44
10568810: 24 18 85 c0 74 0f 3b 44 24 28 74 09 50 e8 6e 06
10568820: 3b 00 83 c4 04 5f 5b 5e b8 fc ff ff ff 5d 81 c4
10568830: 30 03 00 00 c3 e8 e6 28 ff ff 8b 4c 24 14 8b 10
10568840: 8b 52 60 51 8b 8c 24 30 01 00 00 51 8b c8 ff d2
10568850: 89 03 85 c0 8b 84 24 2c 01 00 00 75 3d 85 c0 74
10568860: 12 3b 84 24 3c 01 00 00 74 09 50 e8 20 06 3b 00
10568870: 83 c4 04 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74
10568880: 09 50 e8 09 06 3b 00 83 c4 04 5f 5b 5e b8 fb ff
10568890: ff ff 5d 81 c4 30 03 00 00 c3 85 c0 74 12 3b 84
105688a0: 24 3c 01 00 00 74 09 50 e8 e3 05 3b 00 83 c4 04
105688b0: 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74 09 50 e8
105688c0: cc 05 3b 00 83 c4 04 5f 5b 5e 33 c0 5d 81 c4 30
105688d0: 03 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10568640 <.text+0x567640>:
10568640:	81 ec 30 03 00 00                               	sub    esp,0x330
10568646:	55                                              	push   ebp
10568647:	56                                              	push   esi
10568648:	8b b4 24 3c 03 00 00                            	mov    esi,DWORD PTR [esp+0x33c]
1056864f:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10568655:	75 08                                           	jne    0x1056865f
10568657:	8b 2d a8 b0 c7 10                               	mov    ebp,DWORD PTR ds:0x10c7b0a8
1056865d:	eb 35                                           	jmp    0x10568694
1056865f:	8b c6                                           	mov    eax,esi
10568661:	25 00 00 00 ff                                  	and    eax,0xff000000
10568666:	3d 00 00 00 60                                  	cmp    eax,0x60000000
1056866b:	74 04                                           	je     0x10568671
1056866d:	33 ed                                           	xor    ebp,ebp
1056866f:	eb 23                                           	jmp    0x10568694
10568671:	e8 aa 2a ff ff                                  	call   0x1055b120
10568676:	8b 10                                           	mov    edx,DWORD PTR [eax]
10568678:	8b c8                                           	mov    ecx,eax
1056867a:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10568680:	56                                              	push   esi
10568681:	ff d0                                           	call   eax
10568683:	85 c0                                           	test   eax,eax
10568685:	74 0b                                           	je     0x10568692
10568687:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
1056868c:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10568692:	8b e8                                           	mov    ebp,eax
10568694:	85 ed                                           	test   ebp,ebp
10568696:	75 0c                                           	jne    0x105686a4
10568698:	5e                                              	pop    esi
10568699:	8d 45 fe                                        	lea    eax,[ebp-0x2]
1056869c:	5d                                              	pop    ebp
1056869d:	81 c4 30 03 00 00                               	add    esp,0x330
105686a3:	c3                                              	ret
105686a4:	53                                              	push   ebx
105686a5:	8b 9c 24 44 03 00 00                            	mov    ebx,DWORD PTR [esp+0x344]
105686ac:	57                                              	push   edi
105686ad:	33 f6                                           	xor    esi,esi
105686af:	c7 03 00 00 00 00                               	mov    DWORD PTR [ebx],0x0
105686b5:	33 ff                                           	xor    edi,edi
105686b7:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
105686bb:	51                                              	push   ecx
105686bc:	55                                              	push   ebp
105686bd:	e8 ee 9d 3a 00                                  	call   0x109124b0
105686c2:	83 c4 08                                        	add    esp,0x8
105686c5:	84 c0                                           	test   al,al
105686c7:	0f 84 fa 01 00 00                               	je     0x105688c7
105686cd:	8a 44 24 13                                     	mov    al,BYTE PTR [esp+0x13]
105686d1:	0f b6 d0                                        	movzx  edx,al
105686d4:	83 e2 7f                                        	and    edx,0x7f
105686d7:	8b cf                                           	mov    ecx,edi
105686d9:	d3 e2                                           	shl    edx,cl
105686db:	83 c7 07                                        	add    edi,0x7
105686de:	03 f2                                           	add    esi,edx
105686e0:	84 c0                                           	test   al,al
105686e2:	78 d3                                           	js     0x105686b7
105686e4:	81 fe 00 00 01 00                               	cmp    esi,0x10000
105686ea:	0f 87 35 01 00 00                               	ja     0x10568825
105686f0:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
105686f4:	8b c8                                           	mov    ecx,eax
105686f6:	8b d0                                           	mov    edx,eax
105686f8:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
105686fc:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10568700:	8d 84 24 2c 01 00 00                            	lea    eax,[esp+0x12c]
10568707:	56                                              	push   esi
10568708:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1056870c:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10568710:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10568714:	c7 44 24 28 7c 04 b2 10                         	mov    DWORD PTR [esp+0x28],0x10b2047c
1056871c:	e8 7f 46 02 00                                  	call   0x1058cda0
10568721:	8d 8c 24 40 01 00 00                            	lea    ecx,[esp+0x140]
10568728:	8b d1                                           	mov    edx,ecx
1056872a:	8b c1                                           	mov    eax,ecx
1056872c:	89 8c 24 3c 01 00 00                            	mov    DWORD PTR [esp+0x13c],ecx
10568733:	8d 8c 24 40 03 00 00                            	lea    ecx,[esp+0x340]
1056873a:	89 8c 24 34 01 00 00                            	mov    DWORD PTR [esp+0x134],ecx
10568741:	56                                              	push   esi
10568742:	8d 8c 24 30 01 00 00                            	lea    ecx,[esp+0x130]
10568749:	89 94 24 34 01 00 00                            	mov    DWORD PTR [esp+0x134],edx
10568750:	89 84 24 30 01 00 00                            	mov    DWORD PTR [esp+0x130],eax
10568757:	c7 84 24 3c 01 00 00 64 04 b2 10                	mov    DWORD PTR [esp+0x13c],0x10b20464
10568762:	e8 79 fe ff ff                                  	call   0x105685e0
10568767:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1056876a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1056876e:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
10568771:	56                                              	push   esi
10568772:	50                                              	push   eax
10568773:	8b cd                                           	mov    ecx,ebp
10568775:	ff d2                                           	call   edx
10568777:	3b c6                                           	cmp    eax,esi
10568779:	74 4f                                           	je     0x105687ca
1056877b:	33 c9                                           	xor    ecx,ecx
1056877d:	83 f8 ff                                        	cmp    eax,0xffffffff
10568780:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
10568787:	0f 95 c1                                        	setne  cl
1056878a:	85 c0                                           	test   eax,eax
1056878c:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
10568790:	8b f1                                           	mov    esi,ecx
10568792:	74 12                                           	je     0x105687a6
10568794:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
1056879b:	74 09                                           	je     0x105687a6
1056879d:	50                                              	push   eax
1056879e:	e8 ed 06 3b 00                                  	call   0x10918e90
105687a3:	83 c4 04                                        	add    esp,0x4
105687a6:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105687aa:	85 c0                                           	test   eax,eax
105687ac:	74 0f                                           	je     0x105687bd
105687ae:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
105687b2:	74 09                                           	je     0x105687bd
105687b4:	50                                              	push   eax
105687b5:	e8 d6 06 3b 00                                  	call   0x10918e90
105687ba:	83 c4 04                                        	add    esp,0x4
105687bd:	5f                                              	pop    edi
105687be:	5b                                              	pop    ebx
105687bf:	8b c6                                           	mov    eax,esi
105687c1:	5e                                              	pop    esi
105687c2:	5d                                              	pop    ebp
105687c3:	81 c4 30 03 00 00                               	add    esp,0x330
105687c9:	c3                                              	ret
105687ca:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
105687d1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105687d5:	6a 10                                           	push   0x10
105687d7:	8d 54 24 18                                     	lea    edx,[esp+0x18]
105687db:	52                                              	push   edx
105687dc:	50                                              	push   eax
105687dd:	6a 08                                           	push   0x8
105687df:	56                                              	push   esi
105687e0:	51                                              	push   ecx
105687e1:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
105687e5:	e8 16 eb 3b 00                                  	call   0x10927300
105687ea:	83 c4 18                                        	add    esp,0x18
105687ed:	3b c6                                           	cmp    eax,esi
105687ef:	74 44                                           	je     0x10568835
105687f1:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
105687f8:	85 c0                                           	test   eax,eax
105687fa:	74 12                                           	je     0x1056880e
105687fc:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
10568803:	74 09                                           	je     0x1056880e
10568805:	50                                              	push   eax
10568806:	e8 85 06 3b 00                                  	call   0x10918e90
1056880b:	83 c4 04                                        	add    esp,0x4
1056880e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10568812:	85 c0                                           	test   eax,eax
10568814:	74 0f                                           	je     0x10568825
10568816:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
1056881a:	74 09                                           	je     0x10568825
1056881c:	50                                              	push   eax
1056881d:	e8 6e 06 3b 00                                  	call   0x10918e90
10568822:	83 c4 04                                        	add    esp,0x4
10568825:	5f                                              	pop    edi
10568826:	5b                                              	pop    ebx
10568827:	5e                                              	pop    esi
10568828:	b8 fc ff ff ff                                  	mov    eax,0xfffffffc
1056882d:	5d                                              	pop    ebp
1056882e:	81 c4 30 03 00 00                               	add    esp,0x330
10568834:	c3                                              	ret
10568835:	e8 e6 28 ff ff                                  	call   0x1055b120
1056883a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056883e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10568840:	8b 52 60                                        	mov    edx,DWORD PTR [edx+0x60]
10568843:	51                                              	push   ecx
10568844:	8b 8c 24 30 01 00 00                            	mov    ecx,DWORD PTR [esp+0x130]
1056884b:	51                                              	push   ecx
1056884c:	8b c8                                           	mov    ecx,eax
1056884e:	ff d2                                           	call   edx
10568850:	89 03                                           	mov    DWORD PTR [ebx],eax
10568852:	85 c0                                           	test   eax,eax
10568854:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
1056885b:	75 3d                                           	jne    0x1056889a
1056885d:	85 c0                                           	test   eax,eax
1056885f:	74 12                                           	je     0x10568873
10568861:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
10568868:	74 09                                           	je     0x10568873
1056886a:	50                                              	push   eax
1056886b:	e8 20 06 3b 00                                  	call   0x10918e90
10568870:	83 c4 04                                        	add    esp,0x4
10568873:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10568877:	85 c0                                           	test   eax,eax
10568879:	74 0f                                           	je     0x1056888a
1056887b:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
1056887f:	74 09                                           	je     0x1056888a
10568881:	50                                              	push   eax
10568882:	e8 09 06 3b 00                                  	call   0x10918e90
10568887:	83 c4 04                                        	add    esp,0x4
1056888a:	5f                                              	pop    edi
1056888b:	5b                                              	pop    ebx
1056888c:	5e                                              	pop    esi
1056888d:	b8 fb ff ff ff                                  	mov    eax,0xfffffffb
10568892:	5d                                              	pop    ebp
10568893:	81 c4 30 03 00 00                               	add    esp,0x330
10568899:	c3                                              	ret
1056889a:	85 c0                                           	test   eax,eax
1056889c:	74 12                                           	je     0x105688b0
1056889e:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
105688a5:	74 09                                           	je     0x105688b0
105688a7:	50                                              	push   eax
105688a8:	e8 e3 05 3b 00                                  	call   0x10918e90
105688ad:	83 c4 04                                        	add    esp,0x4
105688b0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105688b4:	85 c0                                           	test   eax,eax
105688b6:	74 0f                                           	je     0x105688c7
105688b8:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
105688bc:	74 09                                           	je     0x105688c7
105688be:	50                                              	push   eax
105688bf:	e8 cc 05 3b 00                                  	call   0x10918e90
105688c4:	83 c4 04                                        	add    esp,0x4
105688c7:	5f                                              	pop    edi
105688c8:	5b                                              	pop    ebx
105688c9:	5e                                              	pop    esi
105688ca:	33 c0                                           	xor    eax,eax
105688cc:	5d                                              	pop    ebp
105688cd:	81 c4 30 03 00 00                               	add    esp,0x330
105688d3:	c3                                              	ret
105688d4:	cc                                              	int3
105688d5:	cc                                              	int3
105688d6:	cc                                              	int3
105688d7:	cc                                              	int3
105688d8:	cc                                              	int3
105688d9:	cc                                              	int3
105688da:	cc                                              	int3
105688db:	cc                                              	int3
105688dc:	cc                                              	int3
105688dd:	cc                                              	int3
105688de:	cc                                              	int3
105688df:	cc                                              	int3
