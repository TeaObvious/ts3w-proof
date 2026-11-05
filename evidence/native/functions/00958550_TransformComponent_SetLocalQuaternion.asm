# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958550, 0x0095860f); analyst name TransformComponent_SetLocalQuaternion.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958550 <.text+0x557550>:
  958550:	55                   	push   ebp
  958551:	8b ec                	mov    ebp,esp
  958553:	83 e4 f0             	and    esp,0xfffffff0
  958556:	83 ec 2c             	sub    esp,0x2c
  958559:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  95855c:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  95855f:	f3 0f 10 15 1c 58 04 01 	movss  xmm2,DWORD PTR ds:0x104581c
  958567:	56                   	push   esi
  958568:	8b f1                	mov    esi,ecx
  95856a:	0f 28 66 10          	movaps xmm4,XMMWORD PTR [esi+0x10]
  95856e:	c7 44 24 0c 00 00 00 80 	mov    DWORD PTR [esp+0xc],0x80000000
  958576:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  95857c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  958580:	0f 28 c3             	movaps xmm0,xmm3
  958583:	0f 57 c4             	xorps  xmm0,xmm4
  958586:	0f 54 c1             	andps  xmm0,xmm1
  958589:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  95858d:	0f 57 c3             	xorps  xmm0,xmm3
  958590:	0f 5c c4             	subps  xmm0,xmm4
  958593:	0f 59 c0             	mulps  xmm0,xmm0
  958596:	0f 28 c8             	movaps xmm1,xmm0
  958599:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  95859d:	0f 58 c8             	addps  xmm1,xmm0
  9585a0:	0f 28 c1             	movaps xmm0,xmm1
  9585a3:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  9585a7:	0f 58 c1             	addps  xmm0,xmm1
  9585aa:	f3 0f 10 0d 18 b2 fa 00 	movss  xmm1,DWORD PTR ds:0xfab218
  9585b2:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9585b6:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9585ba:	0f 59 c8             	mulps  xmm1,xmm0
  9585bd:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9585c1:	0f 5f c8             	maxps  xmm1,xmm0
  9585c4:	0f 59 d2             	mulps  xmm2,xmm2
  9585c7:	0f c2 ca 02          	cmpleps xmm1,xmm2
  9585cb:	0f 50 c9             	movmskps ecx,xmm1
  9585ce:	83 f9 0f             	cmp    ecx,0xf
  9585d1:	74 35                	je     0x958608
  9585d3:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  9585d6:	a8 04                	test   al,0x4
  9585d8:	0f 29 5e 10          	movaps XMMWORD PTR [esi+0x10],xmm3
  9585dc:	75 2a                	jne    0x958608
  9585de:	a8 03                	test   al,0x3
  9585e0:	74 07                	je     0x9585e9
  9585e2:	8b ce                	mov    ecx,esi
  9585e4:	e8 77 e8 ff ff       	call   0x956e60
  9585e9:	8d 54 24 10          	lea    edx,[esp+0x10]
  9585ed:	52                   	push   edx
  9585ee:	8b ce                	mov    ecx,esi
  9585f0:	e8 1b f3 ff ff       	call   0x957910
  9585f5:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  9585f8:	8d 44 24 10          	lea    eax,[esp+0x10]
  9585fc:	50                   	push   eax
  9585fd:	51                   	push   ecx
  9585fe:	6a 0e                	push   0xe
  958600:	e8 bb d0 fd ff       	call   0x9356c0
  958605:	83 c4 0c             	add    esp,0xc
  958608:	5e                   	pop    esi
  958609:	8b e5                	mov    esp,ebp
  95860b:	5d                   	pop    ebp
  95860c:	c2 04 00             	ret    0x4
