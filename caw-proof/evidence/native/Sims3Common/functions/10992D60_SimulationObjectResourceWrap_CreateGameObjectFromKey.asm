# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992d60 (SimulationObjectResourceWrap_CreateGameObjectFromKey)
Paired Ghidra pseudocode: 10992D60_SimulationObjectResourceWrap_CreateGameObjectFromKey.c
Window: [0x10992d60, 0x10993330) (1488 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992d60: 83 ec 7c 55 57 e8 66 23 f5 ff 33 ed 55 55 8b c8
10992d70: 8b 84 24 90 00 00 00 33 ff 3d 59 e5 d6 02 55 89
10992d80: 7c 24 1c 89 6c 24 18 55 0f 85 ba 00 00 00 8b 84
10992d90: 24 a0 00 00 00 8b 94 24 a4 00 00 00 89 44 24 30
10992da0: 8b 84 24 9c 00 00 00 89 44 24 3c 8d 44 24 1c 89
10992db0: 54 24 34 8b 11 8b 52 0c 50 8d 44 24 34 50 c7 44
10992dc0: 24 40 59 e5 d6 02 ff d2 84 c0 8b 4c 24 0c 74 18
10992dd0: 3b cd 74 1f 8b 01 8b 50 0c 68 54 ea d6 02 ff d2
10992de0: 3b c5 75 19 8b 4c 24 0c 3b cd 74 07 8b 01 8b 50
10992df0: 04 ff d2 5f 33 c0 33 d2 5d 83 c4 7c c3 8d 4c 24
10992e00: 14 51 8b c8 89 6c 24 18 e8 73 63 c3 ff 84 c0 74
10992e10: 26 8b 4c 24 14 3b cd 74 0e 8b 11 8b 42 0c 68 50
10992e20: 34 dc 02 ff d0 eb 02 33 c0 50 8d 4c 24 14 e8 9d
10992e30: 58 69 ff 8b 7c 24 10 8b 4c 24 14 3b cd 74 75 8b
10992e40: 11 8b 42 04 ff d0 eb 6c 8b 94 24 a0 00 00 00 89
10992e50: 44 24 38 8b 84 24 9c 00 00 00 89 54 24 30 8b 94
10992e60: 24 a4 00 00 00 89 44 24 3c 8d 44 24 1c 89 54 24
10992e70: 34 8b 11 8b 52 0c 50 8d 44 24 34 50 ff d2 84 c0
10992e80: 8b 4c 24 0c 0f 84 5e ff ff ff 3b cd 0f 84 61 ff
10992e90: ff ff 8b 01 8b 50 0c 68 50 34 dc 02 ff d2 8b f8
10992ea0: 3b fd 0f 84 3c ff ff ff 8b 07 8b 10 8b cf ff d2
10992eb0: 89 7c 24 10 8b 44 24 0c 3b c5 74 17 8b c8 33 c0
10992ec0: 3b cd 89 44 24 0c 74 0b 8b 01 8b 50 04 ff d2 8b
10992ed0: 44 24 0c 3b fd 75 17 3b c5 74 09 8b 10 8b c8 8b
10992ee0: 42 04 ff d0 5f 33 c0 33 d2 5d 83 c4 7c c3 53 56
10992ef0: e8 ab 72 d9 ff 89 44 24 3c e8 32 f9 d8 ff 50 8d
10992f00: 4c 24 60 e8 88 97 d9 ff 8b 47 30 2b 47 2c c1 f8
10992f10: 06 74 4a 33 f6 8b d8 eb 07 8d a4 24 00 00 00 00
10992f20: 8b 47 2c 0f b6 4c 30 3c 03 c6 2b cd 74 17 83 e9
10992f30: 01 75 22 8b 10 8d 48 18 51 52 8d 4c 24 64 e8 6d
10992f40: 9d d9 ff eb 10 8b 48 04 8b 10 51 52 8d 4c 24 64
10992f50: e8 8b 9c d9 ff 83 c6 40 83 eb 01 75 c3 8b 47 30
10992f60: 2b 47 2c 89 6c 24 28 c1 f8 06 0f 84 69 01 00 00
10992f70: 89 6c 24 20 8b 4c 24 18 8b 41 2c 03 44 24 20 80
10992f80: 78 3c 02 89 44 24 24 0f 85 23 01 00 00 33 ed 89
10992f90: 6c 24 1c e8 38 21 f5 ff 3b c5 0f 84 9e 02 00 00
10992fa0: 8b 10 8b 52 0c 55 55 55 55 8d 4c 24 2c 51 8b 4c
10992fb0: 24 38 83 c1 28 51 8b c8 ff d2 84 c0 0f 84 7c 02
10992fc0: 00 00 8b 4c 24 1c 8d 79 28 3b fd 0f 84 33 02 00
10992fd0: 00 8b 37 8b 57 04 2b d6 b8 67 66 66 66 f7 ea c1
10992fe0: fa 03 8b c2 c1 e8 1f 03 c2 0f 84 93 00 00 00 33
10992ff0: db 8b 4c 24 24 81 39 29 f6 e5 a6 8b 74 1e 04 75
10993000: 11 81 7e 08 33 12 66 01 75 08 56 68 29 f6 e5 a6
10993010: eb 3d 8b 46 08 3d de 13 af 8e 75 08 56 68 4a 53
10993020: 15 84 eb 2b 3d 1d c6 b4 03 75 08 56 68 b2 e9 c7
10993030: 9c eb 1c 3d 21 45 04 d3 75 08 56 68 0e 3b 2a 9e
10993040: eb 0d 3d 57 bf 82 d3 75 0f 56 68 07 89 0f ff 8d
10993050: 4c 24 64 e8 58 9c d9 ff 8b 37 8b 4f 04 2b ce b8
10993060: 67 66 66 66 f7 e9 c1 fa 03 8b c2 c1 e8 1f 83 c5
10993070: 01 03 c2 83 c3 14 3b e8 0f 82 73 ff ff ff 8b 4c
10993080: 24 1c e8 c9 af d9 ff 84 c0 74 16 8b 4c 24 1c 83
10993090: c1 50 51 68 06 ed 9c 38 8d 4c 24 64 e8 0f 9c d9
109930a0: ff 8b 4c 24 1c 85 c9 74 07 8b 11 8b 42 04 ff d0
109930b0: 8b 4c 24 18 8b 51 30 2b 51 2c 8b 44 24 28 83 44
109930c0: 24 20 40 83 c0 01 c1 fa 06 3b c2 89 44 24 28 0f
109930d0: 82 9f fe ff ff 8b f9 33 ed 8b 4f 28 8d 54 24 40
109930e0: 89 4c 24 38 52 8d 4c 24 60 e8 12 9a d9 ff 8b 8c
109930f0: 24 9c 00 00 00 8b 84 24 98 00 00 00 8b 94 24 90
10993100: 00 00 00 55 89 4c 24 54 55 89 44 24 54 8b 84 24
10993110: 9c 00 00 00 8d 4c 24 54 51 8b 4c 24 48 89 54 24
10993120: 60 8b 54 24 44 89 44 24 64 52 8d 44 24 50 50 e8
10993130: fc 86 d9 ff 8b f0 3b f5 0f 84 7b 01 00 00 8d 5e
10993140: 04 8b cb ba 01 00 00 00 f0 0f c1 11 8b 0d 04 d8
10993150: c8 10 51 8b ce e8 46 3c d9 ff 3b c5 74 13 8a 57
10993160: 3c 8d 4c 24 13 51 8b c8 88 54 24 17 e8 7f 80 da
10993170: ff 8b 56 0c 8b 6e 08 89 54 24 2c 8b c3 83 c9 ff
10993180: f0 0f c1 08 49 75 11 ba 01 00 00 00 87 13 8b 06
10993190: 8b 10 6a 01 8b ce ff d2 8b 44 24 74 85 c0 74 1d
109931a0: 8b 74 24 7c 8b 8c 24 80 00 00 00 8b 11 2b f0 c1
109931b0: fe 02 03 f6 03 f6 56 50 8b 42 0c ff d0 8b 44 24
109931c0: 5c 85 c0 74 19 8b 74 24 64 8b 4c 24 68 8b 11 2b
109931d0: f0 c1 fe 04 c1 e6 04 56 50 8b 42 0c ff d0 8b 4c
109931e0: 24 14 85 c9 74 07 8b 11 8b 42 04 ff d0 8b 17 8b
109931f0: 42 04 8b cf ff d0 8b 54 24 2c 5e 5b 5f 8b c5 5d
10993200: 83 c4 7c c3 3b cd 74 07 8b 01 8b 50 04 ff d2 8d
10993210: 4c 24 5c e8 08 d5 73 ff 8b 4c 24 14 3b cd 74 07
10993220: 8b 01 8b 50 04 ff d2 8b 4c 24 18 8b 01 8b 50 04
10993230: ff d2 5e 5b 5f 33 c0 33 d2 5d 83 c4 7c c3 8b 4c
10993240: 24 1c 3b cd 74 07 8b 01 8b 50 04 ff d2 8b 44 24
10993250: 74 3b c5 74 1d 8b 74 24 7c 8b 8c 24 80 00 00 00
10993260: 8b 11 2b f0 c1 fe 02 03 f6 03 f6 56 50 8b 42 0c
10993270: ff d0 8b 44 24 5c 3b c5 74 19 8b 74 24 64 8b 4c
10993280: 24 68 8b 11 2b f0 c1 fe 04 c1 e6 04 56 50 8b 42
10993290: 0c ff d0 8b 4c 24 14 3b cd 74 07 8b 11 8b 42 04
109932a0: ff d0 8b 4c 24 18 8b 11 8b 42 04 ff d0 5e 5b 5f
109932b0: 33 c0 33 d2 5d 83 c4 7c c3 8b 44 24 74 3b c5 74
109932c0: 1d 8b 74 24 7c 8b 8c 24 80 00 00 00 8b 11 2b f0
109932d0: c1 fe 02 03 f6 03 f6 56 50 8b 42 0c ff d0 8b 44
109932e0: 24 5c 3b c5 74 19 8b 74 24 64 8b 4c 24 68 8b 11
109932f0: 2b f0 c1 fe 04 c1 e6 04 56 50 8b 42 0c ff d0 8b
10993300: 4c 24 14 3b cd 74 07 8b 11 8b 42 04 ff d0 8b 17
10993310: 8b 42 04 8b cf ff d0 5e 5b 5f 33 c0 33 d2 5d 83
10993320: c4 7c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992d60 <.text+0x991d60>:
10992d60:	83 ec 7c                                        	sub    esp,0x7c
10992d63:	55                                              	push   ebp
10992d64:	57                                              	push   edi
10992d65:	e8 66 23 f5 ff                                  	call   0x108e50d0
10992d6a:	33 ed                                           	xor    ebp,ebp
10992d6c:	55                                              	push   ebp
10992d6d:	55                                              	push   ebp
10992d6e:	8b c8                                           	mov    ecx,eax
10992d70:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
10992d77:	33 ff                                           	xor    edi,edi
10992d79:	3d 59 e5 d6 02                                  	cmp    eax,0x2d6e559
10992d7e:	55                                              	push   ebp
10992d7f:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
10992d83:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
10992d87:	55                                              	push   ebp
10992d88:	0f 85 ba 00 00 00                               	jne    0x10992e48
10992d8e:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
10992d95:	8b 94 24 a4 00 00 00                            	mov    edx,DWORD PTR [esp+0xa4]
10992d9c:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10992da0:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
10992da7:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10992dab:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10992daf:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
10992db3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992db5:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10992db8:	50                                              	push   eax
10992db9:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10992dbd:	50                                              	push   eax
10992dbe:	c7 44 24 40 59 e5 d6 02                         	mov    DWORD PTR [esp+0x40],0x2d6e559
10992dc6:	ff d2                                           	call   edx
10992dc8:	84 c0                                           	test   al,al
10992dca:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10992dce:	74 18                                           	je     0x10992de8
10992dd0:	3b cd                                           	cmp    ecx,ebp
10992dd2:	74 1f                                           	je     0x10992df3
10992dd4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10992dd6:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10992dd9:	68 54 ea d6 02                                  	push   0x2d6ea54
10992dde:	ff d2                                           	call   edx
10992de0:	3b c5                                           	cmp    eax,ebp
10992de2:	75 19                                           	jne    0x10992dfd
10992de4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10992de8:	3b cd                                           	cmp    ecx,ebp
10992dea:	74 07                                           	je     0x10992df3
10992dec:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10992dee:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10992df1:	ff d2                                           	call   edx
10992df3:	5f                                              	pop    edi
10992df4:	33 c0                                           	xor    eax,eax
10992df6:	33 d2                                           	xor    edx,edx
10992df8:	5d                                              	pop    ebp
10992df9:	83 c4 7c                                        	add    esp,0x7c
10992dfc:	c3                                              	ret
10992dfd:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10992e01:	51                                              	push   ecx
10992e02:	8b c8                                           	mov    ecx,eax
10992e04:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
10992e08:	e8 73 63 c3 ff                                  	call   0x105c9180
10992e0d:	84 c0                                           	test   al,al
10992e0f:	74 26                                           	je     0x10992e37
10992e11:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10992e15:	3b cd                                           	cmp    ecx,ebp
10992e17:	74 0e                                           	je     0x10992e27
10992e19:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992e1b:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10992e1e:	68 50 34 dc 02                                  	push   0x2dc3450
10992e23:	ff d0                                           	call   eax
10992e25:	eb 02                                           	jmp    0x10992e29
10992e27:	33 c0                                           	xor    eax,eax
10992e29:	50                                              	push   eax
10992e2a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10992e2e:	e8 9d 58 69 ff                                  	call   0x100286d0
10992e33:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
10992e37:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10992e3b:	3b cd                                           	cmp    ecx,ebp
10992e3d:	74 75                                           	je     0x10992eb4
10992e3f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992e41:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10992e44:	ff d0                                           	call   eax
10992e46:	eb 6c                                           	jmp    0x10992eb4
10992e48:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
10992e4f:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
10992e53:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
10992e5a:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
10992e5e:	8b 94 24 a4 00 00 00                            	mov    edx,DWORD PTR [esp+0xa4]
10992e65:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10992e69:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10992e6d:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
10992e71:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10992e73:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10992e76:	50                                              	push   eax
10992e77:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10992e7b:	50                                              	push   eax
10992e7c:	ff d2                                           	call   edx
10992e7e:	84 c0                                           	test   al,al
10992e80:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10992e84:	0f 84 5e ff ff ff                               	je     0x10992de8
10992e8a:	3b cd                                           	cmp    ecx,ebp
10992e8c:	0f 84 61 ff ff ff                               	je     0x10992df3
10992e92:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10992e94:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10992e97:	68 50 34 dc 02                                  	push   0x2dc3450
10992e9c:	ff d2                                           	call   edx
10992e9e:	8b f8                                           	mov    edi,eax
10992ea0:	3b fd                                           	cmp    edi,ebp
10992ea2:	0f 84 3c ff ff ff                               	je     0x10992de4
10992ea8:	8b 07                                           	mov    eax,DWORD PTR [edi]
10992eaa:	8b 10                                           	mov    edx,DWORD PTR [eax]
10992eac:	8b cf                                           	mov    ecx,edi
10992eae:	ff d2                                           	call   edx
10992eb0:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
10992eb4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10992eb8:	3b c5                                           	cmp    eax,ebp
10992eba:	74 17                                           	je     0x10992ed3
10992ebc:	8b c8                                           	mov    ecx,eax
10992ebe:	33 c0                                           	xor    eax,eax
10992ec0:	3b cd                                           	cmp    ecx,ebp
10992ec2:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10992ec6:	74 0b                                           	je     0x10992ed3
10992ec8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10992eca:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10992ecd:	ff d2                                           	call   edx
10992ecf:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10992ed3:	3b fd                                           	cmp    edi,ebp
10992ed5:	75 17                                           	jne    0x10992eee
10992ed7:	3b c5                                           	cmp    eax,ebp
10992ed9:	74 09                                           	je     0x10992ee4
10992edb:	8b 10                                           	mov    edx,DWORD PTR [eax]
10992edd:	8b c8                                           	mov    ecx,eax
10992edf:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10992ee2:	ff d0                                           	call   eax
10992ee4:	5f                                              	pop    edi
10992ee5:	33 c0                                           	xor    eax,eax
10992ee7:	33 d2                                           	xor    edx,edx
10992ee9:	5d                                              	pop    ebp
10992eea:	83 c4 7c                                        	add    esp,0x7c
10992eed:	c3                                              	ret
10992eee:	53                                              	push   ebx
10992eef:	56                                              	push   esi
10992ef0:	e8 ab 72 d9 ff                                  	call   0x1072a1a0
10992ef5:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10992ef9:	e8 32 f9 d8 ff                                  	call   0x10722830
10992efe:	50                                              	push   eax
10992eff:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10992f03:	e8 88 97 d9 ff                                  	call   0x1072c690
10992f08:	8b 47 30                                        	mov    eax,DWORD PTR [edi+0x30]
10992f0b:	2b 47 2c                                        	sub    eax,DWORD PTR [edi+0x2c]
10992f0e:	c1 f8 06                                        	sar    eax,0x6
10992f11:	74 4a                                           	je     0x10992f5d
10992f13:	33 f6                                           	xor    esi,esi
10992f15:	8b d8                                           	mov    ebx,eax
10992f17:	eb 07                                           	jmp    0x10992f20
10992f19:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10992f20:	8b 47 2c                                        	mov    eax,DWORD PTR [edi+0x2c]
10992f23:	0f b6 4c 30 3c                                  	movzx  ecx,BYTE PTR [eax+esi*1+0x3c]
10992f28:	03 c6                                           	add    eax,esi
10992f2a:	2b cd                                           	sub    ecx,ebp
10992f2c:	74 17                                           	je     0x10992f45
10992f2e:	83 e9 01                                        	sub    ecx,0x1
10992f31:	75 22                                           	jne    0x10992f55
10992f33:	8b 10                                           	mov    edx,DWORD PTR [eax]
10992f35:	8d 48 18                                        	lea    ecx,[eax+0x18]
10992f38:	51                                              	push   ecx
10992f39:	52                                              	push   edx
10992f3a:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10992f3e:	e8 6d 9d d9 ff                                  	call   0x1072ccb0
10992f43:	eb 10                                           	jmp    0x10992f55
10992f45:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10992f48:	8b 10                                           	mov    edx,DWORD PTR [eax]
10992f4a:	51                                              	push   ecx
10992f4b:	52                                              	push   edx
10992f4c:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10992f50:	e8 8b 9c d9 ff                                  	call   0x1072cbe0
10992f55:	83 c6 40                                        	add    esi,0x40
10992f58:	83 eb 01                                        	sub    ebx,0x1
10992f5b:	75 c3                                           	jne    0x10992f20
10992f5d:	8b 47 30                                        	mov    eax,DWORD PTR [edi+0x30]
10992f60:	2b 47 2c                                        	sub    eax,DWORD PTR [edi+0x2c]
10992f63:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
10992f67:	c1 f8 06                                        	sar    eax,0x6
10992f6a:	0f 84 69 01 00 00                               	je     0x109930d9
10992f70:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
10992f74:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10992f78:	8b 41 2c                                        	mov    eax,DWORD PTR [ecx+0x2c]
10992f7b:	03 44 24 20                                     	add    eax,DWORD PTR [esp+0x20]
10992f7f:	80 78 3c 02                                     	cmp    BYTE PTR [eax+0x3c],0x2
10992f83:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10992f87:	0f 85 23 01 00 00                               	jne    0x109930b0
10992f8d:	33 ed                                           	xor    ebp,ebp
10992f8f:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10992f93:	e8 38 21 f5 ff                                  	call   0x108e50d0
10992f98:	3b c5                                           	cmp    eax,ebp
10992f9a:	0f 84 9e 02 00 00                               	je     0x1099323e
10992fa0:	8b 10                                           	mov    edx,DWORD PTR [eax]
10992fa2:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10992fa5:	55                                              	push   ebp
10992fa6:	55                                              	push   ebp
10992fa7:	55                                              	push   ebp
10992fa8:	55                                              	push   ebp
10992fa9:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10992fad:	51                                              	push   ecx
10992fae:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10992fb2:	83 c1 28                                        	add    ecx,0x28
10992fb5:	51                                              	push   ecx
10992fb6:	8b c8                                           	mov    ecx,eax
10992fb8:	ff d2                                           	call   edx
10992fba:	84 c0                                           	test   al,al
10992fbc:	0f 84 7c 02 00 00                               	je     0x1099323e
10992fc2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10992fc6:	8d 79 28                                        	lea    edi,[ecx+0x28]
10992fc9:	3b fd                                           	cmp    edi,ebp
10992fcb:	0f 84 33 02 00 00                               	je     0x10993204
10992fd1:	8b 37                                           	mov    esi,DWORD PTR [edi]
10992fd3:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
10992fd6:	2b d6                                           	sub    edx,esi
10992fd8:	b8 67 66 66 66                                  	mov    eax,0x66666667
10992fdd:	f7 ea                                           	imul   edx
10992fdf:	c1 fa 03                                        	sar    edx,0x3
10992fe2:	8b c2                                           	mov    eax,edx
10992fe4:	c1 e8 1f                                        	shr    eax,0x1f
10992fe7:	03 c2                                           	add    eax,edx
10992fe9:	0f 84 93 00 00 00                               	je     0x10993082
10992fef:	33 db                                           	xor    ebx,ebx
10992ff1:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10992ff5:	81 39 29 f6 e5 a6                               	cmp    DWORD PTR [ecx],0xa6e5f629
10992ffb:	8b 74 1e 04                                     	mov    esi,DWORD PTR [esi+ebx*1+0x4]
10992fff:	75 11                                           	jne    0x10993012
10993001:	81 7e 08 33 12 66 01                            	cmp    DWORD PTR [esi+0x8],0x1661233
10993008:	75 08                                           	jne    0x10993012
1099300a:	56                                              	push   esi
1099300b:	68 29 f6 e5 a6                                  	push   0xa6e5f629
10993010:	eb 3d                                           	jmp    0x1099304f
10993012:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
10993015:	3d de 13 af 8e                                  	cmp    eax,0x8eaf13de
1099301a:	75 08                                           	jne    0x10993024
1099301c:	56                                              	push   esi
1099301d:	68 4a 53 15 84                                  	push   0x8415534a
10993022:	eb 2b                                           	jmp    0x1099304f
10993024:	3d 1d c6 b4 03                                  	cmp    eax,0x3b4c61d
10993029:	75 08                                           	jne    0x10993033
1099302b:	56                                              	push   esi
1099302c:	68 b2 e9 c7 9c                                  	push   0x9cc7e9b2
10993031:	eb 1c                                           	jmp    0x1099304f
10993033:	3d 21 45 04 d3                                  	cmp    eax,0xd3044521
10993038:	75 08                                           	jne    0x10993042
1099303a:	56                                              	push   esi
1099303b:	68 0e 3b 2a 9e                                  	push   0x9e2a3b0e
10993040:	eb 0d                                           	jmp    0x1099304f
10993042:	3d 57 bf 82 d3                                  	cmp    eax,0xd382bf57
10993047:	75 0f                                           	jne    0x10993058
10993049:	56                                              	push   esi
1099304a:	68 07 89 0f ff                                  	push   0xff0f8907
1099304f:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
10993053:	e8 58 9c d9 ff                                  	call   0x1072ccb0
10993058:	8b 37                                           	mov    esi,DWORD PTR [edi]
1099305a:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
1099305d:	2b ce                                           	sub    ecx,esi
1099305f:	b8 67 66 66 66                                  	mov    eax,0x66666667
10993064:	f7 e9                                           	imul   ecx
10993066:	c1 fa 03                                        	sar    edx,0x3
10993069:	8b c2                                           	mov    eax,edx
1099306b:	c1 e8 1f                                        	shr    eax,0x1f
1099306e:	83 c5 01                                        	add    ebp,0x1
10993071:	03 c2                                           	add    eax,edx
10993073:	83 c3 14                                        	add    ebx,0x14
10993076:	3b e8                                           	cmp    ebp,eax
10993078:	0f 82 73 ff ff ff                               	jb     0x10992ff1
1099307e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10993082:	e8 c9 af d9 ff                                  	call   0x1072e050
10993087:	84 c0                                           	test   al,al
10993089:	74 16                                           	je     0x109930a1
1099308b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1099308f:	83 c1 50                                        	add    ecx,0x50
10993092:	51                                              	push   ecx
10993093:	68 06 ed 9c 38                                  	push   0x389ced06
10993098:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1099309c:	e8 0f 9c d9 ff                                  	call   0x1072ccb0
109930a1:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109930a5:	85 c9                                           	test   ecx,ecx
109930a7:	74 07                                           	je     0x109930b0
109930a9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109930ab:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109930ae:	ff d0                                           	call   eax
109930b0:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109930b4:	8b 51 30                                        	mov    edx,DWORD PTR [ecx+0x30]
109930b7:	2b 51 2c                                        	sub    edx,DWORD PTR [ecx+0x2c]
109930ba:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
109930be:	83 44 24 20 40                                  	add    DWORD PTR [esp+0x20],0x40
109930c3:	83 c0 01                                        	add    eax,0x1
109930c6:	c1 fa 06                                        	sar    edx,0x6
109930c9:	3b c2                                           	cmp    eax,edx
109930cb:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
109930cf:	0f 82 9f fe ff ff                               	jb     0x10992f74
109930d5:	8b f9                                           	mov    edi,ecx
109930d7:	33 ed                                           	xor    ebp,ebp
109930d9:	8b 4f 28                                        	mov    ecx,DWORD PTR [edi+0x28]
109930dc:	8d 54 24 40                                     	lea    edx,[esp+0x40]
109930e0:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
109930e4:	52                                              	push   edx
109930e5:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
109930e9:	e8 12 9a d9 ff                                  	call   0x1072cb00
109930ee:	8b 8c 24 9c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x9c]
109930f5:	8b 84 24 98 00 00 00                            	mov    eax,DWORD PTR [esp+0x98]
109930fc:	8b 94 24 90 00 00 00                            	mov    edx,DWORD PTR [esp+0x90]
10993103:	55                                              	push   ebp
10993104:	89 4c 24 54                                     	mov    DWORD PTR [esp+0x54],ecx
10993108:	55                                              	push   ebp
10993109:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
1099310d:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
10993114:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10993118:	51                                              	push   ecx
10993119:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1099311d:	89 54 24 60                                     	mov    DWORD PTR [esp+0x60],edx
10993121:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
10993125:	89 44 24 64                                     	mov    DWORD PTR [esp+0x64],eax
10993129:	52                                              	push   edx
1099312a:	8d 44 24 50                                     	lea    eax,[esp+0x50]
1099312e:	50                                              	push   eax
1099312f:	e8 fc 86 d9 ff                                  	call   0x1072b830
10993134:	8b f0                                           	mov    esi,eax
10993136:	3b f5                                           	cmp    esi,ebp
10993138:	0f 84 7b 01 00 00                               	je     0x109932b9
1099313e:	8d 5e 04                                        	lea    ebx,[esi+0x4]
10993141:	8b cb                                           	mov    ecx,ebx
10993143:	ba 01 00 00 00                                  	mov    edx,0x1
10993148:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1099314c:	8b 0d 04 d8 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d804
10993152:	51                                              	push   ecx
10993153:	8b ce                                           	mov    ecx,esi
10993155:	e8 46 3c d9 ff                                  	call   0x10726da0
1099315a:	3b c5                                           	cmp    eax,ebp
1099315c:	74 13                                           	je     0x10993171
1099315e:	8a 57 3c                                        	mov    dl,BYTE PTR [edi+0x3c]
10993161:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
10993165:	51                                              	push   ecx
10993166:	8b c8                                           	mov    ecx,eax
10993168:	88 54 24 17                                     	mov    BYTE PTR [esp+0x17],dl
1099316c:	e8 7f 80 da ff                                  	call   0x1073b1f0
10993171:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
10993174:	8b 6e 08                                        	mov    ebp,DWORD PTR [esi+0x8]
10993177:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
1099317b:	8b c3                                           	mov    eax,ebx
1099317d:	83 c9 ff                                        	or     ecx,0xffffffff
10993180:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10993184:	49                                              	dec    ecx
10993185:	75 11                                           	jne    0x10993198
10993187:	ba 01 00 00 00                                  	mov    edx,0x1
1099318c:	87 13                                           	xchg   DWORD PTR [ebx],edx
1099318e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10993190:	8b 10                                           	mov    edx,DWORD PTR [eax]
10993192:	6a 01                                           	push   0x1
10993194:	8b ce                                           	mov    ecx,esi
10993196:	ff d2                                           	call   edx
10993198:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
1099319c:	85 c0                                           	test   eax,eax
1099319e:	74 1d                                           	je     0x109931bd
109931a0:	8b 74 24 7c                                     	mov    esi,DWORD PTR [esp+0x7c]
109931a4:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
109931ab:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109931ad:	2b f0                                           	sub    esi,eax
109931af:	c1 fe 02                                        	sar    esi,0x2
109931b2:	03 f6                                           	add    esi,esi
109931b4:	03 f6                                           	add    esi,esi
109931b6:	56                                              	push   esi
109931b7:	50                                              	push   eax
109931b8:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
109931bb:	ff d0                                           	call   eax
109931bd:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
109931c1:	85 c0                                           	test   eax,eax
109931c3:	74 19                                           	je     0x109931de
109931c5:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
109931c9:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
109931cd:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109931cf:	2b f0                                           	sub    esi,eax
109931d1:	c1 fe 04                                        	sar    esi,0x4
109931d4:	c1 e6 04                                        	shl    esi,0x4
109931d7:	56                                              	push   esi
109931d8:	50                                              	push   eax
109931d9:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
109931dc:	ff d0                                           	call   eax
109931de:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109931e2:	85 c9                                           	test   ecx,ecx
109931e4:	74 07                                           	je     0x109931ed
109931e6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109931e8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109931eb:	ff d0                                           	call   eax
109931ed:	8b 17                                           	mov    edx,DWORD PTR [edi]
109931ef:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109931f2:	8b cf                                           	mov    ecx,edi
109931f4:	ff d0                                           	call   eax
109931f6:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
109931fa:	5e                                              	pop    esi
109931fb:	5b                                              	pop    ebx
109931fc:	5f                                              	pop    edi
109931fd:	8b c5                                           	mov    eax,ebp
109931ff:	5d                                              	pop    ebp
10993200:	83 c4 7c                                        	add    esp,0x7c
10993203:	c3                                              	ret
10993204:	3b cd                                           	cmp    ecx,ebp
10993206:	74 07                                           	je     0x1099320f
10993208:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099320a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1099320d:	ff d2                                           	call   edx
1099320f:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
10993213:	e8 08 d5 73 ff                                  	call   0x100d0720
10993218:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1099321c:	3b cd                                           	cmp    ecx,ebp
1099321e:	74 07                                           	je     0x10993227
10993220:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993222:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10993225:	ff d2                                           	call   edx
10993227:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1099322b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099322d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10993230:	ff d2                                           	call   edx
10993232:	5e                                              	pop    esi
10993233:	5b                                              	pop    ebx
10993234:	5f                                              	pop    edi
10993235:	33 c0                                           	xor    eax,eax
10993237:	33 d2                                           	xor    edx,edx
10993239:	5d                                              	pop    ebp
1099323a:	83 c4 7c                                        	add    esp,0x7c
1099323d:	c3                                              	ret
1099323e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10993242:	3b cd                                           	cmp    ecx,ebp
10993244:	74 07                                           	je     0x1099324d
10993246:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993248:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1099324b:	ff d2                                           	call   edx
1099324d:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
10993251:	3b c5                                           	cmp    eax,ebp
10993253:	74 1d                                           	je     0x10993272
10993255:	8b 74 24 7c                                     	mov    esi,DWORD PTR [esp+0x7c]
10993259:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
10993260:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10993262:	2b f0                                           	sub    esi,eax
10993264:	c1 fe 02                                        	sar    esi,0x2
10993267:	03 f6                                           	add    esi,esi
10993269:	03 f6                                           	add    esi,esi
1099326b:	56                                              	push   esi
1099326c:	50                                              	push   eax
1099326d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10993270:	ff d0                                           	call   eax
10993272:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10993276:	3b c5                                           	cmp    eax,ebp
10993278:	74 19                                           	je     0x10993293
1099327a:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
1099327e:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
10993282:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10993284:	2b f0                                           	sub    esi,eax
10993286:	c1 fe 04                                        	sar    esi,0x4
10993289:	c1 e6 04                                        	shl    esi,0x4
1099328c:	56                                              	push   esi
1099328d:	50                                              	push   eax
1099328e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10993291:	ff d0                                           	call   eax
10993293:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10993297:	3b cd                                           	cmp    ecx,ebp
10993299:	74 07                                           	je     0x109932a2
1099329b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1099329d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109932a0:	ff d0                                           	call   eax
109932a2:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109932a6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109932a8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109932ab:	ff d0                                           	call   eax
109932ad:	5e                                              	pop    esi
109932ae:	5b                                              	pop    ebx
109932af:	5f                                              	pop    edi
109932b0:	33 c0                                           	xor    eax,eax
109932b2:	33 d2                                           	xor    edx,edx
109932b4:	5d                                              	pop    ebp
109932b5:	83 c4 7c                                        	add    esp,0x7c
109932b8:	c3                                              	ret
109932b9:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
109932bd:	3b c5                                           	cmp    eax,ebp
109932bf:	74 1d                                           	je     0x109932de
109932c1:	8b 74 24 7c                                     	mov    esi,DWORD PTR [esp+0x7c]
109932c5:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
109932cc:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109932ce:	2b f0                                           	sub    esi,eax
109932d0:	c1 fe 02                                        	sar    esi,0x2
109932d3:	03 f6                                           	add    esi,esi
109932d5:	03 f6                                           	add    esi,esi
109932d7:	56                                              	push   esi
109932d8:	50                                              	push   eax
109932d9:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
109932dc:	ff d0                                           	call   eax
109932de:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
109932e2:	3b c5                                           	cmp    eax,ebp
109932e4:	74 19                                           	je     0x109932ff
109932e6:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
109932ea:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
109932ee:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109932f0:	2b f0                                           	sub    esi,eax
109932f2:	c1 fe 04                                        	sar    esi,0x4
109932f5:	c1 e6 04                                        	shl    esi,0x4
109932f8:	56                                              	push   esi
109932f9:	50                                              	push   eax
109932fa:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
109932fd:	ff d0                                           	call   eax
109932ff:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10993303:	3b cd                                           	cmp    ecx,ebp
10993305:	74 07                                           	je     0x1099330e
10993307:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10993309:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1099330c:	ff d0                                           	call   eax
1099330e:	8b 17                                           	mov    edx,DWORD PTR [edi]
10993310:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10993313:	8b cf                                           	mov    ecx,edi
10993315:	ff d0                                           	call   eax
10993317:	5e                                              	pop    esi
10993318:	5b                                              	pop    ebx
10993319:	5f                                              	pop    edi
1099331a:	33 c0                                           	xor    eax,eax
1099331c:	33 d2                                           	xor    edx,edx
1099331e:	5d                                              	pop    ebp
1099331f:	83 c4 7c                                        	add    esp,0x7c
10993322:	c3                                              	ret
10993323:	cc                                              	int3
10993324:	cc                                              	int3
10993325:	cc                                              	int3
10993326:	cc                                              	int3
10993327:	cc                                              	int3
10993328:	cc                                              	int3
10993329:	cc                                              	int3
1099332a:	cc                                              	int3
1099332b:	cc                                              	int3
1099332c:	cc                                              	int3
1099332d:	cc                                              	int3
1099332e:	cc                                              	int3
1099332f:	cc                                              	int3
