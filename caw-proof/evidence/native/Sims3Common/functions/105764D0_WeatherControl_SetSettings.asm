# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105764d0 (WeatherControl_SetSettings)
Paired Ghidra pseudocode: 105764D0_WeatherControl_SetSettings.c
Window: [0x105764d0, 0x105767d0) (768 bytes; stop exclusive)
Next defined Ghidra entry: 0x105767d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105764d0: 55 8b ec 83 e4 f0 83 ec 74 53 56 57 8b 3d c4 00
105764e0: c7 10 33 f6 3b fe 0f 84 d5 02 00 00 8b 5f 74 3b
105764f0: de 0f 84 ca 02 00 00 e8 24 4c fe ff 8d 4c 24 10
10576500: 51 8d 4c 24 18 51 8b 4d 08 89 74 24 18 8b 10 8b
10576510: 52 78 51 8b c8 ff d2 83 7c 24 10 17 0f 85 9f 02
10576520: 00 00 f3 0f 10 05 d4 b0 ac 10 f3 0f 10 0d 84 e1
10576530: aa 10 8d 44 24 20 f3 0f 11 44 24 24 0f 57 c0 50
10576540: 8b cb 89 74 24 24 f3 0f 11 44 24 2c 89 74 24 30
10576550: f3 0f 11 44 24 34 f3 0f 11 44 24 38 f3 0f 11 44
10576560: 24 3c f3 0f 11 44 24 40 f3 0f 11 44 24 44 c6 44
10576570: 24 48 00 f3 0f 11 44 24 4c c6 44 24 50 01 f3 0f
10576580: 11 44 24 54 f3 0f 11 4c 24 58 f3 0f 11 44 24 68
10576590: f3 0f 11 44 24 6c f3 0f 11 44 24 70 f3 0f 11 44
105765a0: 24 74 f3 0f 11 44 24 78 f3 0f 11 44 24 7c e8 bd
105765b0: c6 dc ff 8b 74 24 14 d9 06 83 ec 08 dd 1c 24 e8
105765c0: 12 a3 51 00 d9 7c 24 16 83 c4 08 0f b7 44 24 0e
105765d0: 0d 00 0c 00 00 89 44 24 18 d9 6c 24 18 df 7c 24
105765e0: 18 8b 4c 24 18 89 4c 24 20 f3 0f 10 46 04 d9 6c
105765f0: 24 0e f3 0f 11 44 24 24 d9 46 08 d9 7c 24 0e 0f
10576600: b7 44 24 0e 0d 00 0c 00 00 89 44 24 18 d9 6c 24
10576610: 18 df 7c 24 18 8b 54 24 18 89 54 24 2c f3 0f 10
10576620: 46 0c d9 6c 24 0e f3 0f 11 44 24 30 f3 0f 10 46
10576630: 10 f3 0f 11 44 24 34 d9 46 14 d9 7c 24 0e 0f b7
10576640: 44 24 0e 0d 00 0c 00 00 89 44 24 18 d9 6c 24 18
10576650: df 7c 24 18 8b 44 24 18 89 44 24 58 d9 6c 24 0e
10576660: d9 46 18 d9 7c 24 0e 0f b7 44 24 0e 0d 00 0c 00
10576670: 00 89 44 24 18 d9 6c 24 18 df 7c 24 18 8b 4c 24
10576680: 18 89 4c 24 5c f3 0f 2c 56 1c d9 6c 24 0e 66 89
10576690: 54 24 60 f3 0f 10 46 20 f3 0f 10 15 6c 19 b2 10
105766a0: f3 0f 11 44 24 28 f3 0f 10 46 24 f3 0f 11 44 24
105766b0: 38 f3 0f 10 46 28 f3 0f 11 44 24 3c f3 0f 10 46
105766c0: 2c f3 0f 11 44 24 40 f3 0f 10 46 30 f3 0f 11 44
105766d0: 24 48 f3 0f 10 4e 34 f3 0f 10 05 84 e1 aa 10 0f
105766e0: c6 c9 00 0f c6 c0 00 0f 28 d8 0f 59 d9 0f 5f d9
105766f0: 0f c6 d2 00 0f c2 da 02 0f 50 c3 83 f8 0f 0f 95
10576700: c1 88 4c 24 4c f3 0f 10 4e 38 f3 0f 11 4c 24 50
10576710: f3 0f 10 4e 3c f3 0f 11 4c 24 64 f3 0f 10 4e 40
10576720: f3 0f 11 4c 24 68 f3 0f 10 4e 44 f3 0f 11 4c 24
10576730: 54 f3 0f 10 4e 48 f3 0f 11 4c 24 6c f3 0f 10 4e
10576740: 4c 0f c6 c9 00 0f 59 c1 0f 5f c1 0f c2 c2 02 0f
10576750: 50 d0 83 fa 0f 0f 95 c0 88 44 24 44 f3 0f 10 46
10576760: 50 f3 0f 11 44 24 70 f3 0f 10 46 54 f3 0f 11 44
10576770: 24 74 f3 0f 10 46 58 8b cf f3 0f 11 44 24 78 e8
10576780: 6c d4 cb ff 83 e8 01 74 18 83 e8 01 75 27 0f 57
10576790: c0 f3 0f 11 44 24 48 f3 0f 10 05 d4 b0 ac 10 eb
105767a0: 0e f3 0f 10 05 d4 b0 ac 10 f3 0f 11 44 24 48 f3
105767b0: 0f 11 44 24 50 8d 4c 24 20 51 8b cb e8 df c4 dc
105767c0: ff 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105764d0 <.text+0x5754d0>:
105764d0:	55                                              	push   ebp
105764d1:	8b ec                                           	mov    ebp,esp
105764d3:	83 e4 f0                                        	and    esp,0xfffffff0
105764d6:	83 ec 74                                        	sub    esp,0x74
105764d9:	53                                              	push   ebx
105764da:	56                                              	push   esi
105764db:	57                                              	push   edi
105764dc:	8b 3d c4 00 c7 10                               	mov    edi,DWORD PTR ds:0x10c700c4
105764e2:	33 f6                                           	xor    esi,esi
105764e4:	3b fe                                           	cmp    edi,esi
105764e6:	0f 84 d5 02 00 00                               	je     0x105767c1
105764ec:	8b 5f 74                                        	mov    ebx,DWORD PTR [edi+0x74]
105764ef:	3b de                                           	cmp    ebx,esi
105764f1:	0f 84 ca 02 00 00                               	je     0x105767c1
105764f7:	e8 24 4c fe ff                                  	call   0x1055b120
105764fc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10576500:	51                                              	push   ecx
10576501:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10576505:	51                                              	push   ecx
10576506:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10576509:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
1057650d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057650f:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
10576512:	51                                              	push   ecx
10576513:	8b c8                                           	mov    ecx,eax
10576515:	ff d2                                           	call   edx
10576517:	83 7c 24 10 17                                  	cmp    DWORD PTR [esp+0x10],0x17
1057651c:	0f 85 9f 02 00 00                               	jne    0x105767c1
10576522:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1057652a:	f3 0f 10 0d 84 e1 aa 10                         	movss  xmm1,DWORD PTR ds:0x10aae184
10576532:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10576536:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
1057653c:	0f 57 c0                                        	xorps  xmm0,xmm0
1057653f:	50                                              	push   eax
10576540:	8b cb                                           	mov    ecx,ebx
10576542:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
10576546:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1057654c:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
10576550:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10576556:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1057655c:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
10576562:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
10576568:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
1057656e:	c6 44 24 48 00                                  	mov    BYTE PTR [esp+0x48],0x0
10576573:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
10576579:	c6 44 24 50 01                                  	mov    BYTE PTR [esp+0x50],0x1
1057657e:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
10576584:	f3 0f 11 4c 24 58                               	movss  DWORD PTR [esp+0x58],xmm1
1057658a:	f3 0f 11 44 24 68                               	movss  DWORD PTR [esp+0x68],xmm0
10576590:	f3 0f 11 44 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm0
10576596:	f3 0f 11 44 24 70                               	movss  DWORD PTR [esp+0x70],xmm0
1057659c:	f3 0f 11 44 24 74                               	movss  DWORD PTR [esp+0x74],xmm0
105765a2:	f3 0f 11 44 24 78                               	movss  DWORD PTR [esp+0x78],xmm0
105765a8:	f3 0f 11 44 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm0
105765ae:	e8 bd c6 dc ff                                  	call   0x10342c70
105765b3:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
105765b7:	d9 06                                           	fld    DWORD PTR [esi]
105765b9:	83 ec 08                                        	sub    esp,0x8
105765bc:	dd 1c 24                                        	fstp   QWORD PTR [esp]
105765bf:	e8 12 a3 51 00                                  	call   0x10a908d6
105765c4:	d9 7c 24 16                                     	fnstcw WORD PTR [esp+0x16]
105765c8:	83 c4 08                                        	add    esp,0x8
105765cb:	0f b7 44 24 0e                                  	movzx  eax,WORD PTR [esp+0xe]
105765d0:	0d 00 0c 00 00                                  	or     eax,0xc00
105765d5:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
105765d9:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
105765dd:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
105765e1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105765e5:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
105765e9:	f3 0f 10 46 04                                  	movss  xmm0,DWORD PTR [esi+0x4]
105765ee:	d9 6c 24 0e                                     	fldcw  WORD PTR [esp+0xe]
105765f2:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
105765f8:	d9 46 08                                        	fld    DWORD PTR [esi+0x8]
105765fb:	d9 7c 24 0e                                     	fnstcw WORD PTR [esp+0xe]
105765ff:	0f b7 44 24 0e                                  	movzx  eax,WORD PTR [esp+0xe]
10576604:	0d 00 0c 00 00                                  	or     eax,0xc00
10576609:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1057660d:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
10576611:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
10576615:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10576619:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
1057661d:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [esi+0xc]
10576622:	d9 6c 24 0e                                     	fldcw  WORD PTR [esp+0xe]
10576626:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1057662c:	f3 0f 10 46 10                                  	movss  xmm0,DWORD PTR [esi+0x10]
10576631:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10576637:	d9 46 14                                        	fld    DWORD PTR [esi+0x14]
1057663a:	d9 7c 24 0e                                     	fnstcw WORD PTR [esp+0xe]
1057663e:	0f b7 44 24 0e                                  	movzx  eax,WORD PTR [esp+0xe]
10576643:	0d 00 0c 00 00                                  	or     eax,0xc00
10576648:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1057664c:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
10576650:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
10576654:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10576658:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
1057665c:	d9 6c 24 0e                                     	fldcw  WORD PTR [esp+0xe]
10576660:	d9 46 18                                        	fld    DWORD PTR [esi+0x18]
10576663:	d9 7c 24 0e                                     	fnstcw WORD PTR [esp+0xe]
10576667:	0f b7 44 24 0e                                  	movzx  eax,WORD PTR [esp+0xe]
1057666c:	0d 00 0c 00 00                                  	or     eax,0xc00
10576671:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10576675:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
10576679:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
1057667d:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10576681:	89 4c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ecx
10576685:	f3 0f 2c 56 1c                                  	cvttss2si edx,DWORD PTR [esi+0x1c]
1057668a:	d9 6c 24 0e                                     	fldcw  WORD PTR [esp+0xe]
1057668e:	66 89 54 24 60                                  	mov    WORD PTR [esp+0x60],dx
10576693:	f3 0f 10 46 20                                  	movss  xmm0,DWORD PTR [esi+0x20]
10576698:	f3 0f 10 15 6c 19 b2 10                         	movss  xmm2,DWORD PTR ds:0x10b2196c
105766a0:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
105766a6:	f3 0f 10 46 24                                  	movss  xmm0,DWORD PTR [esi+0x24]
105766ab:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
105766b1:	f3 0f 10 46 28                                  	movss  xmm0,DWORD PTR [esi+0x28]
105766b6:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
105766bc:	f3 0f 10 46 2c                                  	movss  xmm0,DWORD PTR [esi+0x2c]
105766c1:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
105766c7:	f3 0f 10 46 30                                  	movss  xmm0,DWORD PTR [esi+0x30]
105766cc:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
105766d2:	f3 0f 10 4e 34                                  	movss  xmm1,DWORD PTR [esi+0x34]
105766d7:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
105766df:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
105766e3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105766e7:	0f 28 d8                                        	movaps xmm3,xmm0
105766ea:	0f 59 d9                                        	mulps  xmm3,xmm1
105766ed:	0f 5f d9                                        	maxps  xmm3,xmm1
105766f0:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
105766f4:	0f c2 da 02                                     	cmpleps xmm3,xmm2
105766f8:	0f 50 c3                                        	movmskps eax,xmm3
105766fb:	83 f8 0f                                        	cmp    eax,0xf
105766fe:	0f 95 c1                                        	setne  cl
10576701:	88 4c 24 4c                                     	mov    BYTE PTR [esp+0x4c],cl
10576705:	f3 0f 10 4e 38                                  	movss  xmm1,DWORD PTR [esi+0x38]
1057670a:	f3 0f 11 4c 24 50                               	movss  DWORD PTR [esp+0x50],xmm1
10576710:	f3 0f 10 4e 3c                                  	movss  xmm1,DWORD PTR [esi+0x3c]
10576715:	f3 0f 11 4c 24 64                               	movss  DWORD PTR [esp+0x64],xmm1
1057671b:	f3 0f 10 4e 40                                  	movss  xmm1,DWORD PTR [esi+0x40]
10576720:	f3 0f 11 4c 24 68                               	movss  DWORD PTR [esp+0x68],xmm1
10576726:	f3 0f 10 4e 44                                  	movss  xmm1,DWORD PTR [esi+0x44]
1057672b:	f3 0f 11 4c 24 54                               	movss  DWORD PTR [esp+0x54],xmm1
10576731:	f3 0f 10 4e 48                                  	movss  xmm1,DWORD PTR [esi+0x48]
10576736:	f3 0f 11 4c 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm1
1057673c:	f3 0f 10 4e 4c                                  	movss  xmm1,DWORD PTR [esi+0x4c]
10576741:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10576745:	0f 59 c1                                        	mulps  xmm0,xmm1
10576748:	0f 5f c1                                        	maxps  xmm0,xmm1
1057674b:	0f c2 c2 02                                     	cmpleps xmm0,xmm2
1057674f:	0f 50 d0                                        	movmskps edx,xmm0
10576752:	83 fa 0f                                        	cmp    edx,0xf
10576755:	0f 95 c0                                        	setne  al
10576758:	88 44 24 44                                     	mov    BYTE PTR [esp+0x44],al
1057675c:	f3 0f 10 46 50                                  	movss  xmm0,DWORD PTR [esi+0x50]
10576761:	f3 0f 11 44 24 70                               	movss  DWORD PTR [esp+0x70],xmm0
10576767:	f3 0f 10 46 54                                  	movss  xmm0,DWORD PTR [esi+0x54]
1057676c:	f3 0f 11 44 24 74                               	movss  DWORD PTR [esp+0x74],xmm0
10576772:	f3 0f 10 46 58                                  	movss  xmm0,DWORD PTR [esi+0x58]
10576777:	8b cf                                           	mov    ecx,edi
10576779:	f3 0f 11 44 24 78                               	movss  DWORD PTR [esp+0x78],xmm0
1057677f:	e8 6c d4 cb ff                                  	call   0x10233bf0
10576784:	83 e8 01                                        	sub    eax,0x1
10576787:	74 18                                           	je     0x105767a1
10576789:	83 e8 01                                        	sub    eax,0x1
1057678c:	75 27                                           	jne    0x105767b5
1057678e:	0f 57 c0                                        	xorps  xmm0,xmm0
10576791:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
10576797:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1057679f:	eb 0e                                           	jmp    0x105767af
105767a1:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
105767a9:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
105767af:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
105767b5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
105767b9:	51                                              	push   ecx
105767ba:	8b cb                                           	mov    ecx,ebx
105767bc:	e8 df c4 dc ff                                  	call   0x10342ca0
105767c1:	5f                                              	pop    edi
105767c2:	5e                                              	pop    esi
105767c3:	5b                                              	pop    ebx
105767c4:	8b e5                                           	mov    esp,ebp
105767c6:	5d                                              	pop    ebp
105767c7:	c3                                              	ret
105767c8:	cc                                              	int3
105767c9:	cc                                              	int3
105767ca:	cc                                              	int3
105767cb:	cc                                              	int3
105767cc:	cc                                              	int3
105767cd:	cc                                              	int3
105767ce:	cc                                              	int3
105767cf:	cc                                              	int3
