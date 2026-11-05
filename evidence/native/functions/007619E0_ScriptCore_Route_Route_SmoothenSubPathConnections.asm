# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007619e0 (ScriptCore.Route::Route_SmoothenSubPathConnections)
Paired Ghidra pseudocode: 007619E0_ScriptCore_Route_Route_SmoothenSubPathConnections.c
Window: [0x007619e0, 0x00761e70) (1168 bytes; stop exclusive)
Next defined Ghidra entry: 0x00761e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007619e0: 8b 0d c4 50 1d 01 81 ec 58 01 00 00 85 c9 53 55
007619f0: 56 57 74 38 8b 84 24 6c 01 00 00 50 e8 af 9a fe
00761a00: ff 8b e8 85 ed 89 6c 24 2c 74 21 8b 55 00 8b 42
00761a10: 10 8b cd ff d0 a1 c4 db 1e 01 85 c0 89 44 24 34
00761a20: 75 15 8b 55 00 8b 42 14 8b cd ff d0 5f 5e 5d 5b
00761a30: 81 c4 58 01 00 00 c3 e8 b4 72 0c 00 8b f0 85 f6
00761a40: 74 e0 8b ce e8 b7 7b 0c 00 8b f8 85 ff 89 7c 24
00761a50: 38 74 cf 8b ce e8 66 7b 0c 00 8b f0 85 f6 89 74
00761a60: 24 3c 74 be 33 c0 8d 4c 24 18 8d 9d e0 00 00 00
00761a70: 89 44 24 30 89 44 24 18 e8 73 e4 f2 ff 50 8d 4c
00761a80: 24 34 e8 69 e4 f2 ff 50 8b cd e8 91 56 ff ff 8b
00761a90: 8d f0 00 00 00 88 44 24 13 8b 03 3b c3 89 4c 24
00761aa0: 1c c7 44 24 28 00 00 00 00 89 44 24 14 0f 84 4e
00761ab0: 02 00 00 eb 04 8b 44 24 14 8b 70 08 85 f6 89 74
00761ac0: 24 24 74 0c 8d 56 04 b8 01 00 00 00 f0 0f c1 02
00761ad0: 8b 16 8b 42 7c 8b ce ff d0 8b e8 85 ed 74 0c 8d
00761ae0: 4d 04 ba 01 00 00 00 f0 0f c1 11 8a 54 24 13 84
00761af0: d2 8b 44 24 30 8b 7c 24 18 74 0c 3b f0 74 04 3b
00761b00: f7 75 04 b1 01 eb 02 32 c9 84 d2 74 10 85 ed 74
00761b10: 0c 3b e8 74 04 3b ef 75 04 b0 01 eb 02 32 c0 85
00761b20: ed 0f 84 41 01 00 00 84 d2 74 08 32 c1 0f 85 35
00761b30: 01 00 00 8b 06 8b 50 30 8b ce ff d2 81 38 67 0b
00761b40: 60 c6 74 48 8b 06 8b 50 30 8b ce ff d2 81 38 4b
00761b50: f7 69 5e 74 37 8b 06 8b 50 30 8b ce ff d2 81 38
00761b60: c5 af 5c e1 74 26 8b 06 8b 50 30 8b ce ff d2 81
00761b70: 38 0a 95 43 8d 74 15 8b 06 8b 50 30 8b ce ff d2
00761b80: 81 38 cc b7 00 9a 0f 85 d8 00 00 00 8b 06 8b 50
00761b90: 30 8b ce ff d2 8b f8 8b 45 00 8b 50 30 8b cd ff
00761ba0: d2 8b 0f 3b 08 0f 85 b9 00 00 00 80 7c 24 13 00
00761bb0: 74 23 3b 6c 24 18 75 0e 8d 54 24 24 52 8d 4c 24
00761bc0: 1c e8 fa 37 11 00 8b 44 24 28 3b 44 24 1c 7d 05
00761bd0: 83 6c 24 1c 01 8b 3e 8b 57 7c 6a 01 8b ce ff d2
00761be0: 50 8b 87 f8 00 00 00 8b ce ff d0 8b 16 8b 42 7c
00761bf0: 8b ce ff d0 8b 10 8b c8 8b 42 7c ff d0 85 c0 74
00761c00: 1f 8b 16 8b 42 7c 8b ce ff d0 8b 10 8b c8 8b 42
00761c10: 7c ff d0 8b 10 8b c8 8b 82 80 00 00 00 56 ff d0
00761c20: 8b 16 8b 42 7c 8b ce ff d0 8b 10 8b 3e 8b c8 8b
00761c30: 42 7c 83 c7 78 ff d0 8b 17 50 8b ce ff d2 51 8b
00761c40: 4c 24 18 8b 11 8b c4 89 10 8d 44 24 24 50 8b cb
00761c50: e8 eb 77 ff ff 8b 08 8b 51 04 89 54 24 14 8a 54
00761c60: 24 13 eb 0e 8a 54 24 13 8b 44 24 14 8b 08 89 4c
00761c70: 24 14 84 d2 8b 7c 24 2c 74 20 8b 44 24 1c 3b 87
00761c80: f0 00 00 00 74 0d 8b cf 89 87 f0 00 00 00 e8 ed
00761c90: 56 ff ff 8b cf e8 e6 56 ff ff 8b cf e8 cf 4c ff
00761ca0: ff 85 ed 74 21 8d 45 04 8b d0 83 c9 ff f0 0f c1
00761cb0: 0a 49 75 12 ba 01 00 00 00 87 10 8b 45 00 8b 10
00761cc0: 6a 01 8b cd ff d2 8d 46 04 8b c8 83 ca ff f0 0f
00761cd0: c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b 02
00761ce0: 6a 01 8b ce ff d0 83 44 24 28 01 39 5c 24 14 0f
00761cf0: 85 c0 fd ff ff 8b 7c 24 38 8b 74 24 3c 8b 6c 24
00761d00: 2c 6a 00 6a 00 68 04 08 00 00 6a 00 8d 8c 24 f8
00761d10: 00 00 00 e8 98 aa 0b 00 8b 55 3c 8b 45 40 89 54
00761d20: 24 40 8d 54 24 40 52 8d 8c 24 ec 00 00 00 89 4c
00761d30: 24 6c 8b 4d 44 57 89 44 24 50 8b 44 24 3c 56 89
00761d40: 4c 24 58 50 8d 8c 24 80 00 00 00 c7 44 24 70 00
00761d50: 00 00 00 c6 44 24 74 01 c6 44 24 75 00 e8 7e 25
00761d60: ee ff 6a 00 53 8d 4c 24 78 e8 e2 4d ee ff 53 8b
00761d70: cb e8 9a e0 ff ff 8b 3b 3b fb 74 48 8d 64 24 00
00761d80: 8b 77 08 85 f6 74 0c 8d 4e 04 ba 01 00 00 00 f0
00761d90: 0f c1 11 8b 06 8b 50 44 6a 00 8b ce ff d2 8d 46
00761da0: 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00
00761db0: 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0 8b 3f
00761dc0: 3b fb 75 bc 8d 4c 24 70 e8 33 20 ee ff 8b 4c 24
00761dd0: 60 85 c9 74 22 8d 41 04 8b d0 83 ce ff f0 0f c1
00761de0: 32 4e 75 13 ba 01 00 00 00 87 10 85 c9 74 08 8b
00761df0: 01 8b 10 6a 01 ff d2 8d 8c 24 e8 00 00 00 e8 2d
00761e00: aa 0b 00 8b 4c 24 18 85 c9 74 22 8d 41 04 8b d0
00761e10: 83 ce ff f0 0f c1 32 4e 75 13 ba 01 00 00 00 87
00761e20: 10 85 c9 74 08 8b 01 8b 10 6a 01 ff d2 8b 4c 24
00761e30: 30 85 c9 74 22 8d 41 04 8b d0 83 ce ff f0 0f c1
00761e40: 32 4e 75 13 ba 01 00 00 00 87 10 85 c9 74 08 8b
00761e50: 01 8b 10 6a 01 ff d2 8b 45 00 8b 50 14 5f 5e 8b
00761e60: cd 5d 5b 81 c4 58 01 00 00 ff e2 cc cc cc cc cc

