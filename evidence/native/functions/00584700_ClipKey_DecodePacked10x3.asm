# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00584700 <.text+0x183700>:
  584700:	83 ec 10             	sub    esp,0x10
  584703:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  584707:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  58470e:	00 
  58470f:	66 8b 42 02          	mov    ax,WORD PTR [edx+0x2]
  584713:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  584717:	f3 0f 10 1d 18 b2 fa 	movss  xmm3,DWORD PTR ds:0xfab218
  58471e:	00 
  58471f:	66 89 01             	mov    WORD PTR [ecx],ax
  584722:	f6 42 02 01          	test   BYTE PTR [edx+0x2],0x1
  584726:	0f 28 d0             	movaps xmm2,xmm0
  584729:	0f 28 c8             	movaps xmm1,xmm0
  58472c:	0f 28 e0             	movaps xmm4,xmm0
  58472f:	f3 0f 11 14 24       	movss  DWORD PTR [esp],xmm2
  584734:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  58473a:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  584740:	f3 0f 11 64 24 0c    	movss  DWORD PTR [esp+0xc],xmm4
  584746:	74 08                	je     0x584750
  584748:	0f 28 d3             	movaps xmm2,xmm3
  58474b:	f3 0f 11 14 24       	movss  DWORD PTR [esp],xmm2
  584750:	0f b7 42 02          	movzx  eax,WORD PTR [edx+0x2]
  584754:	a8 02                	test   al,0x2
  584756:	74 09                	je     0x584761
  584758:	0f 28 cb             	movaps xmm1,xmm3
  58475b:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  584761:	a8 04                	test   al,0x4
  584763:	74 09                	je     0x58476e
  584765:	0f 28 c3             	movaps xmm0,xmm3
  584768:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  58476e:	a8 08                	test   al,0x8
  584770:	74 09                	je     0x58477b
  584772:	0f 28 e3             	movaps xmm4,xmm3
  584775:	f3 0f 11 64 24 0c    	movss  DWORD PTR [esp+0xc],xmm4
  58477b:	a8 70                	test   al,0x70
  58477d:	74 6f                	je     0x5847ee
  58477f:	a8 10                	test   al,0x10
  584781:	74 1e                	je     0x5847a1
  584783:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  584787:	0f 57 c0             	xorps  xmm0,xmm0
  58478a:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  58478f:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  584794:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  584799:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  58479d:	83 c4 10             	add    esp,0x10
  5847a0:	c3                   	ret
  5847a1:	a8 20                	test   al,0x20
  5847a3:	74 1b                	je     0x5847c0
  5847a5:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  5847a9:	f3 0f 11 10          	movss  DWORD PTR [eax],xmm2
  5847ad:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  5847b2:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  5847b7:	f3 0f 11 60 0c       	movss  DWORD PTR [eax+0xc],xmm4
  5847bc:	83 c4 10             	add    esp,0x10
  5847bf:	c3                   	ret
  5847c0:	a8 40                	test   al,0x40
  5847c2:	74 7d                	je     0x584841
  5847c4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  5847c8:	0f 57 db             	xorps  xmm3,xmm3
  5847cb:	f3 0f 59 d3          	mulss  xmm2,xmm3
  5847cf:	f3 0f 59 cb          	mulss  xmm1,xmm3
  5847d3:	f3 0f 59 c3          	mulss  xmm0,xmm3
  5847d7:	f3 0f 11 10          	movss  DWORD PTR [eax],xmm2
  5847db:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  5847e0:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  5847e5:	f3 0f 11 60 0c       	movss  DWORD PTR [eax+0xc],xmm4
  5847ea:	83 c4 10             	add    esp,0x10
  5847ed:	c3                   	ret
  5847ee:	d9 05 98 cb fc 00    	fld    DWORD PTR ds:0xfccb98
  5847f4:	56                   	push   esi
  5847f5:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  5847f9:	33 c9                	xor    ecx,ecx
  5847fb:	8b c1                	mov    eax,ecx
  5847fd:	83 e8 01             	sub    eax,0x1
  584800:	74 0d                	je     0x58480f
  584802:	83 e8 01             	sub    eax,0x1
  584805:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  584808:	75 0b                	jne    0x584815
  58480a:	c1 e8 14             	shr    eax,0x14
  58480d:	eb 06                	jmp    0x584815
  58480f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  584812:	c1 e8 0a             	shr    eax,0xa
  584815:	25 ff 03 00 00       	and    eax,0x3ff
  58481a:	85 c0                	test   eax,eax
  58481c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  584820:	db 44 24 18          	fild   DWORD PTR [esp+0x18]
  584824:	7d 06                	jge    0x58482c
  584826:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  58482c:	d8 4c 8c 04          	fmul   DWORD PTR [esp+ecx*4+0x4]
  584830:	83 c1 01             	add    ecx,0x1
  584833:	83 f9 03             	cmp    ecx,0x3
  584836:	d8 c9                	fmul   st,st(1)
  584838:	d9 5c 8e fc          	fstp   DWORD PTR [esi+ecx*4-0x4]
  58483c:	72 bd                	jb     0x5847fb
  58483e:	dd d8                	fstp   st(0)
  584840:	5e                   	pop    esi
  584841:	83 c4 10             	add    esp,0x10
  584844:	c3                   	ret
