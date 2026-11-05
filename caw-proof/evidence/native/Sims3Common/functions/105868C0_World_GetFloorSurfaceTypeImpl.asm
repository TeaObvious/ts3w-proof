# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105868c0 (World_GetFloorSurfaceTypeImpl)
Paired Ghidra pseudocode: 105868C0_World_GetFloorSurfaceTypeImpl.c
Window: [0x105868c0, 0x10586bc0) (768 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105868c0: 55 8b ec 83 e4 f0 81 ec a4 00 00 00 53 56 57 8b
105868d0: 3d c4 00 c7 10 85 ff 0f 84 d5 02 00 00 8b 45 0c
105868e0: 8b 4d 08 6a 00 50 51 8b cf e8 22 07 cb ff 8b f0
105868f0: 85 f6 0f 84 ba 02 00 00 d9 45 18 83 ec 08 d9 5c
10586900: 24 04 8b ce d9 45 10 d9 1c 24 e8 41 e1 b3 ff 84
10586910: c0 0f 84 9b 02 00 00 f3 0f 10 05 84 e1 aa 10 f3
10586920: 0f 10 4d 18 8d 54 24 44 52 f3 0f 11 44 24 48 f3
10586930: 0f 11 44 24 4c f3 0f 10 45 10 f3 0f 11 4c 24 1c
10586940: f3 0f 10 4d 14 8d 44 24 34 50 f3 0f 11 44 24 24
10586950: f3 0f 11 4c 24 1c f3 0f 11 44 24 18 0f 28 44 24
10586960: 18 56 c7 44 24 58 00 00 00 00 0f 29 44 24 3c e8
10586970: 6c c7 b1 ff 8d 4c 24 18 51 8d 54 24 54 52 c6 44
10586980: 24 20 ff c6 44 24 21 ff c6 44 24 22 00 c6 44 24
10586990: 23 ff e8 99 7f b3 ff 8b b6 90 02 00 00 83 c4 14
105869a0: 8d 4c 24 70 e8 a7 bd b3 ff 8d 44 24 70 50 8d 4c
105869b0: 24 10 51 8b ce e8 d6 ab ac ff 8b 54 24 70 3b 15
105869c0: 80 ed c6 10 75 28 8b 44 24 78 3b 05 88 ed c6 10
105869d0: 75 1c 8b 4c 24 7c 3b 0d 8c ed c6 10 75 10 8b 54
105869e0: 24 74 3b 15 84 ed c6 10 0f 84 f0 00 00 00 8b 0d
105869f0: 34 05 c7 10 8d 44 24 70 50 e8 02 ec cd ff 8b f0
10586a00: 85 f6 0f 84 aa 01 00 00 e8 13 47 fd ff b9 44 82
10586a10: ca 10 89 4c 24 10 89 4c 24 14 81 c6 a4 00 00 00
10586a20: 8d 4c 24 30 56 51 8b f8 c7 44 24 24 04 1c b2 10
10586a30: c7 44 24 20 46 82 ca 10 e8 b3 04 3a 00 8d 54 24
10586a40: 18 83 c4 08 3b c2 74 10 8b 48 04 8b 10 51 52 8d
10586a50: 4c 24 18 e8 68 8e a9 ff 8b 4c 24 38 8b 44 24 30
10586a60: 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8
10586a70: 1c 24 39 00 83 c4 04 8d 54 24 10 52 8d 4c 24 54
10586a80: e8 5b a3 d3 ff 8b 07 8d 4c 24 2c 51 8b cf 8b 40
10586a90: 50 8d 54 24 54 52 ff d0 f6 44 24 58 04 8b 74 24
10586aa0: 2c c7 44 24 50 b4 a5 ac 10 74 0b 6a 00 8d 4c 24
10586ab0: 54 e8 da 1f 3a 00 8b 4c 24 18 8b 44 24 10 2b c8
10586ac0: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 be 23
10586ad0: 39 00 83 c4 04 8b c6 5f 5e 5b 8b e5 5d c3 e8 fd
10586ae0: 3b 09 00 d9 45 18 8b 54 24 4c 6a 27 52 83 ec 08
10586af0: d9 5c 24 04 8b cf d9 45 10 8b f0 d9 1c 24 e8 0d
10586b00: 9f cb ff 8b f8 e8 16 46 fd ff 6a 00 57 8b ce 8b
10586b10: d8 e8 fa 45 09 00 6a 00 6a ff 50 b9 44 82 ca 10
10586b20: 8d 44 24 3c 50 c7 44 24 2c 04 1c b2 10 89 4c 24
10586b30: 20 89 4c 24 24 c7 44 24 28 46 82 ca 10 e8 6e 02
10586b40: 3a 00 8d 4c 24 20 83 c4 10 3b c1 74 0c 8b 50 04
10586b50: 8b 00 52 50 e8 67 8d a9 ff 8b 4c 24 38 8b 44 24
10586b60: 30 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
10586b70: e8 1b 23 39 00 83 c4 04 6a 01 6a 10 8d 54 24 18
10586b80: 52 6a 09 6a 13 8d 4c 24 64 c7 44 24 64 b4 a5 ac
10586b90: 10 66 c7 44 24 6e 13 00 66 c7 44 24 6c 0b 00 e8
10586ba0: ec 1f 3a 00 8b 03 8d 4c 24 2c 51 8b cb e9 dc fe
10586bb0: ff ff 5f 5e 33 c0 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105868c0 <.text+0x5858c0>:
105868c0:	55                                              	push   ebp
105868c1:	8b ec                                           	mov    ebp,esp
105868c3:	83 e4 f0                                        	and    esp,0xfffffff0
105868c6:	81 ec a4 00 00 00                               	sub    esp,0xa4
105868cc:	53                                              	push   ebx
105868cd:	56                                              	push   esi
105868ce:	57                                              	push   edi
105868cf:	8b 3d c4 00 c7 10                               	mov    edi,DWORD PTR ds:0x10c700c4
105868d5:	85 ff                                           	test   edi,edi
105868d7:	0f 84 d5 02 00 00                               	je     0x10586bb2
105868dd:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
105868e0:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
105868e3:	6a 00                                           	push   0x0
105868e5:	50                                              	push   eax
105868e6:	51                                              	push   ecx
105868e7:	8b cf                                           	mov    ecx,edi
105868e9:	e8 22 07 cb ff                                  	call   0x10237010
105868ee:	8b f0                                           	mov    esi,eax
105868f0:	85 f6                                           	test   esi,esi
105868f2:	0f 84 ba 02 00 00                               	je     0x10586bb2
105868f8:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
105868fb:	83 ec 08                                        	sub    esp,0x8
105868fe:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10586902:	8b ce                                           	mov    ecx,esi
10586904:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
10586907:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1058690a:	e8 41 e1 b3 ff                                  	call   0x100c4a50
1058690f:	84 c0                                           	test   al,al
10586911:	0f 84 9b 02 00 00                               	je     0x10586bb2
10586917:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
1058691f:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10586924:	8d 54 24 44                                     	lea    edx,[esp+0x44]
10586928:	52                                              	push   edx
10586929:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
1058692f:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
10586935:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
1058693a:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
10586940:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
10586945:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10586949:	50                                              	push   eax
1058694a:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
10586950:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
10586956:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1058695c:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
10586961:	56                                              	push   esi
10586962:	c7 44 24 58 00 00 00 00                         	mov    DWORD PTR [esp+0x58],0x0
1058696a:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
1058696f:	e8 6c c7 b1 ff                                  	call   0x100a30e0
10586974:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10586978:	51                                              	push   ecx
10586979:	8d 54 24 54                                     	lea    edx,[esp+0x54]
1058697d:	52                                              	push   edx
1058697e:	c6 44 24 20 ff                                  	mov    BYTE PTR [esp+0x20],0xff
10586983:	c6 44 24 21 ff                                  	mov    BYTE PTR [esp+0x21],0xff
10586988:	c6 44 24 22 00                                  	mov    BYTE PTR [esp+0x22],0x0
1058698d:	c6 44 24 23 ff                                  	mov    BYTE PTR [esp+0x23],0xff
10586992:	e8 99 7f b3 ff                                  	call   0x100be930
10586997:	8b b6 90 02 00 00                               	mov    esi,DWORD PTR [esi+0x290]
1058699d:	83 c4 14                                        	add    esp,0x14
105869a0:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
105869a4:	e8 a7 bd b3 ff                                  	call   0x100c2750
105869a9:	8d 44 24 70                                     	lea    eax,[esp+0x70]
105869ad:	50                                              	push   eax
105869ae:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
105869b2:	51                                              	push   ecx
105869b3:	8b ce                                           	mov    ecx,esi
105869b5:	e8 d6 ab ac ff                                  	call   0x10051590
105869ba:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
105869be:	3b 15 80 ed c6 10                               	cmp    edx,DWORD PTR ds:0x10c6ed80
105869c4:	75 28                                           	jne    0x105869ee
105869c6:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
105869ca:	3b 05 88 ed c6 10                               	cmp    eax,DWORD PTR ds:0x10c6ed88
105869d0:	75 1c                                           	jne    0x105869ee
105869d2:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
105869d6:	3b 0d 8c ed c6 10                               	cmp    ecx,DWORD PTR ds:0x10c6ed8c
105869dc:	75 10                                           	jne    0x105869ee
105869de:	8b 54 24 74                                     	mov    edx,DWORD PTR [esp+0x74]
105869e2:	3b 15 84 ed c6 10                               	cmp    edx,DWORD PTR ds:0x10c6ed84
105869e8:	0f 84 f0 00 00 00                               	je     0x10586ade
105869ee:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
105869f4:	8d 44 24 70                                     	lea    eax,[esp+0x70]
105869f8:	50                                              	push   eax
105869f9:	e8 02 ec cd ff                                  	call   0x10265600
105869fe:	8b f0                                           	mov    esi,eax
10586a00:	85 f6                                           	test   esi,esi
10586a02:	0f 84 aa 01 00 00                               	je     0x10586bb2
10586a08:	e8 13 47 fd ff                                  	call   0x1055b120
10586a0d:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
10586a12:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10586a16:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10586a1a:	81 c6 a4 00 00 00                               	add    esi,0xa4
10586a20:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10586a24:	56                                              	push   esi
10586a25:	51                                              	push   ecx
10586a26:	8b f8                                           	mov    edi,eax
10586a28:	c7 44 24 24 04 1c b2 10                         	mov    DWORD PTR [esp+0x24],0x10b21c04
10586a30:	c7 44 24 20 46 82 ca 10                         	mov    DWORD PTR [esp+0x20],0x10ca8246
10586a38:	e8 b3 04 3a 00                                  	call   0x10926ef0
10586a3d:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10586a41:	83 c4 08                                        	add    esp,0x8
10586a44:	3b c2                                           	cmp    eax,edx
10586a46:	74 10                                           	je     0x10586a58
10586a48:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10586a4b:	8b 10                                           	mov    edx,DWORD PTR [eax]
10586a4d:	51                                              	push   ecx
10586a4e:	52                                              	push   edx
10586a4f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10586a53:	e8 68 8e a9 ff                                  	call   0x1001f8c0
10586a58:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10586a5c:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10586a60:	2b c8                                           	sub    ecx,eax
10586a62:	83 e1 fe                                        	and    ecx,0xfffffffe
10586a65:	83 f9 02                                        	cmp    ecx,0x2
10586a68:	7e 0d                                           	jle    0x10586a77
10586a6a:	85 c0                                           	test   eax,eax
10586a6c:	74 09                                           	je     0x10586a77
10586a6e:	50                                              	push   eax
10586a6f:	e8 1c 24 39 00                                  	call   0x10918e90
10586a74:	83 c4 04                                        	add    esp,0x4
10586a77:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10586a7b:	52                                              	push   edx
10586a7c:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10586a80:	e8 5b a3 d3 ff                                  	call   0x102c0de0
10586a85:	8b 07                                           	mov    eax,DWORD PTR [edi]
10586a87:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10586a8b:	51                                              	push   ecx
10586a8c:	8b cf                                           	mov    ecx,edi
10586a8e:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
10586a91:	8d 54 24 54                                     	lea    edx,[esp+0x54]
10586a95:	52                                              	push   edx
10586a96:	ff d0                                           	call   eax
10586a98:	f6 44 24 58 04                                  	test   BYTE PTR [esp+0x58],0x4
10586a9d:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
10586aa1:	c7 44 24 50 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x50],0x10aca5b4
10586aa9:	74 0b                                           	je     0x10586ab6
10586aab:	6a 00                                           	push   0x0
10586aad:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10586ab1:	e8 da 1f 3a 00                                  	call   0x10928a90
10586ab6:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10586aba:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10586abe:	2b c8                                           	sub    ecx,eax
10586ac0:	83 e1 fe                                        	and    ecx,0xfffffffe
10586ac3:	83 f9 02                                        	cmp    ecx,0x2
10586ac6:	7e 0d                                           	jle    0x10586ad5
10586ac8:	85 c0                                           	test   eax,eax
10586aca:	74 09                                           	je     0x10586ad5
10586acc:	50                                              	push   eax
10586acd:	e8 be 23 39 00                                  	call   0x10918e90
10586ad2:	83 c4 04                                        	add    esp,0x4
10586ad5:	8b c6                                           	mov    eax,esi
10586ad7:	5f                                              	pop    edi
10586ad8:	5e                                              	pop    esi
10586ad9:	5b                                              	pop    ebx
10586ada:	8b e5                                           	mov    esp,ebp
10586adc:	5d                                              	pop    ebp
10586add:	c3                                              	ret
10586ade:	e8 fd 3b 09 00                                  	call   0x1061a6e0
10586ae3:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
10586ae6:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
10586aea:	6a 27                                           	push   0x27
10586aec:	52                                              	push   edx
10586aed:	83 ec 08                                        	sub    esp,0x8
10586af0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10586af4:	8b cf                                           	mov    ecx,edi
10586af6:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
10586af9:	8b f0                                           	mov    esi,eax
10586afb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10586afe:	e8 0d 9f cb ff                                  	call   0x10240a10
10586b03:	8b f8                                           	mov    edi,eax
10586b05:	e8 16 46 fd ff                                  	call   0x1055b120
10586b0a:	6a 00                                           	push   0x0
10586b0c:	57                                              	push   edi
10586b0d:	8b ce                                           	mov    ecx,esi
10586b0f:	8b d8                                           	mov    ebx,eax
10586b11:	e8 fa 45 09 00                                  	call   0x1061b110
10586b16:	6a 00                                           	push   0x0
10586b18:	6a ff                                           	push   0xffffffff
10586b1a:	50                                              	push   eax
10586b1b:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
10586b20:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
10586b24:	50                                              	push   eax
10586b25:	c7 44 24 2c 04 1c b2 10                         	mov    DWORD PTR [esp+0x2c],0x10b21c04
10586b2d:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
10586b31:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10586b35:	c7 44 24 28 46 82 ca 10                         	mov    DWORD PTR [esp+0x28],0x10ca8246
10586b3d:	e8 6e 02 3a 00                                  	call   0x10926db0
10586b42:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10586b46:	83 c4 10                                        	add    esp,0x10
10586b49:	3b c1                                           	cmp    eax,ecx
10586b4b:	74 0c                                           	je     0x10586b59
10586b4d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10586b50:	8b 00                                           	mov    eax,DWORD PTR [eax]
10586b52:	52                                              	push   edx
10586b53:	50                                              	push   eax
10586b54:	e8 67 8d a9 ff                                  	call   0x1001f8c0
10586b59:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10586b5d:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10586b61:	2b c8                                           	sub    ecx,eax
10586b63:	83 e1 fe                                        	and    ecx,0xfffffffe
10586b66:	83 f9 02                                        	cmp    ecx,0x2
10586b69:	7e 0d                                           	jle    0x10586b78
10586b6b:	85 c0                                           	test   eax,eax
10586b6d:	74 09                                           	je     0x10586b78
10586b6f:	50                                              	push   eax
10586b70:	e8 1b 23 39 00                                  	call   0x10918e90
10586b75:	83 c4 04                                        	add    esp,0x4
10586b78:	6a 01                                           	push   0x1
10586b7a:	6a 10                                           	push   0x10
10586b7c:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10586b80:	52                                              	push   edx
10586b81:	6a 09                                           	push   0x9
10586b83:	6a 13                                           	push   0x13
10586b85:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10586b89:	c7 44 24 64 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x64],0x10aca5b4
10586b91:	66 c7 44 24 6e 13 00                            	mov    WORD PTR [esp+0x6e],0x13
10586b98:	66 c7 44 24 6c 0b 00                            	mov    WORD PTR [esp+0x6c],0xb
10586b9f:	e8 ec 1f 3a 00                                  	call   0x10928b90
10586ba4:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10586ba6:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10586baa:	51                                              	push   ecx
10586bab:	8b cb                                           	mov    ecx,ebx
10586bad:	e9 dc fe ff ff                                  	jmp    0x10586a8e
10586bb2:	5f                                              	pop    edi
10586bb3:	5e                                              	pop    esi
10586bb4:	33 c0                                           	xor    eax,eax
10586bb6:	5b                                              	pop    ebx
10586bb7:	8b e5                                           	mov    esp,ebp
10586bb9:	5d                                              	pop    ebp
10586bba:	c3                                              	ret
10586bbb:	cc                                              	int3
10586bbc:	cc                                              	int3
10586bbd:	cc                                              	int3
10586bbe:	cc                                              	int3
10586bbf:	cc                                              	int3
