# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00798560 (ScriptCore.World::World_GetDoorRoomsImpl)
Paired Ghidra pseudocode: 00798560_ScriptCore_World_World_GetDoorRoomsImpl.c
Window: [0x00798560, 0x00798970) (1040 bytes; stop exclusive)
Next defined Ghidra entry: 0x00798970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00798560: 81 ec 98 00 00 00 53 55 56 57 e8 01 f0 19 00 8b
00798570: 8c 24 b0 00 00 00 8b 94 24 ac 00 00 00 51 52 8b
00798580: c8 e8 fa f9 19 00 8b f0 33 db 3b f3 89 74 24 20
00798590: 0f 84 ca 03 00 00 8d 46 04 b9 01 00 00 00 f0 0f
007985a0: c1 08 8b 15 08 df 1e 01 52 8b ce e8 b0 bc 19 00
007985b0: 8b f8 3b fb 0f 84 86 03 00 00 8b 0d 34 e0 1e 01
007985c0: 8d 46 18 50 e8 e7 65 4f 00 8b e8 3b eb 89 ac 24
007985d0: 84 00 00 00 0f 84 66 03 00 00 8b ce e8 4f 6b ef
007985e0: ff 3b c3 74 1e 8b 10 8b c8 8b 42 0c 68 0e 6b 56
007985f0: 90 ff d0 3b c3 74 0c 8b 88 98 02 00 00 89 4c 24
00798600: 1c eb 04 89 5c 24 1c 39 5c 24 1c 0f 84 2f 03 00
00798610: 00 8d 54 24 60 52 8d 44 24 60 50 8d 4c 24 60 51
00798620: 8b cf e8 b9 0e 4f 00 f3 0f 10 44 24 58 8b 54 24
00798630: 60 f3 0f 11 84 24 8c 00 00 00 f3 0f 10 44 24 5c
00798640: 8b cf f3 0f 11 84 24 90 00 00 00 89 94 24 94 00
00798650: 00 00 e8 e9 12 4f 00 51 d9 1c 24 e8 a0 36 36 00
00798660: 8b 8d d8 00 00 00 2b 8d d4 00 00 00 89 44 24 58
00798670: b8 67 66 66 66 f7 e9 c1 fa 04 8b fa c1 ef 1f 03
00798680: fa 8d 77 01 83 c4 04 83 e6 fe 56 8d 4c 24 2c 89
00798690: 7c 24 14 89 74 24 28 c7 44 24 38 dc 1a 01 01 89
007986a0: 5c 24 2c 89 5c 24 34 89 5c 24 30 e8 a0 cf d3 ff
007986b0: 33 ed 3b fb 0f 86 fb 01 00 00 8b 74 24 2c 8b ff
007986c0: f3 0f 10 05 18 b2 fa 00 8d 84 24 98 00 00 00 50
007986d0: 8d 4c 24 48 51 8d 54 24 54 52 8d 44 24 54 50 8d
007986e0: 4c 24 50 51 8b 8c 24 98 00 00 00 8d 54 24 50 52
007986f0: 55 89 9c 24 b4 00 00 00 89 9c 24 b8 00 00 00 89
00798700: 9c 24 bc 00 00 00 89 9c 24 c0 00 00 00 f3 0f 11
00798710: 44 24 58 f3 0f 11 44 24 5c 89 5c 24 60 f3 0f 11
00798720: 44 24 64 f3 0f 11 44 24 68 89 5c 24 6c e8 6e f2
00798730: 4f 00 8b 44 24 44 3b c3 89 44 24 50 0f 85 64 01
00798740: 00 00 8b 4c 24 3c 8b 54 24 40 89 44 24 6c 89 44
00798750: 24 78 89 4c 24 64 8b 4c 24 48 89 54 24 68 8b 54
00798760: 24 4c 8b c5 d1 e8 50 89 4c 24 74 8d 4c 24 68 89
00798770: 54 24 78 51 8d 54 24 5c 52 8b c1 50 e8 cf cf 4a
00798780: 00 8d 4c 24 74 51 8d 94 24 a0 00 00 00 52 8b c1
00798790: 50 e8 1a cf 4a 00 83 c4 1c 8d 4c 24 70 51 8d 54
007987a0: 24 68 52 8d 8c 24 84 00 00 00 e8 41 c6 fe ff 8d
007987b0: 44 24 18 50 8d 8c 24 80 00 00 00 51 c6 44 24 20
007987c0: ff c6 44 24 21 ff 88 5c 24 22 c6 44 24 23 ff c6
007987d0: 44 24 1c ff c6 44 24 1d ff 88 5c 24 1e c6 44 24
007987e0: 1f ff e8 39 d7 4a 00 8d 54 24 1c 52 8d 84 24 88
007987f0: 00 00 00 50 e8 b7 d7 4a 00 8b 8c 24 c4 00 00 00
00798800: 83 c4 10 53 51 8b 4c 24 24 8d 54 24 20 52 e8 cd
00798810: e8 3a 00 0f b7 f8 8b 84 24 b4 00 00 00 53 50 8d
00798820: 4c 24 1c 51 8b 4c 24 28 e8 b3 e8 3a 00 3b 74 24
00798830: 30 0f b7 d0 0f bf c7 89 54 24 38 89 84 24 88 00
00798840: 00 00 73 11 8b ce 83 c6 04 3b cb 89 74 24 2c 74
00798850: 1a 89 01 eb 16 8d 84 24 88 00 00 00 50 56 8d 4c
00798860: 24 30 e8 b9 9b 1e 00 8b 74 24 2c 3b 74 24 30 0f
00798870: bf 4c 24 38 89 4c 24 38 73 15 8b 7c 24 10 8b c6
00798880: 83 c6 04 3b c3 89 74 24 2c 74 1b 89 08 eb 17 8d
00798890: 4c 24 38 51 56 8d 4c 24 30 e8 82 9b 1e 00 8b 74
007988a0: 24 2c 8b 7c 24 10 83 c5 02 3b ef 0f 82 0f fe ff
007988b0: ff 8b 74 24 24 83 fe 02 72 71 e8 d1 0a fd ff 8b
007988c0: f8 8b 17 8b 92 8c 00 00 00 56 8d 44 24 14 50 8b
007988d0: cf ff d2 8b 07 8b 90 a4 00 00 00 56 8b 74 24 2c
007988e0: 53 56 8d 4c 24 1c 51 8b cf ff d2 3b f3 8b 7c 24
007988f0: 10 74 09 56 e8 e7 bb d4 ff 83 c4 04 8b 4c 24 20
00798900: 8d 41 04 8b d0 83 ce ff f0 0f c1 32 4e 75 0f ba
00798910: 01 00 00 00 87 10 8b 01 8b 10 6a 01 ff d2 8b c7
00798920: 5f 5e 5d 5b 81 c4 98 00 00 00 c3 8b 44 24 28 3b
00798930: c3 74 09 50 e8 a7 bb d4 ff 83 c4 04 8b 74 24 20
00798940: 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9
00798950: 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0
00798960: 5f 5e 5d 33 c0 5b 81 c4 98 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
00798560 <.text+0x397560>:
  798560:	81 ec 98 00 00 00                               	sub    esp,0x98
  798566:	53                                              	push   ebx
  798567:	55                                              	push   ebp
  798568:	56                                              	push   esi
  798569:	57                                              	push   edi
  79856a:	e8 01 f0 19 00                                  	call   0x937570
  79856f:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
  798576:	8b 94 24 ac 00 00 00                            	mov    edx,DWORD PTR [esp+0xac]
  79857d:	51                                              	push   ecx
  79857e:	52                                              	push   edx
  79857f:	8b c8                                           	mov    ecx,eax
  798581:	e8 fa f9 19 00                                  	call   0x937f80
  798586:	8b f0                                           	mov    esi,eax
  798588:	33 db                                           	xor    ebx,ebx
  79858a:	3b f3                                           	cmp    esi,ebx
  79858c:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  798590:	0f 84 ca 03 00 00                               	je     0x798960
  798596:	8d 46 04                                        	lea    eax,[esi+0x4]
  798599:	b9 01 00 00 00                                  	mov    ecx,0x1
  79859e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7985a2:	8b 15 08 df 1e 01                               	mov    edx,DWORD PTR ds:0x11edf08
  7985a8:	52                                              	push   edx
  7985a9:	8b ce                                           	mov    ecx,esi
  7985ab:	e8 b0 bc 19 00                                  	call   0x934260
  7985b0:	8b f8                                           	mov    edi,eax
  7985b2:	3b fb                                           	cmp    edi,ebx
  7985b4:	0f 84 86 03 00 00                               	je     0x798940
  7985ba:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  7985c0:	8d 46 18                                        	lea    eax,[esi+0x18]
  7985c3:	50                                              	push   eax
  7985c4:	e8 e7 65 4f 00                                  	call   0xc8ebb0
  7985c9:	8b e8                                           	mov    ebp,eax
  7985cb:	3b eb                                           	cmp    ebp,ebx
  7985cd:	89 ac 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ebp
  7985d4:	0f 84 66 03 00 00                               	je     0x798940
  7985da:	8b ce                                           	mov    ecx,esi
  7985dc:	e8 4f 6b ef ff                                  	call   0x68f130
  7985e1:	3b c3                                           	cmp    eax,ebx
  7985e3:	74 1e                                           	je     0x798603
  7985e5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7985e7:	8b c8                                           	mov    ecx,eax
  7985e9:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  7985ec:	68 0e 6b 56 90                                  	push   0x90566b0e
  7985f1:	ff d0                                           	call   eax
  7985f3:	3b c3                                           	cmp    eax,ebx
  7985f5:	74 0c                                           	je     0x798603
  7985f7:	8b 88 98 02 00 00                               	mov    ecx,DWORD PTR [eax+0x298]
  7985fd:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  798601:	eb 04                                           	jmp    0x798607
  798603:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  798607:	39 5c 24 1c                                     	cmp    DWORD PTR [esp+0x1c],ebx
  79860b:	0f 84 2f 03 00 00                               	je     0x798940
  798611:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  798615:	52                                              	push   edx
  798616:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  79861a:	50                                              	push   eax
  79861b:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  79861f:	51                                              	push   ecx
  798620:	8b cf                                           	mov    ecx,edi
  798622:	e8 b9 0e 4f 00                                  	call   0xc894e0
  798627:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [esp+0x58]
  79862d:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  798631:	f3 0f 11 84 24 8c 00 00 00                      	movss  DWORD PTR [esp+0x8c],xmm0
  79863a:	f3 0f 10 44 24 5c                               	movss  xmm0,DWORD PTR [esp+0x5c]
  798640:	8b cf                                           	mov    ecx,edi
  798642:	f3 0f 11 84 24 90 00 00 00                      	movss  DWORD PTR [esp+0x90],xmm0
  79864b:	89 94 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],edx
  798652:	e8 e9 12 4f 00                                  	call   0xc89940
  798657:	51                                              	push   ecx
  798658:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  79865b:	e8 a0 36 36 00                                  	call   0xafbd00
  798660:	8b 8d d8 00 00 00                               	mov    ecx,DWORD PTR [ebp+0xd8]
  798666:	2b 8d d4 00 00 00                               	sub    ecx,DWORD PTR [ebp+0xd4]
  79866c:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
  798670:	b8 67 66 66 66                                  	mov    eax,0x66666667
  798675:	f7 e9                                           	imul   ecx
  798677:	c1 fa 04                                        	sar    edx,0x4
  79867a:	8b fa                                           	mov    edi,edx
  79867c:	c1 ef 1f                                        	shr    edi,0x1f
  79867f:	03 fa                                           	add    edi,edx
  798681:	8d 77 01                                        	lea    esi,[edi+0x1]
  798684:	83 c4 04                                        	add    esp,0x4
  798687:	83 e6 fe                                        	and    esi,0xfffffffe
  79868a:	56                                              	push   esi
  79868b:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  79868f:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  798693:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  798697:	c7 44 24 38 dc 1a 01 01                         	mov    DWORD PTR [esp+0x38],0x1011adc
  79869f:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  7986a3:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  7986a7:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  7986ab:	e8 a0 cf d3 ff                                  	call   0x4d5650
  7986b0:	33 ed                                           	xor    ebp,ebp
  7986b2:	3b fb                                           	cmp    edi,ebx
  7986b4:	0f 86 fb 01 00 00                               	jbe    0x7988b5
  7986ba:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  7986be:	8b ff                                           	mov    edi,edi
  7986c0:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  7986c8:	8d 84 24 98 00 00 00                            	lea    eax,[esp+0x98]
  7986cf:	50                                              	push   eax
  7986d0:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  7986d4:	51                                              	push   ecx
  7986d5:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  7986d9:	52                                              	push   edx
  7986da:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  7986de:	50                                              	push   eax
  7986df:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  7986e3:	51                                              	push   ecx
  7986e4:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
  7986eb:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  7986ef:	52                                              	push   edx
  7986f0:	55                                              	push   ebp
  7986f1:	89 9c 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],ebx
  7986f8:	89 9c 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],ebx
  7986ff:	89 9c 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],ebx
  798706:	89 9c 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],ebx
  79870d:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
  798713:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  798719:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  79871d:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
  798723:	f3 0f 11 44 24 68                               	movss  DWORD PTR [esp+0x68],xmm0
  798729:	89 5c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebx
  79872d:	e8 6e f2 4f 00                                  	call   0xc979a0
  798732:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  798736:	3b c3                                           	cmp    eax,ebx
  798738:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
  79873c:	0f 85 64 01 00 00                               	jne    0x7988a6
  798742:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  798746:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  79874a:	89 44 24 6c                                     	mov    DWORD PTR [esp+0x6c],eax
  79874e:	89 44 24 78                                     	mov    DWORD PTR [esp+0x78],eax
  798752:	89 4c 24 64                                     	mov    DWORD PTR [esp+0x64],ecx
  798756:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  79875a:	89 54 24 68                                     	mov    DWORD PTR [esp+0x68],edx
  79875e:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  798762:	8b c5                                           	mov    eax,ebp
  798764:	d1 e8                                           	shr    eax,1
  798766:	50                                              	push   eax
  798767:	89 4c 24 74                                     	mov    DWORD PTR [esp+0x74],ecx
  79876b:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  79876f:	89 54 24 78                                     	mov    DWORD PTR [esp+0x78],edx
  798773:	51                                              	push   ecx
  798774:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  798778:	52                                              	push   edx
  798779:	8b c1                                           	mov    eax,ecx
  79877b:	50                                              	push   eax
  79877c:	e8 cf cf 4a 00                                  	call   0xc45750
  798781:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  798785:	51                                              	push   ecx
  798786:	8d 94 24 a0 00 00 00                            	lea    edx,[esp+0xa0]
  79878d:	52                                              	push   edx
  79878e:	8b c1                                           	mov    eax,ecx
  798790:	50                                              	push   eax
  798791:	e8 1a cf 4a 00                                  	call   0xc456b0
  798796:	83 c4 1c                                        	add    esp,0x1c
  798799:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  79879d:	51                                              	push   ecx
  79879e:	8d 54 24 68                                     	lea    edx,[esp+0x68]
  7987a2:	52                                              	push   edx
  7987a3:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
  7987aa:	e8 41 c6 fe ff                                  	call   0x784df0
  7987af:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  7987b3:	50                                              	push   eax
  7987b4:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  7987bb:	51                                              	push   ecx
  7987bc:	c6 44 24 20 ff                                  	mov    BYTE PTR [esp+0x20],0xff
  7987c1:	c6 44 24 21 ff                                  	mov    BYTE PTR [esp+0x21],0xff
  7987c6:	88 5c 24 22                                     	mov    BYTE PTR [esp+0x22],bl
  7987ca:	c6 44 24 23 ff                                  	mov    BYTE PTR [esp+0x23],0xff
  7987cf:	c6 44 24 1c ff                                  	mov    BYTE PTR [esp+0x1c],0xff
  7987d4:	c6 44 24 1d ff                                  	mov    BYTE PTR [esp+0x1d],0xff
  7987d9:	88 5c 24 1e                                     	mov    BYTE PTR [esp+0x1e],bl
  7987dd:	c6 44 24 1f ff                                  	mov    BYTE PTR [esp+0x1f],0xff
  7987e2:	e8 39 d7 4a 00                                  	call   0xc45f20
  7987e7:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  7987eb:	52                                              	push   edx
  7987ec:	8d 84 24 88 00 00 00                            	lea    eax,[esp+0x88]
  7987f3:	50                                              	push   eax
  7987f4:	e8 b7 d7 4a 00                                  	call   0xc45fb0
  7987f9:	8b 8c 24 c4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xc4]
  798800:	83 c4 10                                        	add    esp,0x10
  798803:	53                                              	push   ebx
  798804:	51                                              	push   ecx
  798805:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  798809:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  79880d:	52                                              	push   edx
  79880e:	e8 cd e8 3a 00                                  	call   0xb470e0
  798813:	0f b7 f8                                        	movzx  edi,ax
  798816:	8b 84 24 b4 00 00 00                            	mov    eax,DWORD PTR [esp+0xb4]
  79881d:	53                                              	push   ebx
  79881e:	50                                              	push   eax
  79881f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  798823:	51                                              	push   ecx
  798824:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  798828:	e8 b3 e8 3a 00                                  	call   0xb470e0
  79882d:	3b 74 24 30                                     	cmp    esi,DWORD PTR [esp+0x30]
  798831:	0f b7 d0                                        	movzx  edx,ax
  798834:	0f bf c7                                        	movsx  eax,di
  798837:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  79883b:	89 84 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],eax
  798842:	73 11                                           	jae    0x798855
  798844:	8b ce                                           	mov    ecx,esi
  798846:	83 c6 04                                        	add    esi,0x4
  798849:	3b cb                                           	cmp    ecx,ebx
  79884b:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  79884f:	74 1a                                           	je     0x79886b
  798851:	89 01                                           	mov    DWORD PTR [ecx],eax
  798853:	eb 16                                           	jmp    0x79886b
  798855:	8d 84 24 88 00 00 00                            	lea    eax,[esp+0x88]
  79885c:	50                                              	push   eax
  79885d:	56                                              	push   esi
  79885e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  798862:	e8 b9 9b 1e 00                                  	call   0x982420
  798867:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  79886b:	3b 74 24 30                                     	cmp    esi,DWORD PTR [esp+0x30]
  79886f:	0f bf 4c 24 38                                  	movsx  ecx,WORD PTR [esp+0x38]
  798874:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
  798878:	73 15                                           	jae    0x79888f
  79887a:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  79887e:	8b c6                                           	mov    eax,esi
  798880:	83 c6 04                                        	add    esi,0x4
  798883:	3b c3                                           	cmp    eax,ebx
  798885:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  798889:	74 1b                                           	je     0x7988a6
  79888b:	89 08                                           	mov    DWORD PTR [eax],ecx
  79888d:	eb 17                                           	jmp    0x7988a6
  79888f:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  798893:	51                                              	push   ecx
  798894:	56                                              	push   esi
  798895:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  798899:	e8 82 9b 1e 00                                  	call   0x982420
  79889e:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  7988a2:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  7988a6:	83 c5 02                                        	add    ebp,0x2
  7988a9:	3b ef                                           	cmp    ebp,edi
  7988ab:	0f 82 0f fe ff ff                               	jb     0x7986c0
  7988b1:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  7988b5:	83 fe 02                                        	cmp    esi,0x2
  7988b8:	72 71                                           	jb     0x79892b
  7988ba:	e8 d1 0a fd ff                                  	call   0x769390
  7988bf:	8b f8                                           	mov    edi,eax
  7988c1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7988c3:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
  7988c9:	56                                              	push   esi
  7988ca:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7988ce:	50                                              	push   eax
  7988cf:	8b cf                                           	mov    ecx,edi
  7988d1:	ff d2                                           	call   edx
  7988d3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7988d5:	8b 90 a4 00 00 00                               	mov    edx,DWORD PTR [eax+0xa4]
  7988db:	56                                              	push   esi
  7988dc:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  7988e0:	53                                              	push   ebx
  7988e1:	56                                              	push   esi
  7988e2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  7988e6:	51                                              	push   ecx
  7988e7:	8b cf                                           	mov    ecx,edi
  7988e9:	ff d2                                           	call   edx
  7988eb:	3b f3                                           	cmp    esi,ebx
  7988ed:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  7988f1:	74 09                                           	je     0x7988fc
  7988f3:	56                                              	push   esi
  7988f4:	e8 e7 bb d4 ff                                  	call   0x4e44e0
  7988f9:	83 c4 04                                        	add    esp,0x4
  7988fc:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  798900:	8d 41 04                                        	lea    eax,[ecx+0x4]
  798903:	8b d0                                           	mov    edx,eax
  798905:	83 ce ff                                        	or     esi,0xffffffff
  798908:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  79890c:	4e                                              	dec    esi
  79890d:	75 0f                                           	jne    0x79891e
  79890f:	ba 01 00 00 00                                  	mov    edx,0x1
  798914:	87 10                                           	xchg   DWORD PTR [eax],edx
  798916:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  798918:	8b 10                                           	mov    edx,DWORD PTR [eax]
  79891a:	6a 01                                           	push   0x1
  79891c:	ff d2                                           	call   edx
  79891e:	8b c7                                           	mov    eax,edi
  798920:	5f                                              	pop    edi
  798921:	5e                                              	pop    esi
  798922:	5d                                              	pop    ebp
  798923:	5b                                              	pop    ebx
  798924:	81 c4 98 00 00 00                               	add    esp,0x98
  79892a:	c3                                              	ret
  79892b:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  79892f:	3b c3                                           	cmp    eax,ebx
  798931:	74 09                                           	je     0x79893c
  798933:	50                                              	push   eax
  798934:	e8 a7 bb d4 ff                                  	call   0x4e44e0
  798939:	83 c4 04                                        	add    esp,0x4
  79893c:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  798940:	8d 46 04                                        	lea    eax,[esi+0x4]
  798943:	8b c8                                           	mov    ecx,eax
  798945:	83 ca ff                                        	or     edx,0xffffffff
  798948:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  79894c:	4a                                              	dec    edx
  79894d:	75 11                                           	jne    0x798960
  79894f:	b9 01 00 00 00                                  	mov    ecx,0x1
  798954:	87 08                                           	xchg   DWORD PTR [eax],ecx
  798956:	8b 16                                           	mov    edx,DWORD PTR [esi]
  798958:	8b 02                                           	mov    eax,DWORD PTR [edx]
  79895a:	6a 01                                           	push   0x1
  79895c:	8b ce                                           	mov    ecx,esi
  79895e:	ff d0                                           	call   eax
  798960:	5f                                              	pop    edi
  798961:	5e                                              	pop    esi
  798962:	5d                                              	pop    ebp
  798963:	33 c0                                           	xor    eax,eax
  798965:	5b                                              	pop    ebx
  798966:	81 c4 98 00 00 00                               	add    esp,0x98
  79896c:	c3                                              	ret
  79896d:	cc                                              	int3
  79896e:	cc                                              	int3
  79896f:	cc                                              	int3
