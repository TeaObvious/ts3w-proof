# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00be6cf0, 0x00be6e65).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_TransformRoofOutlineEdge (analyst-assigned)
Entry: 0x00be6cf0
Ghidra body envelope: 0x00be6cf0..0x00be6e64 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00be6cf0 <.text+0x7e5cf0>:
  be6cf0:	55                   	push   ebp
  be6cf1:	8b ec                	mov    ebp,esp
  be6cf3:	83 e4 f0             	and    esp,0xfffffff0
  be6cf6:	83 ec 18             	sub    esp,0x18
  be6cf9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  be6cfc:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  be6cff:	56                   	push   esi
  be6d00:	8b f1                	mov    esi,ecx
  be6d02:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  be6d05:	0f 29 44 24 0c       	movaps XMMWORD PTR [esp+0xc],xmm0
  be6d0a:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  be6d11:	00
  be6d12:	57                   	push   edi
  be6d13:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  be6d19:	e8 12 89 ef ff       	call   0xadf630
  be6d1e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  be6d23:	0f 28 50 10          	movaps xmm2,XMMWORD PTR [eax+0x10]
  be6d27:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  be6d2a:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  be6d2d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  be6d30:	0f 28 c8             	movaps xmm1,xmm0
  be6d33:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  be6d37:	0f 59 ca             	mulps  xmm1,xmm2
  be6d3a:	0f 28 d0             	movaps xmm2,xmm0
  be6d3d:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  be6d41:	0f 59 d3             	mulps  xmm2,xmm3
  be6d44:	0f 28 58 20          	movaps xmm3,XMMWORD PTR [eax+0x20]
  be6d48:	0f 58 ca             	addps  xmm1,xmm2
  be6d4b:	0f 28 d0             	movaps xmm2,xmm0
  be6d4e:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  be6d52:	0f 59 d3             	mulps  xmm2,xmm3
  be6d55:	0f 58 ca             	addps  xmm1,xmm2
  be6d58:	0f 28 d0             	movaps xmm2,xmm0
  be6d5b:	0f c6 d0 ff          	shufps xmm2,xmm0,0xff
  be6d5f:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  be6d63:	0f 59 d0             	mulps  xmm2,xmm0
  be6d66:	0f 58 ca             	addps  xmm1,xmm2
  be6d69:	0f 29 0f             	movaps XMMWORD PTR [edi],xmm1
  be6d6c:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  be6d6f:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  be6d72:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  be6d77:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  be6d7e:	00
  be6d7f:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  be6d85:	e8 a6 88 ef ff       	call   0xadf630
  be6d8a:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  be6d8f:	0f 28 50 10          	movaps xmm2,XMMWORD PTR [eax+0x10]
  be6d93:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  be6d96:	0f 28 c1             	movaps xmm0,xmm1
  be6d99:	0f c6 c1 55          	shufps xmm0,xmm1,0x55
  be6d9d:	0f 59 c2             	mulps  xmm0,xmm2
  be6da0:	0f 28 d1             	movaps xmm2,xmm1
  be6da3:	0f c6 d1 00          	shufps xmm2,xmm1,0x0
  be6da7:	0f 59 d3             	mulps  xmm2,xmm3
  be6daa:	0f 28 58 20          	movaps xmm3,XMMWORD PTR [eax+0x20]
  be6dae:	0f 58 c2             	addps  xmm0,xmm2
  be6db1:	0f 28 d1             	movaps xmm2,xmm1
  be6db4:	0f c6 d1 aa          	shufps xmm2,xmm1,0xaa
  be6db8:	0f 59 d3             	mulps  xmm2,xmm3
  be6dbb:	0f 58 c2             	addps  xmm0,xmm2
  be6dbe:	0f 28 d1             	movaps xmm2,xmm1
  be6dc1:	0f c6 d1 ff          	shufps xmm2,xmm1,0xff
  be6dc5:	0f 28 48 30          	movaps xmm1,XMMWORD PTR [eax+0x30]
  be6dc9:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  be6dcc:	0f 59 d1             	mulps  xmm2,xmm1
  be6dcf:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  be6dd2:	0f 58 c2             	addps  xmm0,xmm2
  be6dd5:	0f 5c c1             	subps  xmm0,xmm1
  be6dd8:	0f 57 c9             	xorps  xmm1,xmm1
  be6ddb:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  be6de0:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  be6de6:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  be6deb:	0f 59 d2             	mulps  xmm2,xmm2
  be6dee:	0f 28 ca             	movaps xmm1,xmm2
  be6df1:	0f c6 ca 02          	shufps xmm1,xmm2,0x2
  be6df5:	0f 28 da             	movaps xmm3,xmm2
  be6df8:	0f c6 da 01          	shufps xmm3,xmm2,0x1
  be6dfc:	0f 58 cb             	addps  xmm1,xmm3
  be6dff:	f3 0f 10 1d b4 b5 f9 	movss  xmm3,DWORD PTR ds:0xf9b5b4
  be6e06:	00
  be6e07:	0f 58 ca             	addps  xmm1,xmm2
  be6e0a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  be6e0e:	0f 28 e9             	movaps xmm5,xmm1
  be6e11:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  be6e18:	00
  be6e19:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  be6e1c:	0f 52 e5             	rsqrtps xmm4,xmm5
  be6e1f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  be6e23:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  be6e27:	0f 28 f4             	movaps xmm6,xmm4
  be6e2a:	0f 59 f4             	mulps  xmm6,xmm4
  be6e2d:	0f 28 d1             	movaps xmm2,xmm1
  be6e30:	0f 59 f5             	mulps  xmm6,xmm5
  be6e33:	0f 5c d6             	subps  xmm2,xmm6
  be6e36:	0f 28 f3             	movaps xmm6,xmm3
  be6e39:	0f 59 f4             	mulps  xmm6,xmm4
  be6e3c:	0f 59 d6             	mulps  xmm2,xmm6
  be6e3f:	0f 58 d4             	addps  xmm2,xmm4
  be6e42:	0f 28 e2             	movaps xmm4,xmm2
  be6e45:	0f 59 e2             	mulps  xmm4,xmm2
  be6e48:	0f 59 e5             	mulps  xmm4,xmm5
  be6e4b:	0f 5c cc             	subps  xmm1,xmm4
  be6e4e:	0f 59 da             	mulps  xmm3,xmm2
  be6e51:	0f 59 cb             	mulps  xmm1,xmm3
  be6e54:	0f 58 ca             	addps  xmm1,xmm2
  be6e57:	5f                   	pop    edi
  be6e58:	0f 59 c8             	mulps  xmm1,xmm0
  be6e5b:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  be6e5e:	5e                   	pop    esi
  be6e5f:	8b e5                	mov    esp,ebp
  be6e61:	5d                   	pop    ebp
  be6e62:	c2 10 00             	ret    0x10
