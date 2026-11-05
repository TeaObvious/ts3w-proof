# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10547d30 (Route_AddLotDestination)
Paired Ghidra pseudocode: 10547D30_Route_AddLotDestination.c
Window: [0x10547d30, 0x10547e70) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x10547e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10547d30: 8b 0d 44 89 c7 10 83 ec 08 53 55 33 ed 3b cd 56
10547d40: 57 0f 84 17 01 00 00 8b 44 24 1c 50 e8 9f 43 ff
10547d50: ff 8b d8 3b dd 0f 84 03 01 00 00 8b 13 8b 42 10
10547d60: 8b cb ff d0 8b cb e8 35 b8 ff ff 8b f8 3b fd 0f
10547d70: 84 e0 00 00 00 8b 17 8b 02 8b cf ff d0 55 55 55
10547d80: 55 68 08 bb b1 10 6a 38 e8 23 11 3d 00 8b f0 83
10547d90: c4 18 3b f5 0f 84 b2 00 00 00 39 6c 24 28 0f 57
10547da0: c0 8b 4c 24 2c 8b 54 24 30 8b 44 24 20 f3 0f 11
10547db0: 46 0c f3 0f 11 46 10 f3 0f 11 46 14 f3 0f 11 46
10547dc0: 18 f3 0f 11 46 1c f3 0f 11 46 20 f3 0f 11 46 24
10547dd0: f3 0f 10 44 24 24 89 6e 04 89 6e 08 c7 06 24 b8
10547de0: b1 10 89 4e 30 89 56 34 89 46 28 f3 0f 11 46 2c
10547df0: 74 36 e8 29 33 01 00 8d 4c 24 10 51 8d 4c 24 18
10547e00: 51 8b 4c 24 30 89 6c 24 1c 89 6c 24 18 8b 10 8b
10547e10: 52 78 51 8b c8 ff d2 8b 44 24 10 8b 4c 24 14 50
10547e20: 51 8b ce e8 08 49 ff ff 56 8b cf e8 90 7c ff ff
10547e30: 8b 17 8b 42 04 8b cf ff d0 8b 13 8b 42 14 8b cb
10547e40: ff d0 5f 5e 5d b0 01 5b 83 c4 08 c3 8b 17 8b 42
10547e50: 04 8b cf ff d0 8b 13 8b 42 14 8b cb ff d0 5f 5e
10547e60: 5d 32 c0 5b 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10547d30 <.text+0x546d30>:
10547d30:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10547d36:	83 ec 08                                        	sub    esp,0x8
10547d39:	53                                              	push   ebx
10547d3a:	55                                              	push   ebp
10547d3b:	33 ed                                           	xor    ebp,ebp
10547d3d:	3b cd                                           	cmp    ecx,ebp
10547d3f:	56                                              	push   esi
10547d40:	57                                              	push   edi
10547d41:	0f 84 17 01 00 00                               	je     0x10547e5e
10547d47:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10547d4b:	50                                              	push   eax
10547d4c:	e8 9f 43 ff ff                                  	call   0x1053c0f0
10547d51:	8b d8                                           	mov    ebx,eax
10547d53:	3b dd                                           	cmp    ebx,ebp
10547d55:	0f 84 03 01 00 00                               	je     0x10547e5e
10547d5b:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547d5d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10547d60:	8b cb                                           	mov    ecx,ebx
10547d62:	ff d0                                           	call   eax
10547d64:	8b cb                                           	mov    ecx,ebx
10547d66:	e8 35 b8 ff ff                                  	call   0x105435a0
10547d6b:	8b f8                                           	mov    edi,eax
10547d6d:	3b fd                                           	cmp    edi,ebp
10547d6f:	0f 84 e0 00 00 00                               	je     0x10547e55
10547d75:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547d77:	8b 02                                           	mov    eax,DWORD PTR [edx]
10547d79:	8b cf                                           	mov    ecx,edi
10547d7b:	ff d0                                           	call   eax
10547d7d:	55                                              	push   ebp
10547d7e:	55                                              	push   ebp
10547d7f:	55                                              	push   ebp
10547d80:	55                                              	push   ebp
10547d81:	68 08 bb b1 10                                  	push   0x10b1bb08
10547d86:	6a 38                                           	push   0x38
10547d88:	e8 23 11 3d 00                                  	call   0x10918eb0
10547d8d:	8b f0                                           	mov    esi,eax
10547d8f:	83 c4 18                                        	add    esp,0x18
10547d92:	3b f5                                           	cmp    esi,ebp
10547d94:	0f 84 b2 00 00 00                               	je     0x10547e4c
10547d9a:	39 6c 24 28                                     	cmp    DWORD PTR [esp+0x28],ebp
10547d9e:	0f 57 c0                                        	xorps  xmm0,xmm0
10547da1:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10547da5:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10547da9:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10547dad:	f3 0f 11 46 0c                                  	movss  DWORD PTR [esi+0xc],xmm0
10547db2:	f3 0f 11 46 10                                  	movss  DWORD PTR [esi+0x10],xmm0
10547db7:	f3 0f 11 46 14                                  	movss  DWORD PTR [esi+0x14],xmm0
10547dbc:	f3 0f 11 46 18                                  	movss  DWORD PTR [esi+0x18],xmm0
10547dc1:	f3 0f 11 46 1c                                  	movss  DWORD PTR [esi+0x1c],xmm0
10547dc6:	f3 0f 11 46 20                                  	movss  DWORD PTR [esi+0x20],xmm0
10547dcb:	f3 0f 11 46 24                                  	movss  DWORD PTR [esi+0x24],xmm0
10547dd0:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
10547dd6:	89 6e 04                                        	mov    DWORD PTR [esi+0x4],ebp
10547dd9:	89 6e 08                                        	mov    DWORD PTR [esi+0x8],ebp
10547ddc:	c7 06 24 b8 b1 10                               	mov    DWORD PTR [esi],0x10b1b824
10547de2:	89 4e 30                                        	mov    DWORD PTR [esi+0x30],ecx
10547de5:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
10547de8:	89 46 28                                        	mov    DWORD PTR [esi+0x28],eax
10547deb:	f3 0f 11 46 2c                                  	movss  DWORD PTR [esi+0x2c],xmm0
10547df0:	74 36                                           	je     0x10547e28
10547df2:	e8 29 33 01 00                                  	call   0x1055b120
10547df7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10547dfb:	51                                              	push   ecx
10547dfc:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10547e00:	51                                              	push   ecx
10547e01:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10547e05:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10547e09:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
10547e0d:	8b 10                                           	mov    edx,DWORD PTR [eax]
10547e0f:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
10547e12:	51                                              	push   ecx
10547e13:	8b c8                                           	mov    ecx,eax
10547e15:	ff d2                                           	call   edx
10547e17:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10547e1b:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10547e1f:	50                                              	push   eax
10547e20:	51                                              	push   ecx
10547e21:	8b ce                                           	mov    ecx,esi
10547e23:	e8 08 49 ff ff                                  	call   0x1053c730
10547e28:	56                                              	push   esi
10547e29:	8b cf                                           	mov    ecx,edi
10547e2b:	e8 90 7c ff ff                                  	call   0x1053fac0
10547e30:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547e32:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10547e35:	8b cf                                           	mov    ecx,edi
10547e37:	ff d0                                           	call   eax
10547e39:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547e3b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10547e3e:	8b cb                                           	mov    ecx,ebx
10547e40:	ff d0                                           	call   eax
10547e42:	5f                                              	pop    edi
10547e43:	5e                                              	pop    esi
10547e44:	5d                                              	pop    ebp
10547e45:	b0 01                                           	mov    al,0x1
10547e47:	5b                                              	pop    ebx
10547e48:	83 c4 08                                        	add    esp,0x8
10547e4b:	c3                                              	ret
10547e4c:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547e4e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10547e51:	8b cf                                           	mov    ecx,edi
10547e53:	ff d0                                           	call   eax
10547e55:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547e57:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10547e5a:	8b cb                                           	mov    ecx,ebx
10547e5c:	ff d0                                           	call   eax
10547e5e:	5f                                              	pop    edi
10547e5f:	5e                                              	pop    esi
10547e60:	5d                                              	pop    ebp
10547e61:	32 c0                                           	xor    al,al
10547e63:	5b                                              	pop    ebx
10547e64:	83 c4 08                                        	add    esp,0x8
10547e67:	c3                                              	ret
10547e68:	cc                                              	int3
10547e69:	cc                                              	int3
10547e6a:	cc                                              	int3
10547e6b:	cc                                              	int3
10547e6c:	cc                                              	int3
10547e6d:	cc                                              	int3
10547e6e:	cc                                              	int3
10547e6f:	cc                                              	int3
