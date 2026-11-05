# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x006fd260 (SceneObject_SetTintOpacity)
Full Ghidra function-body envelope: 0x006fd260..0x006fd43d (exclusive end)
Ghidra body ranges: [[006fd260, 006fd43c]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fd260 <.text+0x2fc260>:
  6fd260:	55                   	push   ebp
  6fd261:	8b ec                	mov    ebp,esp
  6fd263:	83 e4 f0             	and    esp,0xfffffff0
  6fd266:	83 ec 1c             	sub    esp,0x1c
  6fd269:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6fd26c:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  6fd26f:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  6fd277:	0f 28 c1             	movaps xmm0,xmm1
  6fd27a:	0f c6 c1 55          	shufps xmm0,xmm1,0x55
  6fd27e:	0f 28 d1             	movaps xmm2,xmm1
  6fd281:	0f c6 d1 00          	shufps xmm2,xmm1,0x0
  6fd285:	0f 58 c2             	addps  xmm0,xmm2
  6fd288:	0f 28 d1             	movaps xmm2,xmm1
  6fd28b:	0f c6 d1 aa          	shufps xmm2,xmm1,0xaa
  6fd28f:	0f 58 d0             	addps  xmm2,xmm0
  6fd292:	0f 29 54 24 0c       	movaps XMMWORD PTR [esp+0xc],xmm2
  6fd297:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  6fd29d:	0f 2f 05 20 ad ff 00 	comiss xmm0,DWORD PTR ds:0xffad20
  6fd2a4:	56                   	push   esi
  6fd2a5:	8b f1                	mov    esi,ecx
  6fd2a7:	72 63                	jb     0x6fd30c
  6fd2a9:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  6fd2b0:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  6fd2b5:	f3 0f 11 5c 24 10    	movss  DWORD PTR [esp+0x10],xmm3
  6fd2bb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6fd2c0:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd2c7:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  6fd2ce:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  6fd2d3:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  6fd2d9:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6fd2de:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd2e5:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  6fd2ec:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  6fd2f1:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  6fd2f7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6fd2fc:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd303:	80 a6 08 02 00 00 fd 	and    BYTE PTR [esi+0x208],0xfd
  6fd30a:	eb 58                	jmp    0x6fd364
  6fd30c:	0f 28 96 d0 01 00 00 	movaps xmm2,XMMWORD PTR [esi+0x1d0]
  6fd313:	0f 28 c2             	movaps xmm0,xmm2
  6fd316:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  6fd31a:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  6fd31e:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd325:	0f 28 8e d0 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x1d0]
  6fd32c:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  6fd32f:	0f 28 c1             	movaps xmm0,xmm1
  6fd332:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  6fd336:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  6fd33a:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd341:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  6fd348:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  6fd34b:	0f 28 c8             	movaps xmm1,xmm0
  6fd34e:	0f c6 ca af          	shufps xmm1,xmm2,0xaf
  6fd352:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  6fd356:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd35d:	80 8e 08 02 00 00 02 	or     BYTE PTR [esi+0x208],0x2
  6fd364:	b1 20                	mov    cl,0x20
  6fd366:	84 8e 08 02 00 00    	test   BYTE PTR [esi+0x208],cl
  6fd36c:	74 08                	je     0x6fd376
  6fd36e:	f3 0f 11 5c 24 0c    	movss  DWORD PTR [esp+0xc],xmm3
  6fd374:	eb 3a                	jmp    0x6fd3b0
  6fd376:	0f 28 8e d0 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x1d0]
  6fd37d:	f3 0f 10 86 e4 01 00 00 	movss  xmm0,DWORD PTR [esi+0x1e4]
  6fd385:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6fd389:	0f c6 c9 ff          	shufps xmm1,xmm1,0xff
  6fd38d:	0f 59 c8             	mulps  xmm1,xmm0
  6fd390:	f3 0f 10 86 e8 01 00 00 	movss  xmm0,DWORD PTR [esi+0x1e8]
  6fd398:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6fd39c:	0f 59 c1             	mulps  xmm0,xmm1
  6fd39f:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  6fd3a4:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6fd3aa:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6fd3b0:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  6fd3b7:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  6fd3ba:	0f 28 c8             	movaps xmm1,xmm0
  6fd3bd:	0f c6 ca fa          	shufps xmm1,xmm2,0xfa
  6fd3c1:	0f c6 c1 84          	shufps xmm0,xmm1,0x84
  6fd3c5:	0f 29 86 d0 01 00 00 	movaps XMMWORD PTR [esi+0x1d0],xmm0
  6fd3cc:	84 8e 08 02 00 00    	test   BYTE PTR [esi+0x208],cl
  6fd3d2:	74 08                	je     0x6fd3dc
  6fd3d4:	f3 0f 11 5c 24 08    	movss  DWORD PTR [esp+0x8],xmm3
  6fd3da:	eb 3a                	jmp    0x6fd416
  6fd3dc:	0f 28 8e d0 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x1d0]
  6fd3e3:	f3 0f 10 86 e4 01 00 00 	movss  xmm0,DWORD PTR [esi+0x1e4]
  6fd3eb:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6fd3ef:	0f c6 c9 ff          	shufps xmm1,xmm1,0xff
  6fd3f3:	0f 59 c8             	mulps  xmm1,xmm0
  6fd3f6:	f3 0f 10 86 e8 01 00 00 	movss  xmm0,DWORD PTR [esi+0x1e8]
  6fd3fe:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6fd402:	0f 59 c1             	mulps  xmm0,xmm1
  6fd405:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  6fd40a:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6fd410:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  6fd416:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  6fd41a:	83 ec 08             	sub    esp,0x8
  6fd41d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6fd421:	8b ce                	mov    ecx,esi
  6fd423:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  6fd427:	d9 1c 24             	fstp   DWORD PTR [esp]
  6fd42a:	e8 11 f4 ff ff       	call   0x6fc840
  6fd42f:	8b ce                	mov    ecx,esi
  6fd431:	e8 ca f3 ff ff       	call   0x6fc800
  6fd436:	5e                   	pop    esi
  6fd437:	8b e5                	mov    esp,ebp
  6fd439:	5d                   	pop    ebp
  6fd43a:	c2 04 00             	ret    0x4
