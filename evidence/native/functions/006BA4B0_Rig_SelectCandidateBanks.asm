# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006ba4b0 <.text+0x2b94b0>:
  6ba4b0:	55                   	push   ebp
  6ba4b1:	8b ec                	mov    ebp,esp
  6ba4b3:	83 e4 f0             	and    esp,0xfffffff0
  6ba4b6:	83 ec 34             	sub    esp,0x34
  6ba4b9:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  6ba4bd:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  6ba4c0:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  6ba4c3:	2b 11                	sub    edx,DWORD PTR [ecx]
  6ba4c5:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  6ba4ca:	f7 ea                	imul   edx
  6ba4cc:	c1 fa 03             	sar    edx,0x3
  6ba4cf:	8b c2                	mov    eax,edx
  6ba4d1:	53                   	push   ebx
  6ba4d2:	c1 e8 1f             	shr    eax,0x1f
  6ba4d5:	03 c2                	add    eax,edx
  6ba4d7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  6ba4da:	8b 1a                	mov    ebx,DWORD PTR [edx]
  6ba4dc:	56                   	push   esi
  6ba4dd:	8b 72 04             	mov    esi,DWORD PTR [edx+0x4]
  6ba4e0:	57                   	push   edi
  6ba4e1:	33 ff                	xor    edi,edi
  6ba4e3:	3b f0                	cmp    esi,eax
  6ba4e5:	7d 06                	jge    0x6ba4ed
  6ba4e7:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  6ba4eb:	eb 06                	jmp    0x6ba4f3
  6ba4ed:	8b f0                	mov    esi,eax
  6ba4ef:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6ba4f3:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  6ba4f6:	83 c0 fc             	add    eax,0xfffffffc
  6ba4f9:	3b d0                	cmp    edx,eax
  6ba4fb:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  6ba4ff:	7c 04                	jl     0x6ba505
  6ba501:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6ba505:	83 fe 04             	cmp    esi,0x4
  6ba508:	0f 57 c0             	xorps  xmm0,xmm0
  6ba50b:	0f 8c 18 01 00 00    	jl     0x6ba629
  6ba511:	83 c6 fc             	add    esi,0xfffffffc
  6ba514:	c1 ee 02             	shr    esi,0x2
  6ba517:	8d 43 05             	lea    eax,[ebx+0x5]
  6ba51a:	83 c6 01             	add    esi,0x1
  6ba51d:	c1 e0 04             	shl    eax,0x4
  6ba520:	03 44 24 10          	add    eax,DWORD PTR [esp+0x10]
  6ba524:	8d 3c b5 00 00 00 00 	lea    edi,[esi*4+0x0]
  6ba52b:	33 d2                	xor    edx,edx
  6ba52d:	03 df                	add    ebx,edi
  6ba52f:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  6ba533:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba535:	0f 28 0c 13          	movaps xmm1,XMMWORD PTR [ebx+edx*1]
  6ba539:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  6ba53e:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6ba544:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  6ba549:	0f 29 48 c0          	movaps XMMWORD PTR [eax-0x40],xmm1
  6ba54d:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba54f:	0f 28 4c 1a 10       	movaps xmm1,XMMWORD PTR [edx+ebx*1+0x10]
  6ba554:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  6ba559:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6ba55f:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  6ba564:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  6ba567:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba569:	0f 28 4c 1a 30       	movaps xmm1,XMMWORD PTR [edx+ebx*1+0x30]
  6ba56e:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  6ba573:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6ba579:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  6ba57e:	0f 29 48 d0          	movaps XMMWORD PTR [eax-0x30],xmm1
  6ba582:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba584:	0f 28 4c 1a 40       	movaps xmm1,XMMWORD PTR [edx+ebx*1+0x40]
  6ba589:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  6ba58e:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6ba594:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  6ba599:	0f 29 48 10          	movaps XMMWORD PTR [eax+0x10],xmm1
  6ba59d:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba59f:	0f 28 4c 1a 60       	movaps xmm1,XMMWORD PTR [edx+ebx*1+0x60]
  6ba5a4:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  6ba5a9:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6ba5af:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  6ba5b4:	0f 29 48 e0          	movaps XMMWORD PTR [eax-0x20],xmm1
  6ba5b8:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba5ba:	0f 28 4c 1a 70       	movaps xmm1,XMMWORD PTR [edx+ebx*1+0x70]
  6ba5bf:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  6ba5c4:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6ba5ca:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  6ba5cf:	0f 29 48 20          	movaps XMMWORD PTR [eax+0x20],xmm1
  6ba5d3:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba5d5:	0f 28 8c 13 90 00 00 	movaps xmm1,XMMWORD PTR [ebx+edx*1+0x90]
  6ba5dc:	00 
  6ba5dd:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  6ba5e2:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6ba5e8:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  6ba5ed:	0f 29 48 f0          	movaps XMMWORD PTR [eax-0x10],xmm1
  6ba5f1:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba5f3:	0f 28 8c 1a a0 00 00 	movaps xmm1,XMMWORD PTR [edx+ebx*1+0xa0]
  6ba5fa:	00 
  6ba5fb:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  6ba600:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6ba606:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  6ba60b:	0f 29 48 30          	movaps XMMWORD PTR [eax+0x30],xmm1
  6ba60f:	83 c0 40             	add    eax,0x40
  6ba612:	81 c2 c0 00 00 00    	add    edx,0xc0
  6ba618:	83 ee 01             	sub    esi,0x1
  6ba61b:	0f 85 12 ff ff ff    	jne    0x6ba533
  6ba621:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  6ba625:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  6ba629:	3b fe                	cmp    edi,esi
  6ba62b:	7d 53                	jge    0x6ba680
  6ba62d:	8d 43 05             	lea    eax,[ebx+0x5]
  6ba630:	8d 14 7f             	lea    edx,[edi+edi*2]
  6ba633:	c1 e0 04             	shl    eax,0x4
  6ba636:	03 44 24 10          	add    eax,DWORD PTR [esp+0x10]
  6ba63a:	2b f7                	sub    esi,edi
  6ba63c:	c1 e2 04             	shl    edx,0x4
  6ba63f:	03 fe                	add    edi,esi
  6ba641:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba643:	0f 28 0c 13          	movaps xmm1,XMMWORD PTR [ebx+edx*1]
  6ba647:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  6ba64c:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6ba652:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  6ba657:	0f 29 48 c0          	movaps XMMWORD PTR [eax-0x40],xmm1
  6ba65b:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba65d:	0f 28 4c 13 10       	movaps xmm1,XMMWORD PTR [ebx+edx*1+0x10]
  6ba662:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  6ba667:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6ba66d:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  6ba672:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  6ba675:	83 c0 10             	add    eax,0x10
  6ba678:	83 c2 30             	add    edx,0x30
  6ba67b:	83 ee 01             	sub    esi,0x1
  6ba67e:	75 c1                	jne    0x6ba641
  6ba680:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
  6ba685:	7e 3a                	jle    0x6ba6c1
  6ba687:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  6ba68b:	8d 04 7f             	lea    eax,[edi+edi*2]
  6ba68e:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  6ba692:	c1 e0 04             	shl    eax,0x4
  6ba695:	8d 97 d0 00 00 00    	lea    edx,[edi+0xd0]
  6ba69b:	eb 03                	jmp    0x6ba6a0
  6ba69d:	8d 49 00             	lea    ecx,[ecx+0x0]
  6ba6a0:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba6a2:	0f 28 04 03          	movaps xmm0,XMMWORD PTR [ebx+eax*1]
  6ba6a6:	0f 29 42 c0          	movaps XMMWORD PTR [edx-0x40],xmm0
  6ba6aa:	8b 19                	mov    ebx,DWORD PTR [ecx]
  6ba6ac:	0f 28 44 03 10       	movaps xmm0,XMMWORD PTR [ebx+eax*1+0x10]
  6ba6b1:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  6ba6b4:	83 c0 30             	add    eax,0x30
  6ba6b7:	83 c2 10             	add    edx,0x10
  6ba6ba:	83 ee 01             	sub    esi,0x1
  6ba6bd:	75 e1                	jne    0x6ba6a0
  6ba6bf:	eb 04                	jmp    0x6ba6c5
  6ba6c1:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  6ba6c5:	80 3d 5d 9d 15 01 00 	cmp    BYTE PTR ds:0x1159d5d,0x0
  6ba6cc:	74 0b                	je     0x6ba6d9
  6ba6ce:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  6ba6d1:	50                   	push   eax
  6ba6d2:	8b cf                	mov    ecx,edi
  6ba6d4:	e8 37 ed ff ff       	call   0x6b9410
  6ba6d9:	83 bf d4 01 00 00 00 	cmp    DWORD PTR [edi+0x1d4],0x0
  6ba6e0:	b3 20                	mov    bl,0x20
  6ba6e2:	74 08                	je     0x6ba6ec
  6ba6e4:	84 9f 24 02 00 00    	test   BYTE PTR [edi+0x224],bl
  6ba6ea:	74 2f                	je     0x6ba71b
  6ba6ec:	80 3d 5c 9d 15 01 00 	cmp    BYTE PTR ds:0x1159d5c,0x0
  6ba6f3:	74 26                	je     0x6ba71b
  6ba6f5:	8b cf                	mov    ecx,edi
  6ba6f7:	e8 e4 d8 ff ff       	call   0x6b7fe0
  6ba6fc:	84 9f 24 02 00 00    	test   BYTE PTR [edi+0x224],bl
  6ba702:	74 17                	je     0x6ba71b
  6ba704:	b9 d8 1b 1d 01       	mov    ecx,0x11d1bd8
  6ba709:	e8 92 aa 12 00       	call   0x7e51a0
  6ba70e:	d9 00                	fld    DWORD PTR [eax]
  6ba710:	51                   	push   ecx
  6ba711:	8b cf                	mov    ecx,edi
  6ba713:	d9 1c 24             	fstp   DWORD PTR [esp]
  6ba716:	e8 c5 ee ff ff       	call   0x6b95e0
  6ba71b:	5f                   	pop    edi
  6ba71c:	5e                   	pop    esi
  6ba71d:	5b                   	pop    ebx
  6ba71e:	8b e5                	mov    esp,ebp
  6ba720:	5d                   	pop    ebp
  6ba721:	c2 08 00             	ret    0x8
