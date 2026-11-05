# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00755840 (ScriptCore.RouteManager::RouteManager_IsOkToIdleAtCurrentLocation)
Paired Ghidra pseudocode: 00755840_ScriptCore_RouteManager_RouteManager_IsOkToIdleAtCurrentLocation.c
Window: [0x00755840, 0x00755c40) (1024 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00755840: 55 8b ec 83 e4 f0 81 ec b4 00 00 00 a1 40 a1 1d
00755850: 01 53 56 57 89 44 24 20 e8 13 1d 1e 00 8b d8 89
00755860: 5c 24 4c e8 28 3b 01 00 8b f0 e8 81 34 0d 00 8b
00755870: f8 85 ff 89 7c 24 34 74 0d 8b cf e8 40 3d 0d 00
00755880: 89 44 24 30 eb 08 c7 44 24 30 00 00 00 00 85 f6
00755890: 0f 84 5e 03 00 00 83 7c 24 20 00 0f 84 53 03 00
007558a0: 00 85 db 0f 84 4b 03 00 00 8b 45 08 8b 4d 0c 8b
007558b0: d0 0b d1 0f 84 3b 03 00 00 51 50 8b cb e8 be 26
007558c0: 1e 00 8b d8 85 db 0f 84 28 03 00 00 53 e8 3e 87
007558d0: e0 ff 83 c4 04 85 c0 0f 84 17 03 00 00 8d 48 08
007558e0: e8 5b 3d 0e 00 85 c0 74 0c b8 02 00 00 00 5f 5e
007558f0: 5b 8b e5 5d c3 8b 45 10 33 c9 3b c1 89 4c 24 18
00755900: 89 4c 24 1c 74 14 8b 16 8b 52 68 8d 4c 24 1c 51
00755910: 8d 4c 24 1c 51 50 8b ce ff d2 53 e8 30 87 e0 ff
00755920: 83 c4 04 85 c0 0f 84 c9 02 00 00 8d 4c 24 50 51
00755930: 8b c8 e8 f9 20 20 00 a1 c4 db 1e 01 85 c0 74 77
00755940: 8b 70 5c 85 f6 74 70 0f 28 44 24 50 6a 00 6a 00
00755950: 0f 29 44 24 68 d9 44 24 70 83 ec 08 d9 5c 24 04
00755960: 0f 29 84 24 80 00 00 00 d9 84 24 80 00 00 00 8b
00755970: ce d9 1c 24 e8 47 0c 43 00 84 c0 75 2e 0f 28 44
00755980: 24 50 6a 01 0f 29 44 24 74 d9 44 24 7c 83 ec 08
00755990: d9 5c 24 04 0f 29 44 24 6c d9 44 24 6c 8b ce d9
007559a0: 1c 24 e8 99 70 42 00 84 c0 74 0c b8 80 00 00 00
007559b0: 5f 5e 5b 8b e5 5d c3 8b 54 24 18 d9 45 14 8b 44
007559c0: 24 1c 52 50 51 8d 4c 24 5c d9 1c 24 51 8b 4c 24
007559d0: 30 e8 da 52 0e 00 0b c2 0f 85 cd 01 00 00 85 ff
007559e0: 0f 84 0e 02 00 00 8d 54 24 20 52 53 e8 2f 67 ff
007559f0: ff 8b 74 24 28 83 c4 08 85 f6 8b d8 0f 84 bd 00
00755a00: 00 00 83 7c 24 30 00 0f 84 b2 00 00 00 f3 0f 10
00755a10: 05 18 b2 fa 00 8d 44 24 20 50 8d 4c 24 54 51 56
00755a20: f3 0f 11 44 24 2c f3 0f 11 44 24 30 c7 44 24 34
00755a30: 00 00 00 00 e8 27 6e 38 00 8b 8e 98 02 00 00 83
00755a40: c4 0c 6a 01 6a 00 8d 54 24 28 52 e8 70 28 3f 00
00755a50: 0f b7 f8 66 83 ff ff 74 62 8b 46 48 8b 76 4c 56
00755a60: 8b 74 24 34 50 8b ce e8 14 a9 ed ff 85 c0 74 4b
00755a70: d9 45 14 0f 28 44 24 50 51 d9 1c 24 8d 4c 24 74
00755a80: 51 0f 29 44 24 68 f3 0f 10 05 f8 98 f9 00 53 57
00755a90: f3 0f 11 44 24 7c 0f 28 44 24 70 50 8b ce 0f 29
00755aa0: 84 24 84 00 00 00 e8 b5 fe ec ff 84 c0 74 0c b8
00755ab0: 40 00 00 00 5f 5e 5b 8b e5 5d c3 8b 7c 24 34 8b
00755ac0: 54 24 18 d9 e8 8b 44 24 1c 6a 00 8d 0c c2 6a 00
00755ad0: 51 d9 1c 24 53 8d 54 24 60 89 4c 24 44 52 8d 8c
00755ae0: 24 94 00 00 00 e8 66 b6 ef ff d9 45 14 8b 4d 18
00755af0: 33 c0 51 50 8d 54 24 40 52 51 89 44 24 48 d9 1c
00755b00: 24 89 44 24 4c 89 44 24 50 8d 84 24 90 00 00 00
00755b10: 50 8b cf c7 44 24 58 84 55 00 01 e8 c0 8c 0d 00
00755b20: 8b 44 24 38 3b 44 24 3c 8b d8 0f 84 bb 00 00 00
00755b30: 8b 33 85 f6 0f 84 a4 00 00 00 8b 16 8b 42 0c 8b
00755b40: ce ff d0 83 f8 05 75 6f 83 7c 24 1c 00 0f 84 aa
00755b50: 00 00 00 8b 16 8b 42 04 8b ce ff d0 8b 7c 24 34
00755b60: 8d 4c 24 20 51 89 54 24 28 8b 54 24 1c 57 52 89
00755b70: 44 24 2c e8 b8 36 03 00 83 c4 0c 3b c7 75 5f 8b
00755b80: 06 8b 50 04 8b ce ff d2 8b 4c 24 4c 52 50 e8 ed
00755b90: 23 1e 00 85 c0 74 66 8b 0d fc a0 1e 01 85 48 2c
00755ba0: 74 5b 8d 4c 24 38 e8 35 d2 ef ff b8 04 00 00 00
00755bb0: 5f 5e 5b 8b e5 5d c3 8b 06 8b 50 1c 6a 00 8b ce
00755bc0: ff d2 84 c0 74 18 8b 06 8b 50 08 8b ce ff d2 83
00755bd0: e8 01 74 53 83 e8 0b 74 39 83 e8 0b 74 34 83 c3
00755be0: 04 3b 5c 24 3c 0f 85 45 ff ff ff 8d 4c 24 38 e8
00755bf0: ec d1 ef ff 33 c0 5f 5e 5b 8b e5 5d c3 8d 4c 24
00755c00: 38 e8 da d1 ef ff b8 20 00 00 00 5f 5e 5b 8b e5
00755c10: 5d c3 8d 4c 24 38 e8 c5 d1 ef ff b8 08 00 00 00
00755c20: 5f 5e 5b 8b e5 5d c3 8d 4c 24 38 e8 b0 d1 ef ff
00755c30: 5f 5e b8 10 00 00 00 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00755840 <.text+0x354840>:
  755840:	55                                              	push   ebp
  755841:	8b ec                                           	mov    ebp,esp
  755843:	83 e4 f0                                        	and    esp,0xfffffff0
  755846:	81 ec b4 00 00 00                               	sub    esp,0xb4
  75584c:	a1 40 a1 1d 01                                  	mov    eax,ds:0x11da140
  755851:	53                                              	push   ebx
  755852:	56                                              	push   esi
  755853:	57                                              	push   edi
  755854:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  755858:	e8 13 1d 1e 00                                  	call   0x937570
  75585d:	8b d8                                           	mov    ebx,eax
  75585f:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
  755863:	e8 28 3b 01 00                                  	call   0x769390
  755868:	8b f0                                           	mov    esi,eax
  75586a:	e8 81 34 0d 00                                  	call   0x828cf0
  75586f:	8b f8                                           	mov    edi,eax
  755871:	85 ff                                           	test   edi,edi
  755873:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  755877:	74 0d                                           	je     0x755886
  755879:	8b cf                                           	mov    ecx,edi
  75587b:	e8 40 3d 0d 00                                  	call   0x8295c0
  755880:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  755884:	eb 08                                           	jmp    0x75588e
  755886:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [esp+0x30],0x0
  75588e:	85 f6                                           	test   esi,esi
  755890:	0f 84 5e 03 00 00                               	je     0x755bf4
  755896:	83 7c 24 20 00                                  	cmp    DWORD PTR [esp+0x20],0x0
  75589b:	0f 84 53 03 00 00                               	je     0x755bf4
  7558a1:	85 db                                           	test   ebx,ebx
  7558a3:	0f 84 4b 03 00 00                               	je     0x755bf4
  7558a9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  7558ac:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  7558af:	8b d0                                           	mov    edx,eax
  7558b1:	0b d1                                           	or     edx,ecx
  7558b3:	0f 84 3b 03 00 00                               	je     0x755bf4
  7558b9:	51                                              	push   ecx
  7558ba:	50                                              	push   eax
  7558bb:	8b cb                                           	mov    ecx,ebx
  7558bd:	e8 be 26 1e 00                                  	call   0x937f80
  7558c2:	8b d8                                           	mov    ebx,eax
  7558c4:	85 db                                           	test   ebx,ebx
  7558c6:	0f 84 28 03 00 00                               	je     0x755bf4
  7558cc:	53                                              	push   ebx
  7558cd:	e8 3e 87 e0 ff                                  	call   0x55e010
  7558d2:	83 c4 04                                        	add    esp,0x4
  7558d5:	85 c0                                           	test   eax,eax
  7558d7:	0f 84 17 03 00 00                               	je     0x755bf4
  7558dd:	8d 48 08                                        	lea    ecx,[eax+0x8]
  7558e0:	e8 5b 3d 0e 00                                  	call   0x839640
  7558e5:	85 c0                                           	test   eax,eax
  7558e7:	74 0c                                           	je     0x7558f5
  7558e9:	b8 02 00 00 00                                  	mov    eax,0x2
  7558ee:	5f                                              	pop    edi
  7558ef:	5e                                              	pop    esi
  7558f0:	5b                                              	pop    ebx
  7558f1:	8b e5                                           	mov    esp,ebp
  7558f3:	5d                                              	pop    ebp
  7558f4:	c3                                              	ret
  7558f5:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  7558f8:	33 c9                                           	xor    ecx,ecx
  7558fa:	3b c1                                           	cmp    eax,ecx
  7558fc:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  755900:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  755904:	74 14                                           	je     0x75591a
  755906:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755908:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  75590b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  75590f:	51                                              	push   ecx
  755910:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  755914:	51                                              	push   ecx
  755915:	50                                              	push   eax
  755916:	8b ce                                           	mov    ecx,esi
  755918:	ff d2                                           	call   edx
  75591a:	53                                              	push   ebx
  75591b:	e8 30 87 e0 ff                                  	call   0x55e050
  755920:	83 c4 04                                        	add    esp,0x4
  755923:	85 c0                                           	test   eax,eax
  755925:	0f 84 c9 02 00 00                               	je     0x755bf4
  75592b:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  75592f:	51                                              	push   ecx
  755930:	8b c8                                           	mov    ecx,eax
  755932:	e8 f9 20 20 00                                  	call   0x957a30
  755937:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  75593c:	85 c0                                           	test   eax,eax
  75593e:	74 77                                           	je     0x7559b7
  755940:	8b 70 5c                                        	mov    esi,DWORD PTR [eax+0x5c]
  755943:	85 f6                                           	test   esi,esi
  755945:	74 70                                           	je     0x7559b7
  755947:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  75594c:	6a 00                                           	push   0x0
  75594e:	6a 00                                           	push   0x0
  755950:	0f 29 44 24 68                                  	movaps XMMWORD PTR [esp+0x68],xmm0
  755955:	d9 44 24 70                                     	fld    DWORD PTR [esp+0x70]
  755959:	83 ec 08                                        	sub    esp,0x8
  75595c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  755960:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  755968:	d9 84 24 80 00 00 00                            	fld    DWORD PTR [esp+0x80]
  75596f:	8b ce                                           	mov    ecx,esi
  755971:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  755974:	e8 47 0c 43 00                                  	call   0xb865c0
  755979:	84 c0                                           	test   al,al
  75597b:	75 2e                                           	jne    0x7559ab
  75597d:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  755982:	6a 01                                           	push   0x1
  755984:	0f 29 44 24 74                                  	movaps XMMWORD PTR [esp+0x74],xmm0
  755989:	d9 44 24 7c                                     	fld    DWORD PTR [esp+0x7c]
  75598d:	83 ec 08                                        	sub    esp,0x8
  755990:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  755994:	0f 29 44 24 6c                                  	movaps XMMWORD PTR [esp+0x6c],xmm0
  755999:	d9 44 24 6c                                     	fld    DWORD PTR [esp+0x6c]
  75599d:	8b ce                                           	mov    ecx,esi
  75599f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7559a2:	e8 99 70 42 00                                  	call   0xb7ca40
  7559a7:	84 c0                                           	test   al,al
  7559a9:	74 0c                                           	je     0x7559b7
  7559ab:	b8 80 00 00 00                                  	mov    eax,0x80
  7559b0:	5f                                              	pop    edi
  7559b1:	5e                                              	pop    esi
  7559b2:	5b                                              	pop    ebx
  7559b3:	8b e5                                           	mov    esp,ebp
  7559b5:	5d                                              	pop    ebp
  7559b6:	c3                                              	ret
  7559b7:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7559bb:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  7559be:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7559c2:	52                                              	push   edx
  7559c3:	50                                              	push   eax
  7559c4:	51                                              	push   ecx
  7559c5:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  7559c9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7559cc:	51                                              	push   ecx
  7559cd:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  7559d1:	e8 da 52 0e 00                                  	call   0x83acb0
  7559d6:	0b c2                                           	or     eax,edx
  7559d8:	0f 85 cd 01 00 00                               	jne    0x755bab
  7559de:	85 ff                                           	test   edi,edi
  7559e0:	0f 84 0e 02 00 00                               	je     0x755bf4
  7559e6:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7559ea:	52                                              	push   edx
  7559eb:	53                                              	push   ebx
  7559ec:	e8 2f 67 ff ff                                  	call   0x74c120
  7559f1:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  7559f5:	83 c4 08                                        	add    esp,0x8
  7559f8:	85 f6                                           	test   esi,esi
  7559fa:	8b d8                                           	mov    ebx,eax
  7559fc:	0f 84 bd 00 00 00                               	je     0x755abf
  755a02:	83 7c 24 30 00                                  	cmp    DWORD PTR [esp+0x30],0x0
  755a07:	0f 84 b2 00 00 00                               	je     0x755abf
  755a0d:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  755a15:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  755a19:	50                                              	push   eax
  755a1a:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  755a1e:	51                                              	push   ecx
  755a1f:	56                                              	push   esi
  755a20:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  755a26:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  755a2c:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
  755a34:	e8 27 6e 38 00                                  	call   0xadc860
  755a39:	8b 8e 98 02 00 00                               	mov    ecx,DWORD PTR [esi+0x298]
  755a3f:	83 c4 0c                                        	add    esp,0xc
  755a42:	6a 01                                           	push   0x1
  755a44:	6a 00                                           	push   0x0
  755a46:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  755a4a:	52                                              	push   edx
  755a4b:	e8 70 28 3f 00                                  	call   0xb482c0
  755a50:	0f b7 f8                                        	movzx  edi,ax
  755a53:	66 83 ff ff                                     	cmp    di,0xffff
  755a57:	74 62                                           	je     0x755abb
  755a59:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
  755a5c:	8b 76 4c                                        	mov    esi,DWORD PTR [esi+0x4c]
  755a5f:	56                                              	push   esi
  755a60:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
  755a64:	50                                              	push   eax
  755a65:	8b ce                                           	mov    ecx,esi
  755a67:	e8 14 a9 ed ff                                  	call   0x630380
  755a6c:	85 c0                                           	test   eax,eax
  755a6e:	74 4b                                           	je     0x755abb
  755a70:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  755a73:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  755a78:	51                                              	push   ecx
  755a79:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  755a7c:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  755a80:	51                                              	push   ecx
  755a81:	0f 29 44 24 68                                  	movaps XMMWORD PTR [esp+0x68],xmm0
  755a86:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  755a8e:	53                                              	push   ebx
  755a8f:	57                                              	push   edi
  755a90:	f3 0f 11 44 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm0
  755a96:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  755a9b:	50                                              	push   eax
  755a9c:	8b ce                                           	mov    ecx,esi
  755a9e:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  755aa6:	e8 b5 fe ec ff                                  	call   0x625960
  755aab:	84 c0                                           	test   al,al
  755aad:	74 0c                                           	je     0x755abb
  755aaf:	b8 40 00 00 00                                  	mov    eax,0x40
  755ab4:	5f                                              	pop    edi
  755ab5:	5e                                              	pop    esi
  755ab6:	5b                                              	pop    ebx
  755ab7:	8b e5                                           	mov    esp,ebp
  755ab9:	5d                                              	pop    ebp
  755aba:	c3                                              	ret
  755abb:	8b 7c 24 34                                     	mov    edi,DWORD PTR [esp+0x34]
  755abf:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  755ac3:	d9 e8                                           	fld1
  755ac5:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  755ac9:	6a 00                                           	push   0x0
  755acb:	8d 0c c2                                        	lea    ecx,[edx+eax*8]
  755ace:	6a 00                                           	push   0x0
  755ad0:	51                                              	push   ecx
  755ad1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  755ad4:	53                                              	push   ebx
  755ad5:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  755ad9:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
  755add:	52                                              	push   edx
  755ade:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  755ae5:	e8 66 b6 ef ff                                  	call   0x651150
  755aea:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  755aed:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  755af0:	33 c0                                           	xor    eax,eax
  755af2:	51                                              	push   ecx
  755af3:	50                                              	push   eax
  755af4:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  755af8:	52                                              	push   edx
  755af9:	51                                              	push   ecx
  755afa:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
  755afe:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  755b01:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  755b05:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
  755b09:	8d 84 24 90 00 00 00                            	lea    eax,[esp+0x90]
  755b10:	50                                              	push   eax
  755b11:	8b cf                                           	mov    ecx,edi
  755b13:	c7 44 24 58 84 55 00 01                         	mov    DWORD PTR [esp+0x58],0x1005584
  755b1b:	e8 c0 8c 0d 00                                  	call   0x82e7e0
  755b20:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  755b24:	3b 44 24 3c                                     	cmp    eax,DWORD PTR [esp+0x3c]
  755b28:	8b d8                                           	mov    ebx,eax
  755b2a:	0f 84 bb 00 00 00                               	je     0x755beb
  755b30:	8b 33                                           	mov    esi,DWORD PTR [ebx]
  755b32:	85 f6                                           	test   esi,esi
  755b34:	0f 84 a4 00 00 00                               	je     0x755bde
  755b3a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755b3c:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  755b3f:	8b ce                                           	mov    ecx,esi
  755b41:	ff d0                                           	call   eax
  755b43:	83 f8 05                                        	cmp    eax,0x5
  755b46:	75 6f                                           	jne    0x755bb7
  755b48:	83 7c 24 1c 00                                  	cmp    DWORD PTR [esp+0x1c],0x0
  755b4d:	0f 84 aa 00 00 00                               	je     0x755bfd
  755b53:	8b 16                                           	mov    edx,DWORD PTR [esi]
  755b55:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  755b58:	8b ce                                           	mov    ecx,esi
  755b5a:	ff d0                                           	call   eax
  755b5c:	8b 7c 24 34                                     	mov    edi,DWORD PTR [esp+0x34]
  755b60:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  755b64:	51                                              	push   ecx
  755b65:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  755b69:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  755b6d:	57                                              	push   edi
  755b6e:	52                                              	push   edx
  755b6f:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  755b73:	e8 b8 36 03 00                                  	call   0x789230
  755b78:	83 c4 0c                                        	add    esp,0xc
  755b7b:	3b c7                                           	cmp    eax,edi
  755b7d:	75 5f                                           	jne    0x755bde
  755b7f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  755b81:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  755b84:	8b ce                                           	mov    ecx,esi
  755b86:	ff d2                                           	call   edx
  755b88:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  755b8c:	52                                              	push   edx
  755b8d:	50                                              	push   eax
  755b8e:	e8 ed 23 1e 00                                  	call   0x937f80
  755b93:	85 c0                                           	test   eax,eax
  755b95:	74 66                                           	je     0x755bfd
  755b97:	8b 0d fc a0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea0fc
  755b9d:	85 48 2c                                        	test   DWORD PTR [eax+0x2c],ecx
  755ba0:	74 5b                                           	je     0x755bfd
  755ba2:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  755ba6:	e8 35 d2 ef ff                                  	call   0x652de0
  755bab:	b8 04 00 00 00                                  	mov    eax,0x4
  755bb0:	5f                                              	pop    edi
  755bb1:	5e                                              	pop    esi
  755bb2:	5b                                              	pop    ebx
  755bb3:	8b e5                                           	mov    esp,ebp
  755bb5:	5d                                              	pop    ebp
  755bb6:	c3                                              	ret
  755bb7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  755bb9:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  755bbc:	6a 00                                           	push   0x0
  755bbe:	8b ce                                           	mov    ecx,esi
  755bc0:	ff d2                                           	call   edx
  755bc2:	84 c0                                           	test   al,al
  755bc4:	74 18                                           	je     0x755bde
  755bc6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  755bc8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  755bcb:	8b ce                                           	mov    ecx,esi
  755bcd:	ff d2                                           	call   edx
  755bcf:	83 e8 01                                        	sub    eax,0x1
  755bd2:	74 53                                           	je     0x755c27
  755bd4:	83 e8 0b                                        	sub    eax,0xb
  755bd7:	74 39                                           	je     0x755c12
  755bd9:	83 e8 0b                                        	sub    eax,0xb
  755bdc:	74 34                                           	je     0x755c12
  755bde:	83 c3 04                                        	add    ebx,0x4
  755be1:	3b 5c 24 3c                                     	cmp    ebx,DWORD PTR [esp+0x3c]
  755be5:	0f 85 45 ff ff ff                               	jne    0x755b30
  755beb:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  755bef:	e8 ec d1 ef ff                                  	call   0x652de0
  755bf4:	33 c0                                           	xor    eax,eax
  755bf6:	5f                                              	pop    edi
  755bf7:	5e                                              	pop    esi
  755bf8:	5b                                              	pop    ebx
  755bf9:	8b e5                                           	mov    esp,ebp
  755bfb:	5d                                              	pop    ebp
  755bfc:	c3                                              	ret
  755bfd:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  755c01:	e8 da d1 ef ff                                  	call   0x652de0
  755c06:	b8 20 00 00 00                                  	mov    eax,0x20
  755c0b:	5f                                              	pop    edi
  755c0c:	5e                                              	pop    esi
  755c0d:	5b                                              	pop    ebx
  755c0e:	8b e5                                           	mov    esp,ebp
  755c10:	5d                                              	pop    ebp
  755c11:	c3                                              	ret
  755c12:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  755c16:	e8 c5 d1 ef ff                                  	call   0x652de0
  755c1b:	b8 08 00 00 00                                  	mov    eax,0x8
  755c20:	5f                                              	pop    edi
  755c21:	5e                                              	pop    esi
  755c22:	5b                                              	pop    ebx
  755c23:	8b e5                                           	mov    esp,ebp
  755c25:	5d                                              	pop    ebp
  755c26:	c3                                              	ret
  755c27:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  755c2b:	e8 b0 d1 ef ff                                  	call   0x652de0
  755c30:	5f                                              	pop    edi
  755c31:	5e                                              	pop    esi
  755c32:	b8 10 00 00 00                                  	mov    eax,0x10
  755c37:	5b                                              	pop    ebx
  755c38:	8b e5                                           	mov    esp,ebp
  755c3a:	5d                                              	pop    ebp
  755c3b:	c3                                              	ret
  755c3c:	cc                                              	int3
  755c3d:	cc                                              	int3
  755c3e:	cc                                              	int3
  755c3f:	cc                                              	int3
