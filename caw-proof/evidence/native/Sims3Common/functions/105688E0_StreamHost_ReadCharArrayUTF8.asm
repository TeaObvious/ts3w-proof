# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105688e0 (StreamHost_ReadCharArrayUTF8)
Paired Ghidra pseudocode: 105688E0_StreamHost_ReadCharArrayUTF8.c
Window: [0x105688e0, 0x10568b20) (576 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105688e0: 81 ec 2c 01 00 00 55 56 8b b4 24 38 01 00 00 3b
105688f0: 35 a4 b0 c7 10 57 75 0c 8b 2d a8 b0 c7 10 89 6c
10568900: 24 10 eb 43 8b c6 25 00 00 00 ff 3d 00 00 00 60
10568910: 74 0e c7 44 24 10 00 00 00 00 8b 6c 24 10 eb 27
10568920: e8 fb 27 ff ff 8b 10 8b c8 8b 82 cc 00 00 00 56
10568930: ff d0 85 c0 74 0b a3 a8 b0 c7 10 89 35 a4 b0 c7
10568940: 10 89 44 24 10 8b e8 33 ff 3b ef 75 0d 8d 47 fe
10568950: 5f 5e 5d 81 c4 2c 01 00 00 c3 8b b4 24 40 01 00
10568960: 00 3b f7 75 0f 5f 5e b8 fa ff ff ff 5d 81 c4 2c
10568970: 01 00 00 c3 e8 a7 27 ff ff 8d 4c 24 20 51 8d 4c
10568980: 24 1c 89 7c 24 24 89 7c 24 1c 8b 10 8b 52 70 51
10568990: 56 8b c8 ff d2 8b 8c 24 44 01 00 00 3b cf 0f 8c
105689a0: 58 01 00 00 8b b4 24 48 01 00 00 3b f7 0f 8c 49
105689b0: 01 00 00 8b 44 24 20 3b c8 0f 8f 3d 01 00 00 2b
105689c0: c1 3b c6 0f 8c 33 01 00 00 3b f7 75 0c 5f 5e 33
105689d0: c0 5d 81 c4 2c 01 00 00 c3 8d 4c 24 24 e8 be 91
105689e0: fb ff c7 44 24 30 94 04 b2 10 53 eb 03 8d 49 00
105689f0: 8d 04 3e 50 8d 4c 24 2c e8 a3 43 02 00 8b 4c 24
10568a00: 28 8b 55 00 8b 42 30 8d 1c 39 56 53 8b cd ff d0
10568a10: 83 f8 ff 74 46 03 f8 3b c6 89 7c 24 18 7c 67 8b
10568a20: ee 33 f6 33 ff 85 ed 7e 59 8d a4 24 00 00 00 00
10568a30: 8a 0c 1f 8d 54 24 13 52 88 4c 24 17 e8 9f e8 3b
10568a40: 00 83 c7 01 83 c4 04 03 f0 3b fd 7c e3 85 f6 74
10568a50: 31 8b 7c 24 18 8b 6c 24 14 eb 95 8b 44 24 28 85
10568a60: c0 74 0f 3b 44 24 38 74 09 50 e8 21 04 3b 00 83
10568a70: c4 04 5b 5f 5e b8 fd ff ff ff 5d 81 c4 2c 01 00
10568a80: 00 c3 8b 7c 24 18 8b 54 24 1c 8b 84 24 4c 01 00
10568a90: 00 6a 10 8d 4c 24 24 51 52 6a 08 89 44 24 30 8b
10568aa0: 44 24 38 57 50 e8 56 e8 3b 00 83 c4 18 3b c7 8b
10568ab0: 44 24 28 73 23 85 c0 74 0f 3b 44 24 38 74 09 50
10568ac0: e8 cb 03 3b 00 83 c4 04 5b 5f 5e b8 fc ff ff ff
10568ad0: 5d 81 c4 2c 01 00 00 c3 85 c0 8b 74 24 20 74 0f
10568ae0: 3b 44 24 38 74 09 50 e8 a4 03 3b 00 83 c4 04 5b
10568af0: 5f 8b c6 5e 5d 81 c4 2c 01 00 00 c3 5f 5e b8 f9
10568b00: ff ff ff 5d 81 c4 2c 01 00 00 c3 cc cc cc cc cc
10568b10: 8b 44 24 04 c7 00 68 00 c3 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
105688e0 <.text+0x5678e0>:
105688e0:	81 ec 2c 01 00 00                               	sub    esp,0x12c
105688e6:	55                                              	push   ebp
105688e7:	56                                              	push   esi
105688e8:	8b b4 24 38 01 00 00                            	mov    esi,DWORD PTR [esp+0x138]
105688ef:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
105688f5:	57                                              	push   edi
105688f6:	75 0c                                           	jne    0x10568904
105688f8:	8b 2d a8 b0 c7 10                               	mov    ebp,DWORD PTR ds:0x10c7b0a8
105688fe:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
10568902:	eb 43                                           	jmp    0x10568947
10568904:	8b c6                                           	mov    eax,esi
10568906:	25 00 00 00 ff                                  	and    eax,0xff000000
1056890b:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10568910:	74 0e                                           	je     0x10568920
10568912:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
1056891a:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
1056891e:	eb 27                                           	jmp    0x10568947
10568920:	e8 fb 27 ff ff                                  	call   0x1055b120
10568925:	8b 10                                           	mov    edx,DWORD PTR [eax]
10568927:	8b c8                                           	mov    ecx,eax
10568929:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056892f:	56                                              	push   esi
10568930:	ff d0                                           	call   eax
10568932:	85 c0                                           	test   eax,eax
10568934:	74 0b                                           	je     0x10568941
10568936:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
1056893b:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10568941:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10568945:	8b e8                                           	mov    ebp,eax
10568947:	33 ff                                           	xor    edi,edi
10568949:	3b ef                                           	cmp    ebp,edi
1056894b:	75 0d                                           	jne    0x1056895a
1056894d:	8d 47 fe                                        	lea    eax,[edi-0x2]
10568950:	5f                                              	pop    edi
10568951:	5e                                              	pop    esi
10568952:	5d                                              	pop    ebp
10568953:	81 c4 2c 01 00 00                               	add    esp,0x12c
10568959:	c3                                              	ret
1056895a:	8b b4 24 40 01 00 00                            	mov    esi,DWORD PTR [esp+0x140]
10568961:	3b f7                                           	cmp    esi,edi
10568963:	75 0f                                           	jne    0x10568974
10568965:	5f                                              	pop    edi
10568966:	5e                                              	pop    esi
10568967:	b8 fa ff ff ff                                  	mov    eax,0xfffffffa
1056896c:	5d                                              	pop    ebp
1056896d:	81 c4 2c 01 00 00                               	add    esp,0x12c
10568973:	c3                                              	ret
10568974:	e8 a7 27 ff ff                                  	call   0x1055b120
10568979:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1056897d:	51                                              	push   ecx
1056897e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10568982:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
10568986:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
1056898a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056898c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
1056898f:	51                                              	push   ecx
10568990:	56                                              	push   esi
10568991:	8b c8                                           	mov    ecx,eax
10568993:	ff d2                                           	call   edx
10568995:	8b 8c 24 44 01 00 00                            	mov    ecx,DWORD PTR [esp+0x144]
1056899c:	3b cf                                           	cmp    ecx,edi
1056899e:	0f 8c 58 01 00 00                               	jl     0x10568afc
105689a4:	8b b4 24 48 01 00 00                            	mov    esi,DWORD PTR [esp+0x148]
105689ab:	3b f7                                           	cmp    esi,edi
105689ad:	0f 8c 49 01 00 00                               	jl     0x10568afc
105689b3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105689b7:	3b c8                                           	cmp    ecx,eax
105689b9:	0f 8f 3d 01 00 00                               	jg     0x10568afc
105689bf:	2b c1                                           	sub    eax,ecx
105689c1:	3b c6                                           	cmp    eax,esi
105689c3:	0f 8c 33 01 00 00                               	jl     0x10568afc
105689c9:	3b f7                                           	cmp    esi,edi
105689cb:	75 0c                                           	jne    0x105689d9
105689cd:	5f                                              	pop    edi
105689ce:	5e                                              	pop    esi
105689cf:	33 c0                                           	xor    eax,eax
105689d1:	5d                                              	pop    ebp
105689d2:	81 c4 2c 01 00 00                               	add    esp,0x12c
105689d8:	c3                                              	ret
105689d9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
105689dd:	e8 be 91 fb ff                                  	call   0x10521ba0
105689e2:	c7 44 24 30 94 04 b2 10                         	mov    DWORD PTR [esp+0x30],0x10b20494
105689ea:	53                                              	push   ebx
105689eb:	eb 03                                           	jmp    0x105689f0
105689ed:	8d 49 00                                        	lea    ecx,[ecx+0x0]
105689f0:	8d 04 3e                                        	lea    eax,[esi+edi*1]
105689f3:	50                                              	push   eax
105689f4:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
105689f8:	e8 a3 43 02 00                                  	call   0x1058cda0
105689fd:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10568a01:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10568a04:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
10568a07:	8d 1c 39                                        	lea    ebx,[ecx+edi*1]
10568a0a:	56                                              	push   esi
10568a0b:	53                                              	push   ebx
10568a0c:	8b cd                                           	mov    ecx,ebp
10568a0e:	ff d0                                           	call   eax
10568a10:	83 f8 ff                                        	cmp    eax,0xffffffff
10568a13:	74 46                                           	je     0x10568a5b
10568a15:	03 f8                                           	add    edi,eax
10568a17:	3b c6                                           	cmp    eax,esi
10568a19:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
10568a1d:	7c 67                                           	jl     0x10568a86
10568a1f:	8b ee                                           	mov    ebp,esi
10568a21:	33 f6                                           	xor    esi,esi
10568a23:	33 ff                                           	xor    edi,edi
10568a25:	85 ed                                           	test   ebp,ebp
10568a27:	7e 59                                           	jle    0x10568a82
10568a29:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10568a30:	8a 0c 1f                                        	mov    cl,BYTE PTR [edi+ebx*1]
10568a33:	8d 54 24 13                                     	lea    edx,[esp+0x13]
10568a37:	52                                              	push   edx
10568a38:	88 4c 24 17                                     	mov    BYTE PTR [esp+0x17],cl
10568a3c:	e8 9f e8 3b 00                                  	call   0x109272e0
10568a41:	83 c7 01                                        	add    edi,0x1
10568a44:	83 c4 04                                        	add    esp,0x4
10568a47:	03 f0                                           	add    esi,eax
10568a49:	3b fd                                           	cmp    edi,ebp
10568a4b:	7c e3                                           	jl     0x10568a30
10568a4d:	85 f6                                           	test   esi,esi
10568a4f:	74 31                                           	je     0x10568a82
10568a51:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
10568a55:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
10568a59:	eb 95                                           	jmp    0x105689f0
10568a5b:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10568a5f:	85 c0                                           	test   eax,eax
10568a61:	74 0f                                           	je     0x10568a72
10568a63:	3b 44 24 38                                     	cmp    eax,DWORD PTR [esp+0x38]
10568a67:	74 09                                           	je     0x10568a72
10568a69:	50                                              	push   eax
10568a6a:	e8 21 04 3b 00                                  	call   0x10918e90
10568a6f:	83 c4 04                                        	add    esp,0x4
10568a72:	5b                                              	pop    ebx
10568a73:	5f                                              	pop    edi
10568a74:	5e                                              	pop    esi
10568a75:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10568a7a:	5d                                              	pop    ebp
10568a7b:	81 c4 2c 01 00 00                               	add    esp,0x12c
10568a81:	c3                                              	ret
10568a82:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
10568a86:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10568a8a:	8b 84 24 4c 01 00 00                            	mov    eax,DWORD PTR [esp+0x14c]
10568a91:	6a 10                                           	push   0x10
10568a93:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10568a97:	51                                              	push   ecx
10568a98:	52                                              	push   edx
10568a99:	6a 08                                           	push   0x8
10568a9b:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10568a9f:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10568aa3:	57                                              	push   edi
10568aa4:	50                                              	push   eax
10568aa5:	e8 56 e8 3b 00                                  	call   0x10927300
10568aaa:	83 c4 18                                        	add    esp,0x18
10568aad:	3b c7                                           	cmp    eax,edi
10568aaf:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10568ab3:	73 23                                           	jae    0x10568ad8
10568ab5:	85 c0                                           	test   eax,eax
10568ab7:	74 0f                                           	je     0x10568ac8
10568ab9:	3b 44 24 38                                     	cmp    eax,DWORD PTR [esp+0x38]
10568abd:	74 09                                           	je     0x10568ac8
10568abf:	50                                              	push   eax
10568ac0:	e8 cb 03 3b 00                                  	call   0x10918e90
10568ac5:	83 c4 04                                        	add    esp,0x4
10568ac8:	5b                                              	pop    ebx
10568ac9:	5f                                              	pop    edi
10568aca:	5e                                              	pop    esi
10568acb:	b8 fc ff ff ff                                  	mov    eax,0xfffffffc
10568ad0:	5d                                              	pop    ebp
10568ad1:	81 c4 2c 01 00 00                               	add    esp,0x12c
10568ad7:	c3                                              	ret
10568ad8:	85 c0                                           	test   eax,eax
10568ada:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10568ade:	74 0f                                           	je     0x10568aef
10568ae0:	3b 44 24 38                                     	cmp    eax,DWORD PTR [esp+0x38]
10568ae4:	74 09                                           	je     0x10568aef
10568ae6:	50                                              	push   eax
10568ae7:	e8 a4 03 3b 00                                  	call   0x10918e90
10568aec:	83 c4 04                                        	add    esp,0x4
10568aef:	5b                                              	pop    ebx
10568af0:	5f                                              	pop    edi
10568af1:	8b c6                                           	mov    eax,esi
10568af3:	5e                                              	pop    esi
10568af4:	5d                                              	pop    ebp
10568af5:	81 c4 2c 01 00 00                               	add    esp,0x12c
10568afb:	c3                                              	ret
10568afc:	5f                                              	pop    edi
10568afd:	5e                                              	pop    esi
10568afe:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
10568b03:	5d                                              	pop    ebp
10568b04:	81 c4 2c 01 00 00                               	add    esp,0x12c
10568b0a:	c3                                              	ret
10568b0b:	cc                                              	int3
10568b0c:	cc                                              	int3
10568b0d:	cc                                              	int3
10568b0e:	cc                                              	int3
10568b0f:	cc                                              	int3
10568b10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10568b14:	c7 00 68 00 c3 10                               	mov    DWORD PTR [eax],0x10c30068
10568b1a:	c2 04 00                                        	ret    0x4
10568b1d:	cc                                              	int3
10568b1e:	cc                                              	int3
10568b1f:	cc                                              	int3
