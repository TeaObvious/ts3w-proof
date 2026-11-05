# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00638be0,0x00638fc7); analyst name LotRouteGraph_AddDirectionalAnimalVariants.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00638be0 <.text+0x237be0>:
  638be0:	55                   	push   ebp
  638be1:	8b ec                	mov    ebp,esp
  638be3:	83 e4 f0             	and    esp,0xfffffff0
  638be6:	81 ec 24 01 00 00    	sub    esp,0x124
  638bec:	53                   	push   ebx
  638bed:	56                   	push   esi
  638bee:	57                   	push   edi
  638bef:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  638bf2:	33 db                	xor    ebx,ebx
  638bf4:	3b fb                	cmp    edi,ebx
  638bf6:	89 4c 24 5c          	mov    DWORD PTR [esp+0x5c],ecx
  638bfa:	0f 84 bc 03 00 00    	je     0x638fbc
  638c00:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  638c03:	3b f3                	cmp    esi,ebx
  638c05:	0f 84 b1 03 00 00    	je     0x638fbc
  638c0b:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  638c0e:	68 00 02 00 00       	push   0x200
  638c13:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  638c18:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  638c1b:	e8 80 b1 ee ff       	call   0x523da0
  638c20:	84 c0                	test   al,al
  638c22:	75 0b                	jne    0x638c2f
  638c24:	b0 01                	mov    al,0x1
  638c26:	5f                   	pop    edi
  638c27:	5e                   	pop    esi
  638c28:	5b                   	pop    ebx
  638c29:	8b e5                	mov    esp,ebp
  638c2b:	5d                   	pop    ebp
  638c2c:	c2 0c 00             	ret    0xc
  638c2f:	38 5d 10             	cmp    BYTE PTR [ebp+0x10],bl
  638c32:	89 5e 7c             	mov    DWORD PTR [esi+0x7c],ebx
  638c35:	75 09                	jne    0x638c40
  638c37:	c7 46 78 ff 07 00 00 	mov    DWORD PTR [esi+0x78],0x7ff
  638c3e:	eb 03                	jmp    0x638c43
  638c40:	89 5e 78             	mov    DWORD PTR [esi+0x78],ebx
  638c43:	0f 57 c0             	xorps  xmm0,xmm0
  638c46:	f3 0f 10 0d 0c da fe 00 	movss  xmm1,DWORD PTR ds:0xfeda0c
  638c4e:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  638c54:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  638c5a:	f3 0f 10 05 08 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda08
  638c62:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  638c68:	f3 0f 10 05 04 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda04
  638c70:	f3 0f 10 2d b4 b5 f9 00 	movss  xmm5,DWORD PTR ds:0xf9b5b4
  638c78:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  638c7e:	f3 0f 10 05 00 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda00
  638c86:	f3 0f 11 4c 24 64    	movss  DWORD PTR [esp+0x64],xmm1
  638c8c:	f3 0f 10 0d fc d9 fe 00 	movss  xmm1,DWORD PTR ds:0xfed9fc
  638c94:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  638c9a:	f3 0f 10 46 14       	movss  xmm0,DWORD PTR [esi+0x14]
  638c9f:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  638ca5:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  638cab:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  638cb1:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  638cb6:	f3 0f 11 4c 24 68    	movss  DWORD PTR [esp+0x68],xmm1
  638cbc:	f3 0f 10 0d f8 d9 fe 00 	movss  xmm1,DWORD PTR ds:0xfed9f8
  638cc4:	f3 0f 11 4c 24 6c    	movss  DWORD PTR [esp+0x6c],xmm1
  638cca:	f3 0f 10 4e 18       	movss  xmm1,DWORD PTR [esi+0x18]
  638ccf:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  638cd5:	0f 28 64 24 20       	movaps xmm4,XMMWORD PTR [esp+0x20]
  638cda:	f3 0f 10 4e 24       	movss  xmm1,DWORD PTR [esi+0x24]
  638cdf:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  638ce5:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  638ceb:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  638cf1:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  638cf7:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [esp+0x20]
  638cfc:	0f 29 b4 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm6
  638d04:	0f 5c f4             	subps  xmm6,xmm4
  638d07:	0f 28 c6             	movaps xmm0,xmm6
  638d0a:	0f 59 c6             	mulps  xmm0,xmm6
  638d0d:	0f 28 d0             	movaps xmm2,xmm0
  638d10:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  638d14:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638d18:	0f 58 d0             	addps  xmm2,xmm0
  638d1b:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  638d23:	0f 52 da             	rsqrtps xmm3,xmm2
  638d26:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638d2a:	0f 28 fb             	movaps xmm7,xmm3
  638d2d:	0f 59 fb             	mulps  xmm7,xmm3
  638d30:	0f 28 c8             	movaps xmm1,xmm0
  638d33:	0f 59 fa             	mulps  xmm7,xmm2
  638d36:	0f 5c cf             	subps  xmm1,xmm7
  638d39:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  638d3d:	0f 28 fd             	movaps xmm7,xmm5
  638d40:	0f 59 fb             	mulps  xmm7,xmm3
  638d43:	0f 59 cf             	mulps  xmm1,xmm7
  638d46:	0f 58 cb             	addps  xmm1,xmm3
  638d49:	0f 28 d9             	movaps xmm3,xmm1
  638d4c:	0f 59 d9             	mulps  xmm3,xmm1
  638d4f:	0f 59 da             	mulps  xmm3,xmm2
  638d52:	0f 5c c3             	subps  xmm0,xmm3
  638d55:	0f 59 e9             	mulps  xmm5,xmm1
  638d58:	0f 59 c5             	mulps  xmm0,xmm5
  638d5b:	0f 58 c1             	addps  xmm0,xmm1
  638d5e:	0f 59 c6             	mulps  xmm0,xmm6
  638d61:	0f 28 e8             	movaps xmm5,xmm0
  638d64:	0f 29 a4 24 90 00 00 00 	movaps XMMWORD PTR [esp+0x90],xmm4
  638d6c:	0f 29 ac 24 20 01 00 00 	movaps XMMWORD PTR [esp+0x120],xmm5
  638d74:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  638d79:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  638d7d:	eb 11                	jmp    0x638d90
  638d7f:	90                   	nop
  638d80:	0f 28 ac 24 20 01 00 00 	movaps xmm5,XMMWORD PTR [esp+0x120]
  638d88:	0f 28 a4 24 90 00 00 00 	movaps xmm4,XMMWORD PTR [esp+0x90]
  638d90:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  638d94:	0f 28 9c 24 80 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0x80]
  638d9c:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  638d9f:	c1 e0 04             	shl    eax,0x4
  638da2:	f3 0f 10 44 04 60    	movss  xmm0,DWORD PTR [esp+eax*1+0x60]
  638da8:	f3 0f 10 4c 04 64    	movss  xmm1,DWORD PTR [esp+eax*1+0x64]
  638dae:	f3 0f 10 54 04 68    	movss  xmm2,DWORD PTR [esp+eax*1+0x68]
  638db4:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638db8:	0f 59 c5             	mulps  xmm0,xmm5
  638dbb:	0f 58 c4             	addps  xmm0,xmm4
  638dbe:	0f 29 84 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  638dc6:	0f 29 84 24 f0 00 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm0
  638dce:	f3 0f 10 84 24 b0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xb0]
  638dd7:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  638ddd:	f3 0f 10 84 24 f4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xf4]
  638de6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  638dea:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  638df0:	0f 59 cd             	mulps  xmm1,xmm5
  638df3:	0f 58 cb             	addps  xmm1,xmm3
  638df6:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  638dfa:	0f 59 d5             	mulps  xmm2,xmm5
  638dfd:	0f 5c da             	subps  xmm3,xmm2
  638e00:	f3 0f 10 54 04 6c    	movss  xmm2,DWORD PTR [esp+eax*1+0x6c]
  638e06:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  638e09:	0f 29 8c 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm1
  638e11:	f3 0f 10 84 24 d0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xd0]
  638e1a:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  638e20:	0f 29 8c 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm1
  638e28:	f3 0f 10 84 24 14 01 00 00 	movss  xmm0,DWORD PTR [esp+0x114]
  638e31:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  638e37:	0f 29 9c 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm3
  638e3f:	f3 0f 10 84 24 a0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa0]
  638e48:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  638e4c:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  638e52:	0f 59 d5             	mulps  xmm2,xmm5
  638e55:	0f 5c e2             	subps  xmm4,xmm2
  638e58:	0f 29 9c 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm3
  638e60:	f3 0f 10 84 24 c4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc4]
  638e69:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
  638e6d:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  638e71:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  638e77:	0f 29 a4 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm4
  638e7f:	f3 0f 10 84 24 e0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xe0]
  638e88:	6a 01                	push   0x1
  638e8a:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  638e8e:	0f 29 a4 24 04 01 00 00 	movaps XMMWORD PTR [esp+0x104],xmm4
  638e96:	51                   	push   ecx
  638e97:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  638e9d:	f3 0f 10 84 24 0c 01 00 00 	movss  xmm0,DWORD PTR [esp+0x10c]
  638ea6:	57                   	push   edi
  638ea7:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  638eab:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  638eb1:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  638eb5:	e8 e6 67 4c 00       	call   0xaff6a0
  638eba:	6a 01                	push   0x1
  638ebc:	8d 54 24 48          	lea    edx,[esp+0x48]
  638ec0:	52                   	push   edx
  638ec1:	8a d8                	mov    bl,al
  638ec3:	57                   	push   edi
  638ec4:	80 e3 01             	and    bl,0x1
  638ec7:	e8 d4 67 4c 00       	call   0xaff6a0
  638ecc:	22 d8                	and    bl,al
  638ece:	6a 01                	push   0x1
  638ed0:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  638ed4:	50                   	push   eax
  638ed5:	57                   	push   edi
  638ed6:	e8 c5 67 4c 00       	call   0xaff6a0
  638edb:	6a 01                	push   0x1
  638edd:	8d 54 24 6c          	lea    edx,[esp+0x6c]
  638ee1:	84 c0                	test   al,al
  638ee3:	52                   	push   edx
  638ee4:	0f 94 c1             	sete   cl
  638ee7:	57                   	push   edi
  638ee8:	22 d9                	and    bl,cl
  638eea:	e8 b1 67 4c 00       	call   0xaff6a0
  638eef:	83 c4 30             	add    esp,0x30
  638ef2:	84 c0                	test   al,al
  638ef4:	0f 94 c0             	sete   al
  638ef7:	84 c3                	test   bl,al
  638ef9:	0f 84 9c 00 00 00    	je     0x638f9b
  638eff:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  638f03:	33 c9                	xor    ecx,ecx
  638f05:	33 c0                	xor    eax,eax
  638f07:	2b d1                	sub    edx,ecx
  638f09:	74 0c                	je     0x638f17
  638f0b:	83 ea 01             	sub    edx,0x1
  638f0e:	75 0e                	jne    0x638f1e
  638f10:	b8 80 07 c0 00       	mov    eax,0xc00780
  638f15:	eb 05                	jmp    0x638f1c
  638f17:	b8 80 07 18 00       	mov    eax,0x180780
  638f1c:	33 c9                	xor    ecx,ecx
  638f1e:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  638f22:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  638f26:	6a 01                	push   0x1
  638f28:	51                   	push   ecx
  638f29:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  638f2d:	50                   	push   eax
  638f2e:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  638f32:	51                   	push   ecx
  638f33:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  638f37:	83 ec 08             	sub    esp,0x8
  638f3a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638f3e:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  638f42:	d9 1c 24             	fstp   DWORD PTR [esp]
  638f45:	52                   	push   edx
  638f46:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  638f4a:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  638f4d:	83 ec 08             	sub    esp,0x8
  638f50:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638f54:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  638f58:	d9 1c 24             	fstp   DWORD PTR [esp]
  638f5b:	50                   	push   eax
  638f5c:	d9 44 24 7c          	fld    DWORD PTR [esp+0x7c]
  638f60:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  638f63:	83 ec 08             	sub    esp,0x8
  638f66:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638f6a:	d9 84 24 80 00 00 00 	fld    DWORD PTR [esp+0x80]
  638f71:	d9 1c 24             	fstp   DWORD PTR [esp]
  638f74:	51                   	push   ecx
  638f75:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  638f79:	8b 8c 24 90 00 00 00 	mov    ecx,DWORD PTR [esp+0x90]
  638f80:	83 ec 08             	sub    esp,0x8
  638f83:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638f87:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  638f8b:	d9 1c 24             	fstp   DWORD PTR [esp]
  638f8e:	56                   	push   esi
  638f8f:	52                   	push   edx
  638f90:	50                   	push   eax
  638f91:	57                   	push   edi
  638f92:	e8 b9 f4 ff ff       	call   0x638450
  638f97:	20 44 24 1b          	and    BYTE PTR [esp+0x1b],al
  638f9b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  638f9f:	83 c0 01             	add    eax,0x1
  638fa2:	83 f8 02             	cmp    eax,0x2
  638fa5:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  638fa9:	0f 82 d1 fd ff ff    	jb     0x638d80
  638faf:	8a 44 24 1b          	mov    al,BYTE PTR [esp+0x1b]
  638fb3:	5f                   	pop    edi
  638fb4:	5e                   	pop    esi
  638fb5:	5b                   	pop    ebx
  638fb6:	8b e5                	mov    esp,ebp
  638fb8:	5d                   	pop    ebp
  638fb9:	c2 0c 00             	ret    0xc
  638fbc:	5f                   	pop    edi
  638fbd:	5e                   	pop    esi
  638fbe:	32 c0                	xor    al,al
  638fc0:	5b                   	pop    ebx
  638fc1:	8b e5                	mov    esp,ebp
  638fc3:	5d                   	pop    ebp
  638fc4:	c2 0c 00             	ret    0xc
