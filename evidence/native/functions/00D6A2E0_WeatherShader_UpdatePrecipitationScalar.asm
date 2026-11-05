# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6a2e0 <.text+0x9692e0>:
  d6a2e0:	55                   	push   ebp
  d6a2e1:	8b ec                	mov    ebp,esp
  d6a2e3:	83 e4 f0             	and    esp,0xfffffff0
  d6a2e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  d6a2e9:	83 ec 10             	sub    esp,0x10
  d6a2ec:	83 38 00             	cmp    DWORD PTR [eax],0x0
  d6a2ef:	75 0d                	jne    0xd6a2fe
  d6a2f1:	f3 0f 10 0d 78 32 19 	movss  xmm1,DWORD PTR ds:0x1193278
  d6a2f8:	01 
  d6a2f9:	e9 c3 00 00 00       	jmp    0xd6a3c1
  d6a2fe:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  d6a303:	f3 0f 10 0d f0 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f0
  d6a30a:	00 
  d6a30b:	f3 0f 10 15 f8 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f8
  d6a312:	00 
  d6a313:	f3 0f 5c c8          	subss  xmm1,xmm0
  d6a317:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  d6a31d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  d6a321:	0f 57 c9             	xorps  xmm1,xmm1
  d6a324:	c1 f8 1f             	sar    eax,0x1f
  d6a327:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  d6a32d:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  d6a333:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  d6a337:	8b c8                	mov    ecx,eax
  d6a339:	f7 d1                	not    ecx
  d6a33b:	23 4c 24 08          	and    ecx,DWORD PTR [esp+0x8]
  d6a33f:	23 d0                	and    edx,eax
  d6a341:	0b ca                	or     ecx,edx
  d6a343:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  d6a347:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  d6a34d:	0f 28 ca             	movaps xmm1,xmm2
  d6a350:	f3 0f 5c c8          	subss  xmm1,xmm0
  d6a354:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  d6a35a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  d6a35e:	f3 0f 10 0d b4 35 fb 	movss  xmm1,DWORD PTR ds:0xfb35b4
  d6a365:	00 
  d6a366:	c1 f8 1f             	sar    eax,0x1f
  d6a369:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  d6a36f:	8b c8                	mov    ecx,eax
  d6a371:	f3 0f 11 54 24 08    	movss  DWORD PTR [esp+0x8],xmm2
  d6a377:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  d6a37b:	f7 d1                	not    ecx
  d6a37d:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  d6a381:	23 d0                	and    edx,eax
  d6a383:	0b ca                	or     ecx,edx
  d6a385:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  d6a389:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  d6a38f:	0f 2f c8             	comiss xmm1,xmm0
  d6a392:	76 0a                	jbe    0xd6a39e
  d6a394:	f3 0f 10 0d 78 32 19 	movss  xmm1,DWORD PTR ds:0x1193278
  d6a39b:	01 
  d6a39c:	eb 1f                	jmp    0xd6a3bd
  d6a39e:	f3 0f 59 05 3c 3a ff 	mulss  xmm0,DWORD PTR ds:0xff3a3c
  d6a3a5:	00 
  d6a3a6:	f3 0f 58 05 ac 2b fa 	addss  xmm0,DWORD PTR ds:0xfa2bac
  d6a3ad:	00 
  d6a3ae:	0f 28 ca             	movaps xmm1,xmm2
  d6a3b1:	f3 0f 5e c8          	divss  xmm1,xmm0
  d6a3b5:	0f 2f d1             	comiss xmm2,xmm1
  d6a3b8:	76 03                	jbe    0xd6a3bd
  d6a3ba:	0f 28 ca             	movaps xmm1,xmm2
  d6a3bd:	f3 0f 10 c9          	movss  xmm1,xmm1
  d6a3c1:	0f 28 15 a0 f1 1e 01 	movaps xmm2,XMMWORD PTR ds:0x11ef1a0
  d6a3c8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d6a3cc:	0f 28 c2             	movaps xmm0,xmm2
  d6a3cf:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  d6a3d3:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  d6a3d7:	0f 29 05 a0 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef1a0,xmm0
  d6a3de:	8b e5                	mov    esp,ebp
  d6a3e0:	5d                   	pop    ebp
  d6a3e1:	c2 04 00             	ret    0x4
