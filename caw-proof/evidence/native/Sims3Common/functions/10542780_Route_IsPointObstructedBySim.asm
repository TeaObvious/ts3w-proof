# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542780 (Route_IsPointObstructedBySim)
Paired Ghidra pseudocode: 10542780_Route_IsPointObstructedBySim.c
Window: [0x10542780, 0x10542b30) (944 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542780: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 81 ec a4 00
10542790: 00 00 53 33 db 3b cb 56 57 0f 84 4f 03 00 00 8b
105427a0: 45 08 50 e8 48 99 ff ff 8b f8 3b fb 89 7c 24 14
105427b0: 0f 84 38 03 00 00 8b 17 8b 42 10 8b cf ff d0 e8
105427c0: 1c 7f 0d 00 8b c8 89 44 24 1c e8 41 86 0d 00 0f
105427d0: 57 c0 8b 35 c4 00 c7 10 f3 0f 11 44 24 3c f3 0f
105427e0: 11 44 24 38 f3 0f 11 44 24 34 f3 0f 11 44 24 30
105427f0: 0f 28 44 24 30 8d 4c 24 60 0f 29 44 24 70 0f 29
10542800: 84 24 80 00 00 00 f3 0f 10 05 d4 b0 ac 10 51 8d
10542810: 4d 0c 89 44 24 1c f3 0f 11 84 24 94 00 00 00 89
10542820: 9c 24 98 00 00 00 89 9c 24 9c 00 00 00 89 9c 24
10542830: a0 00 00 00 89 9c 24 a4 00 00 00 e8 e0 b2 01 00
10542840: 3b f3 0f 28 00 0f 29 44 24 70 0f 84 95 02 00 00
10542850: 0f 29 44 24 30 d9 44 24 38 83 ec 08 d9 5c 24 04
10542860: 0f 29 44 24 28 d9 44 24 28 8b ce d9 1c 24 e8 fd
10542870: a7 cf ff 8b f0 3b f3 0f 84 68 02 00 00 f3 0f 10
10542880: 05 84 e1 aa 10 8d 54 24 30 52 8d 44 24 74 50 56
10542890: f3 0f 11 44 24 3c f3 0f 11 44 24 40 89 5c 24 44
105428a0: e8 5b 09 b6 ff 8b 44 24 44 83 c4 0c 89 84 24 94
105428b0: 00 00 00 83 be 08 04 00 00 01 75 14 83 be 0c 04
105428c0: 00 00 50 75 0b 3b c3 75 07 c6 44 24 13 01 eb 1a
105428d0: 3b c3 88 5c 24 13 7d 12 8d 4c 24 30 51 56 e8 fd
105428e0: 44 b8 ff 83 c4 08 84 c0 75 0a 38 5c 24 13 75 04
105428f0: b0 01 eb 02 32 c0 8b 94 24 94 00 00 00 0f 28 44
10542900: 24 70 50 6a 01 52 0f 29 44 24 2c d9 44 24 34 83
10542910: ec 08 d9 5c 24 04 0f 29 44 24 74 d9 44 24 74 d9
10542920: 1c 24 e8 f9 8d ff ff 0f 28 84 24 84 00 00 00 83
10542930: c4 14 0f 29 44 24 20 d9 5c 24 24 0f 28 44 24 20
10542940: 8d 4c 24 58 51 8b 4c 24 1c 8d 54 24 58 52 83 ec
10542950: 08 0f 29 44 24 70 d9 44 24 78 d9 5c 24 04 0f 29
10542960: 84 24 80 00 00 00 8b 46 48 8b 76 4c 0f 29 44 24
10542970: 30 d9 44 24 30 d9 1c 24 56 50 e8 11 46 ee ff d9
10542980: 05 9c e1 aa 10 8b 47 3c 50 53 8d 44 24 48 50 51
10542990: 8d 8c 24 80 00 00 00 d9 1c 24 51 8b 4c 24 30 89
105429a0: 5c 24 54 89 5c 24 58 89 5c 24 5c c7 44 24 60 c4
105429b0: 8e b0 10 e8 88 d6 0d 00 84 c0 0f 84 01 01 00 00
105429c0: 8b 44 24 40 8b 4c 24 44 3b c1 89 44 24 18 89 4c
105429d0: 24 1c 0f 84 e9 00 00 00 8b 38 3b fb 89 7c 24 5c
105429e0: 0f 84 c2 00 00 00 83 47 04 01 8d 77 fc 3b f3 0f
105429f0: 84 95 00 00 00 8b 16 8b 42 0c 8b ce ff d0 83 f8
10542a00: 14 0f 85 83 00 00 00 8b 16 8b 82 84 00 00 00 8b
10542a10: ce ff d0 8b d8 8b 44 24 14 8b 48 40 3b d9 89 54
10542a20: 24 24 8b 50 44 75 06 39 54 24 24 74 5b 8b 4c 24
10542a30: 24 51 53 8d 88 58 01 00 00 e8 92 b7 0c 00 84 c0
10542a40: 75 46 8b 16 8b 82 c0 00 00 00 8b ce ff d0 84 c0
10542a50: 74 36 f3 0f 10 44 24 54 d9 05 9c e1 aa 10 8b 16
10542a60: 83 ec 0c 8b c4 d9 5c 24 08 f3 0f 11 00 f3 0f 10
10542a70: 44 24 64 f3 0f 11 40 04 8b 82 d4 00 00 00 6a 00
10542a80: 8b ce ff d0 84 c0 75 71 33 db 8b 47 04 83 c0 ff
10542a90: 3b c3 89 47 04 75 11 c7 47 04 01 00 00 00 8b 17
10542aa0: 8b 02 6a 01 8b cf ff d0 8b 44 24 18 83 c0 04 3b
10542ab0: 44 24 1c 89 44 24 18 0f 85 1b ff ff ff 8b 7c 24
10542ac0: 14 8b 4c 24 44 8b 54 24 40 51 52 8d 4c 24 48 e8
10542ad0: 6c cd b2 ff 8b 44 24 40 3b c3 74 09 50 e8 ae 63
10542ae0: 3d 00 83 c4 04 8b 07 8b 50 14 8b cf ff d2 33 c0
10542af0: 33 d2 5f 5e 5b 8b e5 5d c3 8d 4c 24 5c e8 3e 15
10542b00: d3 ff 8d 4c 24 40 e8 95 5f bc ff 8b 4c 24 14 8b
10542b10: 11 8b 42 14 ff d0 8b 54 24 24 5f 5e 8b c3 5b 8b
10542b20: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542780 <.text+0x541780>:
10542780:	55                                              	push   ebp
10542781:	8b ec                                           	mov    ebp,esp
10542783:	83 e4 f0                                        	and    esp,0xfffffff0
10542786:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1054278c:	81 ec a4 00 00 00                               	sub    esp,0xa4
10542792:	53                                              	push   ebx
10542793:	33 db                                           	xor    ebx,ebx
10542795:	3b cb                                           	cmp    ecx,ebx
10542797:	56                                              	push   esi
10542798:	57                                              	push   edi
10542799:	0f 84 4f 03 00 00                               	je     0x10542aee
1054279f:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
105427a2:	50                                              	push   eax
105427a3:	e8 48 99 ff ff                                  	call   0x1053c0f0
105427a8:	8b f8                                           	mov    edi,eax
105427aa:	3b fb                                           	cmp    edi,ebx
105427ac:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
105427b0:	0f 84 38 03 00 00                               	je     0x10542aee
105427b6:	8b 17                                           	mov    edx,DWORD PTR [edi]
105427b8:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
105427bb:	8b cf                                           	mov    ecx,edi
105427bd:	ff d0                                           	call   eax
105427bf:	e8 1c 7f 0d 00                                  	call   0x1061a6e0
105427c4:	8b c8                                           	mov    ecx,eax
105427c6:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
105427ca:	e8 41 86 0d 00                                  	call   0x1061ae10
105427cf:	0f 57 c0                                        	xorps  xmm0,xmm0
105427d2:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
105427d8:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
105427de:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
105427e4:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
105427ea:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
105427f0:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
105427f5:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
105427f9:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
105427fe:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
10542806:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1054280e:	51                                              	push   ecx
1054280f:	8d 4d 0c                                        	lea    ecx,[ebp+0xc]
10542812:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10542816:	f3 0f 11 84 24 94 00 00 00                      	movss  DWORD PTR [esp+0x94],xmm0
1054281f:	89 9c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ebx
10542826:	89 9c 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],ebx
1054282d:	89 9c 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],ebx
10542834:	89 9c 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],ebx
1054283b:	e8 e0 b2 01 00                                  	call   0x1055db20
10542840:	3b f3                                           	cmp    esi,ebx
10542842:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10542845:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
1054284a:	0f 84 95 02 00 00                               	je     0x10542ae5
10542850:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10542855:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
10542859:	83 ec 08                                        	sub    esp,0x8
1054285c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10542860:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
10542865:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10542869:	8b ce                                           	mov    ecx,esi
1054286b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1054286e:	e8 fd a7 cf ff                                  	call   0x1023d070
10542873:	8b f0                                           	mov    esi,eax
10542875:	3b f3                                           	cmp    esi,ebx
10542877:	0f 84 68 02 00 00                               	je     0x10542ae5
1054287d:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10542885:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10542889:	52                                              	push   edx
1054288a:	8d 44 24 74                                     	lea    eax,[esp+0x74]
1054288e:	50                                              	push   eax
1054288f:	56                                              	push   esi
10542890:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
10542896:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
1054289c:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
105428a0:	e8 5b 09 b6 ff                                  	call   0x100a3200
105428a5:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
105428a9:	83 c4 0c                                        	add    esp,0xc
105428ac:	89 84 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],eax
105428b3:	83 be 08 04 00 00 01                            	cmp    DWORD PTR [esi+0x408],0x1
105428ba:	75 14                                           	jne    0x105428d0
105428bc:	83 be 0c 04 00 00 50                            	cmp    DWORD PTR [esi+0x40c],0x50
105428c3:	75 0b                                           	jne    0x105428d0
105428c5:	3b c3                                           	cmp    eax,ebx
105428c7:	75 07                                           	jne    0x105428d0
105428c9:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
105428ce:	eb 1a                                           	jmp    0x105428ea
105428d0:	3b c3                                           	cmp    eax,ebx
105428d2:	88 5c 24 13                                     	mov    BYTE PTR [esp+0x13],bl
105428d6:	7d 12                                           	jge    0x105428ea
105428d8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
105428dc:	51                                              	push   ecx
105428dd:	56                                              	push   esi
105428de:	e8 fd 44 b8 ff                                  	call   0x100c6de0
105428e3:	83 c4 08                                        	add    esp,0x8
105428e6:	84 c0                                           	test   al,al
105428e8:	75 0a                                           	jne    0x105428f4
105428ea:	38 5c 24 13                                     	cmp    BYTE PTR [esp+0x13],bl
105428ee:	75 04                                           	jne    0x105428f4
105428f0:	b0 01                                           	mov    al,0x1
105428f2:	eb 02                                           	jmp    0x105428f6
105428f4:	32 c0                                           	xor    al,al
105428f6:	8b 94 24 94 00 00 00                            	mov    edx,DWORD PTR [esp+0x94]
105428fd:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
10542902:	50                                              	push   eax
10542903:	6a 01                                           	push   0x1
10542905:	52                                              	push   edx
10542906:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
1054290b:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
1054290f:	83 ec 08                                        	sub    esp,0x8
10542912:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10542916:	0f 29 44 24 74                                  	movaps XMMWORD PTR [esp+0x74],xmm0
1054291b:	d9 44 24 74                                     	fld    DWORD PTR [esp+0x74]
1054291f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10542922:	e8 f9 8d ff ff                                  	call   0x1053b720
10542927:	0f 28 84 24 84 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x84]
1054292f:	83 c4 14                                        	add    esp,0x14
10542932:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10542937:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
1054293b:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10542940:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
10542944:	51                                              	push   ecx
10542945:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10542949:	8d 54 24 58                                     	lea    edx,[esp+0x58]
1054294d:	52                                              	push   edx
1054294e:	83 ec 08                                        	sub    esp,0x8
10542951:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
10542956:	d9 44 24 78                                     	fld    DWORD PTR [esp+0x78]
1054295a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1054295e:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
10542966:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
10542969:	8b 76 4c                                        	mov    esi,DWORD PTR [esi+0x4c]
1054296c:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10542971:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10542975:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10542978:	56                                              	push   esi
10542979:	50                                              	push   eax
1054297a:	e8 11 46 ee ff                                  	call   0x10426f90
1054297f:	d9 05 9c e1 aa 10                               	fld    DWORD PTR ds:0x10aae19c
10542985:	8b 47 3c                                        	mov    eax,DWORD PTR [edi+0x3c]
10542988:	50                                              	push   eax
10542989:	53                                              	push   ebx
1054298a:	8d 44 24 48                                     	lea    eax,[esp+0x48]
1054298e:	50                                              	push   eax
1054298f:	51                                              	push   ecx
10542990:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
10542997:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1054299a:	51                                              	push   ecx
1054299b:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1054299f:	89 5c 24 54                                     	mov    DWORD PTR [esp+0x54],ebx
105429a3:	89 5c 24 58                                     	mov    DWORD PTR [esp+0x58],ebx
105429a7:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
105429ab:	c7 44 24 60 c4 8e b0 10                         	mov    DWORD PTR [esp+0x60],0x10b08ec4
105429b3:	e8 88 d6 0d 00                                  	call   0x10620040
105429b8:	84 c0                                           	test   al,al
105429ba:	0f 84 01 01 00 00                               	je     0x10542ac1
105429c0:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
105429c4:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
105429c8:	3b c1                                           	cmp    eax,ecx
105429ca:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
105429ce:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
105429d2:	0f 84 e9 00 00 00                               	je     0x10542ac1
105429d8:	8b 38                                           	mov    edi,DWORD PTR [eax]
105429da:	3b fb                                           	cmp    edi,ebx
105429dc:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
105429e0:	0f 84 c2 00 00 00                               	je     0x10542aa8
105429e6:	83 47 04 01                                     	add    DWORD PTR [edi+0x4],0x1
105429ea:	8d 77 fc                                        	lea    esi,[edi-0x4]
105429ed:	3b f3                                           	cmp    esi,ebx
105429ef:	0f 84 95 00 00 00                               	je     0x10542a8a
105429f5:	8b 16                                           	mov    edx,DWORD PTR [esi]
105429f7:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
105429fa:	8b ce                                           	mov    ecx,esi
105429fc:	ff d0                                           	call   eax
105429fe:	83 f8 14                                        	cmp    eax,0x14
10542a01:	0f 85 83 00 00 00                               	jne    0x10542a8a
10542a07:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542a09:	8b 82 84 00 00 00                               	mov    eax,DWORD PTR [edx+0x84]
10542a0f:	8b ce                                           	mov    ecx,esi
10542a11:	ff d0                                           	call   eax
10542a13:	8b d8                                           	mov    ebx,eax
10542a15:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10542a19:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
10542a1c:	3b d9                                           	cmp    ebx,ecx
10542a1e:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
10542a22:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10542a25:	75 06                                           	jne    0x10542a2d
10542a27:	39 54 24 24                                     	cmp    DWORD PTR [esp+0x24],edx
10542a2b:	74 5b                                           	je     0x10542a88
10542a2d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10542a31:	51                                              	push   ecx
10542a32:	53                                              	push   ebx
10542a33:	8d 88 58 01 00 00                               	lea    ecx,[eax+0x158]
10542a39:	e8 92 b7 0c 00                                  	call   0x1060e1d0
10542a3e:	84 c0                                           	test   al,al
10542a40:	75 46                                           	jne    0x10542a88
10542a42:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542a44:	8b 82 c0 00 00 00                               	mov    eax,DWORD PTR [edx+0xc0]
10542a4a:	8b ce                                           	mov    ecx,esi
10542a4c:	ff d0                                           	call   eax
10542a4e:	84 c0                                           	test   al,al
10542a50:	74 36                                           	je     0x10542a88
10542a52:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [esp+0x54]
10542a58:	d9 05 9c e1 aa 10                               	fld    DWORD PTR ds:0x10aae19c
10542a5e:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542a60:	83 ec 0c                                        	sub    esp,0xc
10542a63:	8b c4                                           	mov    eax,esp
10542a65:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10542a69:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10542a6d:	f3 0f 10 44 24 64                               	movss  xmm0,DWORD PTR [esp+0x64]
10542a73:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
10542a78:	8b 82 d4 00 00 00                               	mov    eax,DWORD PTR [edx+0xd4]
10542a7e:	6a 00                                           	push   0x0
10542a80:	8b ce                                           	mov    ecx,esi
10542a82:	ff d0                                           	call   eax
10542a84:	84 c0                                           	test   al,al
10542a86:	75 71                                           	jne    0x10542af9
10542a88:	33 db                                           	xor    ebx,ebx
10542a8a:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
10542a8d:	83 c0 ff                                        	add    eax,0xffffffff
10542a90:	3b c3                                           	cmp    eax,ebx
10542a92:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
10542a95:	75 11                                           	jne    0x10542aa8
10542a97:	c7 47 04 01 00 00 00                            	mov    DWORD PTR [edi+0x4],0x1
10542a9e:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542aa0:	8b 02                                           	mov    eax,DWORD PTR [edx]
10542aa2:	6a 01                                           	push   0x1
10542aa4:	8b cf                                           	mov    ecx,edi
10542aa6:	ff d0                                           	call   eax
10542aa8:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10542aac:	83 c0 04                                        	add    eax,0x4
10542aaf:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
10542ab3:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10542ab7:	0f 85 1b ff ff ff                               	jne    0x105429d8
10542abd:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10542ac1:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10542ac5:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
10542ac9:	51                                              	push   ecx
10542aca:	52                                              	push   edx
10542acb:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10542acf:	e8 6c cd b2 ff                                  	call   0x1006f840
10542ad4:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10542ad8:	3b c3                                           	cmp    eax,ebx
10542ada:	74 09                                           	je     0x10542ae5
10542adc:	50                                              	push   eax
10542add:	e8 ae 63 3d 00                                  	call   0x10918e90
10542ae2:	83 c4 04                                        	add    esp,0x4
10542ae5:	8b 07                                           	mov    eax,DWORD PTR [edi]
10542ae7:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
10542aea:	8b cf                                           	mov    ecx,edi
10542aec:	ff d2                                           	call   edx
10542aee:	33 c0                                           	xor    eax,eax
10542af0:	33 d2                                           	xor    edx,edx
10542af2:	5f                                              	pop    edi
10542af3:	5e                                              	pop    esi
10542af4:	5b                                              	pop    ebx
10542af5:	8b e5                                           	mov    esp,ebp
10542af7:	5d                                              	pop    ebp
10542af8:	c3                                              	ret
10542af9:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
10542afd:	e8 3e 15 d3 ff                                  	call   0x10274040
10542b02:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10542b06:	e8 95 5f bc ff                                  	call   0x10108aa0
10542b0b:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10542b0f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10542b11:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542b14:	ff d0                                           	call   eax
10542b16:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10542b1a:	5f                                              	pop    edi
10542b1b:	5e                                              	pop    esi
10542b1c:	8b c3                                           	mov    eax,ebx
10542b1e:	5b                                              	pop    ebx
10542b1f:	8b e5                                           	mov    esp,ebp
10542b21:	5d                                              	pop    ebp
10542b22:	c3                                              	ret
10542b23:	cc                                              	int3
10542b24:	cc                                              	int3
10542b25:	cc                                              	int3
10542b26:	cc                                              	int3
10542b27:	cc                                              	int3
10542b28:	cc                                              	int3
10542b29:	cc                                              	int3
10542b2a:	cc                                              	int3
10542b2b:	cc                                              	int3
10542b2c:	cc                                              	int3
10542b2d:	cc                                              	int3
10542b2e:	cc                                              	int3
10542b2f:	cc                                              	int3
