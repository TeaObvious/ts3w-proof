# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784d60 (DownloadContent_ImportLotContentsImpl)
Paired Ghidra pseudocode: 10784D60_DownloadContent_ImportLotContentsImpl.c
Window: [0x10784d60, 0x10785000) (672 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784d60: 83 ec 50 55 56 e8 b6 63 dd ff 8b 35 d8 e9 c6 10
10784d70: 85 f6 8b e8 75 08 5e 32 c0 5d 83 c4 50 c3 53 57
10784d80: 8d 44 24 14 50 8d 4c 24 1c c7 44 24 18 c0 8c b5
10784d90: 10 e8 7a 2a fa ff 8d 4c 24 48 e8 d1 5a e4 ff 8b
10784da0: 44 24 78 8b 7c 24 68 8b 5c 24 64 8d 4c 24 18 51
10784db0: 8b 4c 24 78 8d 54 24 4c 52 8b 54 24 78 50 8b 44
10784dc0: 24 78 51 52 50 57 53 8b ce e8 f2 5a 91 ff 84 c0
10784dd0: 0f 84 c1 01 00 00 6a 00 8d 4c 24 3c 51 8d 4c 24
10784de0: 50 89 5c 24 40 89 7c 24 44 c7 44 24 48 54 4b ec
10784df0: 94 c7 44 24 4c 00 00 00 00 e8 82 65 e4 ff 84 c0
10784e00: 0f 84 91 01 00 00 8b 54 24 58 8b 4c 24 50 52 8d
10784e10: 44 24 14 50 51 e8 f6 d7 18 00 83 c4 0c 8d 4c 24
10784e20: 48 50 e8 39 5b e4 ff 8d 4c 24 48 e8 00 65 e4 ff
10784e30: 8b 54 24 10 6a 00 52 8d 4c 24 50 8b f0 e8 0e 65
10784e40: e4 ff 8d 44 24 14 50 8d 4c 24 2c c7 44 24 18 c8
10784e50: 4a ab 10 e8 b8 29 fa ff 8d 4c 24 48 51 8d 4c 24
10784e60: 2c e8 ea 79 e4 ff 8b 54 24 48 8a d8 52 8d 44 24
10784e70: 2c 50 80 e3 01 e8 86 4b 00 00 83 c4 08 84 c0 75
10784e80: 39 8b 44 24 28 85 c0 74 09 50 e8 01 40 19 00 83
10784e90: c4 04 8d 4c 24 48 e8 65 5a e4 ff 8b 44 24 18 85
10784ea0: c0 0f 84 0a 01 00 00 50 e8 e3 3f 19 00 83 c4 04
10784eb0: 5f 5b 5e 32 c0 5d 83 c4 50 c3 6a 00 56 8d 4c 24
10784ec0: 50 e8 8a 64 e4 ff 8b 44 24 10 8b 8c 24 84 00 00
10784ed0: 00 8b 54 24 50 51 2b c6 50 52 55 e8 e0 f1 ff ff
10784ee0: 83 c4 10 84 c0 75 39 8b 44 24 28 85 c0 74 09 50
10784ef0: e8 9b 3f 19 00 83 c4 04 8d 4c 24 48 e8 ff 59 e4
10784f00: ff 8b 44 24 18 85 c0 0f 84 a4 00 00 00 50 e8 7d
10784f10: 3f 19 00 83 c4 04 5f 5b 5e 32 c0 5d 83 c4 50 c3
10784f20: 8b 44 24 7c 50 8d 4c 24 2c 51 55 e8 e0 f8 ff ff
10784f30: 83 c4 0c 84 c0 75 35 8b 44 24 28 85 c0 74 09 50
10784f40: e8 4b 3f 19 00 83 c4 04 8d 4c 24 48 e8 af 59 e4
10784f50: ff 8b 44 24 18 85 c0 74 58 50 e8 31 3f 19 00 83
10784f60: c4 04 5f 5b 5e 32 c0 5d 83 c4 50 c3 8b 94 24 80
10784f70: 00 00 00 52 8d 44 24 1c 50 55 e8 71 f9 ff ff 83
10784f80: c4 0c 84 c0 75 35 8b 44 24 28 85 c0 74 09 50 e8
10784f90: fc 3e 19 00 83 c4 04 8d 4c 24 48 e8 60 59 e4 ff
10784fa0: 8b 44 24 18 85 c0 74 09 50 e8 e2 3e 19 00 83 c4
10784fb0: 04 5f 5b 5e 32 c0 5d 83 c4 50 c3 8d 4c 24 48 e8
10784fc0: 1c 5a e4 ff 8b 44 24 28 85 c0 74 09 50 e8 be 3e
10784fd0: 19 00 83 c4 04 8d 4c 24 48 e8 22 59 e4 ff 8b 44
10784fe0: 24 18 85 c0 74 09 50 e8 a4 3e 19 00 83 c4 04 5f
10784ff0: 8a c3 5b 5e 5d 83 c4 50 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784d60 <.text+0x783d60>:
10784d60:	83 ec 50                                        	sub    esp,0x50
10784d63:	55                                              	push   ebp
10784d64:	56                                              	push   esi
10784d65:	e8 b6 63 dd ff                                  	call   0x1055b120
10784d6a:	8b 35 d8 e9 c6 10                               	mov    esi,DWORD PTR ds:0x10c6e9d8
10784d70:	85 f6                                           	test   esi,esi
10784d72:	8b e8                                           	mov    ebp,eax
10784d74:	75 08                                           	jne    0x10784d7e
10784d76:	5e                                              	pop    esi
10784d77:	32 c0                                           	xor    al,al
10784d79:	5d                                              	pop    ebp
10784d7a:	83 c4 50                                        	add    esp,0x50
10784d7d:	c3                                              	ret
10784d7e:	53                                              	push   ebx
10784d7f:	57                                              	push   edi
10784d80:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10784d84:	50                                              	push   eax
10784d85:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10784d89:	c7 44 24 18 c0 8c b5 10                         	mov    DWORD PTR [esp+0x18],0x10b58cc0
10784d91:	e8 7a 2a fa ff                                  	call   0x10727810
10784d96:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784d9a:	e8 d1 5a e4 ff                                  	call   0x105ca870
10784d9f:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
10784da3:	8b 7c 24 68                                     	mov    edi,DWORD PTR [esp+0x68]
10784da7:	8b 5c 24 64                                     	mov    ebx,DWORD PTR [esp+0x64]
10784dab:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10784daf:	51                                              	push   ecx
10784db0:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
10784db4:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10784db8:	52                                              	push   edx
10784db9:	8b 54 24 78                                     	mov    edx,DWORD PTR [esp+0x78]
10784dbd:	50                                              	push   eax
10784dbe:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
10784dc2:	51                                              	push   ecx
10784dc3:	52                                              	push   edx
10784dc4:	50                                              	push   eax
10784dc5:	57                                              	push   edi
10784dc6:	53                                              	push   ebx
10784dc7:	8b ce                                           	mov    ecx,esi
10784dc9:	e8 f2 5a 91 ff                                  	call   0x1009a8c0
10784dce:	84 c0                                           	test   al,al
10784dd0:	0f 84 c1 01 00 00                               	je     0x10784f97
10784dd6:	6a 00                                           	push   0x0
10784dd8:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10784ddc:	51                                              	push   ecx
10784ddd:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10784de1:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
10784de5:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
10784de9:	c7 44 24 48 54 4b ec 94                         	mov    DWORD PTR [esp+0x48],0x94ec4b54
10784df1:	c7 44 24 4c 00 00 00 00                         	mov    DWORD PTR [esp+0x4c],0x0
10784df9:	e8 82 65 e4 ff                                  	call   0x105cb380
10784dfe:	84 c0                                           	test   al,al
10784e00:	0f 84 91 01 00 00                               	je     0x10784f97
10784e06:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
10784e0a:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
10784e0e:	52                                              	push   edx
10784e0f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10784e13:	50                                              	push   eax
10784e14:	51                                              	push   ecx
10784e15:	e8 f6 d7 18 00                                  	call   0x10912610
10784e1a:	83 c4 0c                                        	add    esp,0xc
10784e1d:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784e21:	50                                              	push   eax
10784e22:	e8 39 5b e4 ff                                  	call   0x105ca960
10784e27:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784e2b:	e8 00 65 e4 ff                                  	call   0x105cb330
10784e30:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10784e34:	6a 00                                           	push   0x0
10784e36:	52                                              	push   edx
10784e37:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10784e3b:	8b f0                                           	mov    esi,eax
10784e3d:	e8 0e 65 e4 ff                                  	call   0x105cb350
10784e42:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10784e46:	50                                              	push   eax
10784e47:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10784e4b:	c7 44 24 18 c8 4a ab 10                         	mov    DWORD PTR [esp+0x18],0x10ab4ac8
10784e53:	e8 b8 29 fa ff                                  	call   0x10727810
10784e58:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784e5c:	51                                              	push   ecx
10784e5d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10784e61:	e8 ea 79 e4 ff                                  	call   0x105cc850
10784e66:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
10784e6a:	8a d8                                           	mov    bl,al
10784e6c:	52                                              	push   edx
10784e6d:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
10784e71:	50                                              	push   eax
10784e72:	80 e3 01                                        	and    bl,0x1
10784e75:	e8 86 4b 00 00                                  	call   0x10789a00
10784e7a:	83 c4 08                                        	add    esp,0x8
10784e7d:	84 c0                                           	test   al,al
10784e7f:	75 39                                           	jne    0x10784eba
10784e81:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10784e85:	85 c0                                           	test   eax,eax
10784e87:	74 09                                           	je     0x10784e92
10784e89:	50                                              	push   eax
10784e8a:	e8 01 40 19 00                                  	call   0x10918e90
10784e8f:	83 c4 04                                        	add    esp,0x4
10784e92:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784e96:	e8 65 5a e4 ff                                  	call   0x105ca900
10784e9b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10784e9f:	85 c0                                           	test   eax,eax
10784ea1:	0f 84 0a 01 00 00                               	je     0x10784fb1
10784ea7:	50                                              	push   eax
10784ea8:	e8 e3 3f 19 00                                  	call   0x10918e90
10784ead:	83 c4 04                                        	add    esp,0x4
10784eb0:	5f                                              	pop    edi
10784eb1:	5b                                              	pop    ebx
10784eb2:	5e                                              	pop    esi
10784eb3:	32 c0                                           	xor    al,al
10784eb5:	5d                                              	pop    ebp
10784eb6:	83 c4 50                                        	add    esp,0x50
10784eb9:	c3                                              	ret
10784eba:	6a 00                                           	push   0x0
10784ebc:	56                                              	push   esi
10784ebd:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10784ec1:	e8 8a 64 e4 ff                                  	call   0x105cb350
10784ec6:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10784eca:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
10784ed1:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
10784ed5:	51                                              	push   ecx
10784ed6:	2b c6                                           	sub    eax,esi
10784ed8:	50                                              	push   eax
10784ed9:	52                                              	push   edx
10784eda:	55                                              	push   ebp
10784edb:	e8 e0 f1 ff ff                                  	call   0x107840c0
10784ee0:	83 c4 10                                        	add    esp,0x10
10784ee3:	84 c0                                           	test   al,al
10784ee5:	75 39                                           	jne    0x10784f20
10784ee7:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10784eeb:	85 c0                                           	test   eax,eax
10784eed:	74 09                                           	je     0x10784ef8
10784eef:	50                                              	push   eax
10784ef0:	e8 9b 3f 19 00                                  	call   0x10918e90
10784ef5:	83 c4 04                                        	add    esp,0x4
10784ef8:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784efc:	e8 ff 59 e4 ff                                  	call   0x105ca900
10784f01:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10784f05:	85 c0                                           	test   eax,eax
10784f07:	0f 84 a4 00 00 00                               	je     0x10784fb1
10784f0d:	50                                              	push   eax
10784f0e:	e8 7d 3f 19 00                                  	call   0x10918e90
10784f13:	83 c4 04                                        	add    esp,0x4
10784f16:	5f                                              	pop    edi
10784f17:	5b                                              	pop    ebx
10784f18:	5e                                              	pop    esi
10784f19:	32 c0                                           	xor    al,al
10784f1b:	5d                                              	pop    ebp
10784f1c:	83 c4 50                                        	add    esp,0x50
10784f1f:	c3                                              	ret
10784f20:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
10784f24:	50                                              	push   eax
10784f25:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10784f29:	51                                              	push   ecx
10784f2a:	55                                              	push   ebp
10784f2b:	e8 e0 f8 ff ff                                  	call   0x10784810
10784f30:	83 c4 0c                                        	add    esp,0xc
10784f33:	84 c0                                           	test   al,al
10784f35:	75 35                                           	jne    0x10784f6c
10784f37:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10784f3b:	85 c0                                           	test   eax,eax
10784f3d:	74 09                                           	je     0x10784f48
10784f3f:	50                                              	push   eax
10784f40:	e8 4b 3f 19 00                                  	call   0x10918e90
10784f45:	83 c4 04                                        	add    esp,0x4
10784f48:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784f4c:	e8 af 59 e4 ff                                  	call   0x105ca900
10784f51:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10784f55:	85 c0                                           	test   eax,eax
10784f57:	74 58                                           	je     0x10784fb1
10784f59:	50                                              	push   eax
10784f5a:	e8 31 3f 19 00                                  	call   0x10918e90
10784f5f:	83 c4 04                                        	add    esp,0x4
10784f62:	5f                                              	pop    edi
10784f63:	5b                                              	pop    ebx
10784f64:	5e                                              	pop    esi
10784f65:	32 c0                                           	xor    al,al
10784f67:	5d                                              	pop    ebp
10784f68:	83 c4 50                                        	add    esp,0x50
10784f6b:	c3                                              	ret
10784f6c:	8b 94 24 80 00 00 00                            	mov    edx,DWORD PTR [esp+0x80]
10784f73:	52                                              	push   edx
10784f74:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10784f78:	50                                              	push   eax
10784f79:	55                                              	push   ebp
10784f7a:	e8 71 f9 ff ff                                  	call   0x107848f0
10784f7f:	83 c4 0c                                        	add    esp,0xc
10784f82:	84 c0                                           	test   al,al
10784f84:	75 35                                           	jne    0x10784fbb
10784f86:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10784f8a:	85 c0                                           	test   eax,eax
10784f8c:	74 09                                           	je     0x10784f97
10784f8e:	50                                              	push   eax
10784f8f:	e8 fc 3e 19 00                                  	call   0x10918e90
10784f94:	83 c4 04                                        	add    esp,0x4
10784f97:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784f9b:	e8 60 59 e4 ff                                  	call   0x105ca900
10784fa0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10784fa4:	85 c0                                           	test   eax,eax
10784fa6:	74 09                                           	je     0x10784fb1
10784fa8:	50                                              	push   eax
10784fa9:	e8 e2 3e 19 00                                  	call   0x10918e90
10784fae:	83 c4 04                                        	add    esp,0x4
10784fb1:	5f                                              	pop    edi
10784fb2:	5b                                              	pop    ebx
10784fb3:	5e                                              	pop    esi
10784fb4:	32 c0                                           	xor    al,al
10784fb6:	5d                                              	pop    ebp
10784fb7:	83 c4 50                                        	add    esp,0x50
10784fba:	c3                                              	ret
10784fbb:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784fbf:	e8 1c 5a e4 ff                                  	call   0x105ca9e0
10784fc4:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10784fc8:	85 c0                                           	test   eax,eax
10784fca:	74 09                                           	je     0x10784fd5
10784fcc:	50                                              	push   eax
10784fcd:	e8 be 3e 19 00                                  	call   0x10918e90
10784fd2:	83 c4 04                                        	add    esp,0x4
10784fd5:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
10784fd9:	e8 22 59 e4 ff                                  	call   0x105ca900
10784fde:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10784fe2:	85 c0                                           	test   eax,eax
10784fe4:	74 09                                           	je     0x10784fef
10784fe6:	50                                              	push   eax
10784fe7:	e8 a4 3e 19 00                                  	call   0x10918e90
10784fec:	83 c4 04                                        	add    esp,0x4
10784fef:	5f                                              	pop    edi
10784ff0:	8a c3                                           	mov    al,bl
10784ff2:	5b                                              	pop    ebx
10784ff3:	5e                                              	pop    esi
10784ff4:	5d                                              	pop    ebp
10784ff5:	83 c4 50                                        	add    esp,0x50
10784ff8:	c3                                              	ret
10784ff9:	cc                                              	int3
10784ffa:	cc                                              	int3
10784ffb:	cc                                              	int3
10784ffc:	cc                                              	int3
10784ffd:	cc                                              	int3
10784ffe:	cc                                              	int3
10784fff:	cc                                              	int3
