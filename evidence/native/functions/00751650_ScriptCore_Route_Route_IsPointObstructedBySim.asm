# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751650 (ScriptCore.Route::Route_IsPointObstructedBySim)
Paired Ghidra pseudocode: 00751650_ScriptCore_Route_Route_IsPointObstructedBySim.c
Window: [0x00751650, 0x00751a00) (944 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751650: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 81 ec a4 00
00751660: 00 00 53 33 db 3b cb 56 57 0f 84 4f 03 00 00 8b
00751670: 45 08 50 e8 38 9e ff ff 8b f8 3b fb 89 7c 24 14
00751680: 0f 84 38 03 00 00 8b 17 8b 42 10 8b cf ff d0 e8
00751690: 5c 76 0d 00 8b c8 89 44 24 1c e8 21 7f 0d 00 0f
007516a0: 57 c0 8b 35 c4 db 1e 01 f3 0f 11 44 24 3c f3 0f
007516b0: 11 44 24 38 f3 0f 11 44 24 34 f3 0f 11 44 24 30
007516c0: 0f 28 44 24 30 8d 4c 24 60 0f 29 44 24 70 0f 29
007516d0: 84 24 80 00 00 00 f3 0f 10 05 f8 98 f9 00 51 8d
007516e0: 4d 0c 89 44 24 1c f3 0f 11 84 24 94 00 00 00 89
007516f0: 9c 24 98 00 00 00 89 9c 24 9c 00 00 00 89 9c 24
00751700: a0 00 00 00 89 9c 24 a4 00 00 00 e8 40 a9 01 00
00751710: 3b f3 0f 28 00 0f 29 44 24 70 0f 84 95 02 00 00
00751720: 0f 29 44 24 30 d9 44 24 38 83 ec 08 d9 5c 24 04
00751730: 0f 29 44 24 28 d9 44 24 28 8b ce d9 1c 24 e8 8d
00751740: 70 51 00 8b f0 3b f3 0f 84 68 02 00 00 f3 0f 10
00751750: 05 18 b2 fa 00 8d 54 24 30 52 8d 44 24 74 50 56
00751760: f3 0f 11 44 24 3c f3 0f 11 44 24 40 89 5c 24 44
00751770: e8 0b b2 38 00 8b 44 24 44 83 c4 0c 89 84 24 94
00751780: 00 00 00 83 be 08 04 00 00 01 75 14 83 be 0c 04
00751790: 00 00 50 75 0b 3b c3 75 07 c6 44 24 13 01 eb 1a
007517a0: 3b c3 88 5c 24 13 7d 12 8d 4c 24 30 51 56 e8 3d
007517b0: e4 3a 00 83 c4 08 84 c0 75 0a 38 5c 24 13 75 04
007517c0: b0 01 eb 02 32 c0 8b 94 24 94 00 00 00 0f 28 44
007517d0: 24 70 50 6a 01 52 0f 29 44 24 2c d9 44 24 34 83
007517e0: ec 08 d9 5c 24 04 0f 29 44 24 74 d9 44 24 74 d9
007517f0: 1c 24 e8 e9 92 ff ff 0f 28 84 24 84 00 00 00 83
00751800: c4 14 0f 29 44 24 20 d9 5c 24 24 0f 28 44 24 20
00751810: 8d 4c 24 58 51 8b 4c 24 1c 8d 54 24 58 52 83 ec
00751820: 08 0f 29 44 24 70 d9 44 24 78 d9 5c 24 04 0f 29
00751830: 84 24 80 00 00 00 8b 46 48 8b 76 4c 0f 29 44 24
00751840: 30 d9 44 24 30 d9 1c 24 56 50 e8 01 df ed ff d9
00751850: 05 c8 f8 06 01 8b 47 3c 50 53 8d 44 24 48 50 51
00751860: 8d 8c 24 80 00 00 00 d9 1c 24 51 8b 4c 24 30 89
00751870: 5c 24 54 89 5c 24 58 89 5c 24 5c c7 44 24 60 7c
00751880: e3 fe 00 e8 58 cf 0d 00 84 c0 0f 84 01 01 00 00
00751890: 8b 44 24 40 8b 4c 24 44 3b c1 89 44 24 18 89 4c
007518a0: 24 1c 0f 84 e9 00 00 00 8b 38 3b fb 89 7c 24 5c
007518b0: 0f 84 c2 00 00 00 83 47 04 01 8d 77 fc 3b f3 0f
007518c0: 84 95 00 00 00 8b 16 8b 42 0c 8b ce ff d0 83 f8
007518d0: 14 0f 85 83 00 00 00 8b 16 8b 82 84 00 00 00 8b
007518e0: ce ff d0 8b d8 8b 44 24 14 8b 48 40 3b d9 89 54
007518f0: 24 24 8b 50 44 75 06 39 54 24 24 74 5b 8b 4c 24
00751900: 24 51 53 8d 88 58 01 00 00 e8 b2 ac 0c 00 84 c0
00751910: 75 46 8b 16 8b 82 c0 00 00 00 8b ce ff d0 84 c0
00751920: 74 36 f3 0f 10 44 24 54 d9 05 c8 f8 06 01 8b 16
00751930: 83 ec 0c 8b c4 d9 5c 24 08 f3 0f 11 00 f3 0f 10
00751940: 44 24 64 f3 0f 11 40 04 8b 82 d4 00 00 00 6a 00
00751950: 8b ce ff d0 84 c0 75 71 33 db 8b 47 04 83 c0 ff
00751960: 3b c3 89 47 04 75 11 c7 47 04 01 00 00 00 8b 17
00751970: 8b 02 6a 01 8b cf ff d0 8b 44 24 18 83 c0 04 3b
00751980: 44 24 1c 89 44 24 18 0f 85 1b ff ff ff 8b 7c 24
00751990: 14 8b 4c 24 44 8b 54 24 40 51 52 8d 4c 24 48 e8
007519a0: cc eb 54 00 8b 44 24 40 3b c3 74 09 50 e8 2e 2b
007519b0: d9 ff 83 c4 04 8b 07 8b 50 14 8b cf ff d2 33 c0
007519c0: 33 d2 5f 5e 5b 8b e5 5d c3 8d 4c 24 5c e8 4e 43
007519d0: e1 ff 8d 4c 24 40 e8 05 14 f0 ff 8b 4c 24 14 8b
007519e0: 11 8b 42 14 ff d0 8b 54 24 24 5f 5e 8b c3 5b 8b
007519f0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751650 <.text+0x350650>:
  751650:	55                                              	push   ebp
  751651:	8b ec                                           	mov    ebp,esp
  751653:	83 e4 f0                                        	and    esp,0xfffffff0
  751656:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75165c:	81 ec a4 00 00 00                               	sub    esp,0xa4
  751662:	53                                              	push   ebx
  751663:	33 db                                           	xor    ebx,ebx
  751665:	3b cb                                           	cmp    ecx,ebx
  751667:	56                                              	push   esi
  751668:	57                                              	push   edi
  751669:	0f 84 4f 03 00 00                               	je     0x7519be
  75166f:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  751672:	50                                              	push   eax
  751673:	e8 38 9e ff ff                                  	call   0x74b4b0
  751678:	8b f8                                           	mov    edi,eax
  75167a:	3b fb                                           	cmp    edi,ebx
  75167c:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  751680:	0f 84 38 03 00 00                               	je     0x7519be
  751686:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751688:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75168b:	8b cf                                           	mov    ecx,edi
  75168d:	ff d0                                           	call   eax
  75168f:	e8 5c 76 0d 00                                  	call   0x828cf0
  751694:	8b c8                                           	mov    ecx,eax
  751696:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  75169a:	e8 21 7f 0d 00                                  	call   0x8295c0
  75169f:	0f 57 c0                                        	xorps  xmm0,xmm0
  7516a2:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  7516a8:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  7516ae:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  7516b4:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  7516ba:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  7516c0:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  7516c5:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  7516c9:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  7516ce:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  7516d6:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  7516de:	51                                              	push   ecx
  7516df:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
  7516e2:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  7516e6:	f3 0f 11 84 24 94 00 00 00                      	movss  DWORD PTR [esp+0x94],xmm0
  7516ef:	89 9c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ebx
  7516f6:	89 9c 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],ebx
  7516fd:	89 9c 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],ebx
  751704:	89 9c 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],ebx
  75170b:	e8 40 a9 01 00                                  	call   0x76c050
  751710:	3b f3                                           	cmp    esi,ebx
  751712:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  751715:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  75171a:	0f 84 95 02 00 00                               	je     0x7519b5
  751720:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  751725:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  751729:	83 ec 08                                        	sub    esp,0x8
  75172c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  751730:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  751735:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  751739:	8b ce                                           	mov    ecx,esi
  75173b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  75173e:	e8 8d 70 51 00                                  	call   0xc687d0
  751743:	8b f0                                           	mov    esi,eax
  751745:	3b f3                                           	cmp    esi,ebx
  751747:	0f 84 68 02 00 00                               	je     0x7519b5
  75174d:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  751755:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  751759:	52                                              	push   edx
  75175a:	8d 44 24 74                                     	lea    eax,[esp+0x74]
  75175e:	50                                              	push   eax
  75175f:	56                                              	push   esi
  751760:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  751766:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  75176c:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  751770:	e8 0b b2 38 00                                  	call   0xadc980
  751775:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  751779:	83 c4 0c                                        	add    esp,0xc
  75177c:	89 84 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],eax
  751783:	83 be 08 04 00 00 01                            	cmp    DWORD PTR [esi+0x408],0x1
  75178a:	75 14                                           	jne    0x7517a0
  75178c:	83 be 0c 04 00 00 50                            	cmp    DWORD PTR [esi+0x40c],0x50
  751793:	75 0b                                           	jne    0x7517a0
  751795:	3b c3                                           	cmp    eax,ebx
  751797:	75 07                                           	jne    0x7517a0
  751799:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  75179e:	eb 1a                                           	jmp    0x7517ba
  7517a0:	3b c3                                           	cmp    eax,ebx
  7517a2:	88 5c 24 13                                     	mov    BYTE PTR [esp+0x13],bl
  7517a6:	7d 12                                           	jge    0x7517ba
  7517a8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7517ac:	51                                              	push   ecx
  7517ad:	56                                              	push   esi
  7517ae:	e8 3d e4 3a 00                                  	call   0xaffbf0
  7517b3:	83 c4 08                                        	add    esp,0x8
  7517b6:	84 c0                                           	test   al,al
  7517b8:	75 0a                                           	jne    0x7517c4
  7517ba:	38 5c 24 13                                     	cmp    BYTE PTR [esp+0x13],bl
  7517be:	75 04                                           	jne    0x7517c4
  7517c0:	b0 01                                           	mov    al,0x1
  7517c2:	eb 02                                           	jmp    0x7517c6
  7517c4:	32 c0                                           	xor    al,al
  7517c6:	8b 94 24 94 00 00 00                            	mov    edx,DWORD PTR [esp+0x94]
  7517cd:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  7517d2:	50                                              	push   eax
  7517d3:	6a 01                                           	push   0x1
  7517d5:	52                                              	push   edx
  7517d6:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
  7517db:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  7517df:	83 ec 08                                        	sub    esp,0x8
  7517e2:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7517e6:	0f 29 44 24 74                                  	movaps XMMWORD PTR [esp+0x74],xmm0
  7517eb:	d9 44 24 74                                     	fld    DWORD PTR [esp+0x74]
  7517ef:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7517f2:	e8 e9 92 ff ff                                  	call   0x74aae0
  7517f7:	0f 28 84 24 84 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x84]
  7517ff:	83 c4 14                                        	add    esp,0x14
  751802:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  751807:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
  75180b:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  751810:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  751814:	51                                              	push   ecx
  751815:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  751819:	8d 54 24 58                                     	lea    edx,[esp+0x58]
  75181d:	52                                              	push   edx
  75181e:	83 ec 08                                        	sub    esp,0x8
  751821:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  751826:	d9 44 24 78                                     	fld    DWORD PTR [esp+0x78]
  75182a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  75182e:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  751836:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
  751839:	8b 76 4c                                        	mov    esi,DWORD PTR [esi+0x4c]
  75183c:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  751841:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  751845:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  751848:	56                                              	push   esi
  751849:	50                                              	push   eax
  75184a:	e8 01 df ed ff                                  	call   0x62f750
  75184f:	d9 05 c8 f8 06 01                               	fld    DWORD PTR ds:0x106f8c8
  751855:	8b 47 3c                                        	mov    eax,DWORD PTR [edi+0x3c]
  751858:	50                                              	push   eax
  751859:	53                                              	push   ebx
  75185a:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  75185e:	50                                              	push   eax
  75185f:	51                                              	push   ecx
  751860:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  751867:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  75186a:	51                                              	push   ecx
  75186b:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  75186f:	89 5c 24 54                                     	mov    DWORD PTR [esp+0x54],ebx
  751873:	89 5c 24 58                                     	mov    DWORD PTR [esp+0x58],ebx
  751877:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
  75187b:	c7 44 24 60 7c e3 fe 00                         	mov    DWORD PTR [esp+0x60],0xfee37c
  751883:	e8 58 cf 0d 00                                  	call   0x82e7e0
  751888:	84 c0                                           	test   al,al
  75188a:	0f 84 01 01 00 00                               	je     0x751991
  751890:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  751894:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  751898:	3b c1                                           	cmp    eax,ecx
  75189a:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  75189e:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  7518a2:	0f 84 e9 00 00 00                               	je     0x751991
  7518a8:	8b 38                                           	mov    edi,DWORD PTR [eax]
  7518aa:	3b fb                                           	cmp    edi,ebx
  7518ac:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
  7518b0:	0f 84 c2 00 00 00                               	je     0x751978
  7518b6:	83 47 04 01                                     	add    DWORD PTR [edi+0x4],0x1
  7518ba:	8d 77 fc                                        	lea    esi,[edi-0x4]
  7518bd:	3b f3                                           	cmp    esi,ebx
  7518bf:	0f 84 95 00 00 00                               	je     0x75195a
  7518c5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7518c7:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  7518ca:	8b ce                                           	mov    ecx,esi
  7518cc:	ff d0                                           	call   eax
  7518ce:	83 f8 14                                        	cmp    eax,0x14
  7518d1:	0f 85 83 00 00 00                               	jne    0x75195a
  7518d7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7518d9:	8b 82 84 00 00 00                               	mov    eax,DWORD PTR [edx+0x84]
  7518df:	8b ce                                           	mov    ecx,esi
  7518e1:	ff d0                                           	call   eax
  7518e3:	8b d8                                           	mov    ebx,eax
  7518e5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7518e9:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
  7518ec:	3b d9                                           	cmp    ebx,ecx
  7518ee:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  7518f2:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  7518f5:	75 06                                           	jne    0x7518fd
  7518f7:	39 54 24 24                                     	cmp    DWORD PTR [esp+0x24],edx
  7518fb:	74 5b                                           	je     0x751958
  7518fd:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  751901:	51                                              	push   ecx
  751902:	53                                              	push   ebx
  751903:	8d 88 58 01 00 00                               	lea    ecx,[eax+0x158]
  751909:	e8 b2 ac 0c 00                                  	call   0x81c5c0
  75190e:	84 c0                                           	test   al,al
  751910:	75 46                                           	jne    0x751958
  751912:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751914:	8b 82 c0 00 00 00                               	mov    eax,DWORD PTR [edx+0xc0]
  75191a:	8b ce                                           	mov    ecx,esi
  75191c:	ff d0                                           	call   eax
  75191e:	84 c0                                           	test   al,al
  751920:	74 36                                           	je     0x751958
  751922:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [esp+0x54]
  751928:	d9 05 c8 f8 06 01                               	fld    DWORD PTR ds:0x106f8c8
  75192e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751930:	83 ec 0c                                        	sub    esp,0xc
  751933:	8b c4                                           	mov    eax,esp
  751935:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  751939:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  75193d:	f3 0f 10 44 24 64                               	movss  xmm0,DWORD PTR [esp+0x64]
  751943:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
  751948:	8b 82 d4 00 00 00                               	mov    eax,DWORD PTR [edx+0xd4]
  75194e:	6a 00                                           	push   0x0
  751950:	8b ce                                           	mov    ecx,esi
  751952:	ff d0                                           	call   eax
  751954:	84 c0                                           	test   al,al
  751956:	75 71                                           	jne    0x7519c9
  751958:	33 db                                           	xor    ebx,ebx
  75195a:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  75195d:	83 c0 ff                                        	add    eax,0xffffffff
  751960:	3b c3                                           	cmp    eax,ebx
  751962:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  751965:	75 11                                           	jne    0x751978
  751967:	c7 47 04 01 00 00 00                            	mov    DWORD PTR [edi+0x4],0x1
  75196e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751970:	8b 02                                           	mov    eax,DWORD PTR [edx]
  751972:	6a 01                                           	push   0x1
  751974:	8b cf                                           	mov    ecx,edi
  751976:	ff d0                                           	call   eax
  751978:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  75197c:	83 c0 04                                        	add    eax,0x4
  75197f:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
  751983:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  751987:	0f 85 1b ff ff ff                               	jne    0x7518a8
  75198d:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  751991:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  751995:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  751999:	51                                              	push   ecx
  75199a:	52                                              	push   edx
  75199b:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  75199f:	e8 cc eb 54 00                                  	call   0xca0570
  7519a4:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7519a8:	3b c3                                           	cmp    eax,ebx
  7519aa:	74 09                                           	je     0x7519b5
  7519ac:	50                                              	push   eax
  7519ad:	e8 2e 2b d9 ff                                  	call   0x4e44e0
  7519b2:	83 c4 04                                        	add    esp,0x4
  7519b5:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7519b7:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7519ba:	8b cf                                           	mov    ecx,edi
  7519bc:	ff d2                                           	call   edx
  7519be:	33 c0                                           	xor    eax,eax
  7519c0:	33 d2                                           	xor    edx,edx
  7519c2:	5f                                              	pop    edi
  7519c3:	5e                                              	pop    esi
  7519c4:	5b                                              	pop    ebx
  7519c5:	8b e5                                           	mov    esp,ebp
  7519c7:	5d                                              	pop    ebp
  7519c8:	c3                                              	ret
  7519c9:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  7519cd:	e8 4e 43 e1 ff                                  	call   0x565d20
  7519d2:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  7519d6:	e8 05 14 f0 ff                                  	call   0x652de0
  7519db:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7519df:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7519e1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7519e4:	ff d0                                           	call   eax
  7519e6:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  7519ea:	5f                                              	pop    edi
  7519eb:	5e                                              	pop    esi
  7519ec:	8b c3                                           	mov    eax,ebx
  7519ee:	5b                                              	pop    ebx
  7519ef:	8b e5                                           	mov    esp,ebp
  7519f1:	5d                                              	pop    ebp
  7519f2:	c3                                              	ret
  7519f3:	cc                                              	int3
  7519f4:	cc                                              	int3
  7519f5:	cc                                              	int3
  7519f6:	cc                                              	int3
  7519f7:	cc                                              	int3
  7519f8:	cc                                              	int3
  7519f9:	cc                                              	int3
  7519fa:	cc                                              	int3
  7519fb:	cc                                              	int3
  7519fc:	cc                                              	int3
  7519fd:	cc                                              	int3
  7519fe:	cc                                              	int3
  7519ff:	cc                                              	int3
