# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567f30 (StreamHost_CopyStream)
Paired Ghidra pseudocode: 10567F30_StreamHost_CopyStream.c
Window: [0x10567f30, 0x10568050) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567f30: b8 00 10 00 00 e8 b6 89 52 00 55 56 8b b4 24 0c
10567f40: 10 00 00 3b 35 a4 b0 c7 10 75 08 8b 2d a8 b0 c7
10567f50: 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00 60 74
10567f60: 04 33 ed eb 23 e8 b6 31 ff ff 8b 10 8b c8 8b 82
10567f70: cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0 c7 10
10567f80: 89 35 a4 b0 c7 10 8b e8 85 ed 75 0c 5e 8d 45 fe
10567f90: 5d 81 c4 00 10 00 00 c3 8b 84 24 10 10 00 00 3b
10567fa0: 05 a4 b0 c7 10 53 75 08 8b 1d a8 b0 c7 10 eb 0b
10567fb0: 50 e8 ba f2 ff ff 83 c4 04 8b d8 85 db 75 0d 8d
10567fc0: 43 fe 5b 5e 5d 81 c4 00 10 00 00 c3 8b 13 8b 42
10567fd0: 1c 57 8b cb ff d0 8b f8 83 ff ff 74 5c 8b 13 8b
10567fe0: 42 28 6a 00 6a 00 8b cb ff d0 84 c0 74 4b 85 ff
10567ff0: 76 3a 81 ff 00 10 00 00 be 00 10 00 00 77 02 8b
10568000: f7 8b 13 8b 52 30 56 8d 44 24 14 50 8b cb ff d2
10568010: 3b f0 75 25 8b 45 00 8b 50 38 56 8d 4c 24 14 51
10568020: 8b cd ff d2 84 c0 74 11 2b fe 75 c6 5f 5b 5e 33
10568030: c0 5d 81 c4 00 10 00 00 c3 5f 5b 5e b8 fd ff ff
10568040: ff 5d 81 c4 00 10 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567f30 <.text+0x566f30>:
10567f30:	b8 00 10 00 00                                  	mov    eax,0x1000
10567f35:	e8 b6 89 52 00                                  	call   0x10a908f0
10567f3a:	55                                              	push   ebp
10567f3b:	56                                              	push   esi
10567f3c:	8b b4 24 0c 10 00 00                            	mov    esi,DWORD PTR [esp+0x100c]
10567f43:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10567f49:	75 08                                           	jne    0x10567f53
10567f4b:	8b 2d a8 b0 c7 10                               	mov    ebp,DWORD PTR ds:0x10c7b0a8
10567f51:	eb 35                                           	jmp    0x10567f88
10567f53:	8b c6                                           	mov    eax,esi
10567f55:	25 00 00 00 ff                                  	and    eax,0xff000000
10567f5a:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567f5f:	74 04                                           	je     0x10567f65
10567f61:	33 ed                                           	xor    ebp,ebp
10567f63:	eb 23                                           	jmp    0x10567f88
10567f65:	e8 b6 31 ff ff                                  	call   0x1055b120
10567f6a:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567f6c:	8b c8                                           	mov    ecx,eax
10567f6e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567f74:	56                                              	push   esi
10567f75:	ff d0                                           	call   eax
10567f77:	85 c0                                           	test   eax,eax
10567f79:	74 0b                                           	je     0x10567f86
10567f7b:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567f80:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567f86:	8b e8                                           	mov    ebp,eax
10567f88:	85 ed                                           	test   ebp,ebp
10567f8a:	75 0c                                           	jne    0x10567f98
10567f8c:	5e                                              	pop    esi
10567f8d:	8d 45 fe                                        	lea    eax,[ebp-0x2]
10567f90:	5d                                              	pop    ebp
10567f91:	81 c4 00 10 00 00                               	add    esp,0x1000
10567f97:	c3                                              	ret
10567f98:	8b 84 24 10 10 00 00                            	mov    eax,DWORD PTR [esp+0x1010]
10567f9f:	3b 05 a4 b0 c7 10                               	cmp    eax,DWORD PTR ds:0x10c7b0a4
10567fa5:	53                                              	push   ebx
10567fa6:	75 08                                           	jne    0x10567fb0
10567fa8:	8b 1d a8 b0 c7 10                               	mov    ebx,DWORD PTR ds:0x10c7b0a8
10567fae:	eb 0b                                           	jmp    0x10567fbb
10567fb0:	50                                              	push   eax
10567fb1:	e8 ba f2 ff ff                                  	call   0x10567270
10567fb6:	83 c4 04                                        	add    esp,0x4
10567fb9:	8b d8                                           	mov    ebx,eax
10567fbb:	85 db                                           	test   ebx,ebx
10567fbd:	75 0d                                           	jne    0x10567fcc
10567fbf:	8d 43 fe                                        	lea    eax,[ebx-0x2]
10567fc2:	5b                                              	pop    ebx
10567fc3:	5e                                              	pop    esi
10567fc4:	5d                                              	pop    ebp
10567fc5:	81 c4 00 10 00 00                               	add    esp,0x1000
10567fcb:	c3                                              	ret
10567fcc:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10567fce:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
10567fd1:	57                                              	push   edi
10567fd2:	8b cb                                           	mov    ecx,ebx
10567fd4:	ff d0                                           	call   eax
10567fd6:	8b f8                                           	mov    edi,eax
10567fd8:	83 ff ff                                        	cmp    edi,0xffffffff
10567fdb:	74 5c                                           	je     0x10568039
10567fdd:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10567fdf:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10567fe2:	6a 00                                           	push   0x0
10567fe4:	6a 00                                           	push   0x0
10567fe6:	8b cb                                           	mov    ecx,ebx
10567fe8:	ff d0                                           	call   eax
10567fea:	84 c0                                           	test   al,al
10567fec:	74 4b                                           	je     0x10568039
10567fee:	85 ff                                           	test   edi,edi
10567ff0:	76 3a                                           	jbe    0x1056802c
10567ff2:	81 ff 00 10 00 00                               	cmp    edi,0x1000
10567ff8:	be 00 10 00 00                                  	mov    esi,0x1000
10567ffd:	77 02                                           	ja     0x10568001
10567fff:	8b f7                                           	mov    esi,edi
10568001:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10568003:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
10568006:	56                                              	push   esi
10568007:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1056800b:	50                                              	push   eax
1056800c:	8b cb                                           	mov    ecx,ebx
1056800e:	ff d2                                           	call   edx
10568010:	3b f0                                           	cmp    esi,eax
10568012:	75 25                                           	jne    0x10568039
10568014:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10568017:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
1056801a:	56                                              	push   esi
1056801b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1056801f:	51                                              	push   ecx
10568020:	8b cd                                           	mov    ecx,ebp
10568022:	ff d2                                           	call   edx
10568024:	84 c0                                           	test   al,al
10568026:	74 11                                           	je     0x10568039
10568028:	2b fe                                           	sub    edi,esi
1056802a:	75 c6                                           	jne    0x10567ff2
1056802c:	5f                                              	pop    edi
1056802d:	5b                                              	pop    ebx
1056802e:	5e                                              	pop    esi
1056802f:	33 c0                                           	xor    eax,eax
10568031:	5d                                              	pop    ebp
10568032:	81 c4 00 10 00 00                               	add    esp,0x1000
10568038:	c3                                              	ret
10568039:	5f                                              	pop    edi
1056803a:	5b                                              	pop    ebx
1056803b:	5e                                              	pop    esi
1056803c:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10568041:	5d                                              	pop    ebp
10568042:	81 c4 00 10 00 00                               	add    esp,0x1000
10568048:	c3                                              	ret
10568049:	cc                                              	int3
1056804a:	cc                                              	int3
1056804b:	cc                                              	int3
1056804c:	cc                                              	int3
1056804d:	cc                                              	int3
1056804e:	cc                                              	int3
1056804f:	cc                                              	int3
