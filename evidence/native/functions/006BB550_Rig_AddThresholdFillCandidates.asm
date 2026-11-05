# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bb550 <.text+0x2ba550>:
  6bb550:	55                   	push   ebp
  6bb551:	8b ec                	mov    ebp,esp
  6bb553:	83 e4 f0             	and    esp,0xfffffff0
  6bb556:	83 ec 74             	sub    esp,0x74
  6bb559:	53                   	push   ebx
  6bb55a:	0f 57 c0             	xorps  xmm0,xmm0
  6bb55d:	f3 0f 10 15 ec e6 06 	movss  xmm2,DWORD PTR ds:0x106e6ec
  6bb564:	01 
  6bb565:	56                   	push   esi
  6bb566:	57                   	push   edi
  6bb567:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  6bb56a:	8b 37                	mov    esi,DWORD PTR [edi]
  6bb56c:	8b d9                	mov    ebx,ecx
  6bb56e:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  6bb571:	2b ce                	sub    ecx,esi
  6bb573:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  6bb578:	f7 e9                	imul   ecx
  6bb57a:	c1 fa 03             	sar    edx,0x3
  6bb57d:	8b c2                	mov    eax,edx
  6bb57f:	c1 e8 1f             	shr    eax,0x1f
  6bb582:	03 c2                	add    eax,edx
  6bb584:	33 d2                	xor    edx,edx
  6bb586:	83 f8 04             	cmp    eax,0x4
  6bb589:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6bb58f:	7c 67                	jl     0x6bb5f8
  6bb591:	8d 48 fc             	lea    ecx,[eax-0x4]
  6bb594:	c1 e9 02             	shr    ecx,0x2
  6bb597:	83 c6 58             	add    esi,0x58
  6bb59a:	83 c1 01             	add    ecx,0x1
  6bb59d:	8d 14 8d 00 00 00 00 	lea    edx,[ecx*4+0x0]
  6bb5a4:	f3 0f 10 4e d0       	movss  xmm1,DWORD PTR [esi-0x30]
  6bb5a9:	0f 2f ca             	comiss xmm1,xmm2
  6bb5ac:	72 07                	jb     0x6bb5b5
  6bb5ae:	f3 0f 58 c8          	addss  xmm1,xmm0
  6bb5b2:	0f 28 c1             	movaps xmm0,xmm1
  6bb5b5:	f3 0f 10 0e          	movss  xmm1,DWORD PTR [esi]
  6bb5b9:	0f 2f ca             	comiss xmm1,xmm2
  6bb5bc:	72 07                	jb     0x6bb5c5
  6bb5be:	f3 0f 58 c8          	addss  xmm1,xmm0
  6bb5c2:	0f 28 c1             	movaps xmm0,xmm1
  6bb5c5:	f3 0f 10 4e 30       	movss  xmm1,DWORD PTR [esi+0x30]
  6bb5ca:	0f 2f ca             	comiss xmm1,xmm2
  6bb5cd:	72 07                	jb     0x6bb5d6
  6bb5cf:	f3 0f 58 c8          	addss  xmm1,xmm0
  6bb5d3:	0f 28 c1             	movaps xmm0,xmm1
  6bb5d6:	f3 0f 10 4e 60       	movss  xmm1,DWORD PTR [esi+0x60]
  6bb5db:	0f 2f ca             	comiss xmm1,xmm2
  6bb5de:	72 07                	jb     0x6bb5e7
  6bb5e0:	f3 0f 58 c8          	addss  xmm1,xmm0
  6bb5e4:	0f 28 c1             	movaps xmm0,xmm1
  6bb5e7:	81 c6 c0 00 00 00    	add    esi,0xc0
  6bb5ed:	83 e9 01             	sub    ecx,0x1
  6bb5f0:	75 b2                	jne    0x6bb5a4
  6bb5f2:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6bb5f8:	3b d0                	cmp    edx,eax
  6bb5fa:	73 32                	jae    0x6bb62e
  6bb5fc:	8b 37                	mov    esi,DWORD PTR [edi]
  6bb5fe:	8d 0c 52             	lea    ecx,[edx+edx*2]
  6bb601:	c1 e1 04             	shl    ecx,0x4
  6bb604:	8d 4c 31 28          	lea    ecx,[ecx+esi*1+0x28]
  6bb608:	2b c2                	sub    eax,edx
  6bb60a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  6bb610:	f3 0f 10 09          	movss  xmm1,DWORD PTR [ecx]
  6bb614:	0f 2f ca             	comiss xmm1,xmm2
  6bb617:	72 07                	jb     0x6bb620
  6bb619:	f3 0f 58 c8          	addss  xmm1,xmm0
  6bb61d:	0f 28 c1             	movaps xmm0,xmm1
  6bb620:	83 c1 30             	add    ecx,0x30
  6bb623:	83 e8 01             	sub    eax,0x1
  6bb626:	75 e8                	jne    0x6bb610
  6bb628:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6bb62e:	b9 b8 1b 1d 01       	mov    ecx,0x11d1bb8
  6bb633:	e8 68 9b 12 00       	call   0x7e51a0
  6bb638:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6bb63c:	f3 0f 10 4c 24 18    	movss  xmm1,DWORD PTR [esp+0x18]
  6bb642:	0f 2f c1             	comiss xmm0,xmm1
  6bb645:	0f 86 0f 01 00 00    	jbe    0x6bb75a
  6bb64b:	80 8b 24 02 00 00 01 	or     BYTE PTR [ebx+0x224],0x1
  6bb652:	f3 0f 5e c8          	divss  xmm1,xmm0
  6bb656:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6bb65d:	00 
  6bb65e:	f3 0f 5c c1          	subss  xmm0,xmm1
  6bb662:	0f 57 c9             	xorps  xmm1,xmm1
  6bb665:	0f 2f c1             	comiss xmm0,xmm1
  6bb668:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6bb66e:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  6bb674:	8d 44 24 18          	lea    eax,[esp+0x18]
  6bb678:	77 04                	ja     0x6bb67e
  6bb67a:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  6bb67e:	d9 00                	fld    DWORD PTR [eax]
  6bb680:	68 d8 85 3c e2       	push   0xe23c85d8
  6bb685:	d9 fa                	fsqrt
  6bb687:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  6bb68b:	e8 b0 df 02 00       	call   0x6e9640
  6bb690:	8b c8                	mov    ecx,eax
  6bb692:	e8 f9 1a ff ff       	call   0x6ad190
  6bb697:	85 c0                	test   eax,eax
  6bb699:	0f 84 bb 00 00 00    	je     0x6bb75a
  6bb69f:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6bb6a6:	00 
  6bb6a7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bb6ab:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  6bb6b0:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  6bb6b6:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bb6ba:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  6bb6bf:	8d 70 10             	lea    esi,[eax+0x10]
  6bb6c2:	bb 04 00 00 00       	mov    ebx,0x4
  6bb6c7:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  6bb6cb:	e8 00 0c 00 00       	call   0x6bc2d0
  6bb6d0:	0f 28 46 40          	movaps xmm0,XMMWORD PTR [esi+0x40]
  6bb6d4:	0f 59 44 24 20       	mulps  xmm0,XMMWORD PTR [esp+0x20]
  6bb6d9:	6a 00                	push   0x0
  6bb6db:	8d 54 24 34          	lea    edx,[esp+0x34]
  6bb6df:	52                   	push   edx
  6bb6e0:	8d 44 24 48          	lea    eax,[esp+0x48]
  6bb6e4:	50                   	push   eax
  6bb6e5:	56                   	push   esi
  6bb6e6:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  6bb6ea:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  6bb6ef:	e8 7c 25 00 00       	call   0x6bdc70
  6bb6f4:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  6bb6f7:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6bb6fa:	c7 44 24 7c 02 00 00 	mov    DWORD PTR [esp+0x7c],0x2
  6bb701:	00 
  6bb702:	73 3d                	jae    0x6bb741
  6bb704:	85 c0                	test   eax,eax
  6bb706:	8d 48 30             	lea    ecx,[eax+0x30]
  6bb709:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  6bb70c:	74 40                	je     0x6bb74e
  6bb70e:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  6bb713:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  6bb716:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  6bb71b:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  6bb71f:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  6bb723:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  6bb726:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  6bb72a:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  6bb72d:	f3 0f 10 44 24 78    	movss  xmm0,DWORD PTR [esp+0x78]
  6bb733:	f3 0f 11 40 28       	movss  DWORD PTR [eax+0x28],xmm0
  6bb738:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
  6bb73c:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
  6bb73f:	eb 0d                	jmp    0x6bb74e
  6bb741:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  6bb745:	51                   	push   ecx
  6bb746:	50                   	push   eax
  6bb747:	8b cf                	mov    ecx,edi
  6bb749:	e8 92 f5 ff ff       	call   0x6bace0
  6bb74e:	83 c6 10             	add    esi,0x10
  6bb751:	83 eb 01             	sub    ebx,0x1
  6bb754:	0f 85 6d ff ff ff    	jne    0x6bb6c7
  6bb75a:	5f                   	pop    edi
  6bb75b:	5e                   	pop    esi
  6bb75c:	5b                   	pop    ebx
  6bb75d:	8b e5                	mov    esp,ebp
  6bb75f:	5d                   	pop    ebp
  6bb760:	c2 04 00             	ret    0x4
