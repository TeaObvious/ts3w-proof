# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce88c0 (ScriptCore.UserToolUtils::UserToolUtils_SetCurrentUserToolImpl)
Paired Ghidra pseudocode: 00CE88C0_ScriptCore_UserToolUtils_UserToolUtils_SetCurrentUserToolImpl.c
Window: [0x00ce88c0, 0x00ce8b40) (640 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce8b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce88c0: 81 ec c8 00 00 00 55 56 e8 33 6c 00 00 8b e8 33
00ce88d0: f6 3b ee 0f 84 53 02 00 00 8b 84 24 e0 00 00 00
00ce88e0: 8b 8c 24 e4 00 00 00 8b 94 24 d8 00 00 00 89 44
00ce88f0: 24 38 8b 84 24 dc 00 00 00 89 4c 24 3c 8b 8c 24
00ce8900: f0 00 00 00 89 54 24 40 8b 94 24 f4 00 00 00 89
00ce8910: 44 24 44 8b 84 24 e8 00 00 00 89 4c 24 18 8b 8c
00ce8920: 24 ec 00 00 00 89 54 24 1c 8b 94 24 00 01 00 00
00ce8930: 89 44 24 20 8b 84 24 04 01 00 00 89 4c 24 24 8b
00ce8940: 8c 24 f8 00 00 00 89 54 24 28 8b 94 24 fc 00 00
00ce8950: 00 57 89 44 24 30 89 4c 24 34 89 54 24 38 e8 2d
00ce8960: 0a a8 ff 8b 8c 24 0c 01 00 00 3b ce 74 12 3b c6
00ce8970: 74 0e 8b 10 51 8b c8 8b 42 58 ff d0 8b f8 eb 02
00ce8980: 33 ff 6a 01 6a 10 8d 4c 24 44 51 b8 f4 a6 fb 00
00ce8990: 56 68 01 02 00 00 8d 4c 24 60 89 44 24 60 66 89
00ce89a0: 74 24 68 66 89 74 24 6a 89 84 24 80 00 00 00 66
00ce89b0: 89 b4 24 88 00 00 00 66 89 b4 24 8a 00 00 00 89
00ce89c0: 84 24 a0 00 00 00 66 89 b4 24 a8 00 00 00 66 89
00ce89d0: b4 24 aa 00 00 00 89 84 24 c0 00 00 00 66 89 b4
00ce89e0: 24 c8 00 00 00 66 89 b4 24 ca 00 00 00 89 b4 24
00ce89f0: e0 00 00 00 e8 c7 cf 80 ff f6 44 24 74 04 74 0b
00ce8a00: 6a 01 8d 4c 24 70 e8 55 cd 80 ff 6a 01 6a 10 8d
00ce8a10: 54 24 24 52 56 68 01 02 00 00 8d 8c 24 80 00 00
00ce8a20: 00 e8 9a cf 80 ff f6 84 24 94 00 00 00 04 74 0e
00ce8a30: 6a 01 8d 8c 24 90 00 00 00 e8 22 cd 80 ff 6a 01
00ce8a40: 6a 10 8d 44 24 34 50 56 68 01 02 00 00 8d 8c 24
00ce8a50: a0 00 00 00 e8 67 cf 80 ff 3b fe 0f 84 8e 00 00
00ce8a60: 00 66 39 37 b8 54 8e 1c 01 89 44 24 0c 89 44 24
00ce8a70: 10 c7 44 24 18 c8 b9 06 01 c7 44 24 14 56 8e 1c
00ce8a80: 01 8b c7 74 08 83 c0 02 66 39 30 75 f8 2b c7 d1
00ce8a90: f8 8d 0c 47 51 57 8d 4c 24 14 e8 c1 02 72 ff f6
00ce8aa0: 84 24 b4 00 00 00 04 74 0e 6a 01 8d 8c 24 b0 00
00ce8ab0: 00 00 e8 a9 cc 80 ff 6a 01 6a 10 8d 54 24 14 52
00ce8ac0: 6a 09 6a 13 8d 8c 24 c0 00 00 00 e8 f0 ce 80 ff
00ce8ad0: 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02
00ce8ae0: 7e 0d 3b c6 74 09 50 e8 f4 b9 7f ff 83 c4 04 8b
00ce8af0: 94 24 10 01 00 00 8b b4 24 d8 00 00 00 8d 44 24
00ce8b00: 4c 50 56 8b cd 89 94 24 d4 00 00 00 e8 af 74 00
00ce8b10: 00 8b 7d 30 8d 4c 24 4c e8 13 6f fb ff 3b fe 5f
00ce8b20: 5e 0f 94 c0 5d 81 c4 c8 00 00 00 c3 5e 32 c0 5d
00ce8b30: 81 c4 c8 00 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce88c0 <.text+0x8e78c0>:
  ce88c0:	81 ec c8 00 00 00                               	sub    esp,0xc8
  ce88c6:	55                                              	push   ebp
  ce88c7:	56                                              	push   esi
  ce88c8:	e8 33 6c 00 00                                  	call   0xcef500
  ce88cd:	8b e8                                           	mov    ebp,eax
  ce88cf:	33 f6                                           	xor    esi,esi
  ce88d1:	3b ee                                           	cmp    ebp,esi
  ce88d3:	0f 84 53 02 00 00                               	je     0xce8b2c
  ce88d9:	8b 84 24 e0 00 00 00                            	mov    eax,DWORD PTR [esp+0xe0]
  ce88e0:	8b 8c 24 e4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xe4]
  ce88e7:	8b 94 24 d8 00 00 00                            	mov    edx,DWORD PTR [esp+0xd8]
  ce88ee:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  ce88f2:	8b 84 24 dc 00 00 00                            	mov    eax,DWORD PTR [esp+0xdc]
  ce88f9:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  ce88fd:	8b 8c 24 f0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf0]
  ce8904:	89 54 24 40                                     	mov    DWORD PTR [esp+0x40],edx
  ce8908:	8b 94 24 f4 00 00 00                            	mov    edx,DWORD PTR [esp+0xf4]
  ce890f:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  ce8913:	8b 84 24 e8 00 00 00                            	mov    eax,DWORD PTR [esp+0xe8]
  ce891a:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  ce891e:	8b 8c 24 ec 00 00 00                            	mov    ecx,DWORD PTR [esp+0xec]
  ce8925:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  ce8929:	8b 94 24 00 01 00 00                            	mov    edx,DWORD PTR [esp+0x100]
  ce8930:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  ce8934:	8b 84 24 04 01 00 00                            	mov    eax,DWORD PTR [esp+0x104]
  ce893b:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  ce893f:	8b 8c 24 f8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf8]
  ce8946:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  ce894a:	8b 94 24 fc 00 00 00                            	mov    edx,DWORD PTR [esp+0xfc]
  ce8951:	57                                              	push   edi
  ce8952:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  ce8956:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
  ce895a:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  ce895e:	e8 2d 0a a8 ff                                  	call   0x769390
  ce8963:	8b 8c 24 0c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x10c]
  ce896a:	3b ce                                           	cmp    ecx,esi
  ce896c:	74 12                                           	je     0xce8980
  ce896e:	3b c6                                           	cmp    eax,esi
  ce8970:	74 0e                                           	je     0xce8980
  ce8972:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce8974:	51                                              	push   ecx
  ce8975:	8b c8                                           	mov    ecx,eax
  ce8977:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  ce897a:	ff d0                                           	call   eax
  ce897c:	8b f8                                           	mov    edi,eax
  ce897e:	eb 02                                           	jmp    0xce8982
  ce8980:	33 ff                                           	xor    edi,edi
  ce8982:	6a 01                                           	push   0x1
  ce8984:	6a 10                                           	push   0x10
  ce8986:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ce898a:	51                                              	push   ecx
  ce898b:	b8 f4 a6 fb 00                                  	mov    eax,0xfba6f4
  ce8990:	56                                              	push   esi
  ce8991:	68 01 02 00 00                                  	push   0x201
  ce8996:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  ce899a:	89 44 24 60                                     	mov    DWORD PTR [esp+0x60],eax
  ce899e:	66 89 74 24 68                                  	mov    WORD PTR [esp+0x68],si
  ce89a3:	66 89 74 24 6a                                  	mov    WORD PTR [esp+0x6a],si
  ce89a8:	89 84 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],eax
  ce89af:	66 89 b4 24 88 00 00 00                         	mov    WORD PTR [esp+0x88],si
  ce89b7:	66 89 b4 24 8a 00 00 00                         	mov    WORD PTR [esp+0x8a],si
  ce89bf:	89 84 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],eax
  ce89c6:	66 89 b4 24 a8 00 00 00                         	mov    WORD PTR [esp+0xa8],si
  ce89ce:	66 89 b4 24 aa 00 00 00                         	mov    WORD PTR [esp+0xaa],si
  ce89d6:	89 84 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],eax
  ce89dd:	66 89 b4 24 c8 00 00 00                         	mov    WORD PTR [esp+0xc8],si
  ce89e5:	66 89 b4 24 ca 00 00 00                         	mov    WORD PTR [esp+0xca],si
  ce89ed:	89 b4 24 e0 00 00 00                            	mov    DWORD PTR [esp+0xe0],esi
  ce89f4:	e8 c7 cf 80 ff                                  	call   0x4f59c0
  ce89f9:	f6 44 24 74 04                                  	test   BYTE PTR [esp+0x74],0x4
  ce89fe:	74 0b                                           	je     0xce8a0b
  ce8a00:	6a 01                                           	push   0x1
  ce8a02:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  ce8a06:	e8 55 cd 80 ff                                  	call   0x4f5760
  ce8a0b:	6a 01                                           	push   0x1
  ce8a0d:	6a 10                                           	push   0x10
  ce8a0f:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  ce8a13:	52                                              	push   edx
  ce8a14:	56                                              	push   esi
  ce8a15:	68 01 02 00 00                                  	push   0x201
  ce8a1a:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  ce8a21:	e8 9a cf 80 ff                                  	call   0x4f59c0
  ce8a26:	f6 84 24 94 00 00 00 04                         	test   BYTE PTR [esp+0x94],0x4
  ce8a2e:	74 0e                                           	je     0xce8a3e
  ce8a30:	6a 01                                           	push   0x1
  ce8a32:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  ce8a39:	e8 22 cd 80 ff                                  	call   0x4f5760
  ce8a3e:	6a 01                                           	push   0x1
  ce8a40:	6a 10                                           	push   0x10
  ce8a42:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  ce8a46:	50                                              	push   eax
  ce8a47:	56                                              	push   esi
  ce8a48:	68 01 02 00 00                                  	push   0x201
  ce8a4d:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  ce8a54:	e8 67 cf 80 ff                                  	call   0x4f59c0
  ce8a59:	3b fe                                           	cmp    edi,esi
  ce8a5b:	0f 84 8e 00 00 00                               	je     0xce8aef
  ce8a61:	66 39 37                                        	cmp    WORD PTR [edi],si
  ce8a64:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  ce8a69:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce8a6d:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  ce8a71:	c7 44 24 18 c8 b9 06 01                         	mov    DWORD PTR [esp+0x18],0x106b9c8
  ce8a79:	c7 44 24 14 56 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e56
  ce8a81:	8b c7                                           	mov    eax,edi
  ce8a83:	74 08                                           	je     0xce8a8d
  ce8a85:	83 c0 02                                        	add    eax,0x2
  ce8a88:	66 39 30                                        	cmp    WORD PTR [eax],si
  ce8a8b:	75 f8                                           	jne    0xce8a85
  ce8a8d:	2b c7                                           	sub    eax,edi
  ce8a8f:	d1 f8                                           	sar    eax,1
  ce8a91:	8d 0c 47                                        	lea    ecx,[edi+eax*2]
  ce8a94:	51                                              	push   ecx
  ce8a95:	57                                              	push   edi
  ce8a96:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8a9a:	e8 c1 02 72 ff                                  	call   0x408d60
  ce8a9f:	f6 84 24 b4 00 00 00 04                         	test   BYTE PTR [esp+0xb4],0x4
  ce8aa7:	74 0e                                           	je     0xce8ab7
  ce8aa9:	6a 01                                           	push   0x1
  ce8aab:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  ce8ab2:	e8 a9 cc 80 ff                                  	call   0x4f5760
  ce8ab7:	6a 01                                           	push   0x1
  ce8ab9:	6a 10                                           	push   0x10
  ce8abb:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  ce8abf:	52                                              	push   edx
  ce8ac0:	6a 09                                           	push   0x9
  ce8ac2:	6a 13                                           	push   0x13
  ce8ac4:	8d 8c 24 c0 00 00 00                            	lea    ecx,[esp+0xc0]
  ce8acb:	e8 f0 ce 80 ff                                  	call   0x4f59c0
  ce8ad0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce8ad4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ce8ad8:	2b c8                                           	sub    ecx,eax
  ce8ada:	83 e1 fe                                        	and    ecx,0xfffffffe
  ce8add:	83 f9 02                                        	cmp    ecx,0x2
  ce8ae0:	7e 0d                                           	jle    0xce8aef
  ce8ae2:	3b c6                                           	cmp    eax,esi
  ce8ae4:	74 09                                           	je     0xce8aef
  ce8ae6:	50                                              	push   eax
  ce8ae7:	e8 f4 b9 7f ff                                  	call   0x4e44e0
  ce8aec:	83 c4 04                                        	add    esp,0x4
  ce8aef:	8b 94 24 10 01 00 00                            	mov    edx,DWORD PTR [esp+0x110]
  ce8af6:	8b b4 24 d8 00 00 00                            	mov    esi,DWORD PTR [esp+0xd8]
  ce8afd:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  ce8b01:	50                                              	push   eax
  ce8b02:	56                                              	push   esi
  ce8b03:	8b cd                                           	mov    ecx,ebp
  ce8b05:	89 94 24 d4 00 00 00                            	mov    DWORD PTR [esp+0xd4],edx
  ce8b0c:	e8 af 74 00 00                                  	call   0xceffc0
  ce8b11:	8b 7d 30                                        	mov    edi,DWORD PTR [ebp+0x30]
  ce8b14:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  ce8b18:	e8 13 6f fb ff                                  	call   0xc9fa30
  ce8b1d:	3b fe                                           	cmp    edi,esi
  ce8b1f:	5f                                              	pop    edi
  ce8b20:	5e                                              	pop    esi
  ce8b21:	0f 94 c0                                        	sete   al
  ce8b24:	5d                                              	pop    ebp
  ce8b25:	81 c4 c8 00 00 00                               	add    esp,0xc8
  ce8b2b:	c3                                              	ret
  ce8b2c:	5e                                              	pop    esi
  ce8b2d:	32 c0                                           	xor    al,al
  ce8b2f:	5d                                              	pop    ebp
  ce8b30:	81 c4 c8 00 00 00                               	add    esp,0xc8
  ce8b36:	c3                                              	ret
  ce8b37:	cc                                              	int3
  ce8b38:	cc                                              	int3
  ce8b39:	cc                                              	int3
  ce8b3a:	cc                                              	int3
  ce8b3b:	cc                                              	int3
  ce8b3c:	cc                                              	int3
  ce8b3d:	cc                                              	int3
  ce8b3e:	cc                                              	int3
  ce8b3f:	cc                                              	int3
