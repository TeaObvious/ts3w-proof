# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10787600 (DownloadContent_StoreHouseholdContentsImpl)
Paired Ghidra pseudocode: 10787600_DownloadContent_StoreHouseholdContentsImpl.c
Window: [0x10787600, 0x10787910) (784 bytes; stop exclusive)
Next defined Ghidra entry: 0x10787910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10787600: 81 ec 24 01 00 00 53 e8 14 3b dd ff 8b d8 8d 44
10787610: 24 04 50 8d 4c 24 0c c7 44 24 08 98 8c b5 10 e8
10787620: ec 01 fa ff 8b 94 24 34 01 00 00 8d 4c 24 08 51
10787630: 52 53 e8 d9 c9 ff ff 83 c4 0c 84 c0 74 33 6a 00
10787640: 8d 8c 24 a8 00 00 00 e8 04 25 e4 ff 8d 84 24 a4
10787650: 00 00 00 50 8d 4c 24 0c 51 e8 f2 6c 00 00 83 c4
10787660: 08 84 c0 75 27 8d 8c 24 a4 00 00 00 e8 8f 21 e4
10787670: ff 8b 44 24 08 85 c0 74 09 50 e8 11 18 19 00 83
10787680: c4 04 32 c0 5b 81 c4 24 01 00 00 c3 56 8b 35 94
10787690: de c8 10 8d 4c 24 1c e8 d4 31 e4 ff 8d 54 24 1c
107876a0: 52 8b ce e8 88 91 00 00 84 c0 75 31 8d 4c 24 1c
107876b0: e8 4b 32 e4 ff 8d 8c 24 a8 00 00 00 e8 3f 21 e4
107876c0: ff 8b 44 24 0c 85 c0 74 09 50 e8 c1 17 19 00 83
107876d0: c4 04 5e 32 c0 5b 81 c4 24 01 00 00 c3 8b b4 24
107876e0: 34 01 00 00 57 8b bc 24 34 01 00 00 6a 00 56 57
107876f0: 68 95 30 28 00 8d 44 24 30 50 8d 8c 24 c0 00 00
10787700: 00 e8 aa 21 e4 ff 8d 4c 24 0c 51 8d 4c 24 4c c7
10787710: 44 24 10 44 8c b5 10 e8 f4 00 fa ff 8b 84 24 40
10787720: 01 00 00 8d 54 24 48 52 50 53 e8 b1 f2 ff ff 83
10787730: c4 0c 84 c0 75 47 8b 44 24 48 85 c0 74 09 50 e8
10787740: 4c 17 19 00 83 c4 04 8d 4c 24 20 e8 b0 31 e4 ff
10787750: 8d 8c 24 ac 00 00 00 e8 a4 20 e4 ff 8b 44 24 10
10787760: 85 c0 0f 84 b1 00 00 00 50 e8 22 17 19 00 83 c4
10787770: 04 5f 5e 32 c0 5b 81 c4 24 01 00 00 c3 68 e8 90
10787780: b5 10 6a 00 6a 00 8d 4c 24 74 e8 01 c9 18 00 d9
10787790: e8 51 d9 1c 24 6a 01 8d 4c 24 70 e8 d0 c2 18 00
107877a0: 6a 01 8d 4c 24 6c 51 8d 8c 24 9c 00 00 00 e8 ed
107877b0: 4a e4 ff 8b 84 24 44 01 00 00 8d 54 24 68 52 50
107877c0: 53 e8 ba c8 ff ff 83 c4 0c 84 c0 75 58 8d 8c 24
107877d0: 94 00 00 00 e8 27 31 e4 ff 8d 4c 24 68 e8 ee 69
107877e0: 89 ff 8b 44 24 48 85 c0 74 09 50 e8 a0 16 19 00
107877f0: 83 c4 04 8d 4c 24 20 e8 04 31 e4 ff 8d 8c 24 ac
10787800: 00 00 00 e8 f8 1f e4 ff 8b 44 24 10 85 c0 74 09
10787810: 50 e8 7a 16 19 00 83 c4 04 5f 5e 32 c0 5b 81 c4
10787820: 24 01 00 00 c3 8d 4c 24 58 e8 52 75 01 00 8b 44
10787830: 24 6c 85 c0 74 05 8b 40 08 eb 02 33 c0 8b 4c 24
10787840: 78 51 50 8d 4c 24 60 e8 04 76 01 00 56 57 6a 00
10787850: 8d 54 24 2c 52 8d 4c 24 68 e8 92 74 01 00 8b 0d
10787860: c4 00 c7 10 6a 00 6a 00 6a 00 8d 44 24 44 50 8b
10787870: 44 24 30 c7 44 24 48 cc 59 ab 10 89 7c 24 50 89
10787880: 74 24 54 8b 91 84 00 00 00 52 50 e8 60 47 e4 ff
10787890: 8b 44 24 70 83 c4 18 85 c0 c7 44 24 38 7c 3a ab
107878a0: 10 74 09 50 e8 e7 15 19 00 83 c4 04 8d 8c 24 94
107878b0: 00 00 00 e8 48 30 e4 ff 8d 4c 24 68 e8 0f 69 89
107878c0: ff 8b 44 24 48 85 c0 74 09 50 e8 c1 15 19 00 83
107878d0: c4 04 8d 4c 24 20 e8 25 30 e4 ff 8d 8c 24 ac 00
107878e0: 00 00 e8 19 1f e4 ff 8b 44 24 10 85 c0 74 09 50
107878f0: e8 9b 15 19 00 83 c4 04 5f 5e b0 01 5b 81 c4 24
10787900: 01 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10787600 <.text+0x786600>:
10787600:	81 ec 24 01 00 00                               	sub    esp,0x124
10787606:	53                                              	push   ebx
10787607:	e8 14 3b dd ff                                  	call   0x1055b120
1078760c:	8b d8                                           	mov    ebx,eax
1078760e:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10787612:	50                                              	push   eax
10787613:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10787617:	c7 44 24 08 98 8c b5 10                         	mov    DWORD PTR [esp+0x8],0x10b58c98
1078761f:	e8 ec 01 fa ff                                  	call   0x10727810
10787624:	8b 94 24 34 01 00 00                            	mov    edx,DWORD PTR [esp+0x134]
1078762b:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1078762f:	51                                              	push   ecx
10787630:	52                                              	push   edx
10787631:	53                                              	push   ebx
10787632:	e8 d9 c9 ff ff                                  	call   0x10784010
10787637:	83 c4 0c                                        	add    esp,0xc
1078763a:	84 c0                                           	test   al,al
1078763c:	74 33                                           	je     0x10787671
1078763e:	6a 00                                           	push   0x0
10787640:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10787647:	e8 04 25 e4 ff                                  	call   0x105c9b50
1078764c:	8d 84 24 a4 00 00 00                            	lea    eax,[esp+0xa4]
10787653:	50                                              	push   eax
10787654:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10787658:	51                                              	push   ecx
10787659:	e8 f2 6c 00 00                                  	call   0x1078e350
1078765e:	83 c4 08                                        	add    esp,0x8
10787661:	84 c0                                           	test   al,al
10787663:	75 27                                           	jne    0x1078768c
10787665:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
1078766c:	e8 8f 21 e4 ff                                  	call   0x105c9800
10787671:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10787675:	85 c0                                           	test   eax,eax
10787677:	74 09                                           	je     0x10787682
10787679:	50                                              	push   eax
1078767a:	e8 11 18 19 00                                  	call   0x10918e90
1078767f:	83 c4 04                                        	add    esp,0x4
10787682:	32 c0                                           	xor    al,al
10787684:	5b                                              	pop    ebx
10787685:	81 c4 24 01 00 00                               	add    esp,0x124
1078768b:	c3                                              	ret
1078768c:	56                                              	push   esi
1078768d:	8b 35 94 de c8 10                               	mov    esi,DWORD PTR ds:0x10c8de94
10787693:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10787697:	e8 d4 31 e4 ff                                  	call   0x105ca870
1078769c:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
107876a0:	52                                              	push   edx
107876a1:	8b ce                                           	mov    ecx,esi
107876a3:	e8 88 91 00 00                                  	call   0x10790830
107876a8:	84 c0                                           	test   al,al
107876aa:	75 31                                           	jne    0x107876dd
107876ac:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
107876b0:	e8 4b 32 e4 ff                                  	call   0x105ca900
107876b5:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
107876bc:	e8 3f 21 e4 ff                                  	call   0x105c9800
107876c1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
107876c5:	85 c0                                           	test   eax,eax
107876c7:	74 09                                           	je     0x107876d2
107876c9:	50                                              	push   eax
107876ca:	e8 c1 17 19 00                                  	call   0x10918e90
107876cf:	83 c4 04                                        	add    esp,0x4
107876d2:	5e                                              	pop    esi
107876d3:	32 c0                                           	xor    al,al
107876d5:	5b                                              	pop    ebx
107876d6:	81 c4 24 01 00 00                               	add    esp,0x124
107876dc:	c3                                              	ret
107876dd:	8b b4 24 34 01 00 00                            	mov    esi,DWORD PTR [esp+0x134]
107876e4:	57                                              	push   edi
107876e5:	8b bc 24 34 01 00 00                            	mov    edi,DWORD PTR [esp+0x134]
107876ec:	6a 00                                           	push   0x0
107876ee:	56                                              	push   esi
107876ef:	57                                              	push   edi
107876f0:	68 95 30 28 00                                  	push   0x283095
107876f5:	8d 44 24 30                                     	lea    eax,[esp+0x30]
107876f9:	50                                              	push   eax
107876fa:	8d 8c 24 c0 00 00 00                            	lea    ecx,[esp+0xc0]
10787701:	e8 aa 21 e4 ff                                  	call   0x105c98b0
10787706:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1078770a:	51                                              	push   ecx
1078770b:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
1078770f:	c7 44 24 10 44 8c b5 10                         	mov    DWORD PTR [esp+0x10],0x10b58c44
10787717:	e8 f4 00 fa ff                                  	call   0x10727810
1078771c:	8b 84 24 40 01 00 00                            	mov    eax,DWORD PTR [esp+0x140]
10787723:	8d 54 24 48                                     	lea    edx,[esp+0x48]
10787727:	52                                              	push   edx
10787728:	50                                              	push   eax
10787729:	53                                              	push   ebx
1078772a:	e8 b1 f2 ff ff                                  	call   0x107869e0
1078772f:	83 c4 0c                                        	add    esp,0xc
10787732:	84 c0                                           	test   al,al
10787734:	75 47                                           	jne    0x1078777d
10787736:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1078773a:	85 c0                                           	test   eax,eax
1078773c:	74 09                                           	je     0x10787747
1078773e:	50                                              	push   eax
1078773f:	e8 4c 17 19 00                                  	call   0x10918e90
10787744:	83 c4 04                                        	add    esp,0x4
10787747:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1078774b:	e8 b0 31 e4 ff                                  	call   0x105ca900
10787750:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
10787757:	e8 a4 20 e4 ff                                  	call   0x105c9800
1078775c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10787760:	85 c0                                           	test   eax,eax
10787762:	0f 84 b1 00 00 00                               	je     0x10787819
10787768:	50                                              	push   eax
10787769:	e8 22 17 19 00                                  	call   0x10918e90
1078776e:	83 c4 04                                        	add    esp,0x4
10787771:	5f                                              	pop    edi
10787772:	5e                                              	pop    esi
10787773:	32 c0                                           	xor    al,al
10787775:	5b                                              	pop    ebx
10787776:	81 c4 24 01 00 00                               	add    esp,0x124
1078777c:	c3                                              	ret
1078777d:	68 e8 90 b5 10                                  	push   0x10b590e8
10787782:	6a 00                                           	push   0x0
10787784:	6a 00                                           	push   0x0
10787786:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
1078778a:	e8 01 c9 18 00                                  	call   0x10914090
1078778f:	d9 e8                                           	fld1
10787791:	51                                              	push   ecx
10787792:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10787795:	6a 01                                           	push   0x1
10787797:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1078779b:	e8 d0 c2 18 00                                  	call   0x10913a70
107877a0:	6a 01                                           	push   0x1
107877a2:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
107877a6:	51                                              	push   ecx
107877a7:	8d 8c 24 9c 00 00 00                            	lea    ecx,[esp+0x9c]
107877ae:	e8 ed 4a e4 ff                                  	call   0x105cc2a0
107877b3:	8b 84 24 44 01 00 00                            	mov    eax,DWORD PTR [esp+0x144]
107877ba:	8d 54 24 68                                     	lea    edx,[esp+0x68]
107877be:	52                                              	push   edx
107877bf:	50                                              	push   eax
107877c0:	53                                              	push   ebx
107877c1:	e8 ba c8 ff ff                                  	call   0x10784080
107877c6:	83 c4 0c                                        	add    esp,0xc
107877c9:	84 c0                                           	test   al,al
107877cb:	75 58                                           	jne    0x10787825
107877cd:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
107877d4:	e8 27 31 e4 ff                                  	call   0x105ca900
107877d9:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
107877dd:	e8 ee 69 89 ff                                  	call   0x1001e1d0
107877e2:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
107877e6:	85 c0                                           	test   eax,eax
107877e8:	74 09                                           	je     0x107877f3
107877ea:	50                                              	push   eax
107877eb:	e8 a0 16 19 00                                  	call   0x10918e90
107877f0:	83 c4 04                                        	add    esp,0x4
107877f3:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
107877f7:	e8 04 31 e4 ff                                  	call   0x105ca900
107877fc:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
10787803:	e8 f8 1f e4 ff                                  	call   0x105c9800
10787808:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1078780c:	85 c0                                           	test   eax,eax
1078780e:	74 09                                           	je     0x10787819
10787810:	50                                              	push   eax
10787811:	e8 7a 16 19 00                                  	call   0x10918e90
10787816:	83 c4 04                                        	add    esp,0x4
10787819:	5f                                              	pop    edi
1078781a:	5e                                              	pop    esi
1078781b:	32 c0                                           	xor    al,al
1078781d:	5b                                              	pop    ebx
1078781e:	81 c4 24 01 00 00                               	add    esp,0x124
10787824:	c3                                              	ret
10787825:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
10787829:	e8 52 75 01 00                                  	call   0x1079ed80
1078782e:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
10787832:	85 c0                                           	test   eax,eax
10787834:	74 05                                           	je     0x1078783b
10787836:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10787839:	eb 02                                           	jmp    0x1078783d
1078783b:	33 c0                                           	xor    eax,eax
1078783d:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
10787841:	51                                              	push   ecx
10787842:	50                                              	push   eax
10787843:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10787847:	e8 04 76 01 00                                  	call   0x1079ee50
1078784c:	56                                              	push   esi
1078784d:	57                                              	push   edi
1078784e:	6a 00                                           	push   0x0
10787850:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
10787854:	52                                              	push   edx
10787855:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10787859:	e8 92 74 01 00                                  	call   0x1079ecf0
1078785e:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10787864:	6a 00                                           	push   0x0
10787866:	6a 00                                           	push   0x0
10787868:	6a 00                                           	push   0x0
1078786a:	8d 44 24 44                                     	lea    eax,[esp+0x44]
1078786e:	50                                              	push   eax
1078786f:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10787873:	c7 44 24 48 cc 59 ab 10                         	mov    DWORD PTR [esp+0x48],0x10ab59cc
1078787b:	89 7c 24 50                                     	mov    DWORD PTR [esp+0x50],edi
1078787f:	89 74 24 54                                     	mov    DWORD PTR [esp+0x54],esi
10787883:	8b 91 84 00 00 00                               	mov    edx,DWORD PTR [ecx+0x84]
10787889:	52                                              	push   edx
1078788a:	50                                              	push   eax
1078788b:	e8 60 47 e4 ff                                  	call   0x105cbff0
10787890:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
10787894:	83 c4 18                                        	add    esp,0x18
10787897:	85 c0                                           	test   eax,eax
10787899:	c7 44 24 38 7c 3a ab 10                         	mov    DWORD PTR [esp+0x38],0x10ab3a7c
107878a1:	74 09                                           	je     0x107878ac
107878a3:	50                                              	push   eax
107878a4:	e8 e7 15 19 00                                  	call   0x10918e90
107878a9:	83 c4 04                                        	add    esp,0x4
107878ac:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
107878b3:	e8 48 30 e4 ff                                  	call   0x105ca900
107878b8:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
107878bc:	e8 0f 69 89 ff                                  	call   0x1001e1d0
107878c1:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
107878c5:	85 c0                                           	test   eax,eax
107878c7:	74 09                                           	je     0x107878d2
107878c9:	50                                              	push   eax
107878ca:	e8 c1 15 19 00                                  	call   0x10918e90
107878cf:	83 c4 04                                        	add    esp,0x4
107878d2:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
107878d6:	e8 25 30 e4 ff                                  	call   0x105ca900
107878db:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
107878e2:	e8 19 1f e4 ff                                  	call   0x105c9800
107878e7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
107878eb:	85 c0                                           	test   eax,eax
107878ed:	74 09                                           	je     0x107878f8
107878ef:	50                                              	push   eax
107878f0:	e8 9b 15 19 00                                  	call   0x10918e90
107878f5:	83 c4 04                                        	add    esp,0x4
107878f8:	5f                                              	pop    edi
107878f9:	5e                                              	pop    esi
107878fa:	b0 01                                           	mov    al,0x1
107878fc:	5b                                              	pop    ebx
107878fd:	81 c4 24 01 00 00                               	add    esp,0x124
10787903:	c3                                              	ret
10787904:	cc                                              	int3
10787905:	cc                                              	int3
10787906:	cc                                              	int3
10787907:	cc                                              	int3
10787908:	cc                                              	int3
10787909:	cc                                              	int3
1078790a:	cc                                              	int3
1078790b:	cc                                              	int3
1078790c:	cc                                              	int3
1078790d:	cc                                              	int3
1078790e:	cc                                              	int3
1078790f:	cc                                              	int3
