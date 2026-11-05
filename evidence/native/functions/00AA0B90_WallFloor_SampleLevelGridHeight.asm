# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00aa0b90 (WallFloor_SampleLevelGridHeight)
Paired actual Ghidra pseudocode: 00AA0B90_WallFloor_SampleLevelGridHeight.c
Envelope [0x00aa0b90,0x00aa0df9); 617 bytes; exact owned ranges: [0x00aa0b90,0x00aa0df9)
Owned: 617 original bytes / 195 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00aa0b90 <original>:
  aa0b90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  aa0b94:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  aa0b98:	0f 57 d2                                        	xorps  xmm2,xmm2
  aa0b9b:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  aa0ba0:	83 ec 24                                        	sub    esp,0x24
  aa0ba3:	0f 2f c2                                        	comiss xmm0,xmm2
  aa0ba6:	56                                              	push   esi
  aa0ba7:	8b f1                                           	mov    esi,ecx
  aa0ba9:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  aa0bac:	72 19                                           	jb     0xaa0bc7
  aa0bae:	f3 0f 2a 59 60                                  	cvtsi2ss xmm3,DWORD PTR [ecx+0x60]
  aa0bb3:	0f 2f d8                                        	comiss xmm3,xmm0
  aa0bb6:	72 0f                                           	jb     0xaa0bc7
  aa0bb8:	0f 2f ca                                        	comiss xmm1,xmm2
  aa0bbb:	72 0a                                           	jb     0xaa0bc7
  aa0bbd:	f3 0f 2a 51 64                                  	cvtsi2ss xmm2,DWORD PTR [ecx+0x64]
  aa0bc2:	0f 2f d1                                        	comiss xmm2,xmm1
  aa0bc5:	73 09                                           	jae    0xaa0bd0
  aa0bc7:	d9 ee                                           	fldz
  aa0bc9:	5e                                              	pop    esi
  aa0bca:	83 c4 24                                        	add    esp,0x24
  aa0bcd:	c2 04 00                                        	ret    0x4
  aa0bd0:	57                                              	push   edi
  aa0bd1:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  aa0bd4:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  aa0bd7:	3b f8                                           	cmp    edi,eax
  aa0bd9:	7d 39                                           	jge    0xaa0c14
  aa0bdb:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  aa0bdf:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  aa0be3:	50                                              	push   eax
  aa0be4:	8b ce                                           	mov    ecx,esi
  aa0be6:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  aa0bec:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  aa0bf2:	e8 99 ff ff ff                                  	call   0xaa0b90
  aa0bf7:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  aa0bfa:	2b cf                                           	sub    ecx,edi
  aa0bfc:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  aa0c00:	db 44 24 30                                     	fild   DWORD PTR [esp+0x30]
  aa0c04:	5f                                              	pop    edi
  aa0c05:	5e                                              	pop    esi
  aa0c06:	d8 0d 20 49 06 01                               	fmul   DWORD PTR ds:0x1064920
  aa0c0c:	de e9                                           	fsubp  st(1),st
  aa0c0e:	83 c4 24                                        	add    esp,0x24
  aa0c11:	c2 04 00                                        	ret    0x4
  aa0c14:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  aa0c17:	3b f8                                           	cmp    edi,eax
  aa0c19:	7e 37                                           	jle    0xaa0c52
  aa0c1b:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  aa0c1f:	52                                              	push   edx
  aa0c20:	8b ce                                           	mov    ecx,esi
  aa0c22:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  aa0c28:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  aa0c2e:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  aa0c32:	e8 59 ff ff ff                                  	call   0xaa0b90
  aa0c37:	2b 7e 10                                        	sub    edi,DWORD PTR [esi+0x10]
  aa0c3a:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  aa0c3e:	db 44 24 30                                     	fild   DWORD PTR [esp+0x30]
  aa0c42:	5f                                              	pop    edi
  aa0c43:	5e                                              	pop    esi
  aa0c44:	d8 0d 20 49 06 01                               	fmul   DWORD PTR ds:0x1064920
  aa0c4a:	de c1                                           	faddp  st(1),st
  aa0c4c:	83 c4 24                                        	add    esp,0x24
  aa0c4f:	c2 04 00                                        	ret    0x4
  aa0c52:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  aa0c58:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  aa0c5e:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  aa0c62:	db 54 24 10                                     	fist   DWORD PTR [esp+0x10]
  aa0c66:	db 44 24 10                                     	fild   DWORD PTR [esp+0x10]
  aa0c6a:	de e9                                           	fsubp  st(1),st
  aa0c6c:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  aa0c70:	81 7c 24 0c 01 00 00 80                         	cmp    DWORD PTR [esp+0xc],0x80000001
  aa0c78:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  aa0c7c:	83 d0 ff                                        	adc    eax,0xffffffff
  aa0c7f:	8b c8                                           	mov    ecx,eax
  aa0c81:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  aa0c85:	db 54 24 18                                     	fist   DWORD PTR [esp+0x18]
  aa0c89:	db 44 24 18                                     	fild   DWORD PTR [esp+0x18]
  aa0c8d:	de e9                                           	fsubp  st(1),st
  aa0c8f:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  aa0c93:	81 7c 24 14 01 00 00 80                         	cmp    DWORD PTR [esp+0x14],0x80000001
  aa0c9b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  aa0c9f:	83 d0 ff                                        	adc    eax,0xffffffff
  aa0ca2:	8b 56 14                                        	mov    edx,DWORD PTR [esi+0x14]
  aa0ca5:	3b ca                                           	cmp    ecx,edx
  aa0ca7:	7c 03                                           	jl     0xaa0cac
  aa0ca9:	8d 4a ff                                        	lea    ecx,[edx-0x1]
  aa0cac:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  aa0caf:	3b c2                                           	cmp    eax,edx
  aa0cb1:	7c 03                                           	jl     0xaa0cb6
  aa0cb3:	8d 42 ff                                        	lea    eax,[edx-0x1]
  aa0cb6:	2b 7e 0c                                        	sub    edi,DWORD PTR [esi+0xc]
  aa0cb9:	f3 0f 2a d1                                     	cvtsi2ss xmm2,ecx
  aa0cbd:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  aa0cc1:	f3 0f 2a d0                                     	cvtsi2ss xmm2,eax
  aa0cc5:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  aa0cc9:	f3 0f 10 15 b4 35 fb 00                         	movss  xmm2,DWORD PTR ds:0xfb35b4
  aa0cd1:	0f 2f d0                                        	comiss xmm2,xmm0
  aa0cd4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  aa0cda:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
  aa0ce0:	76 24                                           	jbe    0xaa0d06
  aa0ce2:	0f 2f d1                                        	comiss xmm2,xmm1
  aa0ce5:	76 1f                                           	jbe    0xaa0d06
  aa0ce7:	8b 76 78                                        	mov    esi,DWORD PTR [esi+0x78]
  aa0cea:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  aa0ced:	0f af d7                                        	imul   edx,edi
  aa0cf0:	03 d1                                           	add    edx,ecx
  aa0cf2:	0f af 56 08                                     	imul   edx,DWORD PTR [esi+0x8]
  aa0cf6:	03 d0                                           	add    edx,eax
  aa0cf8:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  aa0cfb:	5f                                              	pop    edi
  aa0cfc:	5e                                              	pop    esi
  aa0cfd:	d9 04 90                                        	fld    DWORD PTR [eax+edx*4]
  aa0d00:	83 c4 24                                        	add    esp,0x24
  aa0d03:	c2 04 00                                        	ret    0x4
  aa0d06:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  aa0d0a:	52                                              	push   edx
  aa0d0b:	57                                              	push   edi
  aa0d0c:	50                                              	push   eax
  aa0d0d:	51                                              	push   ecx
  aa0d0e:	8b 4e 78                                        	mov    ecx,DWORD PTR [esi+0x78]
  aa0d11:	e8 4a a6 fe ff                                  	call   0xa8b360
  aa0d16:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  aa0d1c:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  aa0d22:	f3 0f 58 44 24 1c                               	addss  xmm0,DWORD PTR [esp+0x1c]
  aa0d28:	f3 0f 58 4c 24 24                               	addss  xmm1,DWORD PTR [esp+0x24]
  aa0d2e:	0f 2f c1                                        	comiss xmm0,xmm1
  aa0d31:	76 5f                                           	jbe    0xaa0d92
  aa0d33:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  aa0d39:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  aa0d3d:	f3 0f 5c 44 24 30                               	subss  xmm0,DWORD PTR [esp+0x30]
  aa0d43:	0f 2f 05 cc 4c 0f 01                            	comiss xmm0,DWORD PTR ds:0x10f4ccc
  aa0d4a:	76 23                                           	jbe    0xaa0d6f
  aa0d4c:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  aa0d50:	5f                                              	pop    edi
  aa0d51:	dc e9                                           	fsub   st(1),st
  aa0d53:	5e                                              	pop    esi
  aa0d54:	d9 c9                                           	fxch   st(1)
  aa0d56:	d8 4c 24 28                                     	fmul   DWORD PTR [esp+0x28]
  aa0d5a:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  aa0d5e:	dc ea                                           	fsub   st(2),st
  aa0d60:	d9 ca                                           	fxch   st(2)
  aa0d62:	d8 0c 24                                        	fmul   DWORD PTR [esp]
  aa0d65:	de c1                                           	faddp  st(1),st
  aa0d67:	de c1                                           	faddp  st(1),st
  aa0d69:	83 c4 24                                        	add    esp,0x24
  aa0d6c:	c2 04 00                                        	ret    0x4
  aa0d6f:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  aa0d73:	5f                                              	pop    edi
  aa0d74:	dc e9                                           	fsub   st(1),st
  aa0d76:	5e                                              	pop    esi
  aa0d77:	d9 c9                                           	fxch   st(1)
  aa0d79:	d8 0c 24                                        	fmul   DWORD PTR [esp]
  aa0d7c:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  aa0d80:	dc ea                                           	fsub   st(2),st
  aa0d82:	d9 ca                                           	fxch   st(2)
  aa0d84:	d8 4c 24 28                                     	fmul   DWORD PTR [esp+0x28]
  aa0d88:	de c1                                           	faddp  st(1),st
  aa0d8a:	de c1                                           	faddp  st(1),st
  aa0d8c:	83 c4 24                                        	add    esp,0x24
  aa0d8f:	c2 04 00                                        	ret    0x4
  aa0d92:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  aa0d98:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  aa0d9e:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  aa0da6:	0f 2f c8                                        	comiss xmm1,xmm0
  aa0da9:	76 25                                           	jbe    0xaa0dd0
  aa0dab:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  aa0daf:	5f                                              	pop    edi
  aa0db0:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  aa0db4:	5e                                              	pop    esi
  aa0db5:	dc e9                                           	fsub   st(1),st
  aa0db7:	d9 c9                                           	fxch   st(1)
  aa0db9:	d8 4c 24 28                                     	fmul   DWORD PTR [esp+0x28]
  aa0dbd:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  aa0dc1:	d8 e2                                           	fsub   st,st(2)
  aa0dc3:	d8 0c 24                                        	fmul   DWORD PTR [esp]
  aa0dc6:	de c1                                           	faddp  st(1),st
  aa0dc8:	de c1                                           	faddp  st(1),st
  aa0dca:	83 c4 24                                        	add    esp,0x24
  aa0dcd:	c2 04 00                                        	ret    0x4
  aa0dd0:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  aa0dd4:	5f                                              	pop    edi
  aa0dd5:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  aa0dd9:	5e                                              	pop    esi
  aa0dda:	dc e9                                           	fsub   st(1),st
  aa0ddc:	d9 e8                                           	fld1
  aa0dde:	d8 64 24 28                                     	fsub   DWORD PTR [esp+0x28]
  aa0de2:	de ca                                           	fmulp  st(2),st
  aa0de4:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  aa0de8:	dc e9                                           	fsub   st(1),st
  aa0dea:	d9 c9                                           	fxch   st(1)
  aa0dec:	d8 0c 24                                        	fmul   DWORD PTR [esp]
  aa0def:	de c2                                           	faddp  st(2),st
  aa0df1:	de c1                                           	faddp  st(1),st
  aa0df3:	83 c4 24                                        	add    esp,0x24
  aa0df6:	c2 04 00                                        	ret    0x4
