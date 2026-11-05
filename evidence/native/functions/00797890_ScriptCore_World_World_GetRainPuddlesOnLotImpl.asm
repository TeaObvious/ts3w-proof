# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797890 (ScriptCore.World::World_GetRainPuddlesOnLotImpl)
Paired Ghidra pseudocode: 00797890_ScriptCore_World_World_GetRainPuddlesOnLotImpl.c
Window: [0x00797890, 0x00797b60) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797890: 55 8b ec 83 e4 f0 81 ec 94 00 00 00 53 56 8b 35
007978a0: c4 db 1e 01 33 db 3b f3 57 0f 84 a8 02 00 00 8b
007978b0: 45 0c 8b 4d 08 53 50 51 8b ce e8 51 af 4c 00 8b
007978c0: f8 3b fb 89 7c 24 5c 0f 84 8a 02 00 00 8b 4e 74
007978d0: 3b cb 89 4c 24 58 0f 84 7b 02 00 00 39 9f 98 02
007978e0: 00 00 0f 84 6f 02 00 00 e8 f3 21 5d 00 84 c0 0f
007978f0: 84 62 02 00 00 8d 54 24 38 33 f6 52 8b cf 89 5c
00797900: 24 1c 89 74 24 20 89 5c 24 24 c7 44 24 28 f0 1c
00797910: 01 01 89 5c 24 3c 89 5c 24 40 89 5c 24 44 c7 44
00797920: 24 48 d0 1c 01 01 e8 55 89 31 00 84 c0 75 12 8d
00797930: 4c 24 38 e8 78 fd ff ff 32 c0 5f 5e 5b 8b e5 5d
00797940: c3 8b bf 80 01 00 00 85 ff 0f 8c f2 01 00 00 83
00797950: c7 01 89 5c 24 28 89 7c 24 34 8d 9b 00 00 00 00
00797960: 8b 44 24 38 8b 4c 24 28 8d 3c 01 8d 54 24 2c 52
00797970: 8b cf 89 7c 24 4c e8 f5 33 1a 00 8b 47 08 8b 4f
00797980: 04 8b 7c 24 2c 3b 3c 81 0f 84 4b 01 00 00 8b ff
00797990: 8b 5c 24 5c 8d 54 24 60 52 57 53 e8 f0 08 36 00
007979a0: 83 c4 0c 8d 44 24 60 8b c8 50 51 8b cb e8 8e f6
007979b0: 31 00 8b 4c 24 58 6a 00 6a 00 53 8d 54 24 6c 52
007979c0: e8 2b 66 5d 00 84 c0 0f 84 d2 00 00 00 3b 74 24
007979d0: 20 0f 28 44 24 60 0f 29 84 24 80 00 00 00 f3 0f
007979e0: 10 84 24 80 00 00 00 f3 0f 11 44 24 54 73 13 8b
007979f0: c6 83 c6 04 85 c0 89 74 24 1c 74 19 f3 0f 11 00
00797a00: eb 13 8d 44 24 54 50 56 8d 4c 24 20 e8 6f e5 c6
00797a10: ff 8b 74 24 1c 3b 74 24 20 0f 28 44 24 60 0f 29
00797a20: 44 24 70 f3 0f 10 44 24 74 f3 0f 11 44 24 4c 73
00797a30: 13 8b c6 83 c6 04 85 c0 89 74 24 1c 74 19 f3 0f
00797a40: 11 00 eb 13 8d 4c 24 4c 51 56 8d 4c 24 20 e8 2d
00797a50: e5 c6 ff 8b 74 24 1c 3b 74 24 20 0f 28 44 24 60
00797a60: 0f 29 84 24 90 00 00 00 f3 0f 10 84 24 98 00 00
00797a70: 00 f3 0f 11 44 24 50 73 13 8b c6 83 c6 04 85 c0
00797a80: 89 74 24 1c 74 19 f3 0f 11 00 eb 13 8d 54 24 50
00797a90: 52 56 8d 4c 24 20 e8 e5 e4 c6 ff 8b 74 24 1c 8b
00797aa0: 7f 04 85 ff 89 7c 24 2c 75 1c 8d 9b 00 00 00 00
00797ab0: 8b 44 24 30 8b 78 04 83 c0 04 85 ff 89 44 24 30
00797ac0: 89 7c 24 2c 74 ea 8b 44 24 48 8b 48 08 8b 50 04
00797ad0: 3b 3c 8a 0f 85 b7 fe ff ff 83 44 24 28 20 83 6c
00797ae0: 24 34 01 0f 85 77 fe ff ff 8b 5c 24 18 3b de 74
00797af0: 50 e8 9a 18 fd ff 8b 4d 10 2b f3 8b f8 8b 07 8b
00797b00: 90 90 00 00 00 c1 fe 02 56 51 8b cf ff d2 8b 4d
00797b10: 10 8b 07 8b 90 a8 00 00 00 56 6a 00 53 51 8b cf
00797b20: ff d2 8d 4c 24 38 e8 85 fb ff ff 85 db 74 09 53
00797b30: e8 ab c9 d4 ff 83 c4 04 b0 01 5f 5e 5b 8b e5 5d
00797b40: c3 8d 4c 24 38 e8 66 fb ff ff 85 db 74 09 53 e8
00797b50: 8c c9 d4 ff 83 c4 04 5f 5e 32 c0 5b 8b e5 5d c3

