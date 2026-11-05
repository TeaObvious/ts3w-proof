# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542c40 (Route_GetObstructionAtWorldOrLotPoint)
Paired Ghidra pseudocode: 10542C40_Route_GetObstructionAtWorldOrLotPoint.c
Window: [0x10542c40, 0x10542d20) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542c40: 8b 0d 44 89 c7 10 83 ec 30 53 33 db 3b cb 56 0f
10542c50: 84 b3 00 00 00 8b 44 24 3c 50 e8 91 94 ff ff 8b
10542c60: f0 3b f3 0f 84 9f 00 00 00 8b 16 8b 42 10 8b ce
10542c70: ff d0 e8 69 7a 0d 00 3b c3 0f 84 80 00 00 00 8b
10542c80: c8 e8 ca 81 0d 00 3b c3 74 75 d9 44 24 48 8b 56
10542c90: 3c 57 53 83 ec 0c d9 5c 24 08 8d 8e 58 01 00 00
10542ca0: d9 44 24 58 89 4c 24 44 8b 4e 40 d9 5c 24 04 d9
10542cb0: 44 24 54 89 4c 24 24 8d 4c 24 1c d9 1c 24 89 54
10542cc0: 24 1c 8b 56 44 51 8b c8 89 5c 24 40 c6 44 24 44
10542cd0: 01 88 5c 24 45 89 54 24 2c e8 72 a4 f0 ff 8d 4c
10542ce0: 24 0c 8b f8 8b da e8 45 87 ef ff 8b 16 8b 42 14
10542cf0: 8b ce ff d0 8b c7 5f 5e 8b d3 5b 83 c4 30 c3 8b
10542d00: 16 8b 42 14 8b ce ff d0 5e 33 c0 33 d2 5b 83 c4
10542d10: 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542c40 <.text+0x541c40>:
10542c40:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542c46:	83 ec 30                                        	sub    esp,0x30
10542c49:	53                                              	push   ebx
10542c4a:	33 db                                           	xor    ebx,ebx
10542c4c:	3b cb                                           	cmp    ecx,ebx
10542c4e:	56                                              	push   esi
10542c4f:	0f 84 b3 00 00 00                               	je     0x10542d08
10542c55:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10542c59:	50                                              	push   eax
10542c5a:	e8 91 94 ff ff                                  	call   0x1053c0f0
10542c5f:	8b f0                                           	mov    esi,eax
10542c61:	3b f3                                           	cmp    esi,ebx
10542c63:	0f 84 9f 00 00 00                               	je     0x10542d08
10542c69:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542c6b:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10542c6e:	8b ce                                           	mov    ecx,esi
10542c70:	ff d0                                           	call   eax
10542c72:	e8 69 7a 0d 00                                  	call   0x1061a6e0
10542c77:	3b c3                                           	cmp    eax,ebx
10542c79:	0f 84 80 00 00 00                               	je     0x10542cff
10542c7f:	8b c8                                           	mov    ecx,eax
10542c81:	e8 ca 81 0d 00                                  	call   0x1061ae50
10542c86:	3b c3                                           	cmp    eax,ebx
10542c88:	74 75                                           	je     0x10542cff
10542c8a:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
10542c8e:	8b 56 3c                                        	mov    edx,DWORD PTR [esi+0x3c]
10542c91:	57                                              	push   edi
10542c92:	53                                              	push   ebx
10542c93:	83 ec 0c                                        	sub    esp,0xc
10542c96:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
10542c9a:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
10542ca0:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
10542ca4:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
10542ca8:	8b 4e 40                                        	mov    ecx,DWORD PTR [esi+0x40]
10542cab:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10542caf:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
10542cb3:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10542cb7:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10542cbb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10542cbe:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10542cc2:	8b 56 44                                        	mov    edx,DWORD PTR [esi+0x44]
10542cc5:	51                                              	push   ecx
10542cc6:	8b c8                                           	mov    ecx,eax
10542cc8:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
10542ccc:	c6 44 24 44 01                                  	mov    BYTE PTR [esp+0x44],0x1
10542cd1:	88 5c 24 45                                     	mov    BYTE PTR [esp+0x45],bl
10542cd5:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
10542cd9:	e8 72 a4 f0 ff                                  	call   0x1044d150
10542cde:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10542ce2:	8b f8                                           	mov    edi,eax
10542ce4:	8b da                                           	mov    ebx,edx
10542ce6:	e8 45 87 ef ff                                  	call   0x1043b430
10542ceb:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542ced:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542cf0:	8b ce                                           	mov    ecx,esi
10542cf2:	ff d0                                           	call   eax
10542cf4:	8b c7                                           	mov    eax,edi
10542cf6:	5f                                              	pop    edi
10542cf7:	5e                                              	pop    esi
10542cf8:	8b d3                                           	mov    edx,ebx
10542cfa:	5b                                              	pop    ebx
10542cfb:	83 c4 30                                        	add    esp,0x30
10542cfe:	c3                                              	ret
10542cff:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542d01:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542d04:	8b ce                                           	mov    ecx,esi
10542d06:	ff d0                                           	call   eax
10542d08:	5e                                              	pop    esi
10542d09:	33 c0                                           	xor    eax,eax
10542d0b:	33 d2                                           	xor    edx,edx
10542d0d:	5b                                              	pop    ebx
10542d0e:	83 c4 30                                        	add    esp,0x30
10542d11:	c3                                              	ret
10542d12:	cc                                              	int3
10542d13:	cc                                              	int3
10542d14:	cc                                              	int3
10542d15:	cc                                              	int3
10542d16:	cc                                              	int3
10542d17:	cc                                              	int3
10542d18:	cc                                              	int3
10542d19:	cc                                              	int3
10542d1a:	cc                                              	int3
10542d1b:	cc                                              	int3
10542d1c:	cc                                              	int3
10542d1d:	cc                                              	int3
10542d1e:	cc                                              	int3
10542d1f:	cc                                              	int3
