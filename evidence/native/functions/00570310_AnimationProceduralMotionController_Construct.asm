# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00570310, 0x005703e7); analyst name AnimationProceduralMotionController_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00570310 <.text+0x16f310>:
  570310:	55                   	push   ebp
  570311:	8b ec                	mov    ebp,esp
  570313:	83 e4 f0             	and    esp,0xfffffff0
  570316:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  570319:	83 ec 18             	sub    esp,0x18
  57031c:	56                   	push   esi
  57031d:	57                   	push   edi
  57031e:	50                   	push   eax
  57031f:	8b f1                	mov    esi,ecx
  570321:	e8 1a 5b ff ff       	call   0x565e40
  570326:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  570329:	85 c0                	test   eax,eax
  57032b:	c7 46 28 0c 2c fc 00 	mov    DWORD PTR [esi+0x28],0xfc2c0c
  570332:	8d 7e 28             	lea    edi,[esi+0x28]
  570335:	c7 06 48 32 fc 00    	mov    DWORD PTR [esi],0xfc3248
  57033b:	c7 46 08 3c 32 fc 00 	mov    DWORD PTR [esi+0x8],0xfc323c
  570342:	c7 46 0c 38 32 fc 00 	mov    DWORD PTR [esi+0xc],0xfc3238
  570349:	c7 07 24 32 fc 00    	mov    DWORD PTR [edi],0xfc3224
  57034f:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  570352:	74 04                	je     0x570358
  570354:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  570358:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  57035b:	8b 11                	mov    edx,DWORD PTR [ecx]
  57035d:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  570360:	ff d0                	call   eax
  570362:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  570365:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  570368:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  57036b:	0f 28 0a             	movaps xmm1,XMMWORD PTR [edx]
  57036e:	0f 5c c8             	subps  xmm1,xmm0
  570371:	0f 28 d1             	movaps xmm2,xmm1
  570374:	0f 59 d1             	mulps  xmm2,xmm1
  570377:	0f 28 c2             	movaps xmm0,xmm2
  57037a:	0f c6 c2 02          	shufps xmm0,xmm2,0x2
  57037e:	0f 28 da             	movaps xmm3,xmm2
  570381:	0f c6 da 01          	shufps xmm3,xmm2,0x1
  570385:	0f 58 c3             	addps  xmm0,xmm3
  570388:	0f 58 c2             	addps  xmm0,xmm2
  57038b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  57038f:	0f 51 c0             	sqrtps xmm0,xmm0
  570392:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  570397:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  57039d:	f3 0f 11 46 40       	movss  DWORD PTR [esi+0x40],xmm0
  5703a2:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  5703a6:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  5703ac:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  5703b0:	0f 5e c8             	divps  xmm1,xmm0
  5703b3:	0f 29 4e 30          	movaps XMMWORD PTR [esi+0x30],xmm1
  5703b7:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  5703ba:	85 c0                	test   eax,eax
  5703bc:	74 15                	je     0x5703d3
  5703be:	6a ff                	push   0xffffffff
  5703c0:	8d 48 0c             	lea    ecx,[eax+0xc]
  5703c3:	57                   	push   edi
  5703c4:	e8 b7 6a 00 00       	call   0x576e80
  5703c9:	8b c6                	mov    eax,esi
  5703cb:	5f                   	pop    edi
  5703cc:	5e                   	pop    esi
  5703cd:	8b e5                	mov    esp,ebp
  5703cf:	5d                   	pop    ebp
  5703d0:	c2 10 00             	ret    0x10
  5703d3:	6a ff                	push   0xffffffff
  5703d5:	33 c9                	xor    ecx,ecx
  5703d7:	57                   	push   edi
  5703d8:	e8 a3 6a 00 00       	call   0x576e80
  5703dd:	5f                   	pop    edi
  5703de:	8b c6                	mov    eax,esi
  5703e0:	5e                   	pop    esi
  5703e1:	8b e5                	mov    esp,ebp
  5703e3:	5d                   	pop    ebp
  5703e4:	c2 10 00             	ret    0x10
