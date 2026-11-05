# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x00947f20,0x00948016); analyst name LightingComponent_QueueResourceAndReplayControls.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947f20 <.text+0x546f20>:
  947f20:	55                   	push   ebp
  947f21:	8b ec                	mov    ebp,esp
  947f23:	83 e4 f0             	and    esp,0xfffffff0
  947f26:	83 ec 5c             	sub    esp,0x5c
  947f29:	56                   	push   esi
  947f2a:	6a 00                	push   0x0
  947f2c:	8b f1                	mov    esi,ecx
  947f2e:	e8 ad fd ff ff       	call   0x947ce0
  947f33:	f3 0f 10 46 18       	movss  xmm0,DWORD PTR [esi+0x18]
  947f38:	0f 2e 05 f8 98 f9 00 	ucomiss xmm0,DWORD PTR ds:0xf998f8
  947f3f:	9f                   	lahf
  947f40:	f6 c4 44             	test   ah,0x44
  947f43:	7b 47                	jnp    0x947f8c
  947f45:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  947f48:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  947f4b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  947f4e:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  947f52:	8d 44 24 10          	lea    eax,[esp+0x10]
  947f56:	50                   	push   eax
  947f57:	c7 44 24 14 42 cc 61 	mov    DWORD PTR [esp+0x14],0xb361cc42
  947f5e:	b3 
  947f5f:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  947f66:	00 
  947f67:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  947f6b:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  947f71:	e8 0a b4 d4 ff       	call   0x693380
  947f76:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  947f7a:	83 c4 04             	add    esp,0x4
  947f7d:	85 c9                	test   ecx,ecx
  947f7f:	74 0b                	je     0x947f8c
  947f81:	8b 11                	mov    edx,DWORD PTR [ecx]
  947f83:	8b 12                	mov    edx,DWORD PTR [edx]
  947f85:	8d 44 24 20          	lea    eax,[esp+0x20]
  947f89:	50                   	push   eax
  947f8a:	ff d2                	call   edx
  947f8c:	f3 0f 10 4e 1c       	movss  xmm1,DWORD PTR [esi+0x1c]
  947f91:	0f 57 c0             	xorps  xmm0,xmm0
  947f94:	0f 2f c8             	comiss xmm1,xmm0
  947f97:	72 74                	jb     0x94800d
  947f99:	f3 0f 10 4e 20       	movss  xmm1,DWORD PTR [esi+0x20]
  947f9e:	0f 2f c8             	comiss xmm1,xmm0
  947fa1:	72 6a                	jb     0x94800d
  947fa3:	f3 0f 10 4e 24       	movss  xmm1,DWORD PTR [esi+0x24]
  947fa8:	0f 2f c8             	comiss xmm1,xmm0
  947fab:	72 60                	jb     0x94800d
  947fad:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  947fb0:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  947fb3:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  947fb6:	f3 0f 10 46 1c       	movss  xmm0,DWORD PTR [esi+0x1c]
  947fbb:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  947fc1:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  947fc6:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  947fca:	8d 44 24 10          	lea    eax,[esp+0x10]
  947fce:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  947fd4:	0f 28 c1             	movaps xmm0,xmm1
  947fd7:	50                   	push   eax
  947fd8:	c7 44 24 14 0a c8 6e 	mov    DWORD PTR [esp+0x14],0x966ec80a
  947fdf:	96 
  947fe0:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  947fe7:	00 
  947fe8:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  947fec:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  947ff2:	e8 89 b3 d4 ff       	call   0x693380
  947ff7:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  947ffb:	83 c4 04             	add    esp,0x4
  947ffe:	85 c9                	test   ecx,ecx
  948000:	74 0b                	je     0x94800d
  948002:	8b 11                	mov    edx,DWORD PTR [ecx]
  948004:	8b 12                	mov    edx,DWORD PTR [edx]
  948006:	8d 44 24 20          	lea    eax,[esp+0x20]
  94800a:	50                   	push   eax
  94800b:	ff d2                	call   edx
  94800d:	b0 01                	mov    al,0x1
  94800f:	5e                   	pop    esi
  948010:	8b e5                	mov    esp,ebp
  948012:	5d                   	pop    ebp
  948013:	c2 04 00             	ret    0x4
