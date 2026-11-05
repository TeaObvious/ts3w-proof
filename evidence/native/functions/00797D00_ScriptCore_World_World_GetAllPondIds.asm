# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797d00 (ScriptCore.World::World_GetAllPondIds)
Paired Ghidra pseudocode: 00797D00_ScriptCore_World_World_GetAllPondIds.c
Window: [0x00797d00, 0x00797e90) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797d00: 8b 0d c4 db 1e 01 83 ec 14 53 33 db 3b cb 56 57
00797d10: 0f 84 6c 01 00 00 8b 44 24 24 8b 54 24 28 8b f0
00797d20: 0b f2 0f 85 a8 00 00 00 55 e8 22 8c 4c 00 3b c3
00797d30: 89 5c 24 14 89 74 24 18 89 5c 24 1c c7 44 24 20
00797d40: 14 1d 01 01 7e 44 bf 01 00 00 00 8b e8 8d 49 00
00797d50: 3b 74 24 1c 89 7c 24 10 73 11 8b c6 83 c6 04 3b
00797d60: c3 89 74 24 18 74 17 89 38 eb 13 8d 44 24 10 50
00797d70: 56 8d 4c 24 1c e8 a6 a6 1e 00 8b 74 24 18 83 c7
00797d80: 01 83 ed 01 75 ca 8b 5c 24 14 e8 01 16 fd ff 8b
00797d90: 6c 24 30 8b f8 8b 17 8b 82 84 00 00 00 2b f3 c1
00797da0: fe 02 56 55 8b cf ff d0 8b 17 8b 82 9c 00 00 00
00797db0: 56 6a 00 53 55 8b cf ff d0 85 db 5d 74 09 53 e8
00797dc0: 1c c7 d4 ff 83 c4 04 5f 5e b0 01 5b 83 c4 14 c3
00797dd0: 53 52 50 e8 38 aa 4c 00 3b c3 0f 84 a2 00 00 00
00797de0: 8b 80 c8 02 00 00 3b c3 0f 84 94 00 00 00 8d 4c
00797df0: 24 10 51 8b c8 89 5c 24 14 89 5c 24 18 89 5c 24
00797e00: 1c c7 44 24 20 14 1d 01 01 e8 22 c5 3c 00 84 c0
00797e10: 74 5f e8 79 15 fd ff 8b 7c 24 2c 8b f0 8b 44 24
00797e20: 14 2b 44 24 10 8b 16 8b 92 84 00 00 00 c1 f8 02
00797e30: 50 57 8b ce ff d2 8b 44 24 10 8b 4c 24 14 8b 16
00797e40: 8b 92 9c 00 00 00 2b c8 c1 f9 02 51 53 50 57 8b
00797e50: ce ff d2 8b 44 24 10 3b c3 0f 84 68 ff ff ff 50
00797e60: e8 7b c6 d4 ff 83 c4 04 5f 5e b0 01 5b 83 c4 14
00797e70: c3 8b 44 24 10 3b c3 74 09 50 e8 61 c6 d4 ff 83
00797e80: c4 04 5f 5e 32 c0 5b 83 c4 14 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00797d00 <.text+0x396d00>:
  797d00:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  797d06:	83 ec 14                                        	sub    esp,0x14
  797d09:	53                                              	push   ebx
  797d0a:	33 db                                           	xor    ebx,ebx
  797d0c:	3b cb                                           	cmp    ecx,ebx
  797d0e:	56                                              	push   esi
  797d0f:	57                                              	push   edi
  797d10:	0f 84 6c 01 00 00                               	je     0x797e82
  797d16:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  797d1a:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  797d1e:	8b f0                                           	mov    esi,eax
  797d20:	0b f2                                           	or     esi,edx
  797d22:	0f 85 a8 00 00 00                               	jne    0x797dd0
  797d28:	55                                              	push   ebp
  797d29:	e8 22 8c 4c 00                                  	call   0xc60950
  797d2e:	3b c3                                           	cmp    eax,ebx
  797d30:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  797d34:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  797d38:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  797d3c:	c7 44 24 20 14 1d 01 01                         	mov    DWORD PTR [esp+0x20],0x1011d14
  797d44:	7e 44                                           	jle    0x797d8a
  797d46:	bf 01 00 00 00                                  	mov    edi,0x1
  797d4b:	8b e8                                           	mov    ebp,eax
  797d4d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  797d50:	3b 74 24 1c                                     	cmp    esi,DWORD PTR [esp+0x1c]
  797d54:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  797d58:	73 11                                           	jae    0x797d6b
  797d5a:	8b c6                                           	mov    eax,esi
  797d5c:	83 c6 04                                        	add    esi,0x4
  797d5f:	3b c3                                           	cmp    eax,ebx
  797d61:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  797d65:	74 17                                           	je     0x797d7e
  797d67:	89 38                                           	mov    DWORD PTR [eax],edi
  797d69:	eb 13                                           	jmp    0x797d7e
  797d6b:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  797d6f:	50                                              	push   eax
  797d70:	56                                              	push   esi
  797d71:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  797d75:	e8 a6 a6 1e 00                                  	call   0x982420
  797d7a:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  797d7e:	83 c7 01                                        	add    edi,0x1
  797d81:	83 ed 01                                        	sub    ebp,0x1
  797d84:	75 ca                                           	jne    0x797d50
  797d86:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  797d8a:	e8 01 16 fd ff                                  	call   0x769390
  797d8f:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
  797d93:	8b f8                                           	mov    edi,eax
  797d95:	8b 17                                           	mov    edx,DWORD PTR [edi]
  797d97:	8b 82 84 00 00 00                               	mov    eax,DWORD PTR [edx+0x84]
  797d9d:	2b f3                                           	sub    esi,ebx
  797d9f:	c1 fe 02                                        	sar    esi,0x2
  797da2:	56                                              	push   esi
  797da3:	55                                              	push   ebp
  797da4:	8b cf                                           	mov    ecx,edi
  797da6:	ff d0                                           	call   eax
  797da8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  797daa:	8b 82 9c 00 00 00                               	mov    eax,DWORD PTR [edx+0x9c]
  797db0:	56                                              	push   esi
  797db1:	6a 00                                           	push   0x0
  797db3:	53                                              	push   ebx
  797db4:	55                                              	push   ebp
  797db5:	8b cf                                           	mov    ecx,edi
  797db7:	ff d0                                           	call   eax
  797db9:	85 db                                           	test   ebx,ebx
  797dbb:	5d                                              	pop    ebp
  797dbc:	74 09                                           	je     0x797dc7
  797dbe:	53                                              	push   ebx
  797dbf:	e8 1c c7 d4 ff                                  	call   0x4e44e0
  797dc4:	83 c4 04                                        	add    esp,0x4
  797dc7:	5f                                              	pop    edi
  797dc8:	5e                                              	pop    esi
  797dc9:	b0 01                                           	mov    al,0x1
  797dcb:	5b                                              	pop    ebx
  797dcc:	83 c4 14                                        	add    esp,0x14
  797dcf:	c3                                              	ret
  797dd0:	53                                              	push   ebx
  797dd1:	52                                              	push   edx
  797dd2:	50                                              	push   eax
  797dd3:	e8 38 aa 4c 00                                  	call   0xc62810
  797dd8:	3b c3                                           	cmp    eax,ebx
  797dda:	0f 84 a2 00 00 00                               	je     0x797e82
  797de0:	8b 80 c8 02 00 00                               	mov    eax,DWORD PTR [eax+0x2c8]
  797de6:	3b c3                                           	cmp    eax,ebx
  797de8:	0f 84 94 00 00 00                               	je     0x797e82
  797dee:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  797df2:	51                                              	push   ecx
  797df3:	8b c8                                           	mov    ecx,eax
  797df5:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  797df9:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  797dfd:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  797e01:	c7 44 24 20 14 1d 01 01                         	mov    DWORD PTR [esp+0x20],0x1011d14
  797e09:	e8 22 c5 3c 00                                  	call   0xb64330
  797e0e:	84 c0                                           	test   al,al
  797e10:	74 5f                                           	je     0x797e71
  797e12:	e8 79 15 fd ff                                  	call   0x769390
  797e17:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
  797e1b:	8b f0                                           	mov    esi,eax
  797e1d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  797e21:	2b 44 24 10                                     	sub    eax,DWORD PTR [esp+0x10]
  797e25:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797e27:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  797e2d:	c1 f8 02                                        	sar    eax,0x2
  797e30:	50                                              	push   eax
  797e31:	57                                              	push   edi
  797e32:	8b ce                                           	mov    ecx,esi
  797e34:	ff d2                                           	call   edx
  797e36:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  797e3a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  797e3e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797e40:	8b 92 9c 00 00 00                               	mov    edx,DWORD PTR [edx+0x9c]
  797e46:	2b c8                                           	sub    ecx,eax
  797e48:	c1 f9 02                                        	sar    ecx,0x2
  797e4b:	51                                              	push   ecx
  797e4c:	53                                              	push   ebx
  797e4d:	50                                              	push   eax
  797e4e:	57                                              	push   edi
  797e4f:	8b ce                                           	mov    ecx,esi
  797e51:	ff d2                                           	call   edx
  797e53:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  797e57:	3b c3                                           	cmp    eax,ebx
  797e59:	0f 84 68 ff ff ff                               	je     0x797dc7
  797e5f:	50                                              	push   eax
  797e60:	e8 7b c6 d4 ff                                  	call   0x4e44e0
  797e65:	83 c4 04                                        	add    esp,0x4
  797e68:	5f                                              	pop    edi
  797e69:	5e                                              	pop    esi
  797e6a:	b0 01                                           	mov    al,0x1
  797e6c:	5b                                              	pop    ebx
  797e6d:	83 c4 14                                        	add    esp,0x14
  797e70:	c3                                              	ret
  797e71:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  797e75:	3b c3                                           	cmp    eax,ebx
  797e77:	74 09                                           	je     0x797e82
  797e79:	50                                              	push   eax
  797e7a:	e8 61 c6 d4 ff                                  	call   0x4e44e0
  797e7f:	83 c4 04                                        	add    esp,0x4
  797e82:	5f                                              	pop    edi
  797e83:	5e                                              	pop    esi
  797e84:	32 c0                                           	xor    al,al
  797e86:	5b                                              	pop    ebx
  797e87:	83 c4 14                                        	add    esp,0x14
  797e8a:	c3                                              	ret
  797e8b:	cc                                              	int3
  797e8c:	cc                                              	int3
  797e8d:	cc                                              	int3
  797e8e:	cc                                              	int3
  797e8f:	cc                                              	int3
