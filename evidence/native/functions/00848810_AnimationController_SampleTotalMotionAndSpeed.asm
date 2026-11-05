# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00848810, 0x00848a78); analyst name AnimationController_SampleTotalMotionAndSpeed.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00848810 <.text+0x447810>:
  848810:	55                   	push   ebp
  848811:	8b ec                	mov    ebp,esp
  848813:	83 e4 f0             	and    esp,0xfffffff0
  848816:	b8 d8 44 00 00       	mov    eax,0x44d8
  84881b:	e8 20 70 73 00       	call   0xf7f840
  848820:	56                   	push   esi
  848821:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  848824:	85 f6                	test   esi,esi
  848826:	57                   	push   edi
  848827:	0f 84 43 02 00 00    	je     0x848a70
  84882d:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  848834:	e8 07 42 d0 ff       	call   0x54ca40
  848839:	8b 06                	mov    eax,DWORD PTR [esi]
  84883b:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  84883e:	8b ce                	mov    ecx,esi
  848840:	ff d2                	call   edx
  848842:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  848846:	8b 3e                	mov    edi,DWORD PTR [esi]
  848848:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  84884b:	8b ce                	mov    ecx,esi
  84884d:	ff d0                	call   eax
  84884f:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  848852:	51                   	push   ecx
  848853:	8b ce                	mov    ecx,esi
  848855:	d9 1c 24             	fstp   DWORD PTR [esp]
  848858:	ff d2                	call   edx
  84885a:	8b 06                	mov    eax,DWORD PTR [esi]
  84885c:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  84885f:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  848866:	51                   	push   ecx
  848867:	8b ce                	mov    ecx,esi
  848869:	ff d2                	call   edx
  84886b:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  84886f:	8b f8                	mov    edi,eax
  848871:	8b 06                	mov    eax,DWORD PTR [esi]
  848873:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  848876:	51                   	push   ecx
  848877:	8b ce                	mov    ecx,esi
  848879:	d9 1c 24             	fstp   DWORD PTR [esp]
  84887c:	ff d2                	call   edx
  84887e:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  848882:	e8 09 21 ff ff       	call   0x83a990
  848887:	0f 57 c0             	xorps  xmm0,xmm0
  84888a:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  848892:	8b 06                	mov    eax,DWORD PTR [esi]
  848894:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  848897:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  84889d:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  8488a3:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  8488a9:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  8488af:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  8488b4:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  8488ba:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  8488c0:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  8488c6:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  8488cc:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  8488d1:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  8488d6:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  8488dc:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  8488e2:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  8488e8:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  8488ee:	0f 29 54 24 40       	movaps XMMWORD PTR [esp+0x40],xmm2
  8488f3:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  8488f8:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  8488fe:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  848904:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  84890a:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  848910:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  848915:	8b ce                	mov    ecx,esi
  848917:	0f 29 54 24 50       	movaps XMMWORD PTR [esp+0x50],xmm2
  84891c:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  848921:	ff d2                	call   edx
  848923:	d9 9c 24 80 00 00 00 	fstp   DWORD PTR [esp+0x80]
  84892a:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  84892d:	8b 01                	mov    eax,DWORD PTR [ecx]
  84892f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  848932:	ff d2                	call   edx
  848934:	57                   	push   edi
  848935:	8d 8c 24 a4 01 00 00 	lea    ecx,[esp+0x1a4]
  84893c:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  848940:	c7 44 24 78 00 00 00 00 	mov    DWORD PTR [esp+0x78],0x0
  848948:	c7 84 24 88 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0x88],0x1
  848953:	e8 88 3f d0 ff       	call   0x54c8e0
  848958:	83 7c 24 70 00       	cmp    DWORD PTR [esp+0x70],0x0
  84895d:	0f 84 01 01 00 00    	je     0x848a64
  848963:	6a 00                	push   0x0
  848965:	6a 00                	push   0x0
  848967:	6a 00                	push   0x0
  848969:	6a 00                	push   0x0
  84896b:	68 38 21 fc 00       	push   0xfc2138
  848970:	68 30 9b 01 00       	push   0x19b30
  848975:	e8 26 c0 d2 ff       	call   0x5749a0
  84897a:	8b f0                	mov    esi,eax
  84897c:	83 c4 18             	add    esp,0x18
  84897f:	85 f6                	test   esi,esi
  848981:	0f 84 d6 00 00 00    	je     0x848a5d
  848987:	51                   	push   ecx
  848988:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  84898c:	8b c4                	mov    eax,esp
  84898e:	89 08                	mov    DWORD PTR [eax],ecx
  848990:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  848994:	85 c9                	test   ecx,ecx
  848996:	74 06                	je     0x84899e
  848998:	8b 11                	mov    edx,DWORD PTR [ecx]
  84899a:	8b 02                	mov    eax,DWORD PTR [edx]
  84899c:	ff d0                	call   eax
  84899e:	8b ce                	mov    ecx,esi
  8489a0:	e8 ab c6 d2 ff       	call   0x575050
  8489a5:	8b f0                	mov    esi,eax
  8489a7:	85 f6                	test   esi,esi
  8489a9:	74 04                	je     0x8489af
  8489ab:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  8489af:	56                   	push   esi
  8489b0:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  8489b4:	51                   	push   ecx
  8489b5:	8d 8c 24 a8 01 00 00 	lea    ecx,[esp+0x1a8]
  8489bc:	e8 cf 3e d0 ff       	call   0x54c890
  8489c1:	0f 28 46 10          	movaps xmm0,XMMWORD PTR [esi+0x10]
  8489c5:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  8489c8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  8489cb:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  8489ce:	0f 28 46 20          	movaps xmm0,XMMWORD PTR [esi+0x20]
  8489d2:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  8489d5:	0f 28 4e 10          	movaps xmm1,XMMWORD PTR [esi+0x10]
  8489d9:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  8489dc:	0f 59 c9             	mulps  xmm1,xmm1
  8489df:	0f 28 c1             	movaps xmm0,xmm1
  8489e2:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  8489e6:	0f 28 d1             	movaps xmm2,xmm1
  8489e9:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  8489ed:	0f 58 c2             	addps  xmm0,xmm2
  8489f0:	0f 58 c1             	addps  xmm0,xmm1
  8489f3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  8489f7:	0f 51 c0             	sqrtps xmm0,xmm0
  8489fa:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  8489ff:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  848a07:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  848a0b:	f3 0f 10 84 24 80 00 00 00 	movss  xmm0,DWORD PTR [esp+0x80]
  848a14:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  848a1b:	76 0e                	jbe    0x848a2b
  848a1d:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  848a23:	f3 0f 5e c8          	divss  xmm1,xmm0
  848a27:	f3 0f 11 08          	movss  DWORD PTR [eax],xmm1
  848a2b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  848a2e:	83 c0 ff             	add    eax,0xffffffff
  848a31:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  848a34:	75 11                	jne    0x848a47
  848a36:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  848a3d:	8b 16                	mov    edx,DWORD PTR [esi]
  848a3f:	8b 02                	mov    eax,DWORD PTR [edx]
  848a41:	6a 01                	push   0x1
  848a43:	8b ce                	mov    ecx,esi
  848a45:	ff d0                	call   eax
  848a47:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  848a4e:	e8 ad 3f d0 ff       	call   0x54ca00
  848a53:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  848a57:	5f                   	pop    edi
  848a58:	5e                   	pop    esi
  848a59:	8b e5                	mov    esp,ebp
  848a5b:	5d                   	pop    ebp
  848a5c:	c3                   	ret
  848a5d:	33 f6                	xor    esi,esi
  848a5f:	e9 4b ff ff ff       	jmp    0x8489af
  848a64:	8d 8c 24 a0 01 00 00 	lea    ecx,[esp+0x1a0]
  848a6b:	e8 90 3f d0 ff       	call   0x54ca00
  848a70:	d9 ee                	fldz
  848a72:	5f                   	pop    edi
  848a73:	5e                   	pop    esi
  848a74:	8b e5                	mov    esp,ebp
  848a76:	5d                   	pop    ebp
  848a77:	c3                   	ret
