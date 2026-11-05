# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c84570..00c851fa; Terrain_UpdateStreamingTilesFromCamera
  c84570:	55                   	push   ebp
  c84571:	8b ec                	mov    ebp,esp
  c84573:	83 e4 f0             	and    esp,0xfffffff0
  c84576:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  c84579:	81 ec c4 00 00 00    	sub    esp,0xc4
  c8457f:	53                   	push   ebx
  c84580:	56                   	push   esi
  c84581:	57                   	push   edi
  c84582:	8b f9                	mov    edi,ecx
  c84584:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  c84587:	88 87 f4 00 00 00    	mov    BYTE PTR [edi+0xf4],al
  c8458d:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  c84590:	8d b7 10 01 00 00    	lea    esi,[edi+0x110]
  c84596:	0f 29 06             	movaps XMMWORD PTR [esi],xmm0
  c84599:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c8459c:	56                   	push   esi
  c8459d:	e8 8e 49 fa ff       	call   0xc28f30
  c845a2:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  c845a5:	0f 29 87 20 01 00 00 	movaps XMMWORD PTR [edi+0x120],xmm0
  c845ac:	8b 97 b0 00 00 00    	mov    edx,DWORD PTR [edi+0xb0]
  c845b2:	8b 02                	mov    eax,DWORD PTR [edx]
  c845b4:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  c845b7:	db 40 14             	fild   DWORD PTR [eax+0x14]
  c845ba:	85 c9                	test   ecx,ecx
  c845bc:	7d 06                	jge    0xc845c4
  c845be:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  c845c4:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  c845c7:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  c845cb:	85 d2                	test   edx,edx
  c845cd:	db 40 18             	fild   DWORD PTR [eax+0x18]
  c845d0:	7d 06                	jge    0xc845d8
  c845d2:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  c845d8:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  c845dc:	0f 28 87 20 01 00 00 	movaps xmm0,XMMWORD PTR [edi+0x120]
  c845e3:	d9 e8                	fld1
  c845e5:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  c845ea:	de f1                	fdivrp st(1),st
  c845ec:	0f 28 87 20 01 00 00 	movaps xmm0,XMMWORD PTR [edi+0x120]
  c845f3:	83 ec 08             	sub    esp,0x8
  c845f6:	0f 29 44 24 58       	movaps XMMWORD PTR [esp+0x58],xmm0
  c845fb:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  c84600:	d9 54 24 2c          	fst    DWORD PTR [esp+0x2c]
  c84604:	d8 4c 24 38          	fmul   DWORD PTR [esp+0x38]
  c84608:	d8 05 b4 b5 f9 00    	fadd   DWORD PTR ds:0xf9b5b4
  c8460e:	dd 1c 24             	fstp   QWORD PTR [esp]
  c84611:	e8 ba b1 2f 00       	call   0xf7f7d0
  c84616:	d8 4c 24 1c          	fmul   DWORD PTR [esp+0x1c]
  c8461a:	0f 28 44 24 68       	movaps xmm0,XMMWORD PTR [esp+0x68]
  c8461f:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  c84623:	d9 e8                	fld1
  c84625:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  c8462b:	d8 74 24 18          	fdiv   DWORD PTR [esp+0x18]
  c8462f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c84633:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  c84637:	0f c6 44 24 58 e2    	shufps xmm0,XMMWORD PTR [esp+0x58],0xe2
  c8463d:	0f 29 87 20 01 00 00 	movaps XMMWORD PTR [edi+0x120],xmm0
  c84644:	0f 28 87 20 01 00 00 	movaps xmm0,XMMWORD PTR [edi+0x120]
  c8464b:	0f 29 44 24 58       	movaps XMMWORD PTR [esp+0x58],xmm0
  c84650:	0f 28 87 20 01 00 00 	movaps xmm0,XMMWORD PTR [edi+0x120]
  c84657:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  c8465c:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  c84661:	d9 54 24 24          	fst    DWORD PTR [esp+0x24]
  c84665:	d8 4c 24 60          	fmul   DWORD PTR [esp+0x60]
  c84669:	d8 05 b4 b5 f9 00    	fadd   DWORD PTR ds:0xf9b5b4
  c8466f:	dd 1c 24             	fstp   QWORD PTR [esp]
  c84672:	e8 59 b1 2f 00       	call   0xf7f7d0
  c84677:	d8 4c 24 18          	fmul   DWORD PTR [esp+0x18]
  c8467b:	0f 28 4c 24 68       	movaps xmm1,XMMWORD PTR [esp+0x68]
  c84680:	83 c4 08             	add    esp,0x8
  c84683:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  c84687:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  c8468d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  c84691:	0f c6 c8 0f          	shufps xmm1,xmm0,0xf
  c84695:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  c8469a:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  c8469e:	f3 0f 10 0d cc 4c 0f 01 	movss  xmm1,DWORD PTR ds:0x10f4ccc
  c846a6:	0f 29 87 20 01 00 00 	movaps XMMWORD PTR [edi+0x120],xmm0
  c846ad:	0f 28 97 20 01 00 00 	movaps xmm2,XMMWORD PTR [edi+0x120]
  c846b4:	0f 28 c2             	movaps xmm0,xmm2
  c846b7:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c846bb:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  c846bf:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  c846c3:	0f 29 87 20 01 00 00 	movaps XMMWORD PTR [edi+0x120],xmm0
  c846ca:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c846cd:	e8 9e e5 c3 ff       	call   0x8c2c70
  c846d2:	85 c0                	test   eax,eax
  c846d4:	74 05                	je     0xc846db
  c846d6:	8a 40 6c             	mov    al,BYTE PTR [eax+0x6c]
  c846d9:	eb 02                	jmp    0xc846dd
  c846db:	32 c0                	xor    al,al
  c846dd:	8b 8f 00 01 00 00    	mov    ecx,DWORD PTR [edi+0x100]
  c846e3:	0f 28 8f 20 01 00 00 	movaps xmm1,XMMWORD PTR [edi+0x120]
  c846ea:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
  c846ee:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  c846f4:	03 c8                	add    ecx,eax
  c846f6:	8d 54 09 ff          	lea    edx,[ecx+ecx*1-0x1]
  c846fa:	85 d2                	test   edx,edx
  c846fc:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  c84700:	db 44 24 18          	fild   DWORD PTR [esp+0x18]
  c84704:	0f 29 8c 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm1
  c8470c:	7d 06                	jge    0xc84714
  c8470e:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  c84714:	85 c0                	test   eax,eax
  c84716:	d8 0d 40 b9 07 01    	fmul   DWORD PTR ds:0x107b940
  c8471c:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  c84720:	0f 85 bf 00 00 00    	jne    0xc847e5
  c84726:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  c84729:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  c8472e:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  c84732:	83 ec 08             	sub    esp,0x8
  c84735:	d8 4c 24 2c          	fmul   DWORD PTR [esp+0x2c]
  c84739:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  c8473e:	0f 29 4c 24 68       	movaps XMMWORD PTR [esp+0x68],xmm1
  c84743:	dd 1c 24             	fstp   QWORD PTR [esp]
  c84746:	e8 85 b0 2f 00       	call   0xf7f7d0
  c8474b:	d8 05 b4 b5 f9 00    	fadd   DWORD PTR ds:0xf9b5b4
  c84751:	0f 28 44 24 68       	movaps xmm0,XMMWORD PTR [esp+0x68]
  c84756:	d8 4c 24 1c          	fmul   DWORD PTR [esp+0x1c]
  c8475a:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  c8475e:	f3 0f 10 4c 24 2c    	movss  xmm1,DWORD PTR [esp+0x2c]
  c84764:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  c84768:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  c8476c:	0f 28 8c 24 88 00 00 00 	movaps xmm1,XMMWORD PTR [esp+0x88]
  c84774:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  c84778:	0f 28 4c 24 38       	movaps xmm1,XMMWORD PTR [esp+0x38]
  c8477d:	0f 29 4c 24 58       	movaps XMMWORD PTR [esp+0x58],xmm1
  c84782:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  c84786:	0f 29 84 24 88 00 00 00 	movaps XMMWORD PTR [esp+0x88],xmm0
  c8478e:	d8 4c 24 24          	fmul   DWORD PTR [esp+0x24]
  c84792:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  c84797:	dd 1c 24             	fstp   QWORD PTR [esp]
  c8479a:	e8 31 b0 2f 00       	call   0xf7f7d0
  c8479f:	d8 05 b4 b5 f9 00    	fadd   DWORD PTR ds:0xf9b5b4
  c847a5:	0f 28 4c 24 68       	movaps xmm1,XMMWORD PTR [esp+0x68]
  c847aa:	83 c4 08             	add    esp,0x8
  c847ad:	d8 4c 24 10          	fmul   DWORD PTR [esp+0x10]
  c847b1:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  c847b5:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  c847bb:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  c847bf:	0f c6 c8 0f          	shufps xmm1,xmm0,0xf
  c847c3:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  c847cb:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  c847cf:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  c847d7:	f3 0f 10 05 7c 48 04 01 	movss  xmm0,DWORD PTR ds:0x104487c
  c847df:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  c847e5:	80 bf f1 00 00 00 00 	cmp    BYTE PTR [edi+0xf1],0x0
  c847ec:	0f 85 02 01 00 00    	jne    0xc848f4
  c847f2:	80 bf f0 00 00 00 00 	cmp    BYTE PTR [edi+0xf0],0x0
  c847f9:	0f 84 f5 00 00 00    	je     0xc848f4
  c847ff:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c84805:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c8480b:	3b c1                	cmp    eax,ecx
  c8480d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c84811:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  c84815:	0f 84 d2 00 00 00    	je     0xc848ed
  c8481b:	eb 07                	jmp    0xc84824
  c8481d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c84820:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c84824:	8b 30                	mov    esi,DWORD PTR [eax]
  c84826:	83 7e 60 04          	cmp    DWORD PTR [esi+0x60],0x4
  c8482a:	0f 85 a8 00 00 00    	jne    0xc848d8
  c84830:	83 7e 5c 04          	cmp    DWORD PTR [esi+0x5c],0x4
  c84834:	0f 85 9e 00 00 00    	jne    0xc848d8
  c8483a:	83 be dc 00 00 00 00 	cmp    DWORD PTR [esi+0xdc],0x0
  c84841:	8d 9e dc 00 00 00    	lea    ebx,[esi+0xdc]
  c84847:	0f 85 8b 00 00 00    	jne    0xc848d8
  c8484d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c84850:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c84853:	6a 07                	push   0x7
  c84855:	50                   	push   eax
  c84856:	51                   	push   ecx
  c84857:	8d 94 24 b4 00 00 00 	lea    edx,[esp+0xb4]
  c8485e:	52                   	push   edx
  c8485f:	e8 bc c4 fa ff       	call   0xc30d20
  c84864:	83 c4 10             	add    esp,0x10
  c84867:	e8 14 b6 82 ff       	call   0x4afe80
  c8486c:	8b 10                	mov    edx,DWORD PTR [eax]
  c8486e:	8b 52 44             	mov    edx,DWORD PTR [edx+0x44]
  c84871:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  c84878:	51                   	push   ecx
  c84879:	8b c8                	mov    ecx,eax
  c8487b:	ff d2                	call   edx
  c8487d:	85 c0                	test   eax,eax
  c8487f:	75 57                	jne    0xc848d8
  c84881:	50                   	push   eax
  c84882:	50                   	push   eax
  c84883:	50                   	push   eax
  c84884:	50                   	push   eax
  c84885:	68 30 b4 07 01       	push   0x107b430
  c8488a:	6a 34                	push   0x34
  c8488c:	e8 6f fc 85 ff       	call   0x4e4500
  c84891:	83 c4 18             	add    esp,0x18
  c84894:	85 c0                	test   eax,eax
  c84896:	74 09                	je     0xc848a1
  c84898:	8b c8                	mov    ecx,eax
  c8489a:	e8 01 5a 99 ff       	call   0x61a2a0
  c8489f:	eb 02                	jmp    0xc848a3
  c848a1:	33 c0                	xor    eax,eax
  c848a3:	50                   	push   eax
  c848a4:	8b cb                	mov    ecx,ebx
  c848a6:	e8 25 46 b4 ff       	call   0x7c8ed0
  c848ab:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c848ae:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  c848b1:	8b 1b                	mov    ebx,DWORD PTR [ebx]
  c848b3:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c848b6:	6a 07                	push   0x7
  c848b8:	50                   	push   eax
  c848b9:	52                   	push   edx
  c848ba:	53                   	push   ebx
  c848bb:	e8 c0 f9 f9 ff       	call   0xc24280
  c848c0:	84 c0                	test   al,al
  c848c2:	74 14                	je     0xc848d8
  c848c4:	6a 00                	push   0x0
  c848c6:	6a 00                	push   0x0
  c848c8:	56                   	push   esi
  c848c9:	8b cf                	mov    ecx,edi
  c848cb:	e8 d0 dc ff ff       	call   0xc825a0
  c848d0:	56                   	push   esi
  c848d1:	8b cf                	mov    ecx,edi
  c848d3:	e8 f8 b0 ff ff       	call   0xc7f9d0
  c848d8:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c848dc:	83 c0 04             	add    eax,0x4
  c848df:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
  c848e3:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c848e7:	0f 85 33 ff ff ff    	jne    0xc84820
  c848ed:	c6 87 f1 00 00 00 01 	mov    BYTE PTR [edi+0xf1],0x1
  c848f4:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c848fa:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c84900:	3b c1                	cmp    eax,ecx
  c84902:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c84906:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  c8490a:	0f 84 56 01 00 00    	je     0xc84a66
  c84910:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c84914:	8b 30                	mov    esi,DWORD PTR [eax]
  c84916:	f3 0f 2a 4e 10       	cvtsi2ss xmm1,DWORD PTR [esi+0x10]
  c8491b:	f3 0f 2a 46 0c       	cvtsi2ss xmm0,DWORD PTR [esi+0xc]
  c84920:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  c84926:	0f 57 c9             	xorps  xmm1,xmm1
  c84929:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  c8492f:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  c84935:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  c8493b:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  c84940:	0f 5c 84 24 80 00 00 00 	subps  xmm0,XMMWORD PTR [esp+0x80]
  c84948:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  c8494d:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  c84951:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  c84956:	d9 e1                	fabs
  c84958:	0f 29 84 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm0
  c84960:	d9 54 24 74          	fst    DWORD PTR [esp+0x74]
  c84964:	8d 44 24 74          	lea    eax,[esp+0x74]
  c84968:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  c8496c:	d9 e1                	fabs
  c8496e:	d9 54 24 2c          	fst    DWORD PTR [esp+0x2c]
  c84972:	d9 c9                	fxch   st(1)
  c84974:	df f1                	fcomip st,st(1)
  c84976:	dd d8                	fstp   st(0)
  c84978:	77 04                	ja     0xc8497e
  c8497a:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  c8497e:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  c84982:	bb 01 00 00 00       	mov    ebx,0x1
  c84987:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  c8498b:	74 37                	je     0xc849c4
  c8498d:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  c84993:	0f 2f 00             	comiss xmm0,DWORD PTR [eax]
  c84996:	76 2c                	jbe    0xc849c4
  c84998:	8b 87 fc 00 00 00    	mov    eax,DWORD PTR [edi+0xfc]
  c8499e:	83 e8 00             	sub    eax,0x0
  c849a1:	74 18                	je     0xc849bb
  c849a3:	2b c3                	sub    eax,ebx
  c849a5:	74 09                	je     0xc849b0
  c849a7:	2b c3                	sub    eax,ebx
  c849a9:	75 19                	jne    0xc849c4
  c849ab:	8d 58 02             	lea    ebx,[eax+0x2]
  c849ae:	eb 10                	jmp    0xc849c0
  c849b0:	bb 03 00 00 00       	mov    ebx,0x3
  c849b5:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  c849b9:	eb 26                	jmp    0xc849e1
  c849bb:	bb 04 00 00 00       	mov    ebx,0x4
  c849c0:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  c849c4:	39 b7 a8 01 00 00    	cmp    DWORD PTR [edi+0x1a8],esi
  c849ca:	75 15                	jne    0xc849e1
  c849cc:	8b 8f a4 01 00 00    	mov    ecx,DWORD PTR [edi+0x1a4]
  c849d2:	c7 87 a8 01 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1a8],0x0
  c849dc:	e8 2f bf fa ff       	call   0xc30910
  c849e1:	53                   	push   ebx
  c849e2:	8b ce                	mov    ecx,esi
  c849e4:	e8 67 09 00 00       	call   0xc85350
  c849e9:	8b 8f 9c 01 00 00    	mov    ecx,DWORD PTR [edi+0x19c]
  c849ef:	51                   	push   ecx
  c849f0:	8b ce                	mov    ecx,esi
  c849f2:	e8 39 0a 00 00       	call   0xc85430
  c849f7:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  c849fa:	85 c0                	test   eax,eax
  c849fc:	74 3f                	je     0xc84a3d
  c849fe:	8b 58 5c             	mov    ebx,DWORD PTR [eax+0x5c]
  c84a01:	85 db                	test   ebx,ebx
  c84a03:	74 38                	je     0xc84a3d
  c84a05:	83 7c 24 10 01       	cmp    DWORD PTR [esp+0x10],0x1
  c84a0a:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c84a0d:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c84a10:	0f 94 c2             	sete   dl
  c84a13:	52                   	push   edx
  c84a14:	50                   	push   eax
  c84a15:	51                   	push   ecx
  c84a16:	8b cb                	mov    ecx,ebx
  c84a18:	e8 13 2c ef ff       	call   0xb77630
  c84a1d:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c84a20:	80 78 1c 00          	cmp    BYTE PTR [eax+0x1c],0x0
  c84a24:	75 17                	jne    0xc84a3d
  c84a26:	80 78 1d 00          	cmp    BYTE PTR [eax+0x1d],0x0
  c84a2a:	75 11                	jne    0xc84a3d
  c84a2c:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c84a2f:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c84a32:	6a 01                	push   0x1
  c84a34:	52                   	push   edx
  c84a35:	50                   	push   eax
  c84a36:	8b cb                	mov    ecx,ebx
  c84a38:	e8 13 94 ef ff       	call   0xb7de50
  c84a3d:	8b 46 60             	mov    eax,DWORD PTR [esi+0x60]
  c84a40:	39 46 5c             	cmp    DWORD PTR [esi+0x5c],eax
  c84a43:	74 0c                	je     0xc84a51
  c84a45:	83 f8 01             	cmp    eax,0x1
  c84a48:	74 07                	je     0xc84a51
  c84a4a:	8b ce                	mov    ecx,esi
  c84a4c:	e8 df 10 00 00       	call   0xc85b30
  c84a51:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c84a55:	83 c0 04             	add    eax,0x4
  c84a58:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
  c84a5c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c84a60:	0f 85 aa fe ff ff    	jne    0xc84910
  c84a66:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84a69:	80 79 1c 00          	cmp    BYTE PTR [ecx+0x1c],0x0
  c84a6d:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  c84a72:	74 3f                	je     0xc84ab3
  c84a74:	8b b7 b0 00 00 00    	mov    esi,DWORD PTR [edi+0xb0]
  c84a7a:	8b 9f b4 00 00 00    	mov    ebx,DWORD PTR [edi+0xb4]
  c84a80:	3b f3                	cmp    esi,ebx
  c84a82:	c6 44 24 23 00       	mov    BYTE PTR [esp+0x23],0x0
  c84a87:	0f 84 49 07 00 00    	je     0xc851d6
  c84a8d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c84a90:	8b 06                	mov    eax,DWORD PTR [esi]
  c84a92:	8b 48 5c             	mov    ecx,DWORD PTR [eax+0x5c]
  c84a95:	3b 48 60             	cmp    ecx,DWORD PTR [eax+0x60]
  c84a98:	74 0d                	je     0xc84aa7
  c84a9a:	8d 54 24 23          	lea    edx,[esp+0x23]
  c84a9e:	52                   	push   edx
  c84a9f:	50                   	push   eax
  c84aa0:	8b cf                	mov    ecx,edi
  c84aa2:	e8 09 f2 ff ff       	call   0xc83cb0
  c84aa7:	83 c6 04             	add    esi,0x4
  c84aaa:	3b f3                	cmp    esi,ebx
  c84aac:	75 e2                	jne    0xc84a90
  c84aae:	e9 23 07 00 00       	jmp    0xc851d6
  c84ab3:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  c84ab6:	83 b8 b4 01 00 00 00 	cmp    DWORD PTR [eax+0x1b4],0x0
  c84abd:	8d 54 24 40          	lea    edx,[esp+0x40]
  c84ac1:	0f 95 c3             	setne  bl
  c84ac4:	52                   	push   edx
  c84ac5:	88 5c 24 1c          	mov    BYTE PTR [esp+0x1c],bl
  c84ac9:	e8 32 40 fa ff       	call   0xc28b00
  c84ace:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  c84ad2:	3b 44 24 48          	cmp    eax,DWORD PTR [esp+0x48]
  c84ad6:	74 44                	je     0xc84b1c
  c84ad8:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  c84adc:	3b 4c 24 4c          	cmp    ecx,DWORD PTR [esp+0x4c]
  c84ae0:	74 3a                	je     0xc84b1c
  c84ae2:	84 db                	test   bl,bl
  c84ae4:	75 36                	jne    0xc84b1c
  c84ae6:	c6 44 24 0f 01       	mov    BYTE PTR [esp+0xf],0x1
  c84aeb:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  c84af0:	c6 44 24 0e 00       	mov    BYTE PTR [esp+0xe],0x0
  c84af5:	74 73                	je     0xc84b6a
  c84af7:	8d 54 24 40          	lea    edx,[esp+0x40]
  c84afb:	8d 8f 48 01 00 00    	lea    ecx,[edi+0x148]
  c84b01:	52                   	push   edx
  c84b02:	51                   	push   ecx
  c84b03:	e8 08 fb 89 ff       	call   0x524610
  c84b08:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84b0b:	e8 b0 3b fa ff       	call   0xc286c0
  c84b10:	80 8f 40 01 00 00 20 	or     BYTE PTR [edi+0x140],0x20
  c84b17:	e9 9d 00 00 00       	jmp    0xc84bb9
  c84b1c:	84 db                	test   bl,bl
  c84b1e:	c6 44 24 0f 00       	mov    BYTE PTR [esp+0xf],0x0
  c84b23:	75 c6                	jne    0xc84aeb
  c84b25:	f6 87 40 01 00 00 20 	test   BYTE PTR [edi+0x140],0x20
  c84b2c:	75 bd                	jne    0xc84aeb
  c84b2e:	8b 97 58 01 00 00    	mov    edx,DWORD PTR [edi+0x158]
  c84b34:	0b 97 5c 01 00 00    	or     edx,DWORD PTR [edi+0x15c]
  c84b3a:	74 29                	je     0xc84b65
  c84b3c:	8d 44 24 78          	lea    eax,[esp+0x78]
  c84b40:	50                   	push   eax
  c84b41:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  c84b47:	8b 8f 70 01 00 00    	mov    ecx,DWORD PTR [edi+0x170]
  c84b4d:	2b 4c 24 78          	sub    ecx,DWORD PTR [esp+0x78]
  c84b51:	8b 87 74 01 00 00    	mov    eax,DWORD PTR [edi+0x174]
  c84b57:	1b 44 24 7c          	sbb    eax,DWORD PTR [esp+0x7c]
  c84b5b:	85 c0                	test   eax,eax
  c84b5d:	7f 8c                	jg     0xc84aeb
  c84b5f:	7c 04                	jl     0xc84b65
  c84b61:	85 c9                	test   ecx,ecx
  c84b63:	73 86                	jae    0xc84aeb
  c84b65:	c6 44 24 0e 01       	mov    BYTE PTR [esp+0xe],0x1
  c84b6a:	8a 87 40 01 00 00    	mov    al,BYTE PTR [edi+0x140]
  c84b70:	a8 20                	test   al,0x20
  c84b72:	74 1a                	je     0xc84b8e
  c84b74:	6a 01                	push   0x1
  c84b76:	24 df                	and    al,0xdf
  c84b78:	68 e8 03 00 00       	push   0x3e8
  c84b7d:	8d 8f 58 01 00 00    	lea    ecx,[edi+0x158]
  c84b83:	88 87 40 01 00 00    	mov    BYTE PTR [edi+0x140],al
  c84b89:	e8 62 ed 86 ff       	call   0x4f38f0
  c84b8e:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  c84b93:	74 24                	je     0xc84bb9
  c84b95:	8b 87 48 01 00 00    	mov    eax,DWORD PTR [edi+0x148]
  c84b9b:	3b 87 50 01 00 00    	cmp    eax,DWORD PTR [edi+0x150]
  c84ba1:	74 16                	je     0xc84bb9
  c84ba3:	8b 8f 4c 01 00 00    	mov    ecx,DWORD PTR [edi+0x14c]
  c84ba9:	3b 8f 54 01 00 00    	cmp    ecx,DWORD PTR [edi+0x154]
  c84baf:	74 08                	je     0xc84bb9
  c84bb1:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c84bb4:	e8 37 e0 f9 ff       	call   0xc22bf0
  c84bb9:	e8 a2 4a a6 ff       	call   0x6e9660
  c84bbe:	8b f0                	mov    esi,eax
  c84bc0:	85 f6                	test   esi,esi
  c84bc2:	74 4c                	je     0xc84c10
  c84bc4:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  c84bc8:	52                   	push   edx
  c84bc9:	8b ce                	mov    ecx,esi
  c84bcb:	e8 00 0d a3 ff       	call   0x6b58d0
  c84bd0:	84 c0                	test   al,al
  c84bd2:	74 3c                	je     0xc84c10
  c84bd4:	e8 67 4a a6 ff       	call   0x6e9640
  c84bd9:	84 db                	test   bl,bl
  c84bdb:	75 0f                	jne    0xc84bec
  c84bdd:	85 c0                	test   eax,eax
  c84bdf:	74 2f                	je     0xc84c10
  c84be1:	8b c8                	mov    ecx,eax
  c84be3:	e8 78 7b a2 ff       	call   0x6ac760
  c84be8:	84 c0                	test   al,al
  c84bea:	74 24                	je     0xc84c10
  c84bec:	8b ce                	mov    ecx,esi
  c84bee:	e8 fd 0c a3 ff       	call   0x6b58f0
  c84bf3:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c84bf9:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c84bff:	3b c1                	cmp    eax,ecx
  c84c01:	74 0d                	je     0xc84c10
  c84c03:	8b 10                	mov    edx,DWORD PTR [eax]
  c84c05:	83 c0 04             	add    eax,0x4
  c84c08:	3b c1                	cmp    eax,ecx
  c84c0a:	c6 42 55 01          	mov    BYTE PTR [edx+0x55],0x1
  c84c0e:	75 f3                	jne    0xc84c03
  c84c10:	e8 cb 8f a7 ff       	call   0x6fdbe0
  c84c15:	8b f0                	mov    esi,eax
  c84c17:	85 f6                	test   esi,esi
  c84c19:	74 34                	je     0xc84c4f
  c84c1b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  c84c1f:	50                   	push   eax
  c84c20:	8b ce                	mov    ecx,esi
  c84c22:	e8 59 8f a7 ff       	call   0x6fdb80
  c84c27:	84 c0                	test   al,al
  c84c29:	74 24                	je     0xc84c4f
  c84c2b:	8b ce                	mov    ecx,esi
  c84c2d:	e8 6e 8f a7 ff       	call   0x6fdba0
  c84c32:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c84c38:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c84c3e:	3b c1                	cmp    eax,ecx
  c84c40:	74 0d                	je     0xc84c4f
  c84c42:	8b 10                	mov    edx,DWORD PTR [eax]
  c84c44:	83 c0 04             	add    eax,0x4
  c84c47:	3b c1                	cmp    eax,ecx
  c84c49:	c6 42 56 01          	mov    BYTE PTR [edx+0x56],0x1
  c84c4d:	75 f3                	jne    0xc84c42
  c84c4f:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c84c55:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c84c5b:	32 db                	xor    bl,bl
  c84c5d:	3b c1                	cmp    eax,ecx
  c84c5f:	88 5c 24 22          	mov    BYTE PTR [esp+0x22],bl
  c84c63:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c84c67:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  c84c6b:	0f 84 0d 04 00 00    	je     0xc8507e
  c84c71:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  c84c76:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c84c7a:	8b 30                	mov    esi,DWORD PTR [eax]
  c84c7c:	74 29                	je     0xc84ca7
  c84c7e:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  c84c82:	3b 4e 40             	cmp    ecx,DWORD PTR [esi+0x40]
  c84c85:	7e 20                	jle    0xc84ca7
  c84c87:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  c84c8b:	3b 56 48             	cmp    edx,DWORD PTR [esi+0x48]
  c84c8e:	7d 17                	jge    0xc84ca7
  c84c90:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  c84c94:	3b 46 44             	cmp    eax,DWORD PTR [esi+0x44]
  c84c97:	7e 0e                	jle    0xc84ca7
  c84c99:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  c84c9d:	3b 4e 4c             	cmp    ecx,DWORD PTR [esi+0x4c]
  c84ca0:	c6 44 24 0d 01       	mov    BYTE PTR [esp+0xd],0x1
  c84ca5:	7c 05                	jl     0xc84cac
  c84ca7:	c6 44 24 0d 00       	mov    BYTE PTR [esp+0xd],0x0
  c84cac:	80 7e 57 00          	cmp    BYTE PTR [esi+0x57],0x0
  c84cb0:	0f 84 52 02 00 00    	je     0xc84f08
  c84cb6:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84cb9:	80 79 1d 00          	cmp    BYTE PTR [ecx+0x1d],0x0
  c84cbd:	0f 84 ea 00 00 00    	je     0xc84dad
  c84cc3:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  c84cc6:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  c84cc9:	52                   	push   edx
  c84cca:	50                   	push   eax
  c84ccb:	e8 f0 42 fa ff       	call   0xc28fc0
  c84cd0:	8b 4e 7c             	mov    ecx,DWORD PTR [esi+0x7c]
  c84cd3:	33 db                	xor    ebx,ebx
  c84cd5:	3b cb                	cmp    ecx,ebx
  c84cd7:	74 0a                	je     0xc84ce3
  c84cd9:	89 5e 7c             	mov    DWORD PTR [esi+0x7c],ebx
  c84cdc:	8b 11                	mov    edx,DWORD PTR [ecx]
  c84cde:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c84ce1:	ff d0                	call   eax
  c84ce3:	8b 8e 80 00 00 00    	mov    ecx,DWORD PTR [esi+0x80]
  c84ce9:	3b cb                	cmp    ecx,ebx
  c84ceb:	74 0d                	je     0xc84cfa
  c84ced:	89 9e 80 00 00 00    	mov    DWORD PTR [esi+0x80],ebx
  c84cf3:	8b 11                	mov    edx,DWORD PTR [ecx]
  c84cf5:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c84cf8:	ff d0                	call   eax
  c84cfa:	8b 8e 84 00 00 00    	mov    ecx,DWORD PTR [esi+0x84]
  c84d00:	3b cb                	cmp    ecx,ebx
  c84d02:	74 0d                	je     0xc84d11
  c84d04:	89 9e 84 00 00 00    	mov    DWORD PTR [esi+0x84],ebx
  c84d0a:	8b 11                	mov    edx,DWORD PTR [ecx]
  c84d0c:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c84d0f:	ff d0                	call   eax
  c84d11:	8b 8e 88 00 00 00    	mov    ecx,DWORD PTR [esi+0x88]
  c84d17:	3b cb                	cmp    ecx,ebx
  c84d19:	74 0d                	je     0xc84d28
  c84d1b:	89 9e 88 00 00 00    	mov    DWORD PTR [esi+0x88],ebx
  c84d21:	8b 11                	mov    edx,DWORD PTR [ecx]
  c84d23:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c84d26:	ff d0                	call   eax
  c84d28:	8b 4e 68             	mov    ecx,DWORD PTR [esi+0x68]
  c84d2b:	f6 c1 03             	test   cl,0x3
  c84d2e:	8d 5e 68             	lea    ebx,[esi+0x68]
  c84d31:	75 38                	jne    0xc84d6b
  c84d33:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
  c84d36:	74 33                	je     0xc84d6b
  c84d38:	8b 0d 84 4c 1d 01    	mov    ecx,DWORD PTR ds:0x11d4c84
  c84d3e:	85 c9                	test   ecx,ecx
  c84d40:	74 0d                	je     0xc84d4f
  c84d42:	8b 11                	mov    edx,DWORD PTR [ecx]
  c84d44:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
  c84d47:	68 a0 b3 d4 00       	push   0xd4b3a0
  c84d4c:	53                   	push   ebx
  c84d4d:	ff d0                	call   eax
  c84d4f:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  c84d51:	85 c9                	test   ecx,ecx
  c84d53:	74 16                	je     0xc84d6b
  c84d55:	8b 13                	mov    edx,DWORD PTR [ebx]
  c84d57:	f6 c2 03             	test   dl,0x3
  c84d5a:	75 0f                	jne    0xc84d6b
  c84d5c:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  c84d5e:	8b 01                	mov    eax,DWORD PTR [ecx]
  c84d60:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c84d63:	ff d2                	call   edx
  c84d65:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  c84d6b:	8b 46 64             	mov    eax,DWORD PTR [esi+0x64]
  c84d6e:	a8 03                	test   al,0x3
  c84d70:	8d 5e 64             	lea    ebx,[esi+0x64]
  c84d73:	75 38                	jne    0xc84dad
  c84d75:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
  c84d78:	74 33                	je     0xc84dad
  c84d7a:	8b 0d 84 4c 1d 01    	mov    ecx,DWORD PTR ds:0x11d4c84
  c84d80:	85 c9                	test   ecx,ecx
  c84d82:	74 0d                	je     0xc84d91
  c84d84:	8b 11                	mov    edx,DWORD PTR [ecx]
  c84d86:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
  c84d89:	68 a0 b3 d4 00       	push   0xd4b3a0
  c84d8e:	53                   	push   ebx
  c84d8f:	ff d0                	call   eax
  c84d91:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  c84d93:	85 c9                	test   ecx,ecx
  c84d95:	74 16                	je     0xc84dad
  c84d97:	8b 13                	mov    edx,DWORD PTR [ebx]
  c84d99:	f6 c2 03             	test   dl,0x3
  c84d9c:	75 0f                	jne    0xc84dad
  c84d9e:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  c84da0:	8b 01                	mov    eax,DWORD PTR [ecx]
  c84da2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c84da5:	ff d2                	call   edx
  c84da7:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  c84dad:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c84db0:	83 c0 04             	add    eax,0x4
  c84db3:	b9 01 00 00 00       	mov    ecx,0x1
  c84db8:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  c84dbc:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  c84dbf:	6a 00                	push   0x0
  c84dc1:	e8 ba cc fd ff       	call   0xc61a80
  c84dc6:	56                   	push   esi
  c84dc7:	8b cf                	mov    ecx,edi
  c84dc9:	e8 72 f2 ff ff       	call   0xc84040
  c84dce:	8b 57 64             	mov    edx,DWORD PTR [edi+0x64]
  c84dd1:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  c84dd4:	52                   	push   edx
  c84dd5:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  c84dd9:	e8 a2 cc fd ff       	call   0xc61a80
  c84dde:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84de1:	8d 41 04             	lea    eax,[ecx+0x4]
  c84de4:	8b d0                	mov    edx,eax
  c84de6:	83 cb ff             	or     ebx,0xffffffff
  c84de9:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  c84ded:	4b                   	dec    ebx
  c84dee:	75 13                	jne    0xc84e03
  c84df0:	ba 01 00 00 00       	mov    edx,0x1
  c84df5:	87 10                	xchg   DWORD PTR [eax],edx
  c84df7:	85 c9                	test   ecx,ecx
  c84df9:	74 08                	je     0xc84e03
  c84dfb:	8b 01                	mov    eax,DWORD PTR [ecx]
  c84dfd:	8b 10                	mov    edx,DWORD PTR [eax]
  c84dff:	6a 01                	push   0x1
  c84e01:	ff d2                	call   edx
  c84e03:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  c84e08:	0f 84 71 03 00 00    	je     0xc8517f
  c84e0e:	c6 46 57 00          	mov    BYTE PTR [esi+0x57],0x0
  c84e12:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c84e15:	80 78 1d 00          	cmp    BYTE PTR [eax+0x1d],0x0
  c84e19:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  c84e1e:	b3 01                	mov    bl,0x1
  c84e20:	75 13                	jne    0xc84e35
  c84e22:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c84e25:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c84e28:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  c84e2b:	51                   	push   ecx
  c84e2c:	8b 48 5c             	mov    ecx,DWORD PTR [eax+0x5c]
  c84e2f:	52                   	push   edx
  c84e30:	e8 0b 27 ef ff       	call   0xb77540
  c84e35:	8b 46 60             	mov    eax,DWORD PTR [esi+0x60]
  c84e38:	39 46 5c             	cmp    DWORD PTR [esi+0x5c],eax
  c84e3b:	0f 84 10 01 00 00    	je     0xc84f51
  c84e41:	80 7c 24 0d 00       	cmp    BYTE PTR [esp+0xd],0x0
  c84e46:	0f 85 10 01 00 00    	jne    0xc84f5c
  c84e4c:	50                   	push   eax
  c84e4d:	8b ce                	mov    ecx,esi
  c84e4f:	e8 1c 05 00 00       	call   0xc85370
  c84e54:	84 c0                	test   al,al
  c84e56:	0f 84 e2 00 00 00    	je     0xc84f3e
  c84e5c:	8b 56 60             	mov    edx,DWORD PTR [esi+0x60]
  c84e5f:	56                   	push   esi
  c84e60:	8b cf                	mov    ecx,edi
  c84e62:	89 56 5c             	mov    DWORD PTR [esi+0x5c],edx
  c84e65:	e8 66 ab ff ff       	call   0xc7f9d0
  c84e6a:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  c84e6f:	0f 84 17 01 00 00    	je     0xc84f8c
  c84e75:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  c84e7a:	0f 85 e9 01 00 00    	jne    0xc85069
  c84e80:	83 3e 03             	cmp    DWORD PTR [esi],0x3
  c84e83:	0f 85 0e 01 00 00    	jne    0xc84f97
  c84e89:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84e8c:	83 c1 04             	add    ecx,0x4
  c84e8f:	ba 01 00 00 00       	mov    edx,0x1
  c84e94:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  c84e98:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  c84e9b:	6a 00                	push   0x0
  c84e9d:	e8 de cb fd ff       	call   0xc61a80
  c84ea2:	56                   	push   esi
  c84ea3:	8b cf                	mov    ecx,edi
  c84ea5:	e8 96 f1 ff ff       	call   0xc84040
  c84eaa:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  c84ead:	88 44 24 0d          	mov    BYTE PTR [esp+0xd],al
  c84eb1:	8b 47 64             	mov    eax,DWORD PTR [edi+0x64]
  c84eb4:	50                   	push   eax
  c84eb5:	e8 c6 cb fd ff       	call   0xc61a80
  c84eba:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84ebd:	8d 41 04             	lea    eax,[ecx+0x4]
  c84ec0:	8b d0                	mov    edx,eax
  c84ec2:	83 cb ff             	or     ebx,0xffffffff
  c84ec5:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  c84ec9:	4b                   	dec    ebx
  c84eca:	75 13                	jne    0xc84edf
  c84ecc:	ba 01 00 00 00       	mov    edx,0x1
  c84ed1:	87 10                	xchg   DWORD PTR [eax],edx
  c84ed3:	85 c9                	test   ecx,ecx
  c84ed5:	74 08                	je     0xc84edf
  c84ed7:	8b 01                	mov    eax,DWORD PTR [ecx]
  c84ed9:	8b 10                	mov    edx,DWORD PTR [eax]
  c84edb:	6a 01                	push   0x1
  c84edd:	ff d2                	call   edx
  c84edf:	80 7c 24 0d 00       	cmp    BYTE PTR [esp+0xd],0x0
  c84ee4:	0f 84 95 02 00 00    	je     0xc8517f
  c84eea:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c84eed:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c84ef0:	8b 57 14             	mov    edx,DWORD PTR [edi+0x14]
  c84ef3:	50                   	push   eax
  c84ef4:	51                   	push   ecx
  c84ef5:	8b 4a 5c             	mov    ecx,DWORD PTR [edx+0x5c]
  c84ef8:	b3 01                	mov    bl,0x1
  c84efa:	88 5c 24 14          	mov    BYTE PTR [esp+0x14],bl
  c84efe:	e8 3d 26 ef ff       	call   0xb77540
  c84f03:	e9 61 01 00 00       	jmp    0xc85069
  c84f08:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  c84f0b:	3b 4e 60             	cmp    ecx,DWORD PTR [esi+0x60]
  c84f0e:	0f 84 21 ff ff ff    	je     0xc84e35
  c84f14:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  c84f17:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  c84f1a:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
  c84f1d:	52                   	push   edx
  c84f1e:	50                   	push   eax
  c84f1f:	e8 2c 41 fa ff       	call   0xc29050
  c84f24:	84 c0                	test   al,al
  c84f26:	0f 84 09 ff ff ff    	je     0xc84e35
  c84f2c:	8d 4c 24 22          	lea    ecx,[esp+0x22]
  c84f30:	51                   	push   ecx
  c84f31:	56                   	push   esi
  c84f32:	8b cf                	mov    ecx,edi
  c84f34:	e8 77 ed ff ff       	call   0xc83cb0
  c84f39:	e9 2b 01 00 00       	jmp    0xc85069
  c84f3e:	8b 87 9c 01 00 00    	mov    eax,DWORD PTR [edi+0x19c]
  c84f44:	50                   	push   eax
  c84f45:	8b ce                	mov    ecx,esi
  c84f47:	e8 e4 04 00 00       	call   0xc85430
  c84f4c:	e9 19 ff ff ff       	jmp    0xc84e6a
  c84f51:	80 7c 24 0d 00       	cmp    BYTE PTR [esp+0xd],0x0
  c84f56:	0f 84 0e ff ff ff    	je     0xc84e6a
  c84f5c:	83 3e 03             	cmp    DWORD PTR [esi],0x3
  c84f5f:	75 1a                	jne    0xc84f7b
  c84f61:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c84f64:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  c84f67:	8b 46 6c             	mov    eax,DWORD PTR [esi+0x6c]
  c84f6a:	51                   	push   ecx
  c84f6b:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c84f6e:	52                   	push   edx
  c84f6f:	50                   	push   eax
  c84f70:	e8 1b eb f9 ff       	call   0xc23a90
  c84f75:	c6 46 50 01          	mov    BYTE PTR [esi+0x50],0x1
  c84f79:	eb 11                	jmp    0xc84f8c
  c84f7b:	56                   	push   esi
  c84f7c:	8b cf                	mov    ecx,edi
  c84f7e:	e8 2d e2 ff ff       	call   0xc831b0
  c84f83:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  c84f88:	c6 46 50 01          	mov    BYTE PTR [esi+0x50],0x1
  c84f8c:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  c84f91:	0f 85 d2 00 00 00    	jne    0xc85069
  c84f97:	8b 46 60             	mov    eax,DWORD PTR [esi+0x60]
  c84f9a:	50                   	push   eax
  c84f9b:	8b ce                	mov    ecx,esi
  c84f9d:	e8 ce 03 00 00       	call   0xc85370
  c84fa2:	84 c0                	test   al,al
  c84fa4:	74 62                	je     0xc85008
  c84fa6:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  c84fa9:	51                   	push   ecx
  c84faa:	8b ce                	mov    ecx,esi
  c84fac:	e8 bf 03 00 00       	call   0xc85370
  c84fb1:	84 c0                	test   al,al
  c84fb3:	74 53                	je     0xc85008
  c84fb5:	80 7e 55 00          	cmp    BYTE PTR [esi+0x55],0x0
  c84fb9:	75 4d                	jne    0xc85008
  c84fbb:	80 7e 56 00          	cmp    BYTE PTR [esi+0x56],0x0
  c84fbf:	75 47                	jne    0xc85008
  c84fc1:	80 7c 24 28 00       	cmp    BYTE PTR [esp+0x28],0x0
  c84fc6:	0f 85 9d 00 00 00    	jne    0xc85069
  c84fcc:	80 7e 50 00          	cmp    BYTE PTR [esi+0x50],0x0
  c84fd0:	74 1f                	je     0xc84ff1
  c84fd2:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  c84fd5:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  c84fd8:	8b 4e 74             	mov    ecx,DWORD PTR [esi+0x74]
  c84fdb:	52                   	push   edx
  c84fdc:	50                   	push   eax
  c84fdd:	51                   	push   ecx
  c84fde:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c84fe1:	e8 ca e0 f9 ff       	call   0xc230b0
  c84fe6:	c6 46 50 00          	mov    BYTE PTR [esi+0x50],0x0
  c84fea:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  c84fef:	eb 78                	jmp    0xc85069
  c84ff1:	80 7e 54 00          	cmp    BYTE PTR [esi+0x54],0x0
  c84ff5:	74 72                	je     0xc85069
  c84ff7:	6a 00                	push   0x0
  c84ff9:	56                   	push   esi
  c84ffa:	8b cf                	mov    ecx,edi
  c84ffc:	e8 af 96 ff ff       	call   0xc7e6b0
  c85001:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  c85006:	eb 61                	jmp    0xc85069
  c85008:	80 7c 24 28 00       	cmp    BYTE PTR [esp+0x28],0x0
  c8500d:	56                   	push   esi
  c8500e:	8b cf                	mov    ecx,edi
  c85010:	74 07                	je     0xc85019
  c85012:	e8 f9 bd ff ff       	call   0xc80e10
  c85017:	eb 05                	jmp    0xc8501e
  c85019:	e8 82 e4 ff ff       	call   0xc834a0
  c8501e:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c85022:	52                   	push   edx
  c85023:	6a 01                	push   0x1
  c85025:	56                   	push   esi
  c85026:	8b cf                	mov    ecx,edi
  c85028:	e8 e3 df ff ff       	call   0xc83010
  c8502d:	56                   	push   esi
  c8502e:	8b cf                	mov    ecx,edi
  c85030:	e8 9b a9 ff ff       	call   0xc7f9d0
  c85035:	80 7e 55 00          	cmp    BYTE PTR [esi+0x55],0x0
  c85039:	75 06                	jne    0xc85041
  c8503b:	80 7e 56 00          	cmp    BYTE PTR [esi+0x56],0x0
  c8503f:	74 07                	je     0xc85048
  c85041:	8b ce                	mov    ecx,esi
  c85043:	e8 18 03 00 00       	call   0xc85360
  c85048:	80 7e 55 00          	cmp    BYTE PTR [esi+0x55],0x0
  c8504c:	74 17                	je     0xc85065
  c8504e:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c85051:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c85054:	8b 57 14             	mov    edx,DWORD PTR [edi+0x14]
  c85057:	50                   	push   eax
  c85058:	51                   	push   ecx
  c85059:	8b 4a 5c             	mov    ecx,DWORD PTR [edx+0x5c]
  c8505c:	e8 df 24 ef ff       	call   0xb77540
  c85061:	c6 46 55 00          	mov    BYTE PTR [esi+0x55],0x0
  c85065:	c6 46 56 00          	mov    BYTE PTR [esi+0x56],0x0
  c85069:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c8506d:	83 c0 04             	add    eax,0x4
  c85070:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
  c85074:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c85078:	0f 85 f3 fb ff ff    	jne    0xc84c71
  c8507e:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  c85083:	0f 84 25 01 00 00    	je     0xc851ae
  c85089:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c8508c:	85 c9                	test   ecx,ecx
  c8508e:	0f 84 1a 01 00 00    	je     0xc851ae
  c85094:	84 db                	test   bl,bl
  c85096:	0f 84 12 01 00 00    	je     0xc851ae
  c8509c:	8d 84 24 b8 00 00 00 	lea    eax,[esp+0xb8]
  c850a3:	50                   	push   eax
  c850a4:	6a 00                	push   0x0
  c850a6:	e8 c5 da f9 ff       	call   0xc22b70
  c850ab:	84 c0                	test   al,al
  c850ad:	0f 84 fb 00 00 00    	je     0xc851ae
  c850b3:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  c850ba:	51                   	push   ecx
  c850bb:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c850be:	6a 00                	push   0x0
  c850c0:	e8 db da f9 ff       	call   0xc22ba0
  c850c5:	8b 8f b0 00 00 00    	mov    ecx,DWORD PTR [edi+0xb0]
  c850cb:	8b b7 b4 00 00 00    	mov    esi,DWORD PTR [edi+0xb4]
  c850d1:	33 d2                	xor    edx,edx
  c850d3:	3b ce                	cmp    ecx,esi
  c850d5:	74 20                	je     0xc850f7
  c850d7:	8b 01                	mov    eax,DWORD PTR [ecx]
  c850d9:	85 c0                	test   eax,eax
  c850db:	74 13                	je     0xc850f0
  c850dd:	8b 40 7c             	mov    eax,DWORD PTR [eax+0x7c]
  c850e0:	85 c0                	test   eax,eax
  c850e2:	74 0c                	je     0xc850f0
  c850e4:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
  c850e7:	c1 e8 03             	shr    eax,0x3
  c850ea:	3b c2                	cmp    eax,edx
  c850ec:	7e 02                	jle    0xc850f0
  c850ee:	8b d0                	mov    edx,eax
  c850f0:	83 c1 04             	add    ecx,0x4
  c850f3:	3b ce                	cmp    ecx,esi
  c850f5:	75 e0                	jne    0xc850d7
  c850f7:	f3 0f 10 4f 70       	movss  xmm1,DWORD PTR [edi+0x70]
  c850fc:	f3 0f 10 84 24 90 00 00 00 	movss  xmm0,DWORD PTR [esp+0x90]
  c85105:	0f 2e c8             	ucomiss xmm1,xmm0
  c85108:	9f                   	lahf
  c85109:	f6 c4 44             	test   ah,0x44
  c8510c:	0f 8a 94 00 00 00    	jp     0xc851a6
  c85112:	8b 47 6c             	mov    eax,DWORD PTR [edi+0x6c]
  c85115:	85 c0                	test   eax,eax
  c85117:	0f 8c 89 00 00 00    	jl     0xc851a6
  c8511d:	2b d0                	sub    edx,eax
  c8511f:	79 02                	jns    0xc85123
  c85121:	f7 da                	neg    edx
  c85123:	81 fa 10 27 00 00    	cmp    edx,0x2710
  c85129:	0f 8e 7f 00 00 00    	jle    0xc851ae
  c8512f:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c85132:	e8 c9 db f9 ff       	call   0xc22d00
  c85137:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c8513a:	8d 94 24 9c 00 00 00 	lea    edx,[esp+0x9c]
  c85141:	52                   	push   edx
  c85142:	6a 00                	push   0x0
  c85144:	e8 57 da f9 ff       	call   0xc22ba0
  c85149:	f3 0f 10 84 24 9c 00 00 00 	movss  xmm0,DWORD PTR [esp+0x9c]
  c85152:	0f 2e 84 24 90 00 00 00 	ucomiss xmm0,DWORD PTR [esp+0x90]
  c8515a:	9f                   	lahf
  c8515b:	f6 c4 44             	test   ah,0x44
  c8515e:	7b 4e                	jnp    0xc851ae
  c85160:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c85166:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c8516c:	3b c1                	cmp    eax,ecx
  c8516e:	74 3e                	je     0xc851ae
  c85170:	8b 10                	mov    edx,DWORD PTR [eax]
  c85172:	83 c0 04             	add    eax,0x4
  c85175:	3b c1                	cmp    eax,ecx
  c85177:	c6 42 57 01          	mov    BYTE PTR [edx+0x57],0x1
  c8517b:	75 f3                	jne    0xc85170
  c8517d:	eb 2f                	jmp    0xc851ae
  c8517f:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c85182:	e8 79 db f9 ff       	call   0xc22d00
  c85187:	8b 87 b0 00 00 00    	mov    eax,DWORD PTR [edi+0xb0]
  c8518d:	8b 8f b4 00 00 00    	mov    ecx,DWORD PTR [edi+0xb4]
  c85193:	3b c1                	cmp    eax,ecx
  c85195:	74 17                	je     0xc851ae
  c85197:	8b 10                	mov    edx,DWORD PTR [eax]
  c85199:	83 c0 04             	add    eax,0x4
  c8519c:	3b c1                	cmp    eax,ecx
  c8519e:	c6 42 57 01          	mov    BYTE PTR [edx+0x57],0x1
  c851a2:	75 f3                	jne    0xc85197
  c851a4:	eb 08                	jmp    0xc851ae
  c851a6:	f3 0f 11 47 70       	movss  DWORD PTR [edi+0x70],xmm0
  c851ab:	89 57 6c             	mov    DWORD PTR [edi+0x6c],edx
  c851ae:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  c851b3:	75 21                	jne    0xc851d6
  c851b5:	80 7c 24 0e 00       	cmp    BYTE PTR [esp+0xe],0x0
  c851ba:	74 1a                	je     0xc851d6
  c851bc:	33 c0                	xor    eax,eax
  c851be:	89 87 48 01 00 00    	mov    DWORD PTR [edi+0x148],eax
  c851c4:	89 87 4c 01 00 00    	mov    DWORD PTR [edi+0x14c],eax
  c851ca:	89 87 50 01 00 00    	mov    DWORD PTR [edi+0x150],eax
  c851d0:	89 87 54 01 00 00    	mov    DWORD PTR [edi+0x154],eax
  c851d6:	8b 8f 98 01 00 00    	mov    ecx,DWORD PTR [edi+0x198]
  c851dc:	85 c9                	test   ecx,ecx
  c851de:	74 12                	je     0xc851f2
  c851e0:	6a 00                	push   0x0
  c851e2:	e8 f9 97 fa ff       	call   0xc2e9e0
  c851e7:	8b 8f 98 01 00 00    	mov    ecx,DWORD PTR [edi+0x198]
  c851ed:	e8 de 94 fa ff       	call   0xc2e6d0
  c851f2:	5f                   	pop    edi
  c851f3:	5e                   	pop    esi
  c851f4:	5b                   	pop    ebx
  c851f5:	8b e5                	mov    esp,ebp
  c851f7:	5d                   	pop    ebp
  c851f8:	c2 08 00             	ret    0x8
