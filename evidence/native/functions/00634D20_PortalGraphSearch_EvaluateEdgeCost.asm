# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00634d20,0x006350fb); analyst name PortalGraphSearch_EvaluateEdgeCost.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00634d20 <.text+0x233d20>:
  634d20:	51                   	push   ecx
  634d21:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  634d25:	53                   	push   ebx
  634d26:	55                   	push   ebp
  634d27:	8b e9                	mov    ebp,ecx
  634d29:	8b c8                	mov    ecx,eax
  634d2b:	81 e1 f0 ff 00 00    	and    ecx,0xfff0
  634d31:	81 f9 f0 ff 00 00    	cmp    ecx,0xfff0
  634d37:	56                   	push   esi
  634d38:	57                   	push   edi
  634d39:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  634d3d:	74 33                	je     0x634d72
  634d3f:	8b c8                	mov    ecx,eax
  634d41:	c1 e9 10             	shr    ecx,0x10
  634d44:	8b d1                	mov    edx,ecx
  634d46:	c1 e2 04             	shl    edx,0x4
  634d49:	03 d1                	add    edx,ecx
  634d4b:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  634d4f:	8b 89 90 00 00 00    	mov    ecx,DWORD PTR [ecx+0x90]
  634d55:	8b 74 91 08          	mov    esi,DWORD PTR [ecx+edx*4+0x8]
  634d59:	2b 74 91 04          	sub    esi,DWORD PTR [ecx+edx*4+0x4]
  634d5d:	8d 0c 91             	lea    ecx,[ecx+edx*4]
  634d60:	0f b7 d0             	movzx  edx,ax
  634d63:	c1 fe 02             	sar    esi,0x2
  634d66:	3b d6                	cmp    edx,esi
  634d68:	73 08                	jae    0x634d72
  634d6a:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  634d6d:	8b 34 91             	mov    esi,DWORD PTR [ecx+edx*4]
  634d70:	eb 02                	jmp    0x634d74
  634d72:	33 f6                	xor    esi,esi
  634d74:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  634d78:	8b d3                	mov    edx,ebx
  634d7a:	81 e2 f0 ff 00 00    	and    edx,0xfff0
  634d80:	81 fa f0 ff 00 00    	cmp    edx,0xfff0
  634d86:	74 33                	je     0x634dbb
  634d88:	8b cb                	mov    ecx,ebx
  634d8a:	c1 e9 10             	shr    ecx,0x10
  634d8d:	8b d1                	mov    edx,ecx
  634d8f:	c1 e2 04             	shl    edx,0x4
  634d92:	03 d1                	add    edx,ecx
  634d94:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  634d98:	8b 89 90 00 00 00    	mov    ecx,DWORD PTR [ecx+0x90]
  634d9e:	8b 7c 91 08          	mov    edi,DWORD PTR [ecx+edx*4+0x8]
  634da2:	2b 7c 91 04          	sub    edi,DWORD PTR [ecx+edx*4+0x4]
  634da6:	8d 0c 91             	lea    ecx,[ecx+edx*4]
  634da9:	0f b7 d3             	movzx  edx,bx
  634dac:	c1 ff 02             	sar    edi,0x2
  634daf:	3b d7                	cmp    edx,edi
  634db1:	73 08                	jae    0x634dbb
  634db3:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  634db6:	8b 3c 91             	mov    edi,DWORD PTR [ecx+edx*4]
  634db9:	eb 02                	jmp    0x634dbd
  634dbb:	33 ff                	xor    edi,edi
  634dbd:	3b f7                	cmp    esi,edi
  634dbf:	0f 85 52 01 00 00    	jne    0x634f17
  634dc5:	8b e8                	mov    ebp,eax
  634dc7:	0f b7 46 48          	movzx  eax,WORD PTR [esi+0x48]
  634dcb:	c1 ed 10             	shr    ebp,0x10
  634dce:	66 3b e8             	cmp    bp,ax
  634dd1:	74 17                	je     0x634dea
  634dd3:	f6 46 58 01          	test   BYTE PTR [esi+0x58],0x1
  634dd7:	74 0e                	je     0x634de7
  634dd9:	d9 05 38 c6 fe 00    	fld    DWORD PTR ds:0xfec638
  634ddf:	5f                   	pop    edi
  634de0:	5e                   	pop    esi
  634de1:	5d                   	pop    ebp
  634de2:	5b                   	pop    ebx
  634de3:	59                   	pop    ecx
  634de4:	c2 18 00             	ret    0x18
  634de7:	66 3b e8             	cmp    bp,ax
  634dea:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  634dee:	75 0e                	jne    0x634dfe
  634df0:	6a 00                	push   0x0
  634df2:	57                   	push   edi
  634df3:	8b ce                	mov    ecx,esi
  634df5:	e8 b6 af 01 00       	call   0x64fdb0
  634dfa:	84 c0                	test   al,al
  634dfc:	75 db                	jne    0x634dd9
  634dfe:	c1 eb 10             	shr    ebx,0x10
  634e01:	66 3b 5e 48          	cmp    bx,WORD PTR [esi+0x48]
  634e05:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  634e09:	75 0e                	jne    0x634e19
  634e0b:	6a 01                	push   0x1
  634e0d:	57                   	push   edi
  634e0e:	8b ce                	mov    ecx,esi
  634e10:	e8 9b af 01 00       	call   0x64fdb0
  634e15:	84 c0                	test   al,al
  634e17:	75 c0                	jne    0x634dd9
  634e19:	8a 5e 58             	mov    bl,BYTE PTR [esi+0x58]
  634e1c:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  634e1f:	d0 eb                	shr    bl,1
  634e21:	80 e3 01             	and    bl,0x1
  634e24:	66 3b 6e 48          	cmp    bp,WORD PTR [esi+0x48]
  634e28:	6a 00                	push   0x0
  634e2a:	0f 94 c2             	sete   dl
  634e2d:	8b ce                	mov    ecx,esi
  634e2f:	52                   	push   edx
  634e30:	50                   	push   eax
  634e31:	e8 3a a3 01 00       	call   0x64f170
  634e36:	66 8b 4c 24 18       	mov    cx,WORD PTR [esp+0x18]
  634e3b:	66 3b 4e 48          	cmp    cx,WORD PTR [esi+0x48]
  634e3f:	6a 01                	push   0x1
  634e41:	0f 94 c2             	sete   dl
  634e44:	8b e8                	mov    ebp,eax
  634e46:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  634e49:	8b ce                	mov    ecx,esi
  634e4b:	52                   	push   edx
  634e4c:	50                   	push   eax
  634e4d:	e8 1e a3 01 00       	call   0x64f170
  634e52:	55                   	push   ebp
  634e53:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  634e57:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  634e5a:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  634e5d:	51                   	push   ecx
  634e5e:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  634e62:	52                   	push   edx
  634e63:	57                   	push   edi
  634e64:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  634e68:	e8 53 f2 ff ff       	call   0x6340c0
  634e6d:	84 c0                	test   al,al
  634e6f:	0f 84 64 ff ff ff    	je     0x634dd9
  634e75:	84 db                	test   bl,bl
  634e77:	75 1f                	jne    0x634e98
  634e79:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  634e7d:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  634e80:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  634e83:	50                   	push   eax
  634e84:	51                   	push   ecx
  634e85:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  634e89:	52                   	push   edx
  634e8a:	57                   	push   edi
  634e8b:	e8 30 f2 ff ff       	call   0x6340c0
  634e90:	84 c0                	test   al,al
  634e92:	0f 84 41 ff ff ff    	je     0x634dd9
  634e98:	0f 57 c0             	xorps  xmm0,xmm0
  634e9b:	6a 00                	push   0x0
  634e9d:	57                   	push   edi
  634e9e:	8b ce                	mov    ecx,esi
  634ea0:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  634ea6:	e8 25 af 01 00       	call   0x64fdd0
  634eab:	84 c0                	test   al,al
  634ead:	75 0e                	jne    0x634ebd
  634eaf:	6a 01                	push   0x1
  634eb1:	57                   	push   edi
  634eb2:	8b ce                	mov    ecx,esi
  634eb4:	e8 17 af 01 00       	call   0x64fdd0
  634eb9:	84 c0                	test   al,al
  634ebb:	74 0e                	je     0x634ecb
  634ebd:	f3 0f 10 05 3c c6 fe 00 	movss  xmm0,DWORD PTR ds:0xfec63c
  634ec5:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  634ecb:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  634ecf:	85 c0                	test   eax,eax
  634ed1:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  634ed5:	75 04                	jne    0x634edb
  634ed7:	85 c9                	test   ecx,ecx
  634ed9:	74 2d                	je     0x634f08
  634edb:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  634ede:	3b d0                	cmp    edx,eax
  634ee0:	75 11                	jne    0x634ef3
  634ee2:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  634ee5:	3b c1                	cmp    eax,ecx
  634ee7:	75 0a                	jne    0x634ef3
  634ee9:	d9 e8                	fld1
  634eeb:	5f                   	pop    edi
  634eec:	5e                   	pop    esi
  634eed:	5d                   	pop    ebp
  634eee:	5b                   	pop    ebx
  634eef:	59                   	pop    ecx
  634ef0:	c2 18 00             	ret    0x18
  634ef3:	d9 46 2c             	fld    DWORD PTR [esi+0x2c]
  634ef6:	5f                   	pop    edi
  634ef7:	d8 0d 7c 3f fb 00    	fmul   DWORD PTR ds:0xfb3f7c
  634efd:	5e                   	pop    esi
  634efe:	5d                   	pop    ebp
  634eff:	5b                   	pop    ebx
  634f00:	d8 44 24 08          	fadd   DWORD PTR [esp+0x8]
  634f04:	59                   	pop    ecx
  634f05:	c2 18 00             	ret    0x18
  634f08:	d9 46 2c             	fld    DWORD PTR [esi+0x2c]
  634f0b:	5f                   	pop    edi
  634f0c:	d8 44 24 14          	fadd   DWORD PTR [esp+0x14]
  634f10:	5e                   	pop    esi
  634f11:	5d                   	pop    ebp
  634f12:	5b                   	pop    ebx
  634f13:	59                   	pop    ecx
  634f14:	c2 18 00             	ret    0x18
  634f17:	85 f6                	test   esi,esi
  634f19:	0f 84 e4 00 00 00    	je     0x635003
  634f1f:	85 ff                	test   edi,edi
  634f21:	0f 84 58 01 00 00    	je     0x63507f
  634f27:	8a 4e 58             	mov    cl,BYTE PTR [esi+0x58]
  634f2a:	8a 57 58             	mov    dl,BYTE PTR [edi+0x58]
  634f2d:	d0 e9                	shr    cl,1
  634f2f:	d0 ea                	shr    dl,1
  634f31:	80 e2 01             	and    dl,0x1
  634f34:	c1 e8 10             	shr    eax,0x10
  634f37:	80 e1 01             	and    cl,0x1
  634f3a:	66 39 46 48          	cmp    WORD PTR [esi+0x48],ax
  634f3e:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  634f42:	74 08                	je     0x634f4c
  634f44:	84 c9                	test   cl,cl
  634f46:	75 04                	jne    0x634f4c
  634f48:	32 c0                	xor    al,al
  634f4a:	eb 05                	jmp    0x634f51
  634f4c:	b8 01 00 00 00       	mov    eax,0x1
  634f51:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  634f55:	8b 4d 40             	mov    ecx,DWORD PTR [ebp+0x40]
  634f58:	6a 01                	push   0x1
  634f5a:	50                   	push   eax
  634f5b:	51                   	push   ecx
  634f5c:	8b ce                	mov    ecx,esi
  634f5e:	e8 0d a2 01 00       	call   0x64f170
  634f63:	c1 eb 10             	shr    ebx,0x10
  634f66:	66 39 5f 48          	cmp    WORD PTR [edi+0x48],bx
  634f6a:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  634f6e:	74 0b                	je     0x634f7b
  634f70:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  634f75:	75 04                	jne    0x634f7b
  634f77:	32 c0                	xor    al,al
  634f79:	eb 05                	jmp    0x634f80
  634f7b:	b8 01 00 00 00       	mov    eax,0x1
  634f80:	8b 55 40             	mov    edx,DWORD PTR [ebp+0x40]
  634f83:	6a 00                	push   0x0
  634f85:	50                   	push   eax
  634f86:	52                   	push   edx
  634f87:	8b cf                	mov    ecx,edi
  634f89:	e8 e2 a1 01 00       	call   0x64f170
  634f8e:	0f 57 c0             	xorps  xmm0,xmm0
  634f91:	6a 01                	push   0x1
  634f93:	55                   	push   ebp
  634f94:	8b ce                	mov    ecx,esi
  634f96:	8b d8                	mov    ebx,eax
  634f98:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  634f9e:	e8 2d ae 01 00       	call   0x64fdd0
  634fa3:	84 c0                	test   al,al
  634fa5:	75 0e                	jne    0x634fb5
  634fa7:	6a 00                	push   0x0
  634fa9:	55                   	push   ebp
  634faa:	8b cf                	mov    ecx,edi
  634fac:	e8 1f ae 01 00       	call   0x64fdd0
  634fb1:	84 c0                	test   al,al
  634fb3:	74 0e                	je     0x634fc3
  634fb5:	f3 0f 10 05 3c c6 fe 00 	movss  xmm0,DWORD PTR ds:0xfec63c
  634fbd:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  634fc3:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  634fc7:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  634fca:	2b 4b 08             	sub    ecx,DWORD PTR [ebx+0x8]
  634fcd:	5f                   	pop    edi
  634fce:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  634fd2:	db 44 24 18          	fild   DWORD PTR [esp+0x18]
  634fd6:	5e                   	pop    esi
  634fd7:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  634fda:	5d                   	pop    ebp
  634fdb:	d8 63 04             	fsub   DWORD PTR [ebx+0x4]
  634fde:	d9 00                	fld    DWORD PTR [eax]
  634fe0:	d8 23                	fsub   DWORD PTR [ebx]
  634fe2:	5b                   	pop    ebx
  634fe3:	dc c8                	fmul   st(0),st
  634fe5:	d9 c1                	fld    st(1)
  634fe7:	de ca                	fmulp  st(2),st
  634fe9:	de c1                	faddp  st(1),st
  634feb:	d9 c1                	fld    st(1)
  634fed:	de ca                	fmulp  st(2),st
  634fef:	d9 c9                	fxch   st(1)
  634ff1:	d8 0d 20 d0 fb 00    	fmul   DWORD PTR ds:0xfbd020
  634ff7:	de c1                	faddp  st(1),st
  634ff9:	d9 fa                	fsqrt
  634ffb:	d8 44 24 08          	fadd   DWORD PTR [esp+0x8]
  634fff:	59                   	pop    ecx
  635000:	c2 18 00             	ret    0x18
  635003:	85 ff                	test   edi,edi
  635005:	0f 84 e6 00 00 00    	je     0x6350f1
  63500b:	66 3d fe ff          	cmp    ax,0xfffe
  63500f:	0f 85 dc 00 00 00    	jne    0x6350f1
  635015:	8a 47 58             	mov    al,BYTE PTR [edi+0x58]
  635018:	d0 e8                	shr    al,1
  63501a:	c1 eb 10             	shr    ebx,0x10
  63501d:	24 01                	and    al,0x1
  63501f:	66 39 5f 48          	cmp    WORD PTR [edi+0x48],bx
  635023:	74 04                	je     0x635029
  635025:	84 c0                	test   al,al
  635027:	74 05                	je     0x63502e
  635029:	b8 01 00 00 00       	mov    eax,0x1
  63502e:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  635032:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
  635035:	6a 00                	push   0x0
  635037:	50                   	push   eax
  635038:	52                   	push   edx
  635039:	8b cf                	mov    ecx,edi
  63503b:	e8 30 a1 01 00       	call   0x64f170
  635040:	0f 57 c0             	xorps  xmm0,xmm0
  635043:	6a 00                	push   0x0
  635045:	56                   	push   esi
  635046:	8b cf                	mov    ecx,edi
  635048:	8b d8                	mov    ebx,eax
  63504a:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  635050:	e8 7b ad 01 00       	call   0x64fdd0
  635055:	84 c0                	test   al,al
  635057:	74 0e                	je     0x635067
  635059:	f3 0f 10 05 3c c6 fe 00 	movss  xmm0,DWORD PTR ds:0xfec63c
  635061:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  635067:	8b cd                	mov    ecx,ebp
  635069:	83 c1 08             	add    ecx,0x8
  63506c:	8b c3                	mov    eax,ebx
  63506e:	e8 9d ff fe ff       	call   0x625010
  635073:	d8 44 24 18          	fadd   DWORD PTR [esp+0x18]
  635077:	5f                   	pop    edi
  635078:	5e                   	pop    esi
  635079:	5d                   	pop    ebp
  63507a:	5b                   	pop    ebx
  63507b:	59                   	pop    ecx
  63507c:	c2 18 00             	ret    0x18
  63507f:	66 81 fb ff ff       	cmp    bx,0xffff
  635084:	75 6b                	jne    0x6350f1
  635086:	c1 e8 10             	shr    eax,0x10
  635089:	66 39 46 48          	cmp    WORD PTR [esi+0x48],ax
  63508d:	74 0c                	je     0x63509b
  63508f:	56                   	push   esi
  635090:	8b cd                	mov    ecx,ebp
  635092:	e8 b9 ff fe ff       	call   0x625050
  635097:	84 c0                	test   al,al
  635099:	74 05                	je     0x6350a0
  63509b:	b8 01 00 00 00       	mov    eax,0x1
  6350a0:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  6350a4:	6a 01                	push   0x1
  6350a6:	50                   	push   eax
  6350a7:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  6350aa:	50                   	push   eax
  6350ab:	8b ce                	mov    ecx,esi
  6350ad:	e8 be a0 01 00       	call   0x64f170
  6350b2:	0f 57 c0             	xorps  xmm0,xmm0
  6350b5:	6a 01                	push   0x1
  6350b7:	57                   	push   edi
  6350b8:	8b ce                	mov    ecx,esi
  6350ba:	8b d8                	mov    ebx,eax
  6350bc:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6350c2:	e8 09 ad 01 00       	call   0x64fdd0
  6350c7:	84 c0                	test   al,al
  6350c9:	74 0e                	je     0x6350d9
  6350cb:	f3 0f 10 05 3c c6 fe 00 	movss  xmm0,DWORD PTR ds:0xfec63c
  6350d3:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6350d9:	8b c5                	mov    eax,ebp
  6350db:	83 c0 14             	add    eax,0x14
  6350de:	8b cb                	mov    ecx,ebx
  6350e0:	e8 2b ff fe ff       	call   0x625010
  6350e5:	d8 44 24 18          	fadd   DWORD PTR [esp+0x18]
  6350e9:	5f                   	pop    edi
  6350ea:	5e                   	pop    esi
  6350eb:	5d                   	pop    ebp
  6350ec:	5b                   	pop    ebx
  6350ed:	59                   	pop    ecx
  6350ee:	c2 18 00             	ret    0x18
  6350f1:	d9 ee                	fldz
  6350f3:	5f                   	pop    edi
  6350f4:	5e                   	pop    esi
  6350f5:	5d                   	pop    ebp
  6350f6:	5b                   	pop    ebx
  6350f7:	59                   	pop    ecx
  6350f8:	c2 18 00             	ret    0x18
