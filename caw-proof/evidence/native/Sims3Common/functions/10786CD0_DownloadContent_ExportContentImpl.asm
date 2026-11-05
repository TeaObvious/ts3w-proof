# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10786cd0 (DownloadContent_ExportContentImpl)
Paired Ghidra pseudocode: 10786CD0_DownloadContent_ExportContentImpl.c
Window: [0x10786cd0, 0x10786f60) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x10786f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10786cd0: 81 ec ac 00 00 00 53 8b 9c 24 c0 00 00 00 85 db
10786ce0: 55 0f 84 6a 02 00 00 83 bc 24 c8 00 00 00 00 0f
10786cf0: 84 5c 02 00 00 83 bc 24 cc 00 00 00 00 0f 84 4e
10786d00: 02 00 00 8b ac 24 d0 00 00 00 85 ed 0f 84 3f 02
10786d10: 00 00 56 57 e8 07 44 dd ff 8b f0 e8 a0 d7 fe ff
10786d20: 8b 8c 24 c0 00 00 00 51 8b c8 e8 41 13 ff ff 8b
10786d30: f8 85 ff 0f 84 29 01 00 00 8b 16 8b 42 58 53 8b
10786d40: ce ff d0 8d 4c 24 10 51 8d 4c 24 18 8b d8 c7 44
10786d50: 24 14 b8 90 b5 10 e8 b5 0a fa ff 8b 84 24 d0 00
10786d60: 00 00 8d 54 24 14 52 50 56 e8 a2 d2 ff ff 83 c4
10786d70: 0c 84 c0 0f 84 d8 00 00 00 8d 4c 24 10 51 8d 4c
10786d80: 24 28 c7 44 24 14 8c 90 b5 10 e8 81 0a fa ff 8b
10786d90: 84 24 d4 00 00 00 8d 54 24 24 52 50 56 e8 3e fc
10786da0: ff ff 83 c4 0c 84 c0 0f 84 93 00 00 00 68 60 90
10786db0: b5 10 6a 00 6a 00 8d 4c 24 40 e8 d1 d2 18 00 d9
10786dc0: e8 83 44 24 40 01 51 d9 1c 24 6a 01 8d 4c 24 3c
10786dd0: e8 9b cc 18 00 8d 4c 24 34 51 55 56 e8 9f d2 ff
10786de0: ff 83 c4 0c 84 c0 74 4f 68 58 8d b5 10 6a 00 6a
10786df0: 00 8d 4c 24 6c e8 96 d2 18 00 d9 e8 83 44 24 6c
10786e00: 01 51 d9 1c 24 6a 01 8d 4c 24 68 e8 60 cc 18 00
10786e10: 8b 84 24 dc 00 00 00 85 c0 74 54 8d 54 24 60 52
10786e20: 50 56 e8 59 d2 ff ff 83 c4 0c 84 c0 75 41 8d 4c
10786e30: 24 60 e8 99 73 89 ff 8d 4c 24 34 e8 90 73 89 ff
10786e40: 8b 44 24 24 85 c0 74 09 50 e8 42 20 19 00 83 c4
10786e50: 04 8b 44 24 14 85 c0 74 09 50 e8 31 20 19 00 83
10786e60: c4 04 5f 5e 5d 32 c0 5b 81 c4 ac 00 00 00 c3 6a
10786e70: 00 6a 00 8d 4c 24 3c e8 64 d0 18 00 6a 01 8d 44
10786e80: 24 38 50 8d 8c 24 ac 00 00 00 e8 11 54 e4 ff 6a
10786e90: 00 6a 00 8d 4c 24 68 e8 44 d0 18 00 6a 01 8d 4c
10786ea0: 24 64 51 8d 8c 24 94 00 00 00 e8 f1 53 e4 ff 8b
10786eb0: 84 24 e4 00 00 00 8b 8c 24 e0 00 00 00 8b 17 8b
10786ec0: 52 10 50 51 8d 84 24 94 00 00 00 50 8d 8c 24 b0
10786ed0: 00 00 00 51 8d 44 24 34 50 8d 4c 24 28 51 53 8b
10786ee0: cf ff d2 6a 00 6a 01 6a 00 6a 00 6a 00 8d 4c 24
10786ef0: 48 8a d8 e8 48 cd 18 00 8d 8c 24 8c 00 00 00 e8
10786f00: fc 39 e4 ff 8d 8c 24 a4 00 00 00 e8 f0 39 e4 ff
10786f10: 8d 4c 24 60 e8 b7 72 89 ff 8d 4c 24 34 e8 ae 72
10786f20: 89 ff 8b 44 24 24 85 c0 74 09 50 e8 60 1f 19 00
10786f30: 83 c4 04 8b 44 24 14 85 c0 74 09 50 e8 4f 1f 19
10786f40: 00 83 c4 04 5f 5e 5d 8a c3 5b 81 c4 ac 00 00 00
10786f50: c3 5d 32 c0 5b 81 c4 ac 00 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10786cd0 <.text+0x785cd0>:
10786cd0:	81 ec ac 00 00 00                               	sub    esp,0xac
10786cd6:	53                                              	push   ebx
10786cd7:	8b 9c 24 c0 00 00 00                            	mov    ebx,DWORD PTR [esp+0xc0]
10786cde:	85 db                                           	test   ebx,ebx
10786ce0:	55                                              	push   ebp
10786ce1:	0f 84 6a 02 00 00                               	je     0x10786f51
10786ce7:	83 bc 24 c8 00 00 00 00                         	cmp    DWORD PTR [esp+0xc8],0x0
10786cef:	0f 84 5c 02 00 00                               	je     0x10786f51
10786cf5:	83 bc 24 cc 00 00 00 00                         	cmp    DWORD PTR [esp+0xcc],0x0
10786cfd:	0f 84 4e 02 00 00                               	je     0x10786f51
10786d03:	8b ac 24 d0 00 00 00                            	mov    ebp,DWORD PTR [esp+0xd0]
10786d0a:	85 ed                                           	test   ebp,ebp
10786d0c:	0f 84 3f 02 00 00                               	je     0x10786f51
10786d12:	56                                              	push   esi
10786d13:	57                                              	push   edi
10786d14:	e8 07 44 dd ff                                  	call   0x1055b120
10786d19:	8b f0                                           	mov    esi,eax
10786d1b:	e8 a0 d7 fe ff                                  	call   0x107744c0
10786d20:	8b 8c 24 c0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xc0]
10786d27:	51                                              	push   ecx
10786d28:	8b c8                                           	mov    ecx,eax
10786d2a:	e8 41 13 ff ff                                  	call   0x10778070
10786d2f:	8b f8                                           	mov    edi,eax
10786d31:	85 ff                                           	test   edi,edi
10786d33:	0f 84 29 01 00 00                               	je     0x10786e62
10786d39:	8b 16                                           	mov    edx,DWORD PTR [esi]
10786d3b:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
10786d3e:	53                                              	push   ebx
10786d3f:	8b ce                                           	mov    ecx,esi
10786d41:	ff d0                                           	call   eax
10786d43:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10786d47:	51                                              	push   ecx
10786d48:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10786d4c:	8b d8                                           	mov    ebx,eax
10786d4e:	c7 44 24 14 b8 90 b5 10                         	mov    DWORD PTR [esp+0x14],0x10b590b8
10786d56:	e8 b5 0a fa ff                                  	call   0x10727810
10786d5b:	8b 84 24 d0 00 00 00                            	mov    eax,DWORD PTR [esp+0xd0]
10786d62:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10786d66:	52                                              	push   edx
10786d67:	50                                              	push   eax
10786d68:	56                                              	push   esi
10786d69:	e8 a2 d2 ff ff                                  	call   0x10784010
10786d6e:	83 c4 0c                                        	add    esp,0xc
10786d71:	84 c0                                           	test   al,al
10786d73:	0f 84 d8 00 00 00                               	je     0x10786e51
10786d79:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10786d7d:	51                                              	push   ecx
10786d7e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10786d82:	c7 44 24 14 8c 90 b5 10                         	mov    DWORD PTR [esp+0x14],0x10b5908c
10786d8a:	e8 81 0a fa ff                                  	call   0x10727810
10786d8f:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
10786d96:	8d 54 24 24                                     	lea    edx,[esp+0x24]
10786d9a:	52                                              	push   edx
10786d9b:	50                                              	push   eax
10786d9c:	56                                              	push   esi
10786d9d:	e8 3e fc ff ff                                  	call   0x107869e0
10786da2:	83 c4 0c                                        	add    esp,0xc
10786da5:	84 c0                                           	test   al,al
10786da7:	0f 84 93 00 00 00                               	je     0x10786e40
10786dad:	68 60 90 b5 10                                  	push   0x10b59060
10786db2:	6a 00                                           	push   0x0
10786db4:	6a 00                                           	push   0x0
10786db6:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10786dba:	e8 d1 d2 18 00                                  	call   0x10914090
10786dbf:	d9 e8                                           	fld1
10786dc1:	83 44 24 40 01                                  	add    DWORD PTR [esp+0x40],0x1
10786dc6:	51                                              	push   ecx
10786dc7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10786dca:	6a 01                                           	push   0x1
10786dcc:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10786dd0:	e8 9b cc 18 00                                  	call   0x10913a70
10786dd5:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10786dd9:	51                                              	push   ecx
10786dda:	55                                              	push   ebp
10786ddb:	56                                              	push   esi
10786ddc:	e8 9f d2 ff ff                                  	call   0x10784080
10786de1:	83 c4 0c                                        	add    esp,0xc
10786de4:	84 c0                                           	test   al,al
10786de6:	74 4f                                           	je     0x10786e37
10786de8:	68 58 8d b5 10                                  	push   0x10b58d58
10786ded:	6a 00                                           	push   0x0
10786def:	6a 00                                           	push   0x0
10786df1:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
10786df5:	e8 96 d2 18 00                                  	call   0x10914090
10786dfa:	d9 e8                                           	fld1
10786dfc:	83 44 24 6c 01                                  	add    DWORD PTR [esp+0x6c],0x1
10786e01:	51                                              	push   ecx
10786e02:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10786e05:	6a 01                                           	push   0x1
10786e07:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10786e0b:	e8 60 cc 18 00                                  	call   0x10913a70
10786e10:	8b 84 24 dc 00 00 00                            	mov    eax,DWORD PTR [esp+0xdc]
10786e17:	85 c0                                           	test   eax,eax
10786e19:	74 54                                           	je     0x10786e6f
10786e1b:	8d 54 24 60                                     	lea    edx,[esp+0x60]
10786e1f:	52                                              	push   edx
10786e20:	50                                              	push   eax
10786e21:	56                                              	push   esi
10786e22:	e8 59 d2 ff ff                                  	call   0x10784080
10786e27:	83 c4 0c                                        	add    esp,0xc
10786e2a:	84 c0                                           	test   al,al
10786e2c:	75 41                                           	jne    0x10786e6f
10786e2e:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10786e32:	e8 99 73 89 ff                                  	call   0x1001e1d0
10786e37:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10786e3b:	e8 90 73 89 ff                                  	call   0x1001e1d0
10786e40:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10786e44:	85 c0                                           	test   eax,eax
10786e46:	74 09                                           	je     0x10786e51
10786e48:	50                                              	push   eax
10786e49:	e8 42 20 19 00                                  	call   0x10918e90
10786e4e:	83 c4 04                                        	add    esp,0x4
10786e51:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10786e55:	85 c0                                           	test   eax,eax
10786e57:	74 09                                           	je     0x10786e62
10786e59:	50                                              	push   eax
10786e5a:	e8 31 20 19 00                                  	call   0x10918e90
10786e5f:	83 c4 04                                        	add    esp,0x4
10786e62:	5f                                              	pop    edi
10786e63:	5e                                              	pop    esi
10786e64:	5d                                              	pop    ebp
10786e65:	32 c0                                           	xor    al,al
10786e67:	5b                                              	pop    ebx
10786e68:	81 c4 ac 00 00 00                               	add    esp,0xac
10786e6e:	c3                                              	ret
10786e6f:	6a 00                                           	push   0x0
10786e71:	6a 00                                           	push   0x0
10786e73:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10786e77:	e8 64 d0 18 00                                  	call   0x10913ee0
10786e7c:	6a 01                                           	push   0x1
10786e7e:	8d 44 24 38                                     	lea    eax,[esp+0x38]
10786e82:	50                                              	push   eax
10786e83:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
10786e8a:	e8 11 54 e4 ff                                  	call   0x105cc2a0
10786e8f:	6a 00                                           	push   0x0
10786e91:	6a 00                                           	push   0x0
10786e93:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10786e97:	e8 44 d0 18 00                                  	call   0x10913ee0
10786e9c:	6a 01                                           	push   0x1
10786e9e:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10786ea2:	51                                              	push   ecx
10786ea3:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
10786eaa:	e8 f1 53 e4 ff                                  	call   0x105cc2a0
10786eaf:	8b 84 24 e4 00 00 00                            	mov    eax,DWORD PTR [esp+0xe4]
10786eb6:	8b 8c 24 e0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xe0]
10786ebd:	8b 17                                           	mov    edx,DWORD PTR [edi]
10786ebf:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
10786ec2:	50                                              	push   eax
10786ec3:	51                                              	push   ecx
10786ec4:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
10786ecb:	50                                              	push   eax
10786ecc:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
10786ed3:	51                                              	push   ecx
10786ed4:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10786ed8:	50                                              	push   eax
10786ed9:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10786edd:	51                                              	push   ecx
10786ede:	53                                              	push   ebx
10786edf:	8b cf                                           	mov    ecx,edi
10786ee1:	ff d2                                           	call   edx
10786ee3:	6a 00                                           	push   0x0
10786ee5:	6a 01                                           	push   0x1
10786ee7:	6a 00                                           	push   0x0
10786ee9:	6a 00                                           	push   0x0
10786eeb:	6a 00                                           	push   0x0
10786eed:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10786ef1:	8a d8                                           	mov    bl,al
10786ef3:	e8 48 cd 18 00                                  	call   0x10913c40
10786ef8:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
10786eff:	e8 fc 39 e4 ff                                  	call   0x105ca900
10786f04:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
10786f0b:	e8 f0 39 e4 ff                                  	call   0x105ca900
10786f10:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10786f14:	e8 b7 72 89 ff                                  	call   0x1001e1d0
10786f19:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10786f1d:	e8 ae 72 89 ff                                  	call   0x1001e1d0
10786f22:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10786f26:	85 c0                                           	test   eax,eax
10786f28:	74 09                                           	je     0x10786f33
10786f2a:	50                                              	push   eax
10786f2b:	e8 60 1f 19 00                                  	call   0x10918e90
10786f30:	83 c4 04                                        	add    esp,0x4
10786f33:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10786f37:	85 c0                                           	test   eax,eax
10786f39:	74 09                                           	je     0x10786f44
10786f3b:	50                                              	push   eax
10786f3c:	e8 4f 1f 19 00                                  	call   0x10918e90
10786f41:	83 c4 04                                        	add    esp,0x4
10786f44:	5f                                              	pop    edi
10786f45:	5e                                              	pop    esi
10786f46:	5d                                              	pop    ebp
10786f47:	8a c3                                           	mov    al,bl
10786f49:	5b                                              	pop    ebx
10786f4a:	81 c4 ac 00 00 00                               	add    esp,0xac
10786f50:	c3                                              	ret
10786f51:	5d                                              	pop    ebp
10786f52:	32 c0                                           	xor    al,al
10786f54:	5b                                              	pop    ebx
10786f55:	81 c4 ac 00 00 00                               	add    esp,0xac
10786f5b:	c3                                              	ret
10786f5c:	cc                                              	int3
10786f5d:	cc                                              	int3
10786f5e:	cc                                              	int3
10786f5f:	cc                                              	int3
