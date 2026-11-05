# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00714c20, 0x00714eac).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_ApplyTreeUserData (analyst-assigned)
Entry: 0x00714c20
Ghidra body envelope: 0x00714c20..0x00714eab inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00714c20 <.text+0x313c20>:
  714c20:	55                   	push   ebp
  714c21:	8b ec                	mov    ebp,esp
  714c23:	83 e4 f0             	and    esp,0xfffffff0
  714c26:	81 ec 88 00 00 00    	sub    esp,0x88
  714c2c:	0f 57 c0             	xorps  xmm0,xmm0
  714c2f:	53                   	push   ebx
  714c30:	33 db                	xor    ebx,ebx
  714c32:	56                   	push   esi
  714c33:	8d 44 24 20          	lea    eax,[esp+0x20]
  714c37:	8b f1                	mov    esi,ecx
  714c39:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  714c3c:	50                   	push   eax
  714c3d:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  714c43:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  714c49:	0f 57 c0             	xorps  xmm0,xmm0
  714c4c:	51                   	push   ecx
  714c4d:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  714c51:	c7 44 24 34 06 00 00 	mov    DWORD PTR [esp+0x34],0x6
  714c58:	00
  714c59:	c7 44 24 38 01 00 00 	mov    DWORD PTR [esp+0x38],0x1
  714c60:	00
  714c61:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  714c65:	0f 29 44 24 48       	movaps XMMWORD PTR [esp+0x48],xmm0
  714c6a:	0f 29 44 24 58       	movaps XMMWORD PTR [esp+0x58],xmm0
  714c6f:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  714c74:	0f 29 44 24 78       	movaps XMMWORD PTR [esp+0x78],xmm0
  714c79:	88 9c 24 88 00 00 00 	mov    BYTE PTR [esp+0x88],bl
  714c80:	88 9c 24 89 00 00 00 	mov    BYTE PTR [esp+0x89],bl
  714c87:	88 9c 24 8a 00 00 00 	mov    BYTE PTR [esp+0x8a],bl
  714c8e:	88 9c 24 8b 00 00 00 	mov    BYTE PTR [esp+0x8b],bl
  714c95:	88 9c 24 8c 00 00 00 	mov    BYTE PTR [esp+0x8c],bl
  714c9c:	88 9c 24 8d 00 00 00 	mov    BYTE PTR [esp+0x8d],bl
  714ca3:	e8 e8 b5 0a 00       	call   0x7c0290
  714ca8:	83 c4 08             	add    esp,0x8
  714cab:	3a c3                	cmp    al,bl
  714cad:	0f 84 f1 01 00 00    	je     0x714ea4
  714cb3:	38 9c 24 80 00 00 00 	cmp    BYTE PTR [esp+0x80],bl
  714cba:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  714cc0:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  714cc4:	f3 0f 11 86 74 01 00 	movss  DWORD PTR [esi+0x174],xmm0
  714ccb:	00
  714ccc:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  714cd2:	89 96 7c 01 00 00    	mov    DWORD PTR [esi+0x17c],edx
  714cd8:	f3 0f 11 86 78 01 00 	movss  DWORD PTR [esi+0x178],xmm0
  714cdf:	00
  714ce0:	88 9e 70 01 00 00    	mov    BYTE PTR [esi+0x170],bl
  714ce6:	0f 84 77 01 00 00    	je     0x714e63
  714cec:	8a 8c 24 82 00 00 00 	mov    cl,BYTE PTR [esp+0x82]
  714cf3:	3a cb                	cmp    cl,bl
  714cf5:	0f 28 54 24 40       	movaps xmm2,XMMWORD PTR [esp+0x40]
  714cfa:	74 23                	je     0x714d1f
  714cfc:	f3 0f 10 05 cc 4c 0f 	movss  xmm0,DWORD PTR ds:0x10f4ccc
  714d03:	01
  714d04:	0f 28 ca             	movaps xmm1,xmm2
  714d07:	0f c6 ca ff          	shufps xmm1,xmm2,0xff
  714d0b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  714d0f:	0f c2 c8 00          	cmpeqps xmm1,xmm0
  714d13:	0f 50 d1             	movmskps edx,xmm1
  714d16:	83 fa 0f             	cmp    edx,0xf
  714d19:	0f 84 44 01 00 00    	je     0x714e63
  714d1f:	3a cb                	cmp    cl,bl
  714d21:	0f 28 8e 30 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x130]
  714d28:	f3 0f 10 1d f8 98 f9 	movss  xmm3,DWORD PTR ds:0xf998f8
  714d2f:	00
  714d30:	0f 28 c1             	movaps xmm0,xmm1
  714d33:	0f c6 c2 05          	shufps xmm0,xmm2,0x5
  714d37:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  714d3b:	0f 29 86 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm0
  714d42:	0f 28 8e 30 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x130]
  714d49:	0f 28 c1             	movaps xmm0,xmm1
  714d4c:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  714d50:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  714d54:	0f 29 86 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm0
  714d5b:	0f 28 86 30 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x130]
  714d62:	0f 28 c8             	movaps xmm1,xmm0
  714d65:	0f c6 ca af          	shufps xmm1,xmm2,0xaf
  714d69:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  714d6d:	0f 29 86 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm0
  714d74:	74 0d                	je     0x714d83
  714d76:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  714d7b:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  714d81:	eb 03                	jmp    0x714d86
  714d83:	0f 28 cb             	movaps xmm1,xmm3
  714d86:	38 9c 24 81 00 00 00 	cmp    BYTE PTR [esp+0x81],bl
  714d8d:	0f 28 86 30 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x130]
  714d94:	0f 28 d0             	movaps xmm2,xmm0
  714d97:	f3 0f 10 c9          	movss  xmm1,xmm1
  714d9b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  714d9f:	0f c6 d1 0a          	shufps xmm2,xmm1,0xa
  714da3:	0f c6 c2 84          	shufps xmm0,xmm2,0x84
  714da7:	0f 29 86 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm0
  714dae:	0f 84 85 00 00 00    	je     0x714e39
  714db4:	38 9c 24 83 00 00 00 	cmp    BYTE PTR [esp+0x83],bl
  714dbb:	0f 28 8e 40 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x140]
  714dc2:	0f 28 54 24 50       	movaps xmm2,XMMWORD PTR [esp+0x50]
  714dc7:	0f 28 c1             	movaps xmm0,xmm1
  714dca:	0f c6 c2 05          	shufps xmm0,xmm2,0x5
  714dce:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  714dd2:	0f 29 86 40 01 00 00 	movaps XMMWORD PTR [esi+0x140],xmm0
  714dd9:	0f 28 8e 40 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x140]
  714de0:	0f 28 c1             	movaps xmm0,xmm1
  714de3:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  714de7:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  714deb:	0f 29 86 40 01 00 00 	movaps XMMWORD PTR [esi+0x140],xmm0
  714df2:	0f 28 86 40 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x140]
  714df9:	0f 28 c8             	movaps xmm1,xmm0
  714dfc:	0f c6 ca af          	shufps xmm1,xmm2,0xaf
  714e00:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  714e04:	0f 29 86 40 01 00 00 	movaps XMMWORD PTR [esi+0x140],xmm0
  714e0b:	74 0d                	je     0x714e1a
  714e0d:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  714e12:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  714e18:	eb 03                	jmp    0x714e1d
  714e1a:	0f 28 cb             	movaps xmm1,xmm3
  714e1d:	0f 28 86 40 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x140]
  714e24:	0f 28 d0             	movaps xmm2,xmm0
  714e27:	f3 0f 10 c9          	movss  xmm1,xmm1
  714e2b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  714e2f:	0f c6 d1 0a          	shufps xmm2,xmm1,0xa
  714e33:	0f c6 c2 84          	shufps xmm0,xmm2,0x84
  714e37:	eb 07                	jmp    0x714e40
  714e39:	0f 28 86 30 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x130]
  714e40:	38 9c 24 84 00 00 00 	cmp    BYTE PTR [esp+0x84],bl
  714e47:	0f 29 86 40 01 00 00 	movaps XMMWORD PTR [esi+0x140],xmm0
  714e4e:	74 0c                	je     0x714e5c
  714e50:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  714e55:	0f 29 86 50 01 00 00 	movaps XMMWORD PTR [esi+0x150],xmm0
  714e5c:	c6 86 70 01 00 00 01 	mov    BYTE PTR [esi+0x170],0x1
  714e63:	38 9c 24 85 00 00 00 	cmp    BYTE PTR [esp+0x85],bl
  714e6a:	88 9e 71 01 00 00    	mov    BYTE PTR [esi+0x171],bl
  714e70:	74 32                	je     0x714ea4
  714e72:	0f 28 4c 24 70       	movaps xmm1,XMMWORD PTR [esp+0x70]
  714e77:	f3 0f 10 05 cc 4c 0f 	movss  xmm0,DWORD PTR ds:0x10f4ccc
  714e7e:	01
  714e7f:	0f 28 d1             	movaps xmm2,xmm1
  714e82:	0f c6 d1 aa          	shufps xmm2,xmm1,0xaa
  714e86:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  714e8a:	0f c2 d0 00          	cmpeqps xmm2,xmm0
  714e8e:	0f 50 ca             	movmskps ecx,xmm2
  714e91:	83 f9 0f             	cmp    ecx,0xf
  714e94:	74 0e                	je     0x714ea4
  714e96:	0f 29 8e 60 01 00 00 	movaps XMMWORD PTR [esi+0x160],xmm1
  714e9d:	c6 86 71 01 00 00 01 	mov    BYTE PTR [esi+0x171],0x1
  714ea4:	5e                   	pop    esi
  714ea5:	5b                   	pop    ebx
  714ea6:	8b e5                	mov    esp,ebp
  714ea8:	5d                   	pop    ebp
  714ea9:	c2 04 00             	ret    0x4
