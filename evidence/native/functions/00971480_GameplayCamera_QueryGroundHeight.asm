# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00971480, 0x00971b7f).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base 0x00400000.
Analyst name: GameplayCamera_QueryGroundHeight.
Paired annotated Ghidra pseudocode: 00971480_GameplayCamera_QueryGroundHeight.c
Ghidra function-body envelope [0x00971480, 0x00971b7f); inferred boundaries.
Includes any internal gaps; machine instructions govern decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00971480 <.text+0x570480>:
  971480:	55                   	push   ebp
  971481:	8b ec                	mov    ebp,esp
  971483:	83 e4 f0             	and    esp,0xfffffff0
  971486:	81 ec 84 00 00 00    	sub    esp,0x84
  97148c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  97148f:	53                   	push   ebx
  971490:	56                   	push   esi
  971491:	57                   	push   edi
  971492:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  971495:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  971498:	8b d9                	mov    ebx,ecx
  97149a:	c6 00 00             	mov    BYTE PTR [eax],0x0
  97149d:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  9714a0:	85 c9                	test   ecx,ecx
  9714a2:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9714a7:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  9714ad:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  9714b3:	0f 84 b9 06 00 00    	je     0x971b72
  9714b9:	f3 0f 10 05 9c 6c 04 	movss  xmm0,DWORD PTR ds:0x1046c9c
  9714c0:	01
  9714c1:	6a 00                	push   0x0
  9714c3:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  9714c9:	e8 92 e0 2e 00       	call   0xc5f560
  9714ce:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  9714d1:	52                   	push   edx
  9714d2:	50                   	push   eax
  9714d3:	e8 38 13 2f 00       	call   0xc62810
  9714d8:	8b f0                	mov    esi,eax
  9714da:	85 f6                	test   esi,esi
  9714dc:	74 29                	je     0x971507
  9714de:	8b ce                	mov    ecx,esi
  9714e0:	e8 3b 20 3d 00       	call   0xd43520
  9714e5:	84 c0                	test   al,al
  9714e7:	75 12                	jne    0x9714fb
  9714e9:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  9714f0:	75 15                	jne    0x971507
  9714f2:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  9714f9:	75 0c                	jne    0x971507
  9714fb:	8b 8e 9c 03 00 00    	mov    ecx,DWORD PTR [esi+0x39c]
  971501:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  971505:	eb 08                	jmp    0x97150f
  971507:	c7 44 24 28 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  97150e:	00
  97150f:	85 f6                	test   esi,esi
  971511:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  971514:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  971519:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  97151f:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  971524:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [esp+0x38]
  97152a:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  971530:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  971536:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  97153b:	0f 84 45 01 00 00    	je     0x971686
  971541:	80 be bc 04 00 00 00 	cmp    BYTE PTR [esi+0x4bc],0x0
  971548:	0f 84 38 01 00 00    	je     0x971686
  97154e:	8d 54 24 50          	lea    edx,[esp+0x50]
  971552:	52                   	push   edx
  971553:	8b ce                	mov    ecx,esi
  971555:	e8 16 0f 14 00       	call   0xab2470
  97155a:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  97155d:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  971560:	0f 28 58 10          	movaps xmm3,XMMWORD PTR [eax+0x10]
  971564:	0f 28 c1             	movaps xmm0,xmm1
  971567:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  97156b:	0f 59 c2             	mulps  xmm0,xmm2
  97156e:	0f 28 50 30          	movaps xmm2,XMMWORD PTR [eax+0x30]
  971572:	0f 58 c2             	addps  xmm0,xmm2
  971575:	0f 28 d1             	movaps xmm2,xmm1
  971578:	0f c6 d1 55          	shufps xmm2,xmm1,0x55
  97157c:	0f 59 d3             	mulps  xmm2,xmm3
  97157f:	0f 58 c2             	addps  xmm0,xmm2
  971582:	0f 28 d1             	movaps xmm2,xmm1
  971585:	0f c6 d1 aa          	shufps xmm2,xmm1,0xaa
  971589:	0f 28 48 20          	movaps xmm1,XMMWORD PTR [eax+0x20]
  97158d:	0f 59 d1             	mulps  xmm2,xmm1
  971590:	0f 58 c2             	addps  xmm0,xmm2
  971593:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  971598:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  97159e:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  9715a3:	0f 57 c0             	xorps  xmm0,xmm0
  9715a6:	0f 2f c8             	comiss xmm1,xmm0
  9715a9:	0f 82 cb 00 00 00    	jb     0x97167a
  9715af:	f3 0f 2a 96 74 01 00 	cvtsi2ss xmm2,DWORD PTR [esi+0x174]
  9715b6:	00
  9715b7:	0f 2f d1             	comiss xmm2,xmm1
  9715ba:	0f 82 ba 00 00 00    	jb     0x97167a
  9715c0:	f3 0f 10 4c 24 48    	movss  xmm1,DWORD PTR [esp+0x48]
  9715c6:	0f 2f c8             	comiss xmm1,xmm0
  9715c9:	0f 82 ab 00 00 00    	jb     0x97167a
  9715cf:	f3 0f 2a 86 78 01 00 	cvtsi2ss xmm0,DWORD PTR [esi+0x178]
  9715d6:	00
  9715d7:	0f 2f c1             	comiss xmm0,xmm1
  9715da:	0f 82 9a 00 00 00    	jb     0x97167a
  9715e0:	8d 44 24 50          	lea    eax,[esp+0x50]
  9715e4:	50                   	push   eax
  9715e5:	8b ce                	mov    ecx,esi
  9715e7:	e8 c4 06 14 00       	call   0xab1cb0
  9715ec:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  9715ef:	0f 28 17             	movaps xmm2,XMMWORD PTR [edi]
  9715f2:	0f 28 d9             	movaps xmm3,xmm1
  9715f5:	0f c6 d9 09          	shufps xmm3,xmm1,0x9
  9715f9:	0f 28 e1             	movaps xmm4,xmm1
  9715fc:	0f c6 e1 12          	shufps xmm4,xmm1,0x12
  971600:	0f 28 ea             	movaps xmm5,xmm2
  971603:	0f c6 ea 09          	shufps xmm5,xmm2,0x9
  971607:	0f 59 ec             	mulps  xmm5,xmm4
  97160a:	0f 28 c2             	movaps xmm0,xmm2
  97160d:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  971611:	0f 59 c3             	mulps  xmm0,xmm3
  971614:	0f 5c c5             	subps  xmm0,xmm5
  971617:	0f 28 e9             	movaps xmm5,xmm1
  97161a:	0f c6 e9 ff          	shufps xmm5,xmm1,0xff
  97161e:	0f 59 ea             	mulps  xmm5,xmm2
  971621:	0f 58 c5             	addps  xmm0,xmm5
  971624:	0f 28 c8             	movaps xmm1,xmm0
  971627:	0f c6 c8 09          	shufps xmm1,xmm0,0x9
  97162b:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  97162f:	0f 59 cc             	mulps  xmm1,xmm4
  971632:	0f 59 c3             	mulps  xmm0,xmm3
  971635:	0f 5c c1             	subps  xmm0,xmm1
  971638:	f3 0f 10 0d 88 fd 03 	movss  xmm1,DWORD PTR ds:0x103fd88
  97163f:	01
  971640:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  971644:	0f 59 c1             	mulps  xmm0,xmm1
  971647:	0f 28 48 10          	movaps xmm1,XMMWORD PTR [eax+0x10]
  97164b:	0f 58 c2             	addps  xmm0,xmm2
  97164e:	0f 58 c1             	addps  xmm0,xmm1
  971651:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  971656:	f3 0f 10 4c 24 40    	movss  xmm1,DWORD PTR [esp+0x40]
  97165c:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  971661:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  971667:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  97166d:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  971673:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  971678:	eb 0c                	jmp    0x971686
  97167a:	f3 0f 10 4c 24 24    	movss  xmm1,DWORD PTR [esp+0x24]
  971680:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  971686:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971689:	0f 2f 89 b4 00 00 00 	comiss xmm1,DWORD PTR [ecx+0xb4]
  971690:	0f 82 dc 04 00 00    	jb     0x971b72
  971696:	0f 2f 81 b8 00 00 00 	comiss xmm0,DWORD PTR [ecx+0xb8]
  97169d:	0f 82 cf 04 00 00    	jb     0x971b72
  9716a3:	f3 0f 10 91 bc 00 00 	movss  xmm2,DWORD PTR [ecx+0xbc]
  9716aa:	00
  9716ab:	0f 2f d1             	comiss xmm2,xmm1
  9716ae:	0f 86 be 04 00 00    	jbe    0x971b72
  9716b4:	f3 0f 10 89 c4 00 00 	movss  xmm1,DWORD PTR [ecx+0xc4]
  9716bb:	00
  9716bc:	f3 0f 58 89 c0 00 00 	addss  xmm1,DWORD PTR [ecx+0xc0]
  9716c3:	00
  9716c4:	0f 2f c8             	comiss xmm1,xmm0
  9716c7:	0f 86 a5 04 00 00    	jbe    0x971b72
  9716cd:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  9716d1:	83 ec 08             	sub    esp,0x8
  9716d4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  9716d8:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  9716dc:	d9 1c 24             	fstp   DWORD PTR [esp]
  9716df:	e8 ec 70 2f 00       	call   0xc687d0
  9716e4:	8b f8                	mov    edi,eax
  9716e6:	85 ff                	test   edi,edi
  9716e8:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  9716ec:	0f 84 48 02 00 00    	je     0x97193a
  9716f2:	85 c0                	test   eax,eax
  9716f4:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  9716f7:	c6 01 01             	mov    BYTE PTR [ecx],0x1
  9716fa:	0f 8c 3a 02 00 00    	jl     0x97193a
  971700:	8b 57 48             	mov    edx,DWORD PTR [edi+0x48]
  971703:	8b 47 4c             	mov    eax,DWORD PTR [edi+0x4c]
  971706:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971709:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  97170d:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  971711:	e8 4a de 2e 00       	call   0xc5f560
  971716:	3b 44 24 30          	cmp    eax,DWORD PTR [esp+0x30]
  97171a:	75 0e                	jne    0x97172a
  97171c:	3b 54 24 34          	cmp    edx,DWORD PTR [esp+0x34]
  971720:	75 08                	jne    0x97172a
  971722:	8b 87 9c 03 00 00    	mov    eax,DWORD PTR [edi+0x39c]
  971728:	eb 02                	jmp    0x97172c
  97172a:	33 c0                	xor    eax,eax
  97172c:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  971730:	51                   	push   ecx
  971731:	8b cb                	mov    ecx,ebx
  971733:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  971737:	e8 94 f9 ff ff       	call   0x9710d0
  97173c:	84 c0                	test   al,al
  97173e:	74 08                	je     0x971748
  971740:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  971744:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  971748:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  97174c:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  971750:	6a 01                	push   0x1
  971752:	50                   	push   eax
  971753:	83 ec 08             	sub    esp,0x8
  971756:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  97175a:	8b cf                	mov    ecx,edi
  97175c:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  971760:	d9 1c 24             	fstp   DWORD PTR [esp]
  971763:	e8 c8 63 14 00       	call   0xab7b30
  971768:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  97176c:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  971770:	75 72                	jne    0x9717e4
  971772:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  971776:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  97177a:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  97177e:	51                   	push   ecx
  97177f:	83 c2 ff             	add    edx,0xffffffff
  971782:	52                   	push   edx
  971783:	83 ec 08             	sub    esp,0x8
  971786:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  97178a:	8b cf                	mov    ecx,edi
  97178c:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  971790:	d9 1c 24             	fstp   DWORD PTR [esp]
  971793:	e8 58 65 14 00       	call   0xab7cf0
  971798:	84 c0                	test   al,al
  97179a:	74 48                	je     0x9717e4
  97179c:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  9717a2:	f3 0f 58 05 68 fd 03 	addss  xmm0,DWORD PTR ds:0x103fd68
  9717a9:	01
  9717aa:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  9717b0:	0f 28 d0             	movaps xmm2,xmm0
  9717b3:	f3 0f 5c d1          	subss  xmm2,xmm1
  9717b7:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  9717bd:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  9717c1:	c1 f8 1f             	sar    eax,0x1f
  9717c4:	8b c8                	mov    ecx,eax
  9717c6:	f3 0f 11 4c 24 30    	movss  DWORD PTR [esp+0x30],xmm1
  9717cc:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  9717d0:	f7 d1                	not    ecx
  9717d2:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  9717d8:	23 4c 24 2c          	and    ecx,DWORD PTR [esp+0x2c]
  9717dc:	23 d0                	and    edx,eax
  9717de:	0b ca                	or     ecx,edx
  9717e0:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  9717e4:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  9717e8:	85 c0                	test   eax,eax
  9717ea:	7f 15                	jg     0x971801
  9717ec:	0f 85 f6 00 00 00    	jne    0x9718e8
  9717f2:	8b cf                	mov    ecx,edi
  9717f4:	e8 c7 33 cb ff       	call   0x624bc0
  9717f9:	84 c0                	test   al,al
  9717fb:	0f 85 e7 00 00 00    	jne    0x9718e8
  971801:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  971805:	83 ec 08             	sub    esp,0x8
  971808:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  97180c:	8b cf                	mov    ecx,edi
  97180e:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  971812:	d9 1c 24             	fstp   DWORD PTR [esp]
  971815:	e8 a6 65 14 00       	call   0xab7dc0
  97181a:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  97181e:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  971824:	d8 e1                	fsub   st,st(1)
  971826:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  97182a:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  97182e:	c1 f8 1f             	sar    eax,0x1f
  971831:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  971835:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  971839:	8b c8                	mov    ecx,eax
  97183b:	f7 d1                	not    ecx
  97183d:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  971843:	23 4c 24 30          	and    ecx,DWORD PTR [esp+0x30]
  971847:	23 d0                	and    edx,eax
  971849:	0b ca                	or     ecx,edx
  97184b:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  97184f:	8b cf                	mov    ecx,edi
  971851:	e8 aa ed cd ff       	call   0x650600
  971856:	84 c0                	test   al,al
  971858:	74 3d                	je     0x971897
  97185a:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  97185d:	e8 2e f8 2e 00       	call   0xc61090
  971862:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971866:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  97186c:	d8 e1                	fsub   st,st(1)
  97186e:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  971872:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  971876:	c1 f8 1f             	sar    eax,0x1f
  971879:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  97187d:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  971881:	8b c8                	mov    ecx,eax
  971883:	f7 d1                	not    ecx
  971885:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  97188b:	23 4c 24 30          	and    ecx,DWORD PTR [esp+0x30]
  97188f:	23 d0                	and    edx,eax
  971891:	0b ca                	or     ecx,edx
  971893:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  971897:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  97189b:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  97189e:	6a 01                	push   0x1
  9718a0:	83 ec 08             	sub    esp,0x8
  9718a3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  9718a7:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  9718ab:	d9 1c 24             	fstp   DWORD PTR [esp]
  9718ae:	e8 6d f5 2e 00       	call   0xc60e20
  9718b3:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  9718b7:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  9718bd:	d8 e1                	fsub   st,st(1)
  9718bf:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  9718c3:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  9718c7:	c1 f8 1f             	sar    eax,0x1f
  9718ca:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  9718ce:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  9718d2:	8b c8                	mov    ecx,eax
  9718d4:	f7 d1                	not    ecx
  9718d6:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  9718dc:	23 4c 24 30          	and    ecx,DWORD PTR [esp+0x30]
  9718e0:	23 d0                	and    edx,eax
  9718e2:	0b ca                	or     ecx,edx
  9718e4:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  9718e8:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  9718ed:	0f 84 7f 02 00 00    	je     0x971b72
  9718f3:	85 f6                	test   esi,esi
  9718f5:	0f 84 77 02 00 00    	je     0x971b72
  9718fb:	3b fe                	cmp    edi,esi
  9718fd:	0f 85 6f 02 00 00    	jne    0x971b72
  971903:	8d 44 24 50          	lea    eax,[esp+0x50]
  971907:	50                   	push   eax
  971908:	8b ce                	mov    ecx,esi
  97190a:	e8 f1 01 14 00       	call   0xab1b00
  97190f:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  971913:	83 c0 10             	add    eax,0x10
  971916:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  97191b:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [esp+0x44]
  971921:	f3 0f 58 44 24 1c    	addss  xmm0,DWORD PTR [esp+0x1c]
  971927:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  97192d:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971931:	5f                   	pop    edi
  971932:	5e                   	pop    esi
  971933:	5b                   	pop    ebx
  971934:	8b e5                	mov    esp,ebp
  971936:	5d                   	pop    ebp
  971937:	c2 0c 00             	ret    0xc
  97193a:	85 f6                	test   esi,esi
  97193c:	0f 84 82 01 00 00    	je     0x971ac4
  971942:	85 c0                	test   eax,eax
  971944:	0f 8d ea 00 00 00    	jge    0x971a34
  97194a:	85 ff                	test   edi,edi
  97194c:	74 24                	je     0x971972
  97194e:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  971952:	6a 00                	push   0x0
  971954:	50                   	push   eax
  971955:	83 ec 08             	sub    esp,0x8
  971958:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  97195c:	8b cf                	mov    ecx,edi
  97195e:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  971962:	d9 1c 24             	fstp   DWORD PTR [esp]
  971965:	e8 c6 61 14 00       	call   0xab7b30
  97196a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  97196e:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  971972:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  971976:	74 7a                	je     0x9719f2
  971978:	f3 0f 10 05 9c 6c 04 	movss  xmm0,DWORD PTR ds:0x1046c9c
  97197f:	01
  971980:	0f 2f 44 24 1c       	comiss xmm0,DWORD PTR [esp+0x1c]
  971985:	72 6b                	jb     0x9719f2
  971987:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  97198b:	6a 01                	push   0x1
  97198d:	50                   	push   eax
  97198e:	83 ec 08             	sub    esp,0x8
  971991:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  971995:	8b ce                	mov    ecx,esi
  971997:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  97199b:	d9 1c 24             	fstp   DWORD PTR [esp]
  97199e:	e8 8d 61 14 00       	call   0xab7b30
  9719a3:	d9 54 24 1c          	fst    DWORD PTR [esp+0x1c]
  9719a7:	d9 05 9c 6c 04 01    	fld    DWORD PTR ds:0x1046c9c
  9719ad:	df f1                	fcomip st,st(1)
  9719af:	dd d8                	fstp   st(0)
  9719b1:	72 3f                	jb     0x9719f2
  9719b3:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  9719b7:	51                   	push   ecx
  9719b8:	8b ce                	mov    ecx,esi
  9719ba:	e8 b1 41 14 00       	call   0xab5b70
  9719bf:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  9719c4:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  9719c8:	6a 01                	push   0x1
  9719ca:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  9719cf:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  9719d3:	52                   	push   edx
  9719d4:	83 ec 08             	sub    esp,0x8
  9719d7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  9719db:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  9719e0:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  9719e4:	8b ce                	mov    ecx,esi
  9719e6:	d9 1c 24             	fstp   DWORD PTR [esp]
  9719e9:	e8 42 61 14 00       	call   0xab7b30
  9719ee:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  9719f2:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  9719f7:	0f 84 75 01 00 00    	je     0x971b72
  9719fd:	8d 44 24 50          	lea    eax,[esp+0x50]
  971a01:	50                   	push   eax
  971a02:	8b ce                	mov    ecx,esi
  971a04:	e8 f7 00 14 00       	call   0xab1b00
  971a09:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  971a0d:	83 c0 10             	add    eax,0x10
  971a10:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  971a15:	f3 0f 10 44 24 54    	movss  xmm0,DWORD PTR [esp+0x54]
  971a1b:	f3 0f 58 44 24 1c    	addss  xmm0,DWORD PTR [esp+0x1c]
  971a21:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  971a27:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971a2b:	5f                   	pop    edi
  971a2c:	5e                   	pop    esi
  971a2d:	5b                   	pop    ebx
  971a2e:	8b e5                	mov    esp,ebp
  971a30:	5d                   	pop    ebp
  971a31:	c2 0c 00             	ret    0xc
  971a34:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  971a3b:	0f 85 83 00 00 00    	jne    0x971ac4
  971a41:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  971a48:	75 7a                	jne    0x971ac4
  971a4a:	85 c0                	test   eax,eax
  971a4c:	75 76                	jne    0x971ac4
  971a4e:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  971a52:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971a55:	50                   	push   eax
  971a56:	50                   	push   eax
  971a57:	50                   	push   eax
  971a58:	50                   	push   eax
  971a59:	6a 01                	push   0x1
  971a5b:	50                   	push   eax
  971a5c:	50                   	push   eax
  971a5d:	83 ec 08             	sub    esp,0x8
  971a60:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  971a64:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  971a68:	d9 1c 24             	fstp   DWORD PTR [esp]
  971a6b:	e8 20 86 2f 00       	call   0xc6a090
  971a70:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  971a74:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  971a78:	0f 84 f4 00 00 00    	je     0x971b72
  971a7e:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  971a81:	56                   	push   esi
  971a82:	51                   	push   ecx
  971a83:	e8 68 1d 19 00       	call   0xb037f0
  971a88:	d9 05 f4 98 f9 00    	fld    DWORD PTR ds:0xf998f4
  971a8e:	d9 c9                	fxch   st(1)
  971a90:	83 c4 08             	add    esp,0x8
  971a93:	df f1                	fcomip st,st(1)
  971a95:	dd d8                	fstp   st(0)
  971a97:	0f 86 d5 00 00 00    	jbe    0x971b72
  971a9d:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971aa0:	e8 eb f5 2e 00       	call   0xc61090
  971aa5:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971aa9:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  971aaf:	d8 e1                	fsub   st,st(1)
  971ab1:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  971ab5:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  971ab9:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  971abf:	e9 93 00 00 00       	jmp    0x971b57
  971ac4:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  971ac8:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971acb:	6a 00                	push   0x0
  971acd:	6a 00                	push   0x0
  971acf:	6a 00                	push   0x0
  971ad1:	6a 00                	push   0x0
  971ad3:	6a 01                	push   0x1
  971ad5:	6a 00                	push   0x0
  971ad7:	6a 00                	push   0x0
  971ad9:	83 ec 08             	sub    esp,0x8
  971adc:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  971ae0:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  971ae4:	d9 1c 24             	fstp   DWORD PTR [esp]
  971ae7:	e8 a4 85 2f 00       	call   0xc6a090
  971aec:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971aef:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  971af3:	e8 98 f5 2e 00       	call   0xc61090
  971af8:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971afc:	d9 c0                	fld    st(0)
  971afe:	6a 01                	push   0x1
  971b00:	d8 e2                	fsub   st,st(2)
  971b02:	83 ec 08             	sub    esp,0x8
  971b05:	d9 5c 24 3c          	fstp   DWORD PTR [esp+0x3c]
  971b09:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  971b0d:	d9 5c 24 3c          	fstp   DWORD PTR [esp+0x3c]
  971b11:	c1 f8 1f             	sar    eax,0x1f
  971b14:	8b d0                	mov    edx,eax
  971b16:	d9 5c 24 38          	fstp   DWORD PTR [esp+0x38]
  971b1a:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  971b1e:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  971b22:	f7 d2                	not    edx
  971b24:	23 54 24 3c          	and    edx,DWORD PTR [esp+0x3c]
  971b28:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  971b2c:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  971b30:	23 c8                	and    ecx,eax
  971b32:	0b d1                	or     edx,ecx
  971b34:	d9 1c 24             	fstp   DWORD PTR [esp]
  971b37:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
  971b3a:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  971b3e:	e8 dd f2 2e 00       	call   0xc60e20
  971b43:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971b47:	d9 c0                	fld    st(0)
  971b49:	d8 e2                	fsub   st,st(2)
  971b4b:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  971b4f:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  971b53:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  971b57:	c1 f8 1f             	sar    eax,0x1f
  971b5a:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  971b5e:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  971b62:	8b d0                	mov    edx,eax
  971b64:	f7 d2                	not    edx
  971b66:	23 54 24 30          	and    edx,DWORD PTR [esp+0x30]
  971b6a:	23 c8                	and    ecx,eax
  971b6c:	0b d1                	or     edx,ecx
  971b6e:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  971b72:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  971b76:	5f                   	pop    edi
  971b77:	5e                   	pop    esi
  971b78:	5b                   	pop    ebx
  971b79:	8b e5                	mov    esp,ebp
  971b7b:	5d                   	pop    ebp
  971b7c:	c2 0c 00             	ret    0xc
