# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original CAW1.22.10 Sims3Common.dll function envelope; paired actual annotated Ghidra C: 10763C30_CAW_MatrixRowsToEulerXyz.c.

Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

10763c30 <.text+0x762c30>:
10763c30:	55                                              	push   ebp
10763c31:	8b ec                                           	mov    ebp,esp
10763c33:	83 e4 f0                                        	and    esp,0xfffffff0
10763c36:	81 ec d0 00 00 00                               	sub    esp,0xd0
10763c3c:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10763c3f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10763c42:	0f 28 d0                                        	movaps xmm2,xmm0
10763c45:	0f c6 d0 00                                     	shufps xmm2,xmm0,0x0
10763c49:	0f 28 c8                                        	movaps xmm1,xmm0
10763c4c:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
10763c50:	0f 28 da                                        	movaps xmm3,xmm2
10763c53:	0f 59 da                                        	mulps  xmm3,xmm2
10763c56:	0f 28 e1                                        	movaps xmm4,xmm1
10763c59:	0f 59 e1                                        	mulps  xmm4,xmm1
10763c5c:	0f 29 a4 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm4
10763c64:	0f 29 9c 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm3
10763c6c:	0f 58 dc                                        	addps  xmm3,xmm4
10763c6f:	f3 0f 10 25 cc e5 ab 10                         	movss  xmm4,DWORD PTR ds:0x10abe5cc
10763c77:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
10763c7b:	0f 51 db                                        	sqrtps xmm3,xmm3
10763c7e:	f3 0f 11 a4 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm4
10763c87:	f3 0f 11 9c 24 90 00 00 00                      	movss  DWORD PTR [esp+0x90],xmm3
10763c90:	f3 0f 10 a4 24 90 00 00 00                      	movss  xmm4,DWORD PTR [esp+0x90]
10763c99:	0f 2f a4 24 80 00 00 00                         	comiss xmm4,DWORD PTR [esp+0x80]
10763ca1:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
10763ca5:	0f 86 9e 00 00 00                               	jbe    0x10763d49
10763cab:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
10763cb0:	0f 57 c9                                        	xorps  xmm1,xmm1
10763cb3:	0f 5c c8                                        	subps  xmm1,xmm0
10763cb6:	0f 28 40 20                                     	movaps xmm0,XMMWORD PTR [eax+0x20]
10763cba:	8d 48 20                                        	lea    ecx,[eax+0x20]
10763cbd:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
10763cc1:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
10763cc6:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
10763cca:	83 c0 10                                        	add    eax,0x10
10763ccd:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
10763cd1:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
10763cd6:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
10763cda:	d9 44 24 70                                     	fld    DWORD PTR [esp+0x70]
10763cde:	0f 29 8c 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm1
10763ce6:	d9 f3                                           	fpatan
10763ce8:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
10763ced:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10763cf1:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10763cf5:	0f 29 5c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm3
10763cfa:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
10763cff:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10763d02:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10763d05:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10763d09:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10763d0d:	d9 f3                                           	fpatan
10763d0f:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10763d14:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10763d18:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10763d1b:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
10763d1f:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10763d23:	d9 f3                                           	fpatan
10763d25:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
10763d2a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10763d2e:	0f c6 c1 10                                     	shufps xmm0,xmm1,0x10
10763d32:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10763d35:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
10763d3a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10763d3e:	0f c6 c1 28                                     	shufps xmm0,xmm1,0x28
10763d42:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
10763d45:	8b e5                                           	mov    esp,ebp
10763d47:	5d                                              	pop    ebp
10763d48:	c3                                              	ret
10763d49:	8d 48 10                                        	lea    ecx,[eax+0x10]
10763d4c:	0f 57 c9                                        	xorps  xmm1,xmm1
10763d4f:	83 c0 20                                        	add    eax,0x20
10763d52:	0f 28 d1                                        	movaps xmm2,xmm1
10763d55:	0f 5c d0                                        	subps  xmm2,xmm0
10763d58:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10763d5b:	0f 29 54 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm2
10763d60:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
10763d64:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
10763d69:	0f 28 d1                                        	movaps xmm2,xmm1
10763d6c:	0f 5c d0                                        	subps  xmm2,xmm0
10763d6f:	0f 28 01                                        	movaps xmm0,XMMWORD PTR [ecx]
10763d72:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
10763d76:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
10763d7b:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
10763d80:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
10763d84:	0f 29 54 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm2
10763d89:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
10763d8d:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10763d91:	d9 f3                                           	fpatan
10763d93:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
10763d97:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
10763d9c:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10763d9f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10763da2:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
10763da6:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10763daa:	d9 f3                                           	fpatan
10763dac:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10763db1:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10763db5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10763db8:	f3 0f 10 14 24                                  	movss  xmm2,DWORD PTR [esp]
10763dbd:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
10763dc1:	0f c6 c2 10                                     	shufps xmm0,xmm2,0x10
10763dc5:	0f c6 c1 28                                     	shufps xmm0,xmm1,0x28
10763dc9:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
10763dcc:	8b e5                                           	mov    esp,ebp
10763dce:	5d                                              	pop    ebp
10763dcf:	c3                                              	ret
