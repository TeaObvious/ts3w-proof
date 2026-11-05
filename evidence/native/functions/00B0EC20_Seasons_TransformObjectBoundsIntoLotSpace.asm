# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00b0ec20, 0x00b0edab).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

; Analyst-assigned name: Seasons_TransformObjectBoundsIntoLotSpace
; Original machine bytes and instructions, verified Ghidra function envelope 0x00b0ec20..0x00b0edaa.
; Alignment gaps inside non-contiguous Ghidra bodies are included in this envelope.

PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0ec20 <.text+0x70dc20>:
  b0ec20:	55                   	push   ebp
  b0ec21:	8b ec                	mov    ebp,esp
  b0ec23:	83 e4 f0             	and    esp,0xfffffff0
  b0ec26:	83 ec 78             	sub    esp,0x78
  b0ec29:	53                   	push   ebx
  b0ec2a:	33 c0                	xor    eax,eax
  b0ec2c:	56                   	push   esi
  b0ec2d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b0ec30:	85 f6                	test   esi,esi
  b0ec32:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  b0ec36:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  b0ec3a:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  b0ec3e:	c7 44 24 1c a8 ba 06 	mov    DWORD PTR [esp+0x1c],0x106baa8
  b0ec45:	01
  b0ec46:	0f 84 4a 01 00 00    	je     0xb0ed96
  b0ec4c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  b0ec4f:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  b0ec53:	50                   	push   eax
  b0ec54:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b0ec58:	51                   	push   ecx
  b0ec59:	52                   	push   edx
  b0ec5a:	e8 a1 fd ff ff       	call   0xb0ea00
  b0ec5f:	83 c4 0c             	add    esp,0xc
  b0ec62:	84 c0                	test   al,al
  b0ec64:	0f 84 28 01 00 00    	je     0xb0ed92
  b0ec6a:	8b 06                	mov    eax,DWORD PTR [esi]
  b0ec6c:	d9 86 a0 01 00 00    	fld    DWORD PTR [esi+0x1a0]
  b0ec72:	8b 50 64             	mov    edx,DWORD PTR [eax+0x64]
  b0ec75:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  b0ec79:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b0ec7d:	51                   	push   ecx
  b0ec7e:	8b ce                	mov    ecx,esi
  b0ec80:	ff d2                	call   edx
  b0ec82:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  b0ec86:	d9 c0                	fld    st(0)
  b0ec88:	0f 57 c0             	xorps  xmm0,xmm0
  b0ec8b:	d9 fe                	fsin
  b0ec8d:	f3 0f 10 15 f0 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f0
  b0ec94:	00
  b0ec95:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  b0ec98:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  b0ec9e:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  b0eca4:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  b0ecab:	00
  b0ecac:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  b0ecb2:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  b0ecb7:	0f 28 d8             	movaps xmm3,xmm0
  b0ecba:	0f c6 d8 aa          	shufps xmm3,xmm0,0xaa
  b0ecbe:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b0ecc2:	56                   	push   esi
  b0ecc3:	8d 44 24 60          	lea    eax,[esp+0x60]
  b0ecc7:	50                   	push   eax
  b0ecc8:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b0eccc:	51                   	push   ecx
  b0eccd:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  b0ecd1:	d9 c9                	fxch   st(1)
  b0ecd3:	d9 ff                	fcos
  b0ecd5:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  b0ecdb:	f3 0f 5c d1          	subss  xmm2,xmm1
  b0ecdf:	f3 0f 10 c9          	movss  xmm1,xmm1
  b0ece3:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b0ece7:	0f 59 cb             	mulps  xmm1,xmm3
  b0ecea:	0f 29 4c 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm1
  b0ecef:	f3 0f 11 54 24 74    	movss  DWORD PTR [esp+0x74],xmm2
  b0ecf5:	f3 0f 10 d2          	movss  xmm2,xmm2
  b0ecf9:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b0ecfd:	0f 59 d0             	mulps  xmm2,xmm0
  b0ed00:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
  b0ed04:	d9 54 24 68          	fst    DWORD PTR [esp+0x68]
  b0ed08:	d9 c9                	fxch   st(1)
  b0ed0a:	d9 5c 24 6c          	fstp   DWORD PTR [esp+0x6c]
  b0ed0e:	d9 54 24 78          	fst    DWORD PTR [esp+0x78]
  b0ed12:	d9 e0                	fchs
  b0ed14:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  b0ed18:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  b0ed1e:	0f 28 64 24 3c       	movaps xmm4,XMMWORD PTR [esp+0x3c]
  b0ed23:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b0ed27:	0f 59 c8             	mulps  xmm1,xmm0
  b0ed2a:	0f 58 cc             	addps  xmm1,xmm4
  b0ed2d:	0f 29 4c 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm1
  b0ed32:	f3 0f 10 4c 24 3c    	movss  xmm1,DWORD PTR [esp+0x3c]
  b0ed38:	f3 0f 11 8c 24 80 00 	movss  DWORD PTR [esp+0x80],xmm1
  b0ed3f:	00 00
  b0ed41:	f3 0f 10 4c 24 18    	movss  xmm1,DWORD PTR [esp+0x18]
  b0ed47:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b0ed4b:	0f 59 cb             	mulps  xmm1,xmm3
  b0ed4e:	0f 5c d1             	subps  xmm2,xmm1
  b0ed51:	0f 29 54 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm2
  b0ed56:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  b0ed5c:	f3 0f 11 84 24 84 00 	movss  DWORD PTR [esp+0x84],xmm0
  b0ed63:	00 00
  b0ed65:	e8 b6 f7 ff ff       	call   0xb0e520
  b0ed6a:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  b0ed6d:	52                   	push   edx
  b0ed6e:	56                   	push   esi
  b0ed6f:	e8 4c f4 cb ff       	call   0x7ce1c0
  b0ed74:	8a d8                	mov    bl,al
  b0ed76:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  b0ed7a:	83 c4 14             	add    esp,0x14
  b0ed7d:	85 c0                	test   eax,eax
  b0ed7f:	74 09                	je     0xb0ed8a
  b0ed81:	50                   	push   eax
  b0ed82:	e8 59 57 9d ff       	call   0x4e44e0
  b0ed87:	83 c4 04             	add    esp,0x4
  b0ed8a:	8a c3                	mov    al,bl
  b0ed8c:	5e                   	pop    esi
  b0ed8d:	5b                   	pop    ebx
  b0ed8e:	8b e5                	mov    esp,ebp
  b0ed90:	5d                   	pop    ebp
  b0ed91:	c3                   	ret
  b0ed92:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  b0ed96:	85 c0                	test   eax,eax
  b0ed98:	74 09                	je     0xb0eda3
  b0ed9a:	50                   	push   eax
  b0ed9b:	e8 40 57 9d ff       	call   0x4e44e0
  b0eda0:	83 c4 04             	add    esp,0x4
  b0eda3:	5e                   	pop    esi
  b0eda4:	32 c0                	xor    al,al
  b0eda6:	5b                   	pop    ebx
  b0eda7:	8b e5                	mov    esp,ebp
  b0eda9:	5d                   	pop    ebp
  b0edaa:	c3                   	ret
