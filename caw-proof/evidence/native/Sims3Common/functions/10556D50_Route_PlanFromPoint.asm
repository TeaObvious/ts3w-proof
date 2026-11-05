# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10556d50 (Route_PlanFromPoint)
Paired Ghidra pseudocode: 10556D50_Route_PlanFromPoint.c
Window: [0x10556d50, 0x10556fa0) (592 bytes; stop exclusive)
Next defined Ghidra entry: 0x10556fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10556d50: 55 8b ec 83 e4 f0 0f 57 c0 8b 0d 44 89 c7 10 81
10556d60: ec 84 00 00 00 53 8b 5d 08 56 33 f6 3b ce 57 c7
10556d70: 03 02 00 00 00 89 73 04 89 73 0c f3 0f 11 43 10
10556d80: f3 0f 11 43 14 f3 0f 11 43 18 f3 0f 11 43 1c 89
10556d90: 73 20 89 73 24 89 73 28 f3 0f 11 43 2c f3 0f 11
10556da0: 43 30 f3 0f 11 43 34 89 73 38 89 73 3c 89 73 40
10556db0: 0f 84 a1 01 00 00 8b 45 0c 50 e8 31 53 fe ff 3b
10556dc0: c6 89 44 24 1c 0f 84 95 01 00 00 8b 10 8b c8 8b
10556dd0: 42 10 ff d0 8b 0d c4 00 c7 10 3b ce 74 19 d9 45
10556de0: 18 83 ec 08 d9 5c 24 04 d9 45 10 d9 1c 24 e8 7d
10556df0: 62 ce ff 8b f8 eb 02 33 ff 3b fe f3 0f 10 4d 18
10556e00: f3 0f 10 45 10 f3 0f 11 4c 24 28 f3 0f 10 4d 14
10556e10: f3 0f 11 44 24 2c f3 0f 11 4c 24 24 f3 0f 11 44
10556e20: 24 20 0f 28 44 24 20 0f 29 44 24 30 89 74 24 14
10556e30: 0f 84 97 00 00 00 f3 0f 10 05 84 e1 aa 10 8d 4c
10556e40: 24 20 51 8d 54 24 34 52 57 f3 0f 11 44 24 2c f3
10556e50: 0f 11 44 24 30 89 74 24 34 e8 e2 c2 b4 ff 8b 44
10556e60: 24 34 83 c4 0c 3b c6 89 44 24 14 7d 17 8d 44 24
10556e70: 20 50 57 e8 68 ff b6 ff 83 c4 08 84 c0 c6 44 24
10556e80: 13 01 75 05 c6 44 24 13 00 39 74 24 14 7d 1f 80
10556e90: 7c 24 13 00 75 18 6a 01 8d 4c 24 24 51 57 e8 ed
10556ea0: f9 b6 ff 83 c4 0c 84 c0 75 04 89 74 24 14 83 bf
10556eb0: 08 04 00 00 01 75 0f 83 bf 0c 04 00 00 50 75 06
10556ec0: 39 74 24 28 74 0e 80 7c 24 13 00 75 07 c6 44 24
10556ed0: 18 01 eb 05 c6 44 24 18 00 e8 02 38 0c 00 3b c6
10556ee0: 74 2f 8b 54 24 18 d9 45 18 8b 4c 24 14 52 6a 01
10556ef0: 51 83 ec 08 d9 5c 24 04 8b c8 d9 45 10 d9 1c 24
10556f00: e8 6b 39 0c 00 d9 5c 24 18 f3 0f 10 44 24 18 eb
10556f10: 03 0f 57 c0 0f 28 4c 24 30 8b 4c 24 1c 8d 54 24
10556f20: 30 0f 29 4c 24 20 52 8d 44 24 4c f3 0f 11 44 24
10556f30: 28 0f 28 44 24 24 50 0f 29 44 24 38 e8 8f ee ff
10556f40: ff 8b f0 b9 12 00 00 00 8b fb f3 a5 8b 4c 24 1c
10556f50: 8b 11 8b 42 14 ff d0 8b c3 5f 5e 5b 8b e5 5d c3
10556f60: 0f 57 c0 5f 89 73 04 89 73 0c 89 73 20 89 73 24
10556f70: 5e c7 03 02 00 00 00 f3 0f 11 43 10 f3 0f 11 43
10556f80: 14 f3 0f 11 43 18 f3 0f 11 43 1c 8b c3 5b 8b e5
10556f90: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10556d50 <.text+0x555d50>:
10556d50:	55                                              	push   ebp
10556d51:	8b ec                                           	mov    ebp,esp
10556d53:	83 e4 f0                                        	and    esp,0xfffffff0
10556d56:	0f 57 c0                                        	xorps  xmm0,xmm0
10556d59:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10556d5f:	81 ec 84 00 00 00                               	sub    esp,0x84
10556d65:	53                                              	push   ebx
10556d66:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
10556d69:	56                                              	push   esi
10556d6a:	33 f6                                           	xor    esi,esi
10556d6c:	3b ce                                           	cmp    ecx,esi
10556d6e:	57                                              	push   edi
10556d6f:	c7 03 02 00 00 00                               	mov    DWORD PTR [ebx],0x2
10556d75:	89 73 04                                        	mov    DWORD PTR [ebx+0x4],esi
10556d78:	89 73 0c                                        	mov    DWORD PTR [ebx+0xc],esi
10556d7b:	f3 0f 11 43 10                                  	movss  DWORD PTR [ebx+0x10],xmm0
10556d80:	f3 0f 11 43 14                                  	movss  DWORD PTR [ebx+0x14],xmm0
10556d85:	f3 0f 11 43 18                                  	movss  DWORD PTR [ebx+0x18],xmm0
10556d8a:	f3 0f 11 43 1c                                  	movss  DWORD PTR [ebx+0x1c],xmm0
10556d8f:	89 73 20                                        	mov    DWORD PTR [ebx+0x20],esi
10556d92:	89 73 24                                        	mov    DWORD PTR [ebx+0x24],esi
10556d95:	89 73 28                                        	mov    DWORD PTR [ebx+0x28],esi
10556d98:	f3 0f 11 43 2c                                  	movss  DWORD PTR [ebx+0x2c],xmm0
10556d9d:	f3 0f 11 43 30                                  	movss  DWORD PTR [ebx+0x30],xmm0
10556da2:	f3 0f 11 43 34                                  	movss  DWORD PTR [ebx+0x34],xmm0
10556da7:	89 73 38                                        	mov    DWORD PTR [ebx+0x38],esi
10556daa:	89 73 3c                                        	mov    DWORD PTR [ebx+0x3c],esi
10556dad:	89 73 40                                        	mov    DWORD PTR [ebx+0x40],esi
10556db0:	0f 84 a1 01 00 00                               	je     0x10556f57
10556db6:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10556db9:	50                                              	push   eax
10556dba:	e8 31 53 fe ff                                  	call   0x1053c0f0
10556dbf:	3b c6                                           	cmp    eax,esi
10556dc1:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10556dc5:	0f 84 95 01 00 00                               	je     0x10556f60
10556dcb:	8b 10                                           	mov    edx,DWORD PTR [eax]
10556dcd:	8b c8                                           	mov    ecx,eax
10556dcf:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10556dd2:	ff d0                                           	call   eax
10556dd4:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10556dda:	3b ce                                           	cmp    ecx,esi
10556ddc:	74 19                                           	je     0x10556df7
10556dde:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
10556de1:	83 ec 08                                        	sub    esp,0x8
10556de4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10556de8:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
10556deb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10556dee:	e8 7d 62 ce ff                                  	call   0x1023d070
10556df3:	8b f8                                           	mov    edi,eax
10556df5:	eb 02                                           	jmp    0x10556df9
10556df7:	33 ff                                           	xor    edi,edi
10556df9:	3b fe                                           	cmp    edi,esi
10556dfb:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10556e00:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10556e05:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
10556e0b:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
10556e10:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
10556e16:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
10556e1c:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10556e22:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10556e27:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10556e2c:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10556e30:	0f 84 97 00 00 00                               	je     0x10556ecd
10556e36:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10556e3e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10556e42:	51                                              	push   ecx
10556e43:	8d 54 24 34                                     	lea    edx,[esp+0x34]
10556e47:	52                                              	push   edx
10556e48:	57                                              	push   edi
10556e49:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
10556e4f:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
10556e55:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
10556e59:	e8 e2 c2 b4 ff                                  	call   0x100a3140
10556e5e:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10556e62:	83 c4 0c                                        	add    esp,0xc
10556e65:	3b c6                                           	cmp    eax,esi
10556e67:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10556e6b:	7d 17                                           	jge    0x10556e84
10556e6d:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10556e71:	50                                              	push   eax
10556e72:	57                                              	push   edi
10556e73:	e8 68 ff b6 ff                                  	call   0x100c6de0
10556e78:	83 c4 08                                        	add    esp,0x8
10556e7b:	84 c0                                           	test   al,al
10556e7d:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
10556e82:	75 05                                           	jne    0x10556e89
10556e84:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
10556e89:	39 74 24 14                                     	cmp    DWORD PTR [esp+0x14],esi
10556e8d:	7d 1f                                           	jge    0x10556eae
10556e8f:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
10556e94:	75 18                                           	jne    0x10556eae
10556e96:	6a 01                                           	push   0x1
10556e98:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10556e9c:	51                                              	push   ecx
10556e9d:	57                                              	push   edi
10556e9e:	e8 ed f9 b6 ff                                  	call   0x100c6890
10556ea3:	83 c4 0c                                        	add    esp,0xc
10556ea6:	84 c0                                           	test   al,al
10556ea8:	75 04                                           	jne    0x10556eae
10556eaa:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10556eae:	83 bf 08 04 00 00 01                            	cmp    DWORD PTR [edi+0x408],0x1
10556eb5:	75 0f                                           	jne    0x10556ec6
10556eb7:	83 bf 0c 04 00 00 50                            	cmp    DWORD PTR [edi+0x40c],0x50
10556ebe:	75 06                                           	jne    0x10556ec6
10556ec0:	39 74 24 28                                     	cmp    DWORD PTR [esp+0x28],esi
10556ec4:	74 0e                                           	je     0x10556ed4
10556ec6:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
10556ecb:	75 07                                           	jne    0x10556ed4
10556ecd:	c6 44 24 18 01                                  	mov    BYTE PTR [esp+0x18],0x1
10556ed2:	eb 05                                           	jmp    0x10556ed9
10556ed4:	c6 44 24 18 00                                  	mov    BYTE PTR [esp+0x18],0x0
10556ed9:	e8 02 38 0c 00                                  	call   0x1061a6e0
10556ede:	3b c6                                           	cmp    eax,esi
10556ee0:	74 2f                                           	je     0x10556f11
10556ee2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10556ee6:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
10556ee9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10556eed:	52                                              	push   edx
10556eee:	6a 01                                           	push   0x1
10556ef0:	51                                              	push   ecx
10556ef1:	83 ec 08                                        	sub    esp,0x8
10556ef4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10556ef8:	8b c8                                           	mov    ecx,eax
10556efa:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
10556efd:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10556f00:	e8 6b 39 0c 00                                  	call   0x1061a870
10556f05:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
10556f09:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
10556f0f:	eb 03                                           	jmp    0x10556f14
10556f11:	0f 57 c0                                        	xorps  xmm0,xmm0
10556f14:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
10556f19:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10556f1d:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10556f21:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10556f26:	52                                              	push   edx
10556f27:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
10556f2b:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
10556f31:	0f 28 44 24 24                                  	movaps xmm0,XMMWORD PTR [esp+0x24]
10556f36:	50                                              	push   eax
10556f37:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
10556f3c:	e8 8f ee ff ff                                  	call   0x10555dd0
10556f41:	8b f0                                           	mov    esi,eax
10556f43:	b9 12 00 00 00                                  	mov    ecx,0x12
10556f48:	8b fb                                           	mov    edi,ebx
10556f4a:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10556f4c:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10556f50:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10556f52:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10556f55:	ff d0                                           	call   eax
10556f57:	8b c3                                           	mov    eax,ebx
10556f59:	5f                                              	pop    edi
10556f5a:	5e                                              	pop    esi
10556f5b:	5b                                              	pop    ebx
10556f5c:	8b e5                                           	mov    esp,ebp
10556f5e:	5d                                              	pop    ebp
10556f5f:	c3                                              	ret
10556f60:	0f 57 c0                                        	xorps  xmm0,xmm0
10556f63:	5f                                              	pop    edi
10556f64:	89 73 04                                        	mov    DWORD PTR [ebx+0x4],esi
10556f67:	89 73 0c                                        	mov    DWORD PTR [ebx+0xc],esi
10556f6a:	89 73 20                                        	mov    DWORD PTR [ebx+0x20],esi
10556f6d:	89 73 24                                        	mov    DWORD PTR [ebx+0x24],esi
10556f70:	5e                                              	pop    esi
10556f71:	c7 03 02 00 00 00                               	mov    DWORD PTR [ebx],0x2
10556f77:	f3 0f 11 43 10                                  	movss  DWORD PTR [ebx+0x10],xmm0
10556f7c:	f3 0f 11 43 14                                  	movss  DWORD PTR [ebx+0x14],xmm0
10556f81:	f3 0f 11 43 18                                  	movss  DWORD PTR [ebx+0x18],xmm0
10556f86:	f3 0f 11 43 1c                                  	movss  DWORD PTR [ebx+0x1c],xmm0
10556f8b:	8b c3                                           	mov    eax,ebx
10556f8d:	5b                                              	pop    ebx
10556f8e:	8b e5                                           	mov    esp,ebp
10556f90:	5d                                              	pop    ebp
10556f91:	c3                                              	ret
10556f92:	cc                                              	int3
10556f93:	cc                                              	int3
10556f94:	cc                                              	int3
10556f95:	cc                                              	int3
10556f96:	cc                                              	int3
10556f97:	cc                                              	int3
10556f98:	cc                                              	int3
10556f99:	cc                                              	int3
10556f9a:	cc                                              	int3
10556f9b:	cc                                              	int3
10556f9c:	cc                                              	int3
10556f9d:	cc                                              	int3
10556f9e:	cc                                              	int3
10556f9f:	cc                                              	int3
