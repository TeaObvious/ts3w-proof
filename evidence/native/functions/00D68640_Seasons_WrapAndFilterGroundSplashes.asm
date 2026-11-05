# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d68640, 0x00d68884).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_WrapAndFilterGroundSplashes (analyst-assigned)
Entry: 0x00d68640
Ghidra body envelope: 0x00d68640..0x00d68883 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d68640 <.text+0x967640>:
  d68640:	55                   	push   ebp
  d68641:	8b ec                	mov    ebp,esp
  d68643:	83 e4 f0             	and    esp,0xfffffff0
  d68646:	83 ec 74             	sub    esp,0x74
  d68649:	53                   	push   ebx
  d6864a:	56                   	push   esi
  d6864b:	57                   	push   edi
  d6864c:	8b f9                	mov    edi,ecx
  d6864e:	8b 77 0c             	mov    esi,DWORD PTR [edi+0xc]
  d68651:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  d68654:	3b f0                	cmp    esi,eax
  d68656:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  d6865a:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  d6865e:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  d68662:	0f 84 15 01 00 00    	je     0xd6877d
  d68668:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  d6866b:	f3 0f 10 4f 1c       	movss  xmm1,DWORD PTR [edi+0x1c]
  d68670:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  d68675:	f3 0f 10 54 24 40    	movss  xmm2,DWORD PTR [esp+0x40]
  d6867b:	32 db                	xor    bl,bl
  d6867d:	0f 2f ca             	comiss xmm1,xmm2
  d68680:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  d68685:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  d6868b:	77 06                	ja     0xd68693
  d6868d:	0f 2f 57 20          	comiss xmm2,DWORD PTR [edi+0x20]
  d68691:	76 3b                	jbe    0xd686ce
  d68693:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  d68697:	83 ec 08             	sub    esp,0x8
  d6869a:	d8 64 24 2c          	fsub   DWORD PTR [esp+0x2c]
  d6869e:	b3 01                	mov    bl,0x1
  d686a0:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  d686a5:	d8 0d 88 d7 06 01    	fmul   DWORD PTR ds:0x106d788
  d686ab:	dd 1c 24             	fstp   QWORD PTR [esp]
  d686ae:	e8 1d 71 21 00       	call   0xf7f7d0
  d686b3:	d8 0d ec b0 08 01    	fmul   DWORD PTR ds:0x108b0ec
  d686b9:	83 c4 08             	add    esp,0x8
  d686bc:	d8 6c 24 40          	fsubr  DWORD PTR [esp+0x40]
  d686c0:	d9 5c 24 60          	fstp   DWORD PTR [esp+0x60]
  d686c4:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  d686c9:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  d686ce:	f3 0f 10 4f 24       	movss  xmm1,DWORD PTR [edi+0x24]
  d686d3:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  d686d8:	f3 0f 10 54 24 58    	movss  xmm2,DWORD PTR [esp+0x58]
  d686de:	0f 2f ca             	comiss xmm1,xmm2
  d686e1:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  d686e7:	77 06                	ja     0xd686ef
  d686e9:	0f 2f 57 28          	comiss xmm2,DWORD PTR [edi+0x28]
  d686ed:	76 3b                	jbe    0xd6872a
  d686ef:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  d686f3:	83 ec 08             	sub    esp,0x8
  d686f6:	d8 64 24 30          	fsub   DWORD PTR [esp+0x30]
  d686fa:	0f 29 44 24 78       	movaps XMMWORD PTR [esp+0x78],xmm0
  d686ff:	d8 0d 88 d7 06 01    	fmul   DWORD PTR ds:0x106d788
  d68705:	dd 1c 24             	fstp   QWORD PTR [esp]
  d68708:	e8 c3 70 21 00       	call   0xf7f7d0
  d6870d:	d8 0d ec b0 08 01    	fmul   DWORD PTR ds:0x108b0ec
  d68713:	83 c4 08             	add    esp,0x8
  d68716:	d8 6c 24 58          	fsubr  DWORD PTR [esp+0x58]
  d6871a:	d9 5c 24 78          	fstp   DWORD PTR [esp+0x78]
  d6871e:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  d68723:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  d68728:	eb 04                	jmp    0xd6872e
  d6872a:	84 db                	test   bl,bl
  d6872c:	74 3e                	je     0xd6876c
  d6872e:	8d 44 24 17          	lea    eax,[esp+0x17]
  d68732:	50                   	push   eax
  d68733:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  d68737:	51                   	push   ecx
  d68738:	8b cf                	mov    ecx,edi
  d6873a:	e8 b1 f3 ff ff       	call   0xd67af0
  d6873f:	84 c0                	test   al,al
  d68741:	74 41                	je     0xd68784
  d68743:	8d 54 24 30          	lea    edx,[esp+0x30]
  d68747:	52                   	push   edx
  d68748:	8b cf                	mov    ecx,edi
  d6874a:	e8 a1 f4 ff ff       	call   0xd67bf0
  d6874f:	84 c0                	test   al,al
  d68751:	74 31                	je     0xd68784
  d68753:	80 7e 15 00          	cmp    BYTE PTR [esi+0x15],0x0
  d68757:	74 07                	je     0xd68760
  d68759:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  d6875e:	75 24                	jne    0xd68784
  d68760:	8d 44 24 30          	lea    eax,[esp+0x30]
  d68764:	50                   	push   eax
  d68765:	8b ce                	mov    ecx,esi
  d68767:	e8 34 f5 ff ff       	call   0xd67ca0
  d6876c:	83 c6 20             	add    esi,0x20
  d6876f:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  d68773:	3b 74 24 20          	cmp    esi,DWORD PTR [esp+0x20]
  d68777:	0f 85 eb fe ff ff    	jne    0xd68668
  d6877d:	5f                   	pop    edi
  d6877e:	5e                   	pop    esi
  d6877f:	5b                   	pop    ebx
  d68780:	8b e5                	mov    esp,ebp
  d68782:	5d                   	pop    ebp
  d68783:	c3                   	ret
  d68784:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  d68788:	74 47                	je     0xd687d1
  d6878a:	e8 e1 ed bc ff       	call   0x937570
  d6878f:	85 c0                	test   eax,eax
  d68791:	74 12                	je     0xd687a5
  d68793:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  d68796:	8b 4a 0c             	mov    ecx,DWORD PTR [edx+0xc]
  d68799:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  d6879c:	51                   	push   ecx
  d6879d:	52                   	push   edx
  d6879e:	8b c8                	mov    ecx,eax
  d687a0:	e8 9b f6 bc ff       	call   0x937e40
  d687a5:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  d687a8:	85 c9                	test   ecx,ecx
  d687aa:	74 25                	je     0xd687d1
  d687ac:	8d 41 04             	lea    eax,[ecx+0x4]
  d687af:	c7 46 10 00 00 00 00 	mov    DWORD PTR [esi+0x10],0x0
  d687b6:	8b d0                	mov    edx,eax
  d687b8:	83 cb ff             	or     ebx,0xffffffff
  d687bb:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  d687bf:	4b                   	dec    ebx
  d687c0:	75 0f                	jne    0xd687d1
  d687c2:	ba 01 00 00 00       	mov    edx,0x1
  d687c7:	87 10                	xchg   DWORD PTR [eax],edx
  d687c9:	8b 01                	mov    eax,DWORD PTR [ecx]
  d687cb:	8b 10                	mov    edx,DWORD PTR [eax]
  d687cd:	6a 01                	push   0x1
  d687cf:	ff d2                	call   edx
  d687d1:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  d687d4:	8d 46 20             	lea    eax,[esi+0x20]
  d687d7:	3b c1                	cmp    eax,ecx
  d687d9:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  d687dd:	73 69                	jae    0xd68848
  d687df:	8b f8                	mov    edi,eax
  d687e1:	83 c6 10             	add    esi,0x10
  d687e4:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  d687e7:	0f 29 46 f0          	movaps XMMWORD PTR [esi-0x10],xmm0
  d687eb:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  d687ee:	8b 0e                	mov    ecx,DWORD PTR [esi]
  d687f0:	3b c1                	cmp    eax,ecx
  d687f2:	74 34                	je     0xd68828
  d687f4:	85 c0                	test   eax,eax
  d687f6:	74 0c                	je     0xd68804
  d687f8:	8d 50 04             	lea    edx,[eax+0x4]
  d687fb:	bb 01 00 00 00       	mov    ebx,0x1
  d68800:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  d68804:	85 c9                	test   ecx,ecx
  d68806:	89 06                	mov    DWORD PTR [esi],eax
  d68808:	74 1e                	je     0xd68828
  d6880a:	8d 41 04             	lea    eax,[ecx+0x4]
  d6880d:	8b d0                	mov    edx,eax
  d6880f:	83 cb ff             	or     ebx,0xffffffff
  d68812:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  d68816:	4b                   	dec    ebx
  d68817:	75 0f                	jne    0xd68828
  d68819:	ba 01 00 00 00       	mov    edx,0x1
  d6881e:	87 10                	xchg   DWORD PTR [eax],edx
  d68820:	8b 01                	mov    eax,DWORD PTR [ecx]
  d68822:	8b 10                	mov    edx,DWORD PTR [eax]
  d68824:	6a 01                	push   0x1
  d68826:	ff d2                	call   edx
  d68828:	8a 46 24             	mov    al,BYTE PTR [esi+0x24]
  d6882b:	88 46 04             	mov    BYTE PTR [esi+0x4],al
  d6882e:	8a 4e 25             	mov    cl,BYTE PTR [esi+0x25]
  d68831:	88 4e 05             	mov    BYTE PTR [esi+0x5],cl
  d68834:	83 c7 20             	add    edi,0x20
  d68837:	83 c6 20             	add    esi,0x20
  d6883a:	3b 7c 24 20          	cmp    edi,DWORD PTR [esp+0x20]
  d6883e:	75 a4                	jne    0xd687e4
  d68840:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  d68844:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  d68848:	83 47 10 e0          	add    DWORD PTR [edi+0x10],0xffffffe0
  d6884c:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  d6884f:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  d68852:	85 c9                	test   ecx,ecx
  d68854:	74 22                	je     0xd68878
  d68856:	8d 41 04             	lea    eax,[ecx+0x4]
  d68859:	8b d0                	mov    edx,eax
  d6885b:	83 cb ff             	or     ebx,0xffffffff
  d6885e:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  d68862:	4b                   	dec    ebx
  d68863:	75 13                	jne    0xd68878
  d68865:	ba 01 00 00 00       	mov    edx,0x1
  d6886a:	87 10                	xchg   DWORD PTR [eax],edx
  d6886c:	85 c9                	test   ecx,ecx
  d6886e:	74 08                	je     0xd68878
  d68870:	8b 01                	mov    eax,DWORD PTR [ecx]
  d68872:	8b 10                	mov    edx,DWORD PTR [eax]
  d68874:	6a 01                	push   0x1
  d68876:	ff d2                	call   edx
  d68878:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  d6887b:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  d6887f:	e9 ef fe ff ff       	jmp    0xd68773
