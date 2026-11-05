# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007595f0, 0x00759770); analyst name PointDestination_ExpandCandidate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007595f0 <.text+0x3585f0>:
  7595f0:	55                   	push   ebp
  7595f1:	8b ec                	mov    ebp,esp
  7595f3:	83 e4 f0             	and    esp,0xfffffff0
  7595f6:	81 ec 84 00 00 00    	sub    esp,0x84
  7595fc:	53                   	push   ebx
  7595fd:	56                   	push   esi
  7595fe:	57                   	push   edi
  7595ff:	8b d9                	mov    ebx,ecx
  759601:	8d 44 24 14          	lea    eax,[esp+0x14]
  759605:	50                   	push   eax
  759606:	8d 7b 30             	lea    edi,[ebx+0x30]
  759609:	57                   	push   edi
  75960a:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  759612:	e8 49 2a ff ff       	call   0x74c060
  759617:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  75961b:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  75961e:	83 c4 08             	add    esp,0x8
  759621:	85 f6                	test   esi,esi
  759623:	8b c8                	mov    ecx,eax
  759625:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  759629:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  75962e:	74 1b                	je     0x75964b
  759630:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  759637:	75 12                	jne    0x75964b
  759639:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  759640:	75 09                	jne    0x75964b
  759642:	85 c9                	test   ecx,ecx
  759644:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  759649:	74 05                	je     0x759650
  75964b:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  759650:	32 c0                	xor    al,al
  759652:	85 f6                	test   esi,esi
  759654:	74 3f                	je     0x759695
  759656:	85 c9                	test   ecx,ecx
  759658:	7d 3b                	jge    0x759695
  75965a:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  759662:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  759666:	51                   	push   ecx
  759667:	57                   	push   edi
  759668:	56                   	push   esi
  759669:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  75966f:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  759675:	c7 44 24 34 00 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
  75967d:	e8 3e 32 38 00       	call   0xadc8c0
  759682:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  759686:	52                   	push   edx
  759687:	56                   	push   esi
  759688:	e8 63 65 3a 00       	call   0xaffbf0
  75968d:	0f 28 44 24 44       	movaps xmm0,XMMWORD PTR [esp+0x44]
  759692:	83 c4 14             	add    esp,0x14
  759695:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  75969a:	75 09                	jne    0x7596a5
  75969c:	84 c0                	test   al,al
  75969e:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  7596a3:	74 05                	je     0x7596aa
  7596a5:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  7596aa:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  7596ad:	6a 01                	push   0x1
  7596af:	6a 00                	push   0x0
  7596b1:	6a 01                	push   0x1
  7596b3:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  7596b8:	0f 29 44 24 4c       	movaps XMMWORD PTR [esp+0x4c],xmm0
  7596bd:	e8 1e 2e 0c 00       	call   0x81c4e0
  7596c2:	84 c0                	test   al,al
  7596c4:	0f 94 c0             	sete   al
  7596c7:	88 44 24 1c          	mov    BYTE PTR [esp+0x1c],al
  7596cb:	e8 20 f6 0c 00       	call   0x828cf0
  7596d0:	33 f6                	xor    esi,esi
  7596d2:	3b c6                	cmp    eax,esi
  7596d4:	74 34                	je     0x75970a
  7596d6:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7596da:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  7596de:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  7596e2:	51                   	push   ecx
  7596e3:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7596e7:	52                   	push   edx
  7596e8:	51                   	push   ecx
  7596e9:	83 ec 08             	sub    esp,0x8
  7596ec:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7596f0:	8b c8                	mov    ecx,eax
  7596f2:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  7596f6:	d9 1c 24             	fstp   DWORD PTR [esp]
  7596f9:	e8 92 f7 0c 00       	call   0x828e90
  7596fe:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  759702:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  759708:	eb 03                	jmp    0x75970d
  75970a:	0f 57 c0             	xorps  xmm0,xmm0
  75970d:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  759712:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  759716:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  759719:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  75971e:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  759724:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  759729:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  75972e:	f3 0f 10 43 2c       	movss  xmm0,DWORD PTR [ebx+0x2c]
  759733:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  759737:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  75973d:	0f 28 43 40          	movaps xmm0,XMMWORD PTR [ebx+0x40]
  759741:	51                   	push   ecx
  759742:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  759745:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
  759749:	89 74 24 7c          	mov    DWORD PTR [esp+0x7c],esi
  75974d:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  759754:	89 b4 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],esi
  75975b:	0f 29 44 24 64       	movaps XMMWORD PTR [esp+0x64],xmm0
  759760:	e8 1b b2 ef ff       	call   0x654980
  759765:	5f                   	pop    edi
  759766:	5e                   	pop    esi
  759767:	b0 01                	mov    al,0x1
  759769:	5b                   	pop    ebx
  75976a:	8b e5                	mov    esp,ebp
  75976c:	5d                   	pop    ebp
  75976d:	c2 20 00             	ret    0x20
