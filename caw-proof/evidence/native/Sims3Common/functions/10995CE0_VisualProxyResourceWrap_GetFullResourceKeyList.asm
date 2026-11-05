# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995ce0 (VisualProxyResourceWrap_GetFullResourceKeyList)
Paired Ghidra pseudocode: 10995CE0_VisualProxyResourceWrap_GetFullResourceKeyList.c
Window: [0x10995ce0, 0x10995ed0) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995ce0: 83 ec 08 8b 44 24 0c 8b 48 2c 53 55 56 8b 70 28
10995cf0: 2b ce b8 67 66 66 66 f7 e9 c1 fa 03 8b da c1 eb
10995d00: 1f 03 da bd 00 00 00 00 57 89 6c 24 10 0f 84 92
10995d10: 00 00 00 8d 7e 08 89 5c 24 14 8d 9b 00 00 00 00
10995d20: 8b 07 2b 47 fc 8b 4f 08 c1 f8 04 74 1d 68 e7 00
10995d30: 00 00 68 d0 df aa 10 6a 00 6a 00 51 c1 e0 04 50
10995d40: e8 6b 31 f8 ff 83 c4 18 eb 02 33 c0 8b 37 8b 57
10995d50: fc 3b d6 8b c8 74 28 85 c9 74 16 8b 2a 89 29 8b
10995d60: 6a 04 89 69 04 8b 6a 08 89 69 08 8b 6a 0c 89 69
10995d70: 0c 83 c2 10 83 c1 10 3b d6 75 dc 8b 6c 24 10 2b
10995d80: c8 c1 f9 04 03 e9 83 c7 14 85 c0 89 6c 24 10 74
10995d90: 09 50 e8 f9 30 f8 ff 83 c4 04 83 6c 24 14 01 0f
10995da0: 85 7b ff ff ff 8d 04 ad 00 00 00 00 50 6a 00 6a
10995db0: 13 ff 15 e4 b6 aa 10 8b f8 85 ff 89 7c 24 14 0f
10995dc0: 84 fc 00 00 00 57 ff 15 e8 b6 aa 10 85 c0 0f 8c
10995dd0: e6 00 00 00 85 db 8b 4c 24 1c 8b 77 0c 8b 69 28
10995de0: 0f 86 bb 00 00 00 83 c5 08 89 5c 24 1c 8d 49 00
10995df0: 8b 45 00 2b 45 fc 8b 4d 08 c1 f8 04 74 1d 68 e7
10995e00: 00 00 00 68 d0 df aa 10 6a 00 6a 00 51 c1 e0 04
10995e10: 50 e8 9a 30 f8 ff 83 c4 18 eb 02 33 c0 8b 7d 00
10995e20: 8b 55 fc 3b d7 8b c8 74 2b 8d a4 24 00 00 00 00
10995e30: 85 c9 74 16 8b 1a 89 19 8b 5a 04 89 59 04 8b 5a
10995e40: 08 89 59 08 8b 5a 0c 89 59 0c 83 c2 10 83 c1 10
10995e50: 3b d7 75 dc 2b c8 83 c5 14 c1 f9 04 8b d0 74 25
10995e60: 8b f9 8b ca 8b 59 08 89 1e 8b 59 0c 89 5e 04 8b
10995e70: 19 89 5e 08 8b 49 04 89 4e 0c 83 c2 10 83 c6 10
10995e80: 83 ef 01 75 dd 85 c0 74 09 50 e8 01 30 f8 ff 83
10995e90: c4 04 83 6c 24 1c 01 0f 85 53 ff ff ff 8b 7c 24
10995ea0: 14 57 ff 15 ec b6 aa 10 8b 54 24 20 8b 44 24 10
10995eb0: 89 3a 5f 5e 5d 5b 83 c4 08 c3 57 ff 15 f8 b6 aa
10995ec0: 10 5f 5e 8b c5 5d 5b 83 c4 08 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10995ce0 <.text+0x994ce0>:
10995ce0:	83 ec 08                                        	sub    esp,0x8
10995ce3:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10995ce7:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
10995cea:	53                                              	push   ebx
10995ceb:	55                                              	push   ebp
10995cec:	56                                              	push   esi
10995ced:	8b 70 28                                        	mov    esi,DWORD PTR [eax+0x28]
10995cf0:	2b ce                                           	sub    ecx,esi
10995cf2:	b8 67 66 66 66                                  	mov    eax,0x66666667
10995cf7:	f7 e9                                           	imul   ecx
10995cf9:	c1 fa 03                                        	sar    edx,0x3
10995cfc:	8b da                                           	mov    ebx,edx
10995cfe:	c1 eb 1f                                        	shr    ebx,0x1f
10995d01:	03 da                                           	add    ebx,edx
10995d03:	bd 00 00 00 00                                  	mov    ebp,0x0
10995d08:	57                                              	push   edi
10995d09:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
10995d0d:	0f 84 92 00 00 00                               	je     0x10995da5
10995d13:	8d 7e 08                                        	lea    edi,[esi+0x8]
10995d16:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10995d1a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10995d20:	8b 07                                           	mov    eax,DWORD PTR [edi]
10995d22:	2b 47 fc                                        	sub    eax,DWORD PTR [edi-0x4]
10995d25:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
10995d28:	c1 f8 04                                        	sar    eax,0x4
10995d2b:	74 1d                                           	je     0x10995d4a
10995d2d:	68 e7 00 00 00                                  	push   0xe7
10995d32:	68 d0 df aa 10                                  	push   0x10aadfd0
10995d37:	6a 00                                           	push   0x0
10995d39:	6a 00                                           	push   0x0
10995d3b:	51                                              	push   ecx
10995d3c:	c1 e0 04                                        	shl    eax,0x4
10995d3f:	50                                              	push   eax
10995d40:	e8 6b 31 f8 ff                                  	call   0x10918eb0
10995d45:	83 c4 18                                        	add    esp,0x18
10995d48:	eb 02                                           	jmp    0x10995d4c
10995d4a:	33 c0                                           	xor    eax,eax
10995d4c:	8b 37                                           	mov    esi,DWORD PTR [edi]
10995d4e:	8b 57 fc                                        	mov    edx,DWORD PTR [edi-0x4]
10995d51:	3b d6                                           	cmp    edx,esi
10995d53:	8b c8                                           	mov    ecx,eax
10995d55:	74 28                                           	je     0x10995d7f
10995d57:	85 c9                                           	test   ecx,ecx
10995d59:	74 16                                           	je     0x10995d71
10995d5b:	8b 2a                                           	mov    ebp,DWORD PTR [edx]
10995d5d:	89 29                                           	mov    DWORD PTR [ecx],ebp
10995d5f:	8b 6a 04                                        	mov    ebp,DWORD PTR [edx+0x4]
10995d62:	89 69 04                                        	mov    DWORD PTR [ecx+0x4],ebp
10995d65:	8b 6a 08                                        	mov    ebp,DWORD PTR [edx+0x8]
10995d68:	89 69 08                                        	mov    DWORD PTR [ecx+0x8],ebp
10995d6b:	8b 6a 0c                                        	mov    ebp,DWORD PTR [edx+0xc]
10995d6e:	89 69 0c                                        	mov    DWORD PTR [ecx+0xc],ebp
10995d71:	83 c2 10                                        	add    edx,0x10
10995d74:	83 c1 10                                        	add    ecx,0x10
10995d77:	3b d6                                           	cmp    edx,esi
10995d79:	75 dc                                           	jne    0x10995d57
10995d7b:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
10995d7f:	2b c8                                           	sub    ecx,eax
10995d81:	c1 f9 04                                        	sar    ecx,0x4
10995d84:	03 e9                                           	add    ebp,ecx
10995d86:	83 c7 14                                        	add    edi,0x14
10995d89:	85 c0                                           	test   eax,eax
10995d8b:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
10995d8f:	74 09                                           	je     0x10995d9a
10995d91:	50                                              	push   eax
10995d92:	e8 f9 30 f8 ff                                  	call   0x10918e90
10995d97:	83 c4 04                                        	add    esp,0x4
10995d9a:	83 6c 24 14 01                                  	sub    DWORD PTR [esp+0x14],0x1
10995d9f:	0f 85 7b ff ff ff                               	jne    0x10995d20
10995da5:	8d 04 ad 00 00 00 00                            	lea    eax,[ebp*4+0x0]
10995dac:	50                                              	push   eax
10995dad:	6a 00                                           	push   0x0
10995daf:	6a 13                                           	push   0x13
10995db1:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
10995db7:	8b f8                                           	mov    edi,eax
10995db9:	85 ff                                           	test   edi,edi
10995dbb:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
10995dbf:	0f 84 fc 00 00 00                               	je     0x10995ec1
10995dc5:	57                                              	push   edi
10995dc6:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
10995dcc:	85 c0                                           	test   eax,eax
10995dce:	0f 8c e6 00 00 00                               	jl     0x10995eba
10995dd4:	85 db                                           	test   ebx,ebx
10995dd6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10995dda:	8b 77 0c                                        	mov    esi,DWORD PTR [edi+0xc]
10995ddd:	8b 69 28                                        	mov    ebp,DWORD PTR [ecx+0x28]
10995de0:	0f 86 bb 00 00 00                               	jbe    0x10995ea1
10995de6:	83 c5 08                                        	add    ebp,0x8
10995de9:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
10995ded:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10995df0:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10995df3:	2b 45 fc                                        	sub    eax,DWORD PTR [ebp-0x4]
10995df6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10995df9:	c1 f8 04                                        	sar    eax,0x4
10995dfc:	74 1d                                           	je     0x10995e1b
10995dfe:	68 e7 00 00 00                                  	push   0xe7
10995e03:	68 d0 df aa 10                                  	push   0x10aadfd0
10995e08:	6a 00                                           	push   0x0
10995e0a:	6a 00                                           	push   0x0
10995e0c:	51                                              	push   ecx
10995e0d:	c1 e0 04                                        	shl    eax,0x4
10995e10:	50                                              	push   eax
10995e11:	e8 9a 30 f8 ff                                  	call   0x10918eb0
10995e16:	83 c4 18                                        	add    esp,0x18
10995e19:	eb 02                                           	jmp    0x10995e1d
10995e1b:	33 c0                                           	xor    eax,eax
10995e1d:	8b 7d 00                                        	mov    edi,DWORD PTR [ebp+0x0]
10995e20:	8b 55 fc                                        	mov    edx,DWORD PTR [ebp-0x4]
10995e23:	3b d7                                           	cmp    edx,edi
10995e25:	8b c8                                           	mov    ecx,eax
10995e27:	74 2b                                           	je     0x10995e54
10995e29:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10995e30:	85 c9                                           	test   ecx,ecx
10995e32:	74 16                                           	je     0x10995e4a
10995e34:	8b 1a                                           	mov    ebx,DWORD PTR [edx]
10995e36:	89 19                                           	mov    DWORD PTR [ecx],ebx
10995e38:	8b 5a 04                                        	mov    ebx,DWORD PTR [edx+0x4]
10995e3b:	89 59 04                                        	mov    DWORD PTR [ecx+0x4],ebx
10995e3e:	8b 5a 08                                        	mov    ebx,DWORD PTR [edx+0x8]
10995e41:	89 59 08                                        	mov    DWORD PTR [ecx+0x8],ebx
10995e44:	8b 5a 0c                                        	mov    ebx,DWORD PTR [edx+0xc]
10995e47:	89 59 0c                                        	mov    DWORD PTR [ecx+0xc],ebx
10995e4a:	83 c2 10                                        	add    edx,0x10
10995e4d:	83 c1 10                                        	add    ecx,0x10
10995e50:	3b d7                                           	cmp    edx,edi
10995e52:	75 dc                                           	jne    0x10995e30
10995e54:	2b c8                                           	sub    ecx,eax
10995e56:	83 c5 14                                        	add    ebp,0x14
10995e59:	c1 f9 04                                        	sar    ecx,0x4
10995e5c:	8b d0                                           	mov    edx,eax
10995e5e:	74 25                                           	je     0x10995e85
10995e60:	8b f9                                           	mov    edi,ecx
10995e62:	8b ca                                           	mov    ecx,edx
10995e64:	8b 59 08                                        	mov    ebx,DWORD PTR [ecx+0x8]
10995e67:	89 1e                                           	mov    DWORD PTR [esi],ebx
10995e69:	8b 59 0c                                        	mov    ebx,DWORD PTR [ecx+0xc]
10995e6c:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
10995e6f:	8b 19                                           	mov    ebx,DWORD PTR [ecx]
10995e71:	89 5e 08                                        	mov    DWORD PTR [esi+0x8],ebx
10995e74:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
10995e77:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
10995e7a:	83 c2 10                                        	add    edx,0x10
10995e7d:	83 c6 10                                        	add    esi,0x10
10995e80:	83 ef 01                                        	sub    edi,0x1
10995e83:	75 dd                                           	jne    0x10995e62
10995e85:	85 c0                                           	test   eax,eax
10995e87:	74 09                                           	je     0x10995e92
10995e89:	50                                              	push   eax
10995e8a:	e8 01 30 f8 ff                                  	call   0x10918e90
10995e8f:	83 c4 04                                        	add    esp,0x4
10995e92:	83 6c 24 1c 01                                  	sub    DWORD PTR [esp+0x1c],0x1
10995e97:	0f 85 53 ff ff ff                               	jne    0x10995df0
10995e9d:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10995ea1:	57                                              	push   edi
10995ea2:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
10995ea8:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10995eac:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10995eb0:	89 3a                                           	mov    DWORD PTR [edx],edi
10995eb2:	5f                                              	pop    edi
10995eb3:	5e                                              	pop    esi
10995eb4:	5d                                              	pop    ebp
10995eb5:	5b                                              	pop    ebx
10995eb6:	83 c4 08                                        	add    esp,0x8
10995eb9:	c3                                              	ret
10995eba:	57                                              	push   edi
10995ebb:	ff 15 f8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6f8
10995ec1:	5f                                              	pop    edi
10995ec2:	5e                                              	pop    esi
10995ec3:	8b c5                                           	mov    eax,ebp
10995ec5:	5d                                              	pop    ebp
10995ec6:	5b                                              	pop    ebx
10995ec7:	83 c4 08                                        	add    esp,0x8
10995eca:	c3                                              	ret
10995ecb:	cc                                              	int3
10995ecc:	cc                                              	int3
10995ecd:	cc                                              	int3
10995ece:	cc                                              	int3
10995ecf:	cc                                              	int3