LINEAR DISASSEMBLY
007619e0 <.text+0x3609e0>:
  7619e0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7619e6:	81 ec 58 01 00 00                               	sub    esp,0x158
  7619ec:	85 c9                                           	test   ecx,ecx
  7619ee:	53                                              	push   ebx
  7619ef:	55                                              	push   ebp
  7619f0:	56                                              	push   esi
  7619f1:	57                                              	push   edi
  7619f2:	74 38                                           	je     0x761a2c
  7619f4:	8b 84 24 6c 01 00 00                            	mov    eax,DWORD PTR [esp+0x16c]
  7619fb:	50                                              	push   eax
  7619fc:	e8 af 9a fe ff                                  	call   0x74b4b0
  761a01:	8b e8                                           	mov    ebp,eax
  761a03:	85 ed                                           	test   ebp,ebp
  761a05:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  761a09:	74 21                                           	je     0x761a2c
  761a0b:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  761a0e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  761a11:	8b cd                                           	mov    ecx,ebp
  761a13:	ff d0                                           	call   eax
  761a15:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  761a1a:	85 c0                                           	test   eax,eax
  761a1c:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  761a20:	75 15                                           	jne    0x761a37
  761a22:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  761a25:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  761a28:	8b cd                                           	mov    ecx,ebp
  761a2a:	ff d0                                           	call   eax
  761a2c:	5f                                              	pop    edi
  761a2d:	5e                                              	pop    esi
  761a2e:	5d                                              	pop    ebp
  761a2f:	5b                                              	pop    ebx
  761a30:	81 c4 58 01 00 00                               	add    esp,0x158
  761a36:	c3                                              	ret
  761a37:	e8 b4 72 0c 00                                  	call   0x828cf0
  761a3c:	8b f0                                           	mov    esi,eax
  761a3e:	85 f6                                           	test   esi,esi
  761a40:	74 e0                                           	je     0x761a22
  761a42:	8b ce                                           	mov    ecx,esi
  761a44:	e8 b7 7b 0c 00                                  	call   0x829600
  761a49:	8b f8                                           	mov    edi,eax
  761a4b:	85 ff                                           	test   edi,edi
  761a4d:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  761a51:	74 cf                                           	je     0x761a22
  761a53:	8b ce                                           	mov    ecx,esi
  761a55:	e8 66 7b 0c 00                                  	call   0x8295c0
  761a5a:	8b f0                                           	mov    esi,eax
  761a5c:	85 f6                                           	test   esi,esi
  761a5e:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  761a62:	74 be                                           	je     0x761a22
  761a64:	33 c0                                           	xor    eax,eax
  761a66:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  761a6a:	8d 9d e0 00 00 00                               	lea    ebx,[ebp+0xe0]
  761a70:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  761a74:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  761a78:	e8 73 e4 f2 ff                                  	call   0x68fef0
  761a7d:	50                                              	push   eax
  761a7e:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  761a82:	e8 69 e4 f2 ff                                  	call   0x68fef0
  761a87:	50                                              	push   eax
  761a88:	8b cd                                           	mov    ecx,ebp
  761a8a:	e8 91 56 ff ff                                  	call   0x757120
  761a8f:	8b 8d f0 00 00 00                               	mov    ecx,DWORD PTR [ebp+0xf0]
  761a95:	88 44 24 13                                     	mov    BYTE PTR [esp+0x13],al
  761a99:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  761a9b:	3b c3                                           	cmp    eax,ebx
  761a9d:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  761aa1:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  761aa9:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  761aad:	0f 84 4e 02 00 00                               	je     0x761d01
  761ab3:	eb 04                                           	jmp    0x761ab9
  761ab5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  761ab9:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  761abc:	85 f6                                           	test   esi,esi
  761abe:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  761ac2:	74 0c                                           	je     0x761ad0
  761ac4:	8d 56 04                                        	lea    edx,[esi+0x4]
  761ac7:	b8 01 00 00 00                                  	mov    eax,0x1
  761acc:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  761ad0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761ad2:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761ad5:	8b ce                                           	mov    ecx,esi
  761ad7:	ff d0                                           	call   eax
  761ad9:	8b e8                                           	mov    ebp,eax
  761adb:	85 ed                                           	test   ebp,ebp
  761add:	74 0c                                           	je     0x761aeb
  761adf:	8d 4d 04                                        	lea    ecx,[ebp+0x4]
  761ae2:	ba 01 00 00 00                                  	mov    edx,0x1
  761ae7:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761aeb:	8a 54 24 13                                     	mov    dl,BYTE PTR [esp+0x13]
  761aef:	84 d2                                           	test   dl,dl
  761af1:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  761af5:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  761af9:	74 0c                                           	je     0x761b07
  761afb:	3b f0                                           	cmp    esi,eax
  761afd:	74 04                                           	je     0x761b03
  761aff:	3b f7                                           	cmp    esi,edi
  761b01:	75 04                                           	jne    0x761b07
  761b03:	b1 01                                           	mov    cl,0x1
  761b05:	eb 02                                           	jmp    0x761b09
  761b07:	32 c9                                           	xor    cl,cl
  761b09:	84 d2                                           	test   dl,dl
  761b0b:	74 10                                           	je     0x761b1d
  761b0d:	85 ed                                           	test   ebp,ebp
  761b0f:	74 0c                                           	je     0x761b1d
  761b11:	3b e8                                           	cmp    ebp,eax
  761b13:	74 04                                           	je     0x761b19
  761b15:	3b ef                                           	cmp    ebp,edi
  761b17:	75 04                                           	jne    0x761b1d
  761b19:	b0 01                                           	mov    al,0x1
  761b1b:	eb 02                                           	jmp    0x761b1f
  761b1d:	32 c0                                           	xor    al,al
  761b1f:	85 ed                                           	test   ebp,ebp
  761b21:	0f 84 41 01 00 00                               	je     0x761c68
  761b27:	84 d2                                           	test   dl,dl
  761b29:	74 08                                           	je     0x761b33
  761b2b:	32 c1                                           	xor    al,cl
  761b2d:	0f 85 35 01 00 00                               	jne    0x761c68
  761b33:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761b35:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b38:	8b ce                                           	mov    ecx,esi
  761b3a:	ff d2                                           	call   edx
  761b3c:	81 38 67 0b 60 c6                               	cmp    DWORD PTR [eax],0xc6600b67
  761b42:	74 48                                           	je     0x761b8c
  761b44:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761b46:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b49:	8b ce                                           	mov    ecx,esi
  761b4b:	ff d2                                           	call   edx
  761b4d:	81 38 4b f7 69 5e                               	cmp    DWORD PTR [eax],0x5e69f74b
  761b53:	74 37                                           	je     0x761b8c
  761b55:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761b57:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b5a:	8b ce                                           	mov    ecx,esi
  761b5c:	ff d2                                           	call   edx
  761b5e:	81 38 c5 af 5c e1                               	cmp    DWORD PTR [eax],0xe15cafc5
  761b64:	74 26                                           	je     0x761b8c
  761b66:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761b68:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b6b:	8b ce                                           	mov    ecx,esi
  761b6d:	ff d2                                           	call   edx
  761b6f:	81 38 0a 95 43 8d                               	cmp    DWORD PTR [eax],0x8d43950a
  761b75:	74 15                                           	je     0x761b8c
  761b77:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761b79:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b7c:	8b ce                                           	mov    ecx,esi
  761b7e:	ff d2                                           	call   edx
  761b80:	81 38 cc b7 00 9a                               	cmp    DWORD PTR [eax],0x9a00b7cc
  761b86:	0f 85 d8 00 00 00                               	jne    0x761c64
  761b8c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761b8e:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b91:	8b ce                                           	mov    ecx,esi
  761b93:	ff d2                                           	call   edx
  761b95:	8b f8                                           	mov    edi,eax
  761b97:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  761b9a:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  761b9d:	8b cd                                           	mov    ecx,ebp
  761b9f:	ff d2                                           	call   edx
  761ba1:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  761ba3:	3b 08                                           	cmp    ecx,DWORD PTR [eax]
  761ba5:	0f 85 b9 00 00 00                               	jne    0x761c64
  761bab:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  761bb0:	74 23                                           	je     0x761bd5
  761bb2:	3b 6c 24 18                                     	cmp    ebp,DWORD PTR [esp+0x18]
  761bb6:	75 0e                                           	jne    0x761bc6
  761bb8:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  761bbc:	52                                              	push   edx
  761bbd:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  761bc1:	e8 fa 37 11 00                                  	call   0x8753c0
  761bc6:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  761bca:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
  761bce:	7d 05                                           	jge    0x761bd5
  761bd0:	83 6c 24 1c 01                                  	sub    DWORD PTR [esp+0x1c],0x1
  761bd5:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  761bd7:	8b 57 7c                                        	mov    edx,DWORD PTR [edi+0x7c]
  761bda:	6a 01                                           	push   0x1
  761bdc:	8b ce                                           	mov    ecx,esi
  761bde:	ff d2                                           	call   edx
  761be0:	50                                              	push   eax
  761be1:	8b 87 f8 00 00 00                               	mov    eax,DWORD PTR [edi+0xf8]
  761be7:	8b ce                                           	mov    ecx,esi
  761be9:	ff d0                                           	call   eax
  761beb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761bed:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761bf0:	8b ce                                           	mov    ecx,esi
  761bf2:	ff d0                                           	call   eax
  761bf4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761bf6:	8b c8                                           	mov    ecx,eax
  761bf8:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761bfb:	ff d0                                           	call   eax
  761bfd:	85 c0                                           	test   eax,eax
  761bff:	74 1f                                           	je     0x761c20
  761c01:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761c03:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761c06:	8b ce                                           	mov    ecx,esi
  761c08:	ff d0                                           	call   eax
  761c0a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761c0c:	8b c8                                           	mov    ecx,eax
  761c0e:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761c11:	ff d0                                           	call   eax
  761c13:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761c15:	8b c8                                           	mov    ecx,eax
  761c17:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
  761c1d:	56                                              	push   esi
  761c1e:	ff d0                                           	call   eax
  761c20:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761c22:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761c25:	8b ce                                           	mov    ecx,esi
  761c27:	ff d0                                           	call   eax
  761c29:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761c2b:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  761c2d:	8b c8                                           	mov    ecx,eax
  761c2f:	8b 42 7c                                        	mov    eax,DWORD PTR [edx+0x7c]
  761c32:	83 c7 78                                        	add    edi,0x78
  761c35:	ff d0                                           	call   eax
  761c37:	8b 17                                           	mov    edx,DWORD PTR [edi]
  761c39:	50                                              	push   eax
  761c3a:	8b ce                                           	mov    ecx,esi
  761c3c:	ff d2                                           	call   edx
  761c3e:	51                                              	push   ecx
  761c3f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  761c43:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  761c45:	8b c4                                           	mov    eax,esp
  761c47:	89 10                                           	mov    DWORD PTR [eax],edx
  761c49:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  761c4d:	50                                              	push   eax
  761c4e:	8b cb                                           	mov    ecx,ebx
  761c50:	e8 eb 77 ff ff                                  	call   0x759440
  761c55:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  761c57:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
  761c5a:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  761c5e:	8a 54 24 13                                     	mov    dl,BYTE PTR [esp+0x13]
  761c62:	eb 0e                                           	jmp    0x761c72
  761c64:	8a 54 24 13                                     	mov    dl,BYTE PTR [esp+0x13]
  761c68:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  761c6c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  761c6e:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  761c72:	84 d2                                           	test   dl,dl
  761c74:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
  761c78:	74 20                                           	je     0x761c9a
  761c7a:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  761c7e:	3b 87 f0 00 00 00                               	cmp    eax,DWORD PTR [edi+0xf0]
  761c84:	74 0d                                           	je     0x761c93
  761c86:	8b cf                                           	mov    ecx,edi
  761c88:	89 87 f0 00 00 00                               	mov    DWORD PTR [edi+0xf0],eax
  761c8e:	e8 ed 56 ff ff                                  	call   0x757380
  761c93:	8b cf                                           	mov    ecx,edi
  761c95:	e8 e6 56 ff ff                                  	call   0x757380
  761c9a:	8b cf                                           	mov    ecx,edi
  761c9c:	e8 cf 4c ff ff                                  	call   0x756970
  761ca1:	85 ed                                           	test   ebp,ebp
  761ca3:	74 21                                           	je     0x761cc6
  761ca5:	8d 45 04                                        	lea    eax,[ebp+0x4]
  761ca8:	8b d0                                           	mov    edx,eax
  761caa:	83 c9 ff                                        	or     ecx,0xffffffff
  761cad:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  761cb1:	49                                              	dec    ecx
  761cb2:	75 12                                           	jne    0x761cc6
  761cb4:	ba 01 00 00 00                                  	mov    edx,0x1
  761cb9:	87 10                                           	xchg   DWORD PTR [eax],edx
  761cbb:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  761cbe:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761cc0:	6a 01                                           	push   0x1
  761cc2:	8b cd                                           	mov    ecx,ebp
  761cc4:	ff d2                                           	call   edx
  761cc6:	8d 46 04                                        	lea    eax,[esi+0x4]
  761cc9:	8b c8                                           	mov    ecx,eax
  761ccb:	83 ca ff                                        	or     edx,0xffffffff
  761cce:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761cd2:	4a                                              	dec    edx
  761cd3:	75 11                                           	jne    0x761ce6
  761cd5:	b9 01 00 00 00                                  	mov    ecx,0x1
  761cda:	87 08                                           	xchg   DWORD PTR [eax],ecx
  761cdc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761cde:	8b 02                                           	mov    eax,DWORD PTR [edx]
  761ce0:	6a 01                                           	push   0x1
  761ce2:	8b ce                                           	mov    ecx,esi
  761ce4:	ff d0                                           	call   eax
  761ce6:	83 44 24 28 01                                  	add    DWORD PTR [esp+0x28],0x1
  761ceb:	39 5c 24 14                                     	cmp    DWORD PTR [esp+0x14],ebx
  761cef:	0f 85 c0 fd ff ff                               	jne    0x761ab5
  761cf5:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
  761cf9:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
  761cfd:	8b 6c 24 2c                                     	mov    ebp,DWORD PTR [esp+0x2c]
  761d01:	6a 00                                           	push   0x0
  761d03:	6a 00                                           	push   0x0
  761d05:	68 04 08 00 00                                  	push   0x804
  761d0a:	6a 00                                           	push   0x0
  761d0c:	8d 8c 24 f8 00 00 00                            	lea    ecx,[esp+0xf8]
  761d13:	e8 98 aa 0b 00                                  	call   0x81c7b0
  761d18:	8b 55 3c                                        	mov    edx,DWORD PTR [ebp+0x3c]
  761d1b:	8b 45 40                                        	mov    eax,DWORD PTR [ebp+0x40]
  761d1e:	89 54 24 40                                     	mov    DWORD PTR [esp+0x40],edx
  761d22:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  761d26:	52                                              	push   edx
  761d27:	8d 8c 24 ec 00 00 00                            	lea    ecx,[esp+0xec]
  761d2e:	89 4c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ecx
  761d32:	8b 4d 44                                        	mov    ecx,DWORD PTR [ebp+0x44]
  761d35:	57                                              	push   edi
  761d36:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
  761d3a:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  761d3e:	56                                              	push   esi
  761d3f:	89 4c 24 58                                     	mov    DWORD PTR [esp+0x58],ecx
  761d43:	50                                              	push   eax
  761d44:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  761d4b:	c7 44 24 70 00 00 00 00                         	mov    DWORD PTR [esp+0x70],0x0
  761d53:	c6 44 24 74 01                                  	mov    BYTE PTR [esp+0x74],0x1
  761d58:	c6 44 24 75 00                                  	mov    BYTE PTR [esp+0x75],0x0
  761d5d:	e8 7e 25 ee ff                                  	call   0x6442e0
  761d62:	6a 00                                           	push   0x0
  761d64:	53                                              	push   ebx
  761d65:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  761d69:	e8 e2 4d ee ff                                  	call   0x646b50
  761d6e:	53                                              	push   ebx
  761d6f:	8b cb                                           	mov    ecx,ebx
  761d71:	e8 9a e0 ff ff                                  	call   0x75fe10
  761d76:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  761d78:	3b fb                                           	cmp    edi,ebx
  761d7a:	74 48                                           	je     0x761dc4
  761d7c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  761d80:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  761d83:	85 f6                                           	test   esi,esi
  761d85:	74 0c                                           	je     0x761d93
  761d87:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  761d8a:	ba 01 00 00 00                                  	mov    edx,0x1
  761d8f:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761d93:	8b 06                                           	mov    eax,DWORD PTR [esi]
  761d95:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  761d98:	6a 00                                           	push   0x0
  761d9a:	8b ce                                           	mov    ecx,esi
  761d9c:	ff d2                                           	call   edx
  761d9e:	8d 46 04                                        	lea    eax,[esi+0x4]
  761da1:	8b c8                                           	mov    ecx,eax
  761da3:	83 ca ff                                        	or     edx,0xffffffff
  761da6:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  761daa:	4a                                              	dec    edx
  761dab:	75 11                                           	jne    0x761dbe
  761dad:	b9 01 00 00 00                                  	mov    ecx,0x1
  761db2:	87 08                                           	xchg   DWORD PTR [eax],ecx
  761db4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  761db6:	8b 02                                           	mov    eax,DWORD PTR [edx]
  761db8:	6a 01                                           	push   0x1
  761dba:	8b ce                                           	mov    ecx,esi
  761dbc:	ff d0                                           	call   eax
  761dbe:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  761dc0:	3b fb                                           	cmp    edi,ebx
  761dc2:	75 bc                                           	jne    0x761d80
  761dc4:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  761dc8:	e8 33 20 ee ff                                  	call   0x643e00
  761dcd:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  761dd1:	85 c9                                           	test   ecx,ecx
  761dd3:	74 22                                           	je     0x761df7
  761dd5:	8d 41 04                                        	lea    eax,[ecx+0x4]
  761dd8:	8b d0                                           	mov    edx,eax
  761dda:	83 ce ff                                        	or     esi,0xffffffff
  761ddd:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  761de1:	4e                                              	dec    esi
  761de2:	75 13                                           	jne    0x761df7
  761de4:	ba 01 00 00 00                                  	mov    edx,0x1
  761de9:	87 10                                           	xchg   DWORD PTR [eax],edx
  761deb:	85 c9                                           	test   ecx,ecx
  761ded:	74 08                                           	je     0x761df7
  761def:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  761df1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761df3:	6a 01                                           	push   0x1
  761df5:	ff d2                                           	call   edx
  761df7:	8d 8c 24 e8 00 00 00                            	lea    ecx,[esp+0xe8]
  761dfe:	e8 2d aa 0b 00                                  	call   0x81c830
  761e03:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  761e07:	85 c9                                           	test   ecx,ecx
  761e09:	74 22                                           	je     0x761e2d
  761e0b:	8d 41 04                                        	lea    eax,[ecx+0x4]
  761e0e:	8b d0                                           	mov    edx,eax
  761e10:	83 ce ff                                        	or     esi,0xffffffff
  761e13:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  761e17:	4e                                              	dec    esi
  761e18:	75 13                                           	jne    0x761e2d
  761e1a:	ba 01 00 00 00                                  	mov    edx,0x1
  761e1f:	87 10                                           	xchg   DWORD PTR [eax],edx
  761e21:	85 c9                                           	test   ecx,ecx
  761e23:	74 08                                           	je     0x761e2d
  761e25:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  761e27:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761e29:	6a 01                                           	push   0x1
  761e2b:	ff d2                                           	call   edx
  761e2d:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  761e31:	85 c9                                           	test   ecx,ecx
  761e33:	74 22                                           	je     0x761e57
  761e35:	8d 41 04                                        	lea    eax,[ecx+0x4]
  761e38:	8b d0                                           	mov    edx,eax
  761e3a:	83 ce ff                                        	or     esi,0xffffffff
  761e3d:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  761e41:	4e                                              	dec    esi
  761e42:	75 13                                           	jne    0x761e57
  761e44:	ba 01 00 00 00                                  	mov    edx,0x1
  761e49:	87 10                                           	xchg   DWORD PTR [eax],edx
  761e4b:	85 c9                                           	test   ecx,ecx
  761e4d:	74 08                                           	je     0x761e57
  761e4f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  761e51:	8b 10                                           	mov    edx,DWORD PTR [eax]
  761e53:	6a 01                                           	push   0x1
  761e55:	ff d2                                           	call   edx
  761e57:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  761e5a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  761e5d:	5f                                              	pop    edi
  761e5e:	5e                                              	pop    esi
  761e5f:	8b cd                                           	mov    ecx,ebp
  761e61:	5d                                              	pop    ebp
  761e62:	5b                                              	pop    ebx
  761e63:	81 c4 58 01 00 00                               	add    esp,0x158
  761e69:	ff e2                                           	jmp    edx
  761e6b:	cc                                              	int3
  761e6c:	cc                                              	int3
  761e6d:	cc                                              	int3
  761e6e:	cc                                              	int3
  761e6f:	cc                                              	int3
