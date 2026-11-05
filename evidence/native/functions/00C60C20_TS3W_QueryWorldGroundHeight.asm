# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00c60c20, 0x00c60e1d).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

00c60c20 <.text+0x85fc20>:
  c60c20:	55                   	push   ebp
  c60c21:	8b ec                	mov    ebp,esp
  c60c23:	83 e4 f0             	and    esp,0xfffffff0
  c60c26:	83 ec 18             	sub    esp,0x18
  c60c29:	f3 0f 10 05 74 96 07 	movss  xmm0,DWORD PTR ds:0x1079674
  c60c30:	01
  c60c31:	53                   	push   ebx
  c60c32:	56                   	push   esi
  c60c33:	8b f1                	mov    esi,ecx
  c60c35:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  c60c3b:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  c60c40:	32 db                	xor    bl,bl
  c60c42:	0f 2f 86 b4 00 00 00 	comiss xmm0,DWORD PTR [esi+0xb4]
  c60c49:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  c60c4e:	0f 82 a7 01 00 00    	jb     0xc60dfb
  c60c54:	f3 0f 10 4d 0c       	movss  xmm1,DWORD PTR [ebp+0xc]
  c60c59:	0f 2f 8e b8 00 00 00 	comiss xmm1,DWORD PTR [esi+0xb8]
  c60c60:	0f 82 95 01 00 00    	jb     0xc60dfb
  c60c66:	f3 0f 10 96 bc 00 00 	movss  xmm2,DWORD PTR [esi+0xbc]
  c60c6d:	00
  c60c6e:	0f 2f d0             	comiss xmm2,xmm0
  c60c71:	0f 86 84 01 00 00    	jbe    0xc60dfb
  c60c77:	f3 0f 10 86 c4 00 00 	movss  xmm0,DWORD PTR [esi+0xc4]
  c60c7e:	00
  c60c7f:	f3 0f 58 86 c0 00 00 	addss  xmm0,DWORD PTR [esi+0xc0]
  c60c86:	00
  c60c87:	0f 2f c1             	comiss xmm0,xmm1
  c60c8a:	0f 86 6b 01 00 00    	jbe    0xc60dfb
  c60c90:	38 5d 14             	cmp    BYTE PTR [ebp+0x14],bl
  c60c93:	74 51                	je     0xc60ce6
  c60c95:	8b 8e 6c 01 00 00    	mov    ecx,DWORD PTR [esi+0x16c]
  c60c9b:	85 c9                	test   ecx,ecx
  c60c9d:	74 47                	je     0xc60ce6
  c60c9f:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c60ca2:	83 ec 08             	sub    esp,0x8
  c60ca5:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c60ca9:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c60cac:	d9 1c 24             	fstp   DWORD PTR [esp]
  c60caf:	e8 5c d3 01 00       	call   0xc7e010
  c60cb4:	85 c0                	test   eax,eax
  c60cb6:	74 2e                	je     0xc60ce6
  c60cb8:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  c60cbb:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c60cbe:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c60cc2:	51                   	push   ecx
  c60cc3:	52                   	push   edx
  c60cc4:	83 ec 08             	sub    esp,0x8
  c60cc7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c60ccb:	8b c8                	mov    ecx,eax
  c60ccd:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c60cd0:	d9 1c 24             	fstp   DWORD PTR [esp]
  c60cd3:	e8 08 fc e7 ff       	call   0xae08e0
  c60cd8:	84 c0                	test   al,al
  c60cda:	74 0a                	je     0xc60ce6
  c60cdc:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  c60ce1:	e9 b5 00 00 00       	jmp    0xc60d9b
  c60ce6:	80 7d 18 00          	cmp    BYTE PTR [ebp+0x18],0x0
  c60cea:	0f 84 ab 00 00 00    	je     0xc60d9b
  c60cf0:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  c60cf3:	85 c9                	test   ecx,ecx
  c60cf5:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  c60cfc:	00
  c60cfd:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  c60d04:	00
  c60d05:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  c60d0b:	0f 84 8a 00 00 00    	je     0xc60d9b
  c60d11:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c60d14:	6a 01                	push   0x1
  c60d16:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  c60d1a:	50                   	push   eax
  c60d1b:	8d 54 24 24          	lea    edx,[esp+0x24]
  c60d1f:	52                   	push   edx
  c60d20:	6a 00                	push   0x0
  c60d22:	6a 01                	push   0x1
  c60d24:	83 ec 08             	sub    esp,0x8
  c60d27:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c60d2b:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c60d2e:	d9 1c 24             	fstp   DWORD PTR [esp]
  c60d31:	e8 2a 72 f1 ff       	call   0xb77f60
  c60d36:	84 c0                	test   al,al
  c60d38:	74 61                	je     0xc60d9b
  c60d3a:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  c60d3e:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  c60d42:	83 ec 0c             	sub    esp,0xc
  c60d45:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  c60d49:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c60d4c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c60d50:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c60d53:	d9 1c 24             	fstp   DWORD PTR [esp]
  c60d56:	e8 d5 23 f1 ff       	call   0xb73130
  c60d5b:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  c60d5e:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  c60d62:	85 c9                	test   ecx,ecx
  c60d64:	b3 01                	mov    bl,0x1
  c60d66:	74 33                	je     0xc60d9b
  c60d68:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c60d6b:	83 ec 08             	sub    esp,0x8
  c60d6e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c60d72:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c60d75:	d9 1c 24             	fstp   DWORD PTR [esp]
  c60d78:	e8 03 83 fc ff       	call   0xc29080
  c60d7d:	d9 54 24 1c          	fst    DWORD PTR [esp+0x1c]
  c60d81:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  c60d85:	d9 c9                	fxch   st(1)
  c60d87:	df f1                	fcomip st,st(1)
  c60d89:	dd d8                	fstp   st(0)
  c60d8b:	76 0e                	jbe    0xc60d9b
  c60d8d:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  c60d93:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  c60d99:	32 db                	xor    bl,bl
  c60d9b:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  c60da1:	f3 0f 5c 0d 74 96 07 	subss  xmm1,DWORD PTR ds:0x1079674
  c60da8:	01
  c60da9:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  c60db0:	00
  c60db1:	f3 0f 10 c9          	movss  xmm1,xmm1
  c60db5:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c60db9:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  c60dbd:	0f 59 c1             	mulps  xmm0,xmm1
  c60dc0:	0f 5f c1             	maxps  xmm0,xmm1
  c60dc3:	f3 0f 10 0d 28 97 07 	movss  xmm1,DWORD PTR ds:0x1079728
  c60dca:	01
  c60dcb:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c60dcf:	0f c2 c1 02          	cmpleps xmm0,xmm1
  c60dd3:	0f 50 c0             	movmskps eax,xmm0
  c60dd6:	83 f8 0f             	cmp    eax,0xf
  c60dd9:	75 20                	jne    0xc60dfb
  c60ddb:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  c60dde:	85 c9                	test   ecx,ecx
  c60de0:	74 19                	je     0xc60dfb
  c60de2:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c60de5:	83 ec 08             	sub    esp,0x8
  c60de8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c60dec:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c60def:	d9 1c 24             	fstp   DWORD PTR [esp]
  c60df2:	e8 89 82 fc ff       	call   0xc29080
  c60df7:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  c60dfb:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  c60dfe:	85 c0                	test   eax,eax
  c60e00:	74 06                	je     0xc60e08
  c60e02:	8a 4c 24 13          	mov    cl,BYTE PTR [esp+0x13]
  c60e06:	88 08                	mov    BYTE PTR [eax],cl
  c60e08:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  c60e0b:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  c60e0f:	85 c0                	test   eax,eax
  c60e11:	74 02                	je     0xc60e15
  c60e13:	88 18                	mov    BYTE PTR [eax],bl
  c60e15:	5e                   	pop    esi
  c60e16:	5b                   	pop    ebx
  c60e17:	8b e5                	mov    esp,ebp
  c60e19:	5d                   	pop    ebp
  c60e1a:	c2 1c 00             	ret    0x1c
