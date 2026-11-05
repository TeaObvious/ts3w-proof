# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00b09c70, 0x00b09e1c); analyst name Footprint_BuildXZRotationTranslationMatrix.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b09c70 <.text+0x708c70>:
  b09c70:	55                   	push   ebp
  b09c71:	8b ec                	mov    ebp,esp
  b09c73:	83 e4 f0             	and    esp,0xfffffff0
  b09c76:	83 ec 28             	sub    esp,0x28
  b09c79:	0f 57 d2             	xorps  xmm2,xmm2
  b09c7c:	56                   	push   esi
  b09c7d:	57                   	push   edi
  b09c7e:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  b09c81:	85 ff                	test   edi,edi
  b09c83:	0f 28 da             	movaps xmm3,xmm2
  b09c86:	0f 28 e2             	movaps xmm4,xmm2
  b09c89:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  b09c8f:	f3 0f 11 64 24 1c    	movss  DWORD PTR [esp+0x1c],xmm4
  b09c95:	0f 84 92 00 00 00    	je     0xb09d2d
  b09c9b:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  b09ca0:	f3 0f 5e 05 d4 45 18 01 	divss  xmm0,DWORD PTR ds:0x11845d4
  b09ca8:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  b09cae:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  b09cb2:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
  b09cb6:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  b09cba:	81 e1 07 00 00 80    	and    ecx,0x80000007
  b09cc0:	79 05                	jns    0xb09cc7
  b09cc2:	49                   	dec    ecx
  b09cc3:	83 c9 f8             	or     ecx,0xfffffff8
  b09cc6:	41                   	inc    ecx
  b09cc7:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  b09cca:	51                   	push   ecx
  b09ccb:	d9 1c 24             	fstp   DWORD PTR [esp]
  b09cce:	e8 5d 20 ff ff       	call   0xafbd30
  b09cd3:	83 e1 07             	and    ecx,0x7
  b09cd6:	83 c4 04             	add    esp,0x4
  b09cd9:	3b c8                	cmp    ecx,eax
  b09cdb:	74 50                	je     0xb09d2d
  b09cdd:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b09ce0:	85 f6                	test   esi,esi
  b09ce2:	74 49                	je     0xb09d2d
  b09ce4:	57                   	push   edi
  b09ce5:	56                   	push   esi
  b09ce6:	e8 f5 5f ff ff       	call   0xaffce0
  b09ceb:	83 c4 08             	add    esp,0x8
  b09cee:	84 c0                	test   al,al
  b09cf0:	74 2c                	je     0xb09d1e
  b09cf2:	8d 44 24 20          	lea    eax,[esp+0x20]
  b09cf6:	50                   	push   eax
  b09cf7:	57                   	push   edi
  b09cf8:	56                   	push   esi
  b09cf9:	e8 72 bb ff ff       	call   0xb05870
  b09cfe:	0f 28 44 24 2c       	movaps xmm0,XMMWORD PTR [esp+0x2c]
  b09d03:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  b09d08:	f3 0f 10 5c 24 2c    	movss  xmm3,DWORD PTR [esp+0x2c]
  b09d0e:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  b09d13:	f3 0f 10 64 24 34    	movss  xmm4,DWORD PTR [esp+0x34]
  b09d19:	83 c4 0c             	add    esp,0xc
  b09d1c:	eb 0c                	jmp    0xb09d2a
  b09d1e:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  b09d24:	f3 0f 10 64 24 1c    	movss  xmm4,DWORD PTR [esp+0x1c]
  b09d2a:	0f 57 d2             	xorps  xmm2,xmm2
  b09d2d:	80 7d 1c 00          	cmp    BYTE PTR [ebp+0x1c],0x0
  b09d31:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  b09d34:	d9 c0                	fld    st(0)
  b09d36:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  b09d39:	d9 fe                	fsin
  b09d3b:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  b09d43:	f3 0f 11 50 08       	movss  DWORD PTR [eax+0x8],xmm2
  b09d48:	f3 0f 11 50 14       	movss  DWORD PTR [eax+0x14],xmm2
  b09d4d:	f3 0f 10 15 f0 98 f9 00 	movss  xmm2,DWORD PTR ds:0xf998f0
  b09d55:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  b09d5a:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  b09d5e:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  b09d64:	d9 ff                	fcos
  b09d66:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  b09d6a:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  b09d70:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  b09d74:	74 57                	je     0xb09dcd
  b09d76:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  b09d7b:	0f 28 ea             	movaps xmm5,xmm2
  b09d7e:	f3 0f 5c e9          	subss  xmm5,xmm1
  b09d82:	f3 0f 11 68 0c       	movss  DWORD PTR [eax+0xc],xmm5
  b09d87:	f3 0f 10 6d 14       	movss  xmm5,DWORD PTR [ebp+0x14]
  b09d8c:	f3 0f 11 40 10       	movss  DWORD PTR [eax+0x10],xmm0
  b09d91:	0f 28 f1             	movaps xmm6,xmm1
  b09d94:	f3 0f 59 75 18       	mulss  xmm6,DWORD PTR [ebp+0x18]
  b09d99:	0f 28 f8             	movaps xmm7,xmm0
  b09d9c:	f3 0f 59 45 18       	mulss  xmm0,DWORD PTR [ebp+0x18]
  b09da1:	f3 0f 59 fd          	mulss  xmm7,xmm5
  b09da5:	f3 0f 59 cd          	mulss  xmm1,xmm5
  b09da9:	f3 0f 5c d1          	subss  xmm2,xmm1
  b09dad:	f3 0f 5c f7          	subss  xmm6,xmm7
  b09db1:	f3 0f 5c f3          	subss  xmm6,xmm3
  b09db5:	f3 0f 5c d0          	subss  xmm2,xmm0
  b09db9:	f3 0f 11 70 18       	movss  DWORD PTR [eax+0x18],xmm6
  b09dbe:	f3 0f 5c d4          	subss  xmm2,xmm4
  b09dc2:	f3 0f 11 50 1c       	movss  DWORD PTR [eax+0x1c],xmm2
  b09dc7:	5f                   	pop    edi
  b09dc8:	5e                   	pop    esi
  b09dc9:	8b e5                	mov    esp,ebp
  b09dcb:	5d                   	pop    ebp
  b09dcc:	c3                   	ret
  b09dcd:	f3 0f 5c d1          	subss  xmm2,xmm1
  b09dd1:	f3 0f 11 50 04       	movss  DWORD PTR [eax+0x4],xmm2
  b09dd6:	f3 0f 11 48 0c       	movss  DWORD PTR [eax+0xc],xmm1
  b09ddb:	0f 28 d1             	movaps xmm2,xmm1
  b09dde:	f3 0f 59 d4          	mulss  xmm2,xmm4
  b09de2:	0f 28 e8             	movaps xmm5,xmm0
  b09de5:	f3 0f 11 40 10       	movss  DWORD PTR [eax+0x10],xmm0
  b09dea:	f3 0f 59 eb          	mulss  xmm5,xmm3
  b09dee:	f3 0f 58 d5          	addss  xmm2,xmm5
  b09df2:	f3 0f 58 55 14       	addss  xmm2,DWORD PTR [ebp+0x14]
  b09df7:	f3 0f 11 50 18       	movss  DWORD PTR [eax+0x18],xmm2
  b09dfc:	f3 0f 10 55 18       	movss  xmm2,DWORD PTR [ebp+0x18]
  b09e01:	f3 0f 59 cb          	mulss  xmm1,xmm3
  b09e05:	f3 0f 5c d1          	subss  xmm2,xmm1
  b09e09:	f3 0f 59 c4          	mulss  xmm0,xmm4
  b09e0d:	5f                   	pop    edi
  b09e0e:	f3 0f 58 d0          	addss  xmm2,xmm0
  b09e12:	f3 0f 11 50 1c       	movss  DWORD PTR [eax+0x1c],xmm2
  b09e17:	5e                   	pop    esi
  b09e18:	8b e5                	mov    esp,ebp
  b09e1a:	5d                   	pop    ebp
  b09e1b:	c3                   	ret
