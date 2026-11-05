# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b9410 <.text+0x2b8410>:
  6b9410:	55                   	push   ebp
  6b9411:	8b ec                	mov    ebp,esp
  6b9413:	83 e4 f0             	and    esp,0xfffffff0
  6b9416:	81 ec 84 00 00 00    	sub    esp,0x84
  6b941c:	0f 57 ff             	xorps  xmm7,xmm7
  6b941f:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6b9426:	00 
  6b9427:	53                   	push   ebx
  6b9428:	56                   	push   esi
  6b9429:	57                   	push   edi
  6b942a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  6b942d:	8d 44 24 30          	lea    eax,[esp+0x30]
  6b9431:	50                   	push   eax
  6b9432:	8b f1                	mov    esi,ecx
  6b9434:	57                   	push   edi
  6b9435:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  6b9439:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  6b943f:	f3 0f 11 7c 24 34    	movss  DWORD PTR [esp+0x34],xmm7
  6b9445:	f3 0f 11 7c 24 30    	movss  DWORD PTR [esp+0x30],xmm7
  6b944b:	f3 0f 11 7c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm7
  6b9451:	0f 28 44 24 28       	movaps xmm0,XMMWORD PTR [esp+0x28]
  6b9456:	0f 57 f6             	xorps  xmm6,xmm6
  6b9459:	51                   	push   ecx
  6b945a:	0f 28 ce             	movaps xmm1,xmm6
  6b945d:	0f 5c c8             	subps  xmm1,xmm0
  6b9460:	8b ce                	mov    ecx,esi
  6b9462:	0f 29 4c 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm1
  6b9467:	e8 24 ea ff ff       	call   0x6b7e90
  6b946c:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  6b9471:	8d 54 24 30          	lea    edx,[esp+0x30]
  6b9475:	52                   	push   edx
  6b9476:	8b d8                	mov    ebx,eax
  6b9478:	57                   	push   edi
  6b9479:	8d 44 24 58          	lea    eax,[esp+0x58]
  6b947d:	50                   	push   eax
  6b947e:	8b ce                	mov    ecx,esi
  6b9480:	0f 29 44 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm0
  6b9485:	e8 06 ea ff ff       	call   0x6b7e90
  6b948a:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6b9491:	00 
  6b9492:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  6b9496:	51                   	push   ecx
  6b9497:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  6b949d:	57                   	push   edi
  6b949e:	8d 54 24 68          	lea    edx,[esp+0x68]
  6b94a2:	f3 0f 11 7c 24 34    	movss  DWORD PTR [esp+0x34],xmm7
  6b94a8:	f3 0f 11 7c 24 30    	movss  DWORD PTR [esp+0x30],xmm7
  6b94ae:	f3 0f 11 7c 24 28    	movss  DWORD PTR [esp+0x28],xmm7
  6b94b4:	0f 28 44 24 28       	movaps xmm0,XMMWORD PTR [esp+0x28]
  6b94b9:	0f 28 ce             	movaps xmm1,xmm6
  6b94bc:	0f 5c c8             	subps  xmm1,xmm0
  6b94bf:	52                   	push   edx
  6b94c0:	8b ce                	mov    ecx,esi
  6b94c2:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6b94c6:	0f 29 4c 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm1
  6b94cb:	e8 c0 e9 ff ff       	call   0x6b7e90
  6b94d0:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  6b94d5:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6b94d9:	8d 44 24 30          	lea    eax,[esp+0x30]
  6b94dd:	50                   	push   eax
  6b94de:	57                   	push   edi
  6b94df:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  6b94e3:	51                   	push   ecx
  6b94e4:	8b ce                	mov    ecx,esi
  6b94e6:	0f 29 44 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm0
  6b94eb:	e8 a0 e9 ff ff       	call   0x6b7e90
  6b94f0:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6b94f7:	00 
  6b94f8:	8d 54 24 30          	lea    edx,[esp+0x30]
  6b94fc:	52                   	push   edx
  6b94fd:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6b9503:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6b9507:	f3 0f 11 7c 24 30    	movss  DWORD PTR [esp+0x30],xmm7
  6b950d:	f3 0f 11 7c 24 28    	movss  DWORD PTR [esp+0x28],xmm7
  6b9513:	f3 0f 11 7c 24 24    	movss  DWORD PTR [esp+0x24],xmm7
  6b9519:	0f 28 7c 24 24       	movaps xmm7,XMMWORD PTR [esp+0x24]
  6b951e:	57                   	push   edi
  6b951f:	8d 44 24 28          	lea    eax,[esp+0x28]
  6b9523:	0f 28 c6             	movaps xmm0,xmm6
  6b9526:	0f 5c c7             	subps  xmm0,xmm7
  6b9529:	50                   	push   eax
  6b952a:	8b ce                	mov    ecx,esi
  6b952c:	0f 29 44 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm0
  6b9531:	e8 5a e9 ff ff       	call   0x6b7e90
  6b9536:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  6b953a:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6b953e:	0f 29 7c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm7
  6b9543:	51                   	push   ecx
  6b9544:	57                   	push   edi
  6b9545:	8d 94 24 88 00 00 00 	lea    edx,[esp+0x88]
  6b954c:	52                   	push   edx
  6b954d:	8b ce                	mov    ecx,esi
  6b954f:	e8 3c e9 ff ff       	call   0x6b7e90
  6b9554:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  6b9557:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  6b955b:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  6b955f:	0f 5f f0             	maxps  xmm6,xmm0
  6b9562:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  6b9565:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6b9569:	0f 5f f0             	maxps  xmm6,xmm0
  6b956c:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  6b956f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  6b9573:	0f 5f f0             	maxps  xmm6,xmm0
  6b9576:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  6b9579:	0f 5f f0             	maxps  xmm6,xmm0
  6b957c:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  6b957f:	0f 5f f0             	maxps  xmm6,xmm0
  6b9582:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  6b9585:	0f 5f f0             	maxps  xmm6,xmm0
  6b9588:	b9 a8 1b 1d 01       	mov    ecx,0x11d1ba8
  6b958d:	0f 29 74 24 30       	movaps XMMWORD PTR [esp+0x30],xmm6
  6b9592:	e8 09 bc 12 00       	call   0x7e51a0
  6b9597:	d9 00                	fld    DWORD PTR [eax]
  6b9599:	51                   	push   ecx
  6b959a:	8d 44 24 34          	lea    eax,[esp+0x34]
  6b959e:	d9 1c 24             	fstp   DWORD PTR [esp]
  6b95a1:	e8 9a e0 ff ff       	call   0x6b7640
  6b95a6:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  6b95ad:	00 
  6b95ae:	83 c4 04             	add    esp,0x4
  6b95b1:	0f 2f c8             	comiss xmm1,xmm0
  6b95b4:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6b95ba:	76 10                	jbe    0x6b95cc
  6b95bc:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  6b95c0:	51                   	push   ecx
  6b95c1:	d9 1c 24             	fstp   DWORD PTR [esp]
  6b95c4:	57                   	push   edi
  6b95c5:	8b ce                	mov    ecx,esi
  6b95c7:	e8 84 ed ff ff       	call   0x6b8350
  6b95cc:	5f                   	pop    edi
  6b95cd:	5e                   	pop    esi
  6b95ce:	5b                   	pop    ebx
  6b95cf:	8b e5                	mov    esp,ebp
  6b95d1:	5d                   	pop    ebp
  6b95d2:	c2 04 00             	ret    0x4