LINEAR DISASSEMBLY
00797890 <.text+0x396890>:
  797890:	55                                              	push   ebp
  797891:	8b ec                                           	mov    ebp,esp
  797893:	83 e4 f0                                        	and    esp,0xfffffff0
  797896:	81 ec 94 00 00 00                               	sub    esp,0x94
  79789c:	53                                              	push   ebx
  79789d:	56                                              	push   esi
  79789e:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  7978a4:	33 db                                           	xor    ebx,ebx
  7978a6:	3b f3                                           	cmp    esi,ebx
  7978a8:	57                                              	push   edi
  7978a9:	0f 84 a8 02 00 00                               	je     0x797b57
  7978af:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  7978b2:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  7978b5:	53                                              	push   ebx
  7978b6:	50                                              	push   eax
  7978b7:	51                                              	push   ecx
  7978b8:	8b ce                                           	mov    ecx,esi
  7978ba:	e8 51 af 4c 00                                  	call   0xc62810
  7978bf:	8b f8                                           	mov    edi,eax
  7978c1:	3b fb                                           	cmp    edi,ebx
  7978c3:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
  7978c7:	0f 84 8a 02 00 00                               	je     0x797b57
  7978cd:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
  7978d0:	3b cb                                           	cmp    ecx,ebx
  7978d2:	89 4c 24 58                                     	mov    DWORD PTR [esp+0x58],ecx
  7978d6:	0f 84 7b 02 00 00                               	je     0x797b57
  7978dc:	39 9f 98 02 00 00                               	cmp    DWORD PTR [edi+0x298],ebx
  7978e2:	0f 84 6f 02 00 00                               	je     0x797b57
  7978e8:	e8 f3 21 5d 00                                  	call   0xd69ae0
  7978ed:	84 c0                                           	test   al,al
  7978ef:	0f 84 62 02 00 00                               	je     0x797b57
  7978f5:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  7978f9:	33 f6                                           	xor    esi,esi
  7978fb:	52                                              	push   edx
  7978fc:	8b cf                                           	mov    ecx,edi
  7978fe:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  797902:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  797906:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  79790a:	c7 44 24 28 f0 1c 01 01                         	mov    DWORD PTR [esp+0x28],0x1011cf0
  797912:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
  797916:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
  79791a:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  79791e:	c7 44 24 48 d0 1c 01 01                         	mov    DWORD PTR [esp+0x48],0x1011cd0
  797926:	e8 55 89 31 00                                  	call   0xab0280
  79792b:	84 c0                                           	test   al,al
  79792d:	75 12                                           	jne    0x797941
  79792f:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  797933:	e8 78 fd ff ff                                  	call   0x7976b0
  797938:	32 c0                                           	xor    al,al
  79793a:	5f                                              	pop    edi
  79793b:	5e                                              	pop    esi
  79793c:	5b                                              	pop    ebx
  79793d:	8b e5                                           	mov    esp,ebp
  79793f:	5d                                              	pop    ebp
  797940:	c3                                              	ret
  797941:	8b bf 80 01 00 00                               	mov    edi,DWORD PTR [edi+0x180]
  797947:	85 ff                                           	test   edi,edi
  797949:	0f 8c f2 01 00 00                               	jl     0x797b41
  79794f:	83 c7 01                                        	add    edi,0x1
  797952:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  797956:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  79795a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  797960:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  797964:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  797968:	8d 3c 01                                        	lea    edi,[ecx+eax*1]
  79796b:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  79796f:	52                                              	push   edx
  797970:	8b cf                                           	mov    ecx,edi
  797972:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
  797976:	e8 f5 33 1a 00                                  	call   0x93ad70
  79797b:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  79797e:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  797981:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
  797985:	3b 3c 81                                        	cmp    edi,DWORD PTR [ecx+eax*4]
  797988:	0f 84 4b 01 00 00                               	je     0x797ad9
  79798e:	8b ff                                           	mov    edi,edi
  797990:	8b 5c 24 5c                                     	mov    ebx,DWORD PTR [esp+0x5c]
  797994:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  797998:	52                                              	push   edx
  797999:	57                                              	push   edi
  79799a:	53                                              	push   ebx
  79799b:	e8 f0 08 36 00                                  	call   0xaf8290
  7979a0:	83 c4 0c                                        	add    esp,0xc
  7979a3:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  7979a7:	8b c8                                           	mov    ecx,eax
  7979a9:	50                                              	push   eax
  7979aa:	51                                              	push   ecx
  7979ab:	8b cb                                           	mov    ecx,ebx
  7979ad:	e8 8e f6 31 00                                  	call   0xab7040
  7979b2:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  7979b6:	6a 00                                           	push   0x0
  7979b8:	6a 00                                           	push   0x0
  7979ba:	53                                              	push   ebx
  7979bb:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  7979bf:	52                                              	push   edx
  7979c0:	e8 2b 66 5d 00                                  	call   0xd6dff0
  7979c5:	84 c0                                           	test   al,al
  7979c7:	0f 84 d2 00 00 00                               	je     0x797a9f
  7979cd:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  7979d1:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  7979d6:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  7979de:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  7979e7:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  7979ed:	73 13                                           	jae    0x797a02
  7979ef:	8b c6                                           	mov    eax,esi
  7979f1:	83 c6 04                                        	add    esi,0x4
  7979f4:	85 c0                                           	test   eax,eax
  7979f6:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  7979fa:	74 19                                           	je     0x797a15
  7979fc:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  797a00:	eb 13                                           	jmp    0x797a15
  797a02:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  797a06:	50                                              	push   eax
  797a07:	56                                              	push   esi
  797a08:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  797a0c:	e8 6f e5 c6 ff                                  	call   0x405f80
  797a11:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  797a15:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  797a19:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  797a1e:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  797a23:	f3 0f 10 44 24 74                               	movss  xmm0,DWORD PTR [esp+0x74]
  797a29:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  797a2f:	73 13                                           	jae    0x797a44
  797a31:	8b c6                                           	mov    eax,esi
  797a33:	83 c6 04                                        	add    esi,0x4
  797a36:	85 c0                                           	test   eax,eax
  797a38:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  797a3c:	74 19                                           	je     0x797a57
  797a3e:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  797a42:	eb 13                                           	jmp    0x797a57
  797a44:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  797a48:	51                                              	push   ecx
  797a49:	56                                              	push   esi
  797a4a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  797a4e:	e8 2d e5 c6 ff                                  	call   0x405f80
  797a53:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  797a57:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  797a5b:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  797a60:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  797a68:	f3 0f 10 84 24 98 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x98]
  797a71:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  797a77:	73 13                                           	jae    0x797a8c
  797a79:	8b c6                                           	mov    eax,esi
  797a7b:	83 c6 04                                        	add    esi,0x4
  797a7e:	85 c0                                           	test   eax,eax
  797a80:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  797a84:	74 19                                           	je     0x797a9f
  797a86:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  797a8a:	eb 13                                           	jmp    0x797a9f
  797a8c:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  797a90:	52                                              	push   edx
  797a91:	56                                              	push   esi
  797a92:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  797a96:	e8 e5 e4 c6 ff                                  	call   0x405f80
  797a9b:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  797a9f:	8b 7f 04                                        	mov    edi,DWORD PTR [edi+0x4]
  797aa2:	85 ff                                           	test   edi,edi
  797aa4:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  797aa8:	75 1c                                           	jne    0x797ac6
  797aaa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  797ab0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  797ab4:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  797ab7:	83 c0 04                                        	add    eax,0x4
  797aba:	85 ff                                           	test   edi,edi
  797abc:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  797ac0:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  797ac4:	74 ea                                           	je     0x797ab0
  797ac6:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  797aca:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  797acd:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  797ad0:	3b 3c 8a                                        	cmp    edi,DWORD PTR [edx+ecx*4]
  797ad3:	0f 85 b7 fe ff ff                               	jne    0x797990
  797ad9:	83 44 24 28 20                                  	add    DWORD PTR [esp+0x28],0x20
  797ade:	83 6c 24 34 01                                  	sub    DWORD PTR [esp+0x34],0x1
  797ae3:	0f 85 77 fe ff ff                               	jne    0x797960
  797ae9:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  797aed:	3b de                                           	cmp    ebx,esi
  797aef:	74 50                                           	je     0x797b41
  797af1:	e8 9a 18 fd ff                                  	call   0x769390
  797af6:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  797af9:	2b f3                                           	sub    esi,ebx
  797afb:	8b f8                                           	mov    edi,eax
  797afd:	8b 07                                           	mov    eax,DWORD PTR [edi]
  797aff:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  797b05:	c1 fe 02                                        	sar    esi,0x2
  797b08:	56                                              	push   esi
  797b09:	51                                              	push   ecx
  797b0a:	8b cf                                           	mov    ecx,edi
  797b0c:	ff d2                                           	call   edx
  797b0e:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  797b11:	8b 07                                           	mov    eax,DWORD PTR [edi]
  797b13:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  797b19:	56                                              	push   esi
  797b1a:	6a 00                                           	push   0x0
  797b1c:	53                                              	push   ebx
  797b1d:	51                                              	push   ecx
  797b1e:	8b cf                                           	mov    ecx,edi
  797b20:	ff d2                                           	call   edx
  797b22:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  797b26:	e8 85 fb ff ff                                  	call   0x7976b0
  797b2b:	85 db                                           	test   ebx,ebx
  797b2d:	74 09                                           	je     0x797b38
  797b2f:	53                                              	push   ebx
  797b30:	e8 ab c9 d4 ff                                  	call   0x4e44e0
  797b35:	83 c4 04                                        	add    esp,0x4
  797b38:	b0 01                                           	mov    al,0x1
  797b3a:	5f                                              	pop    edi
  797b3b:	5e                                              	pop    esi
  797b3c:	5b                                              	pop    ebx
  797b3d:	8b e5                                           	mov    esp,ebp
  797b3f:	5d                                              	pop    ebp
  797b40:	c3                                              	ret
  797b41:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  797b45:	e8 66 fb ff ff                                  	call   0x7976b0
  797b4a:	85 db                                           	test   ebx,ebx
  797b4c:	74 09                                           	je     0x797b57
  797b4e:	53                                              	push   ebx
  797b4f:	e8 8c c9 d4 ff                                  	call   0x4e44e0
  797b54:	83 c4 04                                        	add    esp,0x4
  797b57:	5f                                              	pop    edi
  797b58:	5e                                              	pop    esi
  797b59:	32 c0                                           	xor    al,al
  797b5b:	5b                                              	pop    ebx
  797b5c:	8b e5                                           	mov    esp,ebp
  797b5e:	5d                                              	pop    ebp
  797b5f:	c3                                              	ret
