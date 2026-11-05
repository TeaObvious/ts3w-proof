# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007386a0 (ResourceSystem_InitializeServices)
Complete body envelope: 0x007386a0..0x00739145 (exclusive end)
Body ranges: [[007386a0, 00739144]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007386a0 <.text+0x3376a0>:
  7386a0:	81 ec 0c 05 00 00    	sub    esp,0x50c
  7386a6:	53                   	push   ebx
  7386a7:	56                   	push   esi
  7386a8:	57                   	push   edi
  7386a9:	6a 01                	push   0x1
  7386ab:	68 5c fb ff 00       	push   0xfffb5c
  7386b0:	68 98 e3 ff 00       	push   0xffe398
  7386b5:	8b f1                	mov    esi,ecx
  7386b7:	e8 74 27 e5 ff       	call   0x58ae30
  7386bc:	6a 00                	push   0x0
  7386be:	6a 00                	push   0x0
  7386c0:	6a 00                	push   0x0
  7386c2:	6a 00                	push   0x0
  7386c4:	68 38 fb ff 00       	push   0xfffb38
  7386c9:	68 28 02 08 00       	push   0x80228
  7386ce:	88 86 e9 01 00 00    	mov    BYTE PTR [esi+0x1e9],al
  7386d4:	e8 27 be da ff       	call   0x4e4500
  7386d9:	8b d8                	mov    ebx,eax
  7386db:	83 c4 24             	add    esp,0x24
  7386de:	85 db                	test   ebx,ebx
  7386e0:	74 22                	je     0x738704
  7386e2:	8d 43 08             	lea    eax,[ebx+0x8]
  7386e5:	50                   	push   eax
  7386e6:	c7 03 40 f0 ff 00    	mov    DWORD PTR [ebx],0xfff040
  7386ec:	ff 15 24 61 f9 00    	call   DWORD PTR ds:0xf96124
  7386f2:	8d bb 28 00 08 00    	lea    edi,[ebx+0x80028]
  7386f8:	b9 80 00 00 00       	mov    ecx,0x80
  7386fd:	83 c8 ff             	or     eax,0xffffffff
  738700:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  738702:	eb 02                	jmp    0x738706
  738704:	33 db                	xor    ebx,ebx
  738706:	85 db                	test   ebx,ebx
  738708:	89 9e d4 01 00 00    	mov    DWORD PTR [esi+0x1d4],ebx
  73870e:	0f 84 b8 02 00 00    	je     0x7389cc
  738714:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
  73871b:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  738722:	bb 02 00 00 00       	mov    ebx,0x2
  738727:	51                   	push   ecx
  738728:	89 9c 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],ebx
  73872f:	c7 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],0x400
  738736:	00 04 00 00 
  73873a:	e8 c1 99 cc ff       	call   0x402100
  73873f:	8b f8                	mov    edi,eax
  738741:	83 c4 04             	add    esp,0x4
  738744:	85 ff                	test   edi,edi
  738746:	0f 84 80 02 00 00    	je     0x7389cc
  73874c:	83 3d 88 05 1b 01 00 	cmp    DWORD PTR ds:0x11b0588,0x0
  738753:	0f 84 73 02 00 00    	je     0x7389cc
  738759:	6a 00                	push   0x0
  73875b:	68 1c fb ff 00       	push   0xfffb1c
  738760:	68 98 e3 ff 00       	push   0xffe398
  738765:	e8 c6 26 e5 ff       	call   0x58ae30
  73876a:	83 c4 0c             	add    esp,0xc
  73876d:	84 c0                	test   al,al
  73876f:	74 05                	je     0x738776
  738771:	e8 4a b9 d7 ff       	call   0x4b40c0
  738776:	6a 00                	push   0x0
  738778:	68 04 fb ff 00       	push   0xfffb04
  73877d:	68 98 e3 ff 00       	push   0xffe398
  738782:	e8 79 27 e5 ff       	call   0x58af00
  738787:	83 c4 0c             	add    esp,0xc
  73878a:	85 c0                	test   eax,eax
  73878c:	7e 03                	jle    0x738791
  73878e:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  738791:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  738798:	e8 d3 a6 da ff       	call   0x4e2e70
  73879d:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
  7387a4:	c7 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],0xfffaf0
  7387ab:	f0 fa ff 00 
  7387af:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  7387b6:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
  7387b9:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
  7387c0:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  7387c3:	8b 8c 24 98 00 00 00 	mov    ecx,DWORD PTR [esp+0x98]
  7387ca:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
  7387cd:	8b 94 24 9c 00 00 00 	mov    edx,DWORD PTR [esp+0x9c]
  7387d4:	89 57 18             	mov    DWORD PTR [edi+0x18],edx
  7387d7:	8b 84 24 a0 00 00 00 	mov    eax,DWORD PTR [esp+0xa0]
  7387de:	89 47 1c             	mov    DWORD PTR [edi+0x1c],eax
  7387e1:	8b 8c 24 a4 00 00 00 	mov    ecx,DWORD PTR [esp+0xa4]
  7387e8:	89 4f 20             	mov    DWORD PTR [edi+0x20],ecx
  7387eb:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  7387ef:	e8 4c 21 ff ff       	call   0x72a940
  7387f4:	68 d8 fa ff 00       	push   0xfffad8
  7387f9:	68 98 e3 ff 00       	push   0xffe398
  7387fe:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  738802:	e8 f9 24 ff ff       	call   0x72ad00
  738807:	84 c0                	test   al,al
  738809:	0f 84 e1 00 00 00    	je     0x7388f0
  73880f:	8b 54 24 6c          	mov    edx,DWORD PTR [esp+0x6c]
  738813:	3b 54 24 70          	cmp    edx,DWORD PTR [esp+0x70]
  738817:	0f 84 d3 00 00 00    	je     0x7388f0
  73881d:	6a 00                	push   0x0
  73881f:	6a 00                	push   0x0
  738821:	6a 00                	push   0x0
  738823:	6a 00                	push   0x0
  738825:	68 b4 fa ff 00       	push   0xfffab4
  73882a:	6a 14                	push   0x14
  73882c:	e8 cf bc da ff       	call   0x4e4500
  738831:	83 c4 18             	add    esp,0x18
  738834:	85 c0                	test   eax,eax
  738836:	74 09                	je     0x738841
  738838:	8b c8                	mov    ecx,eax
  73883a:	e8 01 21 ff ff       	call   0x72a940
  73883f:	eb 02                	jmp    0x738843
  738841:	33 c0                	xor    eax,eax
  738843:	85 c0                	test   eax,eax
  738845:	89 86 f0 07 00 00    	mov    DWORD PTR [esi+0x7f0],eax
  73884b:	0f 84 9f 00 00 00    	je     0x7388f0
  738851:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  738855:	51                   	push   ecx
  738856:	8b c8                	mov    ecx,eax
  738858:	e8 a3 23 ff ff       	call   0x72ac00
  73885d:	d9 05 f4 98 f9 00    	fld    DWORD PTR ds:0xf998f4
  738863:	51                   	push   ecx
  738864:	d9 1c 24             	fstp   DWORD PTR [esp]
  738867:	68 88 fa ff 00       	push   0xfffa88
  73886c:	68 98 e3 ff 00       	push   0xffe398
  738871:	e8 da 26 e5 ff       	call   0x58af50
  738876:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  73887a:	d9 05 84 fa ff 00    	fld    DWORD PTR ds:0xfffa84
  738880:	83 c4 08             	add    esp,0x8
  738883:	d9 1c 24             	fstp   DWORD PTR [esp]
  738886:	68 68 fa ff 00       	push   0xfffa68
  73888b:	68 98 e3 ff 00       	push   0xffe398
  738890:	e8 bb 26 e5 ff       	call   0x58af50
  738895:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  738899:	6a 00                	push   0x0
  73889b:	6a 00                	push   0x0
  73889d:	6a 00                	push   0x0
  73889f:	6a 00                	push   0x0
  7388a1:	68 4c fa ff 00       	push   0xfffa4c
  7388a6:	6a 20                	push   0x20
  7388a8:	e8 53 bc da ff       	call   0x4e4500
  7388ad:	83 c4 24             	add    esp,0x24
  7388b0:	85 c0                	test   eax,eax
  7388b2:	74 20                	je     0x7388d4
  7388b4:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  7388b8:	83 ec 08             	sub    esp,0x8
  7388bb:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7388bf:	8b c8                	mov    ecx,eax
  7388c1:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  7388c5:	d9 1c 24             	fstp   DWORD PTR [esp]
  7388c8:	68 a8 e8 ff 00       	push   0xffe8a8
  7388cd:	e8 fe 0d 00 00       	call   0x7396d0
  7388d2:	eb 02                	jmp    0x7388d6
  7388d4:	33 c0                	xor    eax,eax
  7388d6:	85 c0                	test   eax,eax
  7388d8:	89 86 e8 07 00 00    	mov    DWORD PTR [esi+0x7e8],eax
  7388de:	74 10                	je     0x7388f0
  7388e0:	6a 00                	push   0x0
  7388e2:	50                   	push   eax
  7388e3:	8b cf                	mov    ecx,edi
  7388e5:	e8 e6 98 cc ff       	call   0x4021d0
  7388ea:	89 86 ec 07 00 00    	mov    DWORD PTR [esi+0x7ec],eax
  7388f0:	6a 00                	push   0x0
  7388f2:	6a 00                	push   0x0
  7388f4:	6a 00                	push   0x0
  7388f6:	6a 00                	push   0x0
  7388f8:	68 24 fa ff 00       	push   0xfffa24
  7388fd:	6a 10                	push   0x10
  7388ff:	e8 fc bb da ff       	call   0x4e4500
  738904:	83 c4 18             	add    esp,0x18
  738907:	85 c0                	test   eax,eax
  738909:	74 0e                	je     0x738919
  73890b:	68 1c fa ff 00       	push   0xfffa1c
  738910:	8b c8                	mov    ecx,eax
  738912:	e8 89 58 ff ff       	call   0x72e1a0
  738917:	eb 02                	jmp    0x73891b
  738919:	33 c0                	xor    eax,eax
  73891b:	85 c0                	test   eax,eax
  73891d:	89 86 f4 07 00 00    	mov    DWORD PTR [esi+0x7f4],eax
  738923:	74 10                	je     0x738935
  738925:	6a 00                	push   0x0
  738927:	50                   	push   eax
  738928:	8b cf                	mov    ecx,edi
  73892a:	e8 a1 98 cc ff       	call   0x4021d0
  73892f:	89 86 f8 07 00 00    	mov    DWORD PTR [esi+0x7f8],eax
  738935:	6a 00                	push   0x0
  738937:	6a 00                	push   0x0
  738939:	6a 00                	push   0x0
  73893b:	6a 00                	push   0x0
  73893d:	68 f4 f9 ff 00       	push   0xfff9f4
  738942:	6a 68                	push   0x68
  738944:	e8 b7 bb da ff       	call   0x4e4500
  738949:	83 c4 18             	add    esp,0x18
  73894c:	85 c0                	test   eax,eax
  73894e:	74 13                	je     0x738963
  738950:	68 1c fa ff 00       	push   0xfffa1c
  738955:	68 e8 f9 ff 00       	push   0xfff9e8
  73895a:	8b c8                	mov    ecx,eax
  73895c:	e8 5f 58 ff ff       	call   0x72e1c0
  738961:	eb 02                	jmp    0x738965
  738963:	33 c0                	xor    eax,eax
  738965:	85 c0                	test   eax,eax
  738967:	89 86 fc 07 00 00    	mov    DWORD PTR [esi+0x7fc],eax
  73896d:	74 10                	je     0x73897f
  73896f:	6a 01                	push   0x1
  738971:	50                   	push   eax
  738972:	8b cf                	mov    ecx,edi
  738974:	e8 57 98 cc ff       	call   0x4021d0
  738979:	89 86 00 08 00 00    	mov    DWORD PTR [esi+0x800],eax
  73897f:	6a 00                	push   0x0
  738981:	6a 00                	push   0x0
  738983:	6a 00                	push   0x0
  738985:	6a 00                	push   0x0
  738987:	68 c8 f9 ff 00       	push   0xfff9c8
  73898c:	6a 20                	push   0x20
  73898e:	e8 6d bb da ff       	call   0x4e4500
  738993:	83 c4 18             	add    esp,0x18
  738996:	85 c0                	test   eax,eax
  738998:	74 16                	je     0x7389b0
  73899a:	8d 54 24 0c          	lea    edx,[esp+0xc]
  73899e:	52                   	push   edx
  73899f:	8b c8                	mov    ecx,eax
  7389a1:	c7 44 24 10 a4 f9 ff 	mov    DWORD PTR [esp+0x10],0xfff9a4
  7389a8:	00 
  7389a9:	e8 72 0e e1 ff       	call   0x549820
  7389ae:	eb 02                	jmp    0x7389b2
  7389b0:	33 c0                	xor    eax,eax
  7389b2:	8b ce                	mov    ecx,esi
  7389b4:	89 86 4c 07 00 00    	mov    DWORD PTR [esi+0x74c],eax
  7389ba:	e8 d1 21 da ff       	call   0x4dab90
  7389bf:	84 c0                	test   al,al
  7389c1:	75 15                	jne    0x7389d8
  7389c3:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  7389c7:	e8 94 1f ff ff       	call   0x72a960
  7389cc:	5f                   	pop    edi
  7389cd:	5e                   	pop    esi
  7389ce:	32 c0                	xor    al,al
  7389d0:	5b                   	pop    ebx
  7389d1:	81 c4 0c 05 00 00    	add    esp,0x50c
  7389d7:	c3                   	ret
  7389d8:	8d 46 f8             	lea    eax,[esi-0x8]
  7389db:	f7 d8                	neg    eax
  7389dd:	1b c0                	sbb    eax,eax
  7389df:	23 c6                	and    eax,esi
  7389e1:	50                   	push   eax
  7389e2:	e8 a9 74 d7 ff       	call   0x4afe90
  7389e7:	83 c4 04             	add    esp,0x4
  7389ea:	8d 44 24 0c          	lea    eax,[esp+0xc]
  7389ee:	50                   	push   eax
  7389ef:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  7389f3:	c7 44 24 10 88 f9 ff 	mov    DWORD PTR [esp+0x10],0xfff988
  7389fa:	00 
  7389fb:	e8 20 0e e1 ff       	call   0x549820
  738a00:	8b 8e 40 07 00 00    	mov    ecx,DWORD PTR [esi+0x740]
  738a06:	2b 8e 3c 07 00 00    	sub    ecx,DWORD PTR [esi+0x73c]
  738a0c:	33 ff                	xor    edi,edi
  738a0e:	d1 f9                	sar    ecx,1
  738a10:	74 73                	je     0x738a85
  738a12:	8b 96 3c 07 00 00    	mov    edx,DWORD PTR [esi+0x73c]
  738a18:	66 83 3c 7a 00       	cmp    WORD PTR [edx+edi*2],0x0
  738a1d:	8d 04 7a             	lea    eax,[edx+edi*2]
  738a20:	74 21                	je     0x738a43
  738a22:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  738a26:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  738a2b:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  738a2f:	50                   	push   eax
  738a30:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  738a34:	51                   	push   ecx
  738a35:	8d 54 24 40          	lea    edx,[esp+0x40]
  738a39:	52                   	push   edx
  738a3a:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  738a3e:	e8 7d cc ff ff       	call   0x7356c0
  738a43:	8b 8e 40 07 00 00    	mov    ecx,DWORD PTR [esi+0x740]
  738a49:	8b 96 3c 07 00 00    	mov    edx,DWORD PTR [esi+0x73c]
  738a4f:	8b c1                	mov    eax,ecx
  738a51:	2b c2                	sub    eax,edx
  738a53:	d1 f8                	sar    eax,1
  738a55:	74 2e                	je     0x738a85
  738a57:	8b c2                	mov    eax,edx
  738a59:	3b c1                	cmp    eax,ecx
  738a5b:	74 28                	je     0x738a85
  738a5d:	8d 49 00             	lea    ecx,[ecx+0x0]
  738a60:	66 39 38             	cmp    WORD PTR [eax],di
  738a63:	74 06                	je     0x738a6b
  738a65:	03 c3                	add    eax,ebx
  738a67:	3b c1                	cmp    eax,ecx
  738a69:	75 f5                	jne    0x738a60
  738a6b:	3b c1                	cmp    eax,ecx
  738a6d:	74 16                	je     0x738a85
  738a6f:	2b c2                	sub    eax,edx
  738a71:	d1 f8                	sar    eax,1
  738a73:	8b f8                	mov    edi,eax
  738a75:	83 ff ff             	cmp    edi,0xffffffff
  738a78:	74 0b                	je     0x738a85
  738a7a:	2b ca                	sub    ecx,edx
  738a7c:	83 c7 01             	add    edi,0x1
  738a7f:	d1 f9                	sar    ecx,1
  738a81:	3b f9                	cmp    edi,ecx
  738a83:	72 8d                	jb     0x738a12
  738a85:	8b 8e 1c 07 00 00    	mov    ecx,DWORD PTR [esi+0x71c]
  738a8b:	8b 96 20 07 00 00    	mov    edx,DWORD PTR [esi+0x720]
  738a91:	33 c0                	xor    eax,eax
  738a93:	3b ca                	cmp    ecx,edx
  738a95:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  738a99:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  738a9d:	8d 44 24 14          	lea    eax,[esp+0x14]
  738aa1:	8b f8                	mov    edi,eax
  738aa3:	55                   	push   ebp
  738aa4:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  738aa8:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  738aac:	c7 44 24 20 10 f4 ff 	mov    DWORD PTR [esp+0x20],0xfff410
  738ab3:	00 
  738ab4:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  738ab8:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  738abc:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  738ac3:	00 
  738ac4:	0f 84 0f 02 00 00    	je     0x738cd9
  738aca:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  738ad0:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  738ad4:	8b 01                	mov    eax,DWORD PTR [ecx]
  738ad6:	3b 41 04             	cmp    eax,DWORD PTR [ecx+0x4]
  738ad9:	0f 84 dc 01 00 00    	je     0x738cbb
  738adf:	50                   	push   eax
  738ae0:	e8 4b 36 da ff       	call   0x4dc130
  738ae5:	83 c4 04             	add    esp,0x4
  738ae8:	84 c0                	test   al,al
  738aea:	0f 84 fc 02 00 00    	je     0x738dec
  738af0:	6a 00                	push   0x0
  738af2:	6a 00                	push   0x0
  738af4:	6a 00                	push   0x0
  738af6:	6a 00                	push   0x0
  738af8:	68 68 f9 ff 00       	push   0xfff968
  738afd:	68 64 04 00 00       	push   0x464
  738b02:	e8 f9 b9 da ff       	call   0x4e4500
  738b07:	83 c4 18             	add    esp,0x18
  738b0a:	85 c0                	test   eax,eax
  738b0c:	74 0b                	je     0x738b19
  738b0e:	8b c8                	mov    ecx,eax
  738b10:	e8 cb bd d6 ff       	call   0x4a48e0
  738b15:	8b d8                	mov    ebx,eax
  738b17:	eb 02                	jmp    0x738b1b
  738b19:	33 db                	xor    ebx,ebx
  738b1b:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  738b1f:	8b 17                	mov    edx,DWORD PTR [edi]
  738b21:	52                   	push   edx
  738b22:	8b cb                	mov    ecx,ebx
  738b24:	e8 27 b9 d6 ff       	call   0x4a4450
  738b29:	89 5f 10             	mov    DWORD PTR [edi+0x10],ebx
  738b2c:	8b 86 30 07 00 00    	mov    eax,DWORD PTR [esi+0x730]
  738b32:	8b ae 2c 07 00 00    	mov    ebp,DWORD PTR [esi+0x72c]
  738b38:	3b e8                	cmp    ebp,eax
  738b3a:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  738b41:	0f 84 74 01 00 00    	je     0x738cbb
  738b47:	eb 07                	jmp    0x738b50
  738b49:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  738b50:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  738b54:	39 45 00             	cmp    DWORD PTR [ebp+0x0],eax
  738b57:	0f 85 4e 01 00 00    	jne    0x738cab
  738b5d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  738b61:	51                   	push   ecx
  738b62:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  738b66:	e8 85 02 cd ff       	call   0x408df0
  738b6b:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  738b6f:	52                   	push   edx
  738b70:	e8 ab 58 db ff       	call   0x4ee420
  738b75:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  738b78:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  738b7b:	83 c4 04             	add    esp,0x4
  738b7e:	50                   	push   eax
  738b7f:	51                   	push   ecx
  738b80:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  738b84:	e8 07 00 cd ff       	call   0x408b90
  738b89:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  738b8d:	52                   	push   edx
  738b8e:	e8 dd 31 da ff       	call   0x4dbd70
  738b93:	83 c4 04             	add    esp,0x4
  738b96:	84 c0                	test   al,al
  738b98:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  738b9c:	0f 84 2f 02 00 00    	je     0x738dd1
  738ba2:	50                   	push   eax
  738ba3:	8d 8c 24 10 01 00 00 	lea    ecx,[esp+0x110]
  738baa:	e8 c1 55 db ff       	call   0x4ee170
  738baf:	8d 8c 24 0c 01 00 00 	lea    ecx,[esp+0x10c]
  738bb6:	e8 55 51 db ff       	call   0x4edd10
  738bbb:	33 ff                	xor    edi,edi
  738bbd:	50                   	push   eax
  738bbe:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  738bc2:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
  738bc6:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  738bca:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  738bce:	c7 44 24 38 10 f4 ff 	mov    DWORD PTR [esp+0x38],0xfff410
  738bd5:	00 
  738bd6:	e8 b5 29 cd ff       	call   0x40b590
  738bdb:	8d 8c 24 0c 01 00 00 	lea    ecx,[esp+0x10c]
  738be2:	e8 b9 55 db ff       	call   0x4ee1a0
  738be7:	68 e7 00 00 00       	push   0xe7
  738bec:	68 88 99 f9 00       	push   0xf99988
  738bf1:	57                   	push   edi
  738bf2:	57                   	push   edi
  738bf3:	68 48 f9 ff 00       	push   0xfff948
  738bf8:	6a 04                	push   0x4
  738bfa:	c7 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],0xfff948
  738c01:	48 f9 ff 00 
  738c05:	e8 f6 b8 da ff       	call   0x4e4500
  738c0a:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
  738c0e:	8d 48 04             	lea    ecx,[eax+0x4]
  738c11:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
  738c18:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  738c1f:	83 c4 18             	add    esp,0x18
  738c22:	89 38                	mov    DWORD PTR [eax],edi
  738c24:	8b 94 24 84 00 00 00 	mov    edx,DWORD PTR [esp+0x84]
  738c2b:	8d 44 24 18          	lea    eax,[esp+0x18]
  738c2f:	50                   	push   eax
  738c30:	83 c2 04             	add    edx,0x4
  738c33:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  738c37:	51                   	push   ecx
  738c38:	89 94 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],edx
  738c3f:	53                   	push   ebx
  738c40:	8d 94 24 90 00 00 00 	lea    edx,[esp+0x90]
  738c47:	52                   	push   edx
  738c48:	8d 8c 24 1c 01 00 00 	lea    ecx,[esp+0x11c]
  738c4f:	e8 4c c5 0a 00       	call   0x7e51a0
  738c54:	50                   	push   eax
  738c55:	8d 4e f8             	lea    ecx,[esi-0x8]
  738c58:	e8 43 f1 ff ff       	call   0x737da0
  738c5d:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  738c64:	85 c0                	test   eax,eax
  738c66:	74 09                	je     0x738c71
  738c68:	50                   	push   eax
  738c69:	e8 72 b8 da ff       	call   0x4e44e0
  738c6e:	83 c4 04             	add    esp,0x4
  738c71:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  738c75:	2b c7                	sub    eax,edi
  738c77:	83 e0 fe             	and    eax,0xfffffffe
  738c7a:	83 f8 02             	cmp    eax,0x2
  738c7d:	7e 0d                	jle    0x738c8c
  738c7f:	85 ff                	test   edi,edi
  738c81:	74 09                	je     0x738c8c
  738c83:	57                   	push   edi
  738c84:	e8 57 b8 da ff       	call   0x4e44e0
  738c89:	83 c4 04             	add    esp,0x4
  738c8c:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  738c90:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  738c94:	2b c8                	sub    ecx,eax
  738c96:	83 e1 fe             	and    ecx,0xfffffffe
  738c99:	83 f9 02             	cmp    ecx,0x2
  738c9c:	7e 0d                	jle    0x738cab
  738c9e:	85 c0                	test   eax,eax
  738ca0:	74 09                	je     0x738cab
  738ca2:	50                   	push   eax
  738ca3:	e8 38 b8 da ff       	call   0x4e44e0
  738ca8:	83 c4 04             	add    esp,0x4
  738cab:	83 c5 14             	add    ebp,0x14
  738cae:	3b ac 24 80 00 00 00 	cmp    ebp,DWORD PTR [esp+0x80]
  738cb5:	0f 85 95 fe ff ff    	jne    0x738b50
  738cbb:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  738cbf:	83 44 24 10 01       	add    DWORD PTR [esp+0x10],0x1
  738cc4:	83 c0 14             	add    eax,0x14
  738cc7:	3b 44 24 24          	cmp    eax,DWORD PTR [esp+0x24]
  738ccb:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  738ccf:	0f 85 fb fd ff ff    	jne    0x738ad0
  738cd5:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  738cd9:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  738cdd:	3b c1                	cmp    eax,ecx
  738cdf:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  738ce3:	0f 84 75 01 00 00    	je     0x738e5e
  738ce9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  738cf0:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  738cf3:	85 ff                	test   edi,edi
  738cf5:	0f 84 51 01 00 00    	je     0x738e4c
  738cfb:	8b 17                	mov    edx,DWORD PTR [edi]
  738cfd:	8b 6e f8             	mov    ebp,DWORD PTR [esi-0x8]
  738d00:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  738d03:	8d 5e f8             	lea    ebx,[esi-0x8]
  738d06:	8b cf                	mov    ecx,edi
  738d08:	83 c5 20             	add    ebp,0x20
  738d0b:	ff d0                	call   eax
  738d0d:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  738d10:	50                   	push   eax
  738d11:	8b cb                	mov    ecx,ebx
  738d13:	ff d2                	call   edx
  738d15:	8b e8                	mov    ebp,eax
  738d17:	85 ed                	test   ebp,ebp
  738d19:	0f 85 1f 01 00 00    	jne    0x738e3e
  738d1f:	b8 54 8e 1c 01       	mov    eax,0x11c8e54
  738d24:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  738d28:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  738d2c:	8b 07                	mov    eax,DWORD PTR [edi]
  738d2e:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  738d31:	8b cf                	mov    ecx,edi
  738d33:	c7 44 24 34 68 f1 ff 	mov    DWORD PTR [esp+0x34],0xfff168
  738d3a:	00 
  738d3b:	c7 44 24 30 56 8e 1c 	mov    DWORD PTR [esp+0x30],0x11c8e56
  738d42:	01 
  738d43:	89 6c 24 38          	mov    DWORD PTR [esp+0x38],ebp
  738d47:	ff d2                	call   edx
  738d49:	66 39 28             	cmp    WORD PTR [eax],bp
  738d4c:	8b c8                	mov    ecx,eax
  738d4e:	74 08                	je     0x738d58
  738d50:	83 c1 02             	add    ecx,0x2
  738d53:	66 39 29             	cmp    WORD PTR [ecx],bp
  738d56:	75 f8                	jne    0x738d50
  738d58:	2b c8                	sub    ecx,eax
  738d5a:	d1 f9                	sar    ecx,1
  738d5c:	8d 0c 48             	lea    ecx,[eax+ecx*2]
  738d5f:	51                   	push   ecx
  738d60:	50                   	push   eax
  738d61:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  738d65:	e8 f6 ff cc ff       	call   0x408d60
  738d6a:	55                   	push   ebp
  738d6b:	55                   	push   ebp
  738d6c:	55                   	push   ebp
  738d6d:	55                   	push   ebp
  738d6e:	68 68 f9 ff 00       	push   0xfff968
  738d73:	68 64 04 00 00       	push   0x464
  738d78:	e8 83 b7 da ff       	call   0x4e4500
  738d7d:	83 c4 18             	add    esp,0x18
  738d80:	3b c5                	cmp    eax,ebp
  738d82:	74 09                	je     0x738d8d
  738d84:	8b c8                	mov    ecx,eax
  738d86:	e8 55 bb d6 ff       	call   0x4a48e0
  738d8b:	8b e8                	mov    ebp,eax
  738d8d:	8b 17                	mov    edx,DWORD PTR [edi]
  738d8f:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  738d92:	8b cf                	mov    ecx,edi
  738d94:	ff d0                	call   eax
  738d96:	50                   	push   eax
  738d97:	8b cd                	mov    ecx,ebp
  738d99:	e8 b2 b6 d6 ff       	call   0x4a4450
  738d9e:	8b 9e 20 07 00 00    	mov    ebx,DWORD PTR [esi+0x720]
  738da4:	3b 9e 24 07 00 00    	cmp    ebx,DWORD PTR [esi+0x724]
  738daa:	8d 8e 1c 07 00 00    	lea    ecx,[esi+0x71c]
  738db0:	89 6c 24 38          	mov    DWORD PTR [esp+0x38],ebp
  738db4:	73 5e                	jae    0x738e14
  738db6:	85 db                	test   ebx,ebx
  738db8:	8d 53 14             	lea    edx,[ebx+0x14]
  738dbb:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  738dbe:	74 5f                	je     0x738e1f
  738dc0:	8d 44 24 28          	lea    eax,[esp+0x28]
  738dc4:	50                   	push   eax
  738dc5:	8b cb                	mov    ecx,ebx
  738dc7:	e8 24 00 cd ff       	call   0x408df0
  738dcc:	89 6b 10             	mov    DWORD PTR [ebx+0x10],ebp
  738dcf:	eb 4e                	jmp    0x738e1f
  738dd1:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  738dd5:	2b d0                	sub    edx,eax
  738dd7:	83 e2 fe             	and    edx,0xfffffffe
  738dda:	83 fa 02             	cmp    edx,0x2
  738ddd:	7e 0d                	jle    0x738dec
  738ddf:	85 c0                	test   eax,eax
  738de1:	74 09                	je     0x738dec
  738de3:	50                   	push   eax
  738de4:	e8 f7 b6 da ff       	call   0x4e44e0
  738de9:	83 c4 04             	add    esp,0x4
  738dec:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  738df0:	e8 0b bb ff ff       	call   0x734900
  738df5:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  738df9:	e8 92 7d 5d 00       	call   0xd10b90
  738dfe:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  738e02:	e8 59 1b ff ff       	call   0x72a960
  738e07:	5d                   	pop    ebp
  738e08:	5f                   	pop    edi
  738e09:	5e                   	pop    esi
  738e0a:	32 c0                	xor    al,al
  738e0c:	5b                   	pop    ebx
  738e0d:	81 c4 0c 05 00 00    	add    esp,0x50c
  738e13:	c3                   	ret
  738e14:	8d 54 24 28          	lea    edx,[esp+0x28]
  738e18:	52                   	push   edx
  738e19:	53                   	push   ebx
  738e1a:	e8 11 ea ff ff       	call   0x737830
  738e1f:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  738e23:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  738e27:	2b c8                	sub    ecx,eax
  738e29:	83 e1 fe             	and    ecx,0xfffffffe
  738e2c:	83 f9 02             	cmp    ecx,0x2
  738e2f:	7e 0d                	jle    0x738e3e
  738e31:	85 c0                	test   eax,eax
  738e33:	74 09                	je     0x738e3e
  738e35:	50                   	push   eax
  738e36:	e8 a5 b6 da ff       	call   0x4e44e0
  738e3b:	83 c4 04             	add    esp,0x4
  738e3e:	6a 01                	push   0x1
  738e40:	57                   	push   edi
  738e41:	8b cd                	mov    ecx,ebp
  738e43:	e8 18 be d6 ff       	call   0x4a4c60
  738e48:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  738e4c:	8b 00                	mov    eax,DWORD PTR [eax]
  738e4e:	8d 54 24 18          	lea    edx,[esp+0x18]
  738e52:	3b c2                	cmp    eax,edx
  738e54:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  738e58:	0f 85 92 fe ff ff    	jne    0x738cf0
  738e5e:	33 db                	xor    ebx,ebx
  738e60:	53                   	push   ebx
  738e61:	53                   	push   ebx
  738e62:	53                   	push   ebx
  738e63:	53                   	push   ebx
  738e64:	68 1c f9 ff 00       	push   0xfff91c
  738e69:	68 a0 00 00 00       	push   0xa0
  738e6e:	e8 ed b8 da ff       	call   0x4e4760
  738e73:	83 c4 18             	add    esp,0x18
  738e76:	3b c3                	cmp    eax,ebx
  738e78:	74 10                	je     0x738e8a
  738e7a:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  738e80:	51                   	push   ecx
  738e81:	8b c8                	mov    ecx,eax
  738e83:	e8 98 99 ff ff       	call   0x732820
  738e88:	eb 02                	jmp    0x738e8c
  738e8a:	33 c0                	xor    eax,eax
  738e8c:	bd 01 00 00 00       	mov    ebp,0x1
  738e91:	89 86 dc 01 00 00    	mov    DWORD PTR [esi+0x1dc],eax
  738e97:	83 c0 04             	add    eax,0x4
  738e9a:	8b d5                	mov    edx,ebp
  738e9c:	f0 0f c1 10          	lock xadd DWORD PTR [eax],edx
  738ea0:	8b 8e dc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1dc]
  738ea6:	8b 01                	mov    eax,DWORD PTR [ecx]
  738ea8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  738eab:	ff d2                	call   edx
  738ead:	8b 8e dc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1dc]
  738eb3:	8b 01                	mov    eax,DWORD PTR [ecx]
  738eb5:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
  738eb8:	8d 96 e0 01 00 00    	lea    edx,[esi+0x1e0]
  738ebe:	52                   	push   edx
  738ebf:	ff d0                	call   eax
  738ec1:	8b 8e dc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1dc]
  738ec7:	c7 81 8c 00 00 00 00 	mov    DWORD PTR [ecx+0x8c],0xf00000
  738ece:	00 f0 00 
  738ed1:	8b 86 dc 01 00 00    	mov    eax,DWORD PTR [esi+0x1dc]
  738ed7:	8b 16                	mov    edx,DWORD PTR [esi]
  738ed9:	8b 52 54             	mov    edx,DWORD PTR [edx+0x54]
  738edc:	68 e8 03 00 00       	push   0x3e8
  738ee1:	50                   	push   eax
  738ee2:	55                   	push   ebp
  738ee3:	8b ce                	mov    ecx,esi
  738ee5:	ff d2                	call   edx
  738ee7:	53                   	push   ebx
  738ee8:	53                   	push   ebx
  738ee9:	53                   	push   ebx
  738eea:	53                   	push   ebx
  738eeb:	68 fc f8 ff 00       	push   0xfff8fc
  738ef0:	68 a0 00 00 00       	push   0xa0
  738ef5:	e8 66 b8 da ff       	call   0x4e4760
  738efa:	83 c4 18             	add    esp,0x18
  738efd:	3b c3                	cmp    eax,ebx
  738eff:	74 10                	je     0x738f11
  738f01:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  738f07:	51                   	push   ecx
  738f08:	8b c8                	mov    ecx,eax
  738f0a:	e8 11 99 ff ff       	call   0x732820
  738f0f:	eb 02                	jmp    0x738f13
  738f11:	33 c0                	xor    eax,eax
  738f13:	89 86 d8 01 00 00    	mov    DWORD PTR [esi+0x1d8],eax
  738f19:	83 c0 04             	add    eax,0x4
  738f1c:	8b d5                	mov    edx,ebp
  738f1e:	f0 0f c1 10          	lock xadd DWORD PTR [eax],edx
  738f22:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  738f28:	8b 01                	mov    eax,DWORD PTR [ecx]
  738f2a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  738f2d:	ff d2                	call   edx
  738f2f:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  738f35:	e8 16 a1 ff ff       	call   0x733050
  738f3a:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  738f40:	8b 06                	mov    eax,DWORD PTR [esi]
  738f42:	8b 50 54             	mov    edx,DWORD PTR [eax+0x54]
  738f45:	53                   	push   ebx
  738f46:	51                   	push   ecx
  738f47:	55                   	push   ebp
  738f48:	8b ce                	mov    ecx,esi
  738f4a:	ff d2                	call   edx
  738f4c:	53                   	push   ebx
  738f4d:	53                   	push   ebx
  738f4e:	53                   	push   ebx
  738f4f:	53                   	push   ebx
  738f50:	68 e0 f8 ff 00       	push   0xfff8e0
  738f55:	6a 58                	push   0x58
  738f57:	e8 a4 b5 da ff       	call   0x4e4500
  738f5c:	83 c4 18             	add    esp,0x18
  738f5f:	3b c3                	cmp    eax,ebx
  738f61:	74 09                	je     0x738f6c
  738f63:	8b c8                	mov    ecx,eax
  738f65:	e8 d6 15 ff ff       	call   0x72a540
  738f6a:	eb 02                	jmp    0x738f6e
  738f6c:	33 c0                	xor    eax,eax
  738f6e:	50                   	push   eax
  738f6f:	e8 1c 15 ff ff       	call   0x72a490
  738f74:	83 c4 04             	add    esp,0x4
  738f77:	e8 74 f8 fe ff       	call   0x7287f0
  738f7c:	8b f8                	mov    edi,eax
  738f7e:	8b 07                	mov    eax,DWORD PTR [edi]
  738f80:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  738f83:	8b cf                	mov    ecx,edi
  738f85:	ff d2                	call   edx
  738f87:	84 c0                	test   al,al
  738f89:	75 5d                	jne    0x738fe8
  738f8b:	8b 06                	mov    eax,DWORD PTR [esi]
  738f8d:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  738f90:	8b ce                	mov    ecx,esi
  738f92:	ff d2                	call   edx
  738f94:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  738f98:	8d 44 24 18          	lea    eax,[esp+0x18]
  738f9c:	3b f0                	cmp    esi,eax
  738f9e:	74 15                	je     0x738fb5
  738fa0:	8b c6                	mov    eax,esi
  738fa2:	8b 36                	mov    esi,DWORD PTR [esi]
  738fa4:	50                   	push   eax
  738fa5:	e8 36 b5 da ff       	call   0x4e44e0
  738faa:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  738fae:	83 c4 04             	add    esp,0x4
  738fb1:	3b f1                	cmp    esi,ecx
  738fb3:	75 eb                	jne    0x738fa0
  738fb5:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  738fb9:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  738fbd:	52                   	push   edx
  738fbe:	50                   	push   eax
  738fbf:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  738fc3:	e8 48 74 3a 00       	call   0xae0410
  738fc8:	39 6c 24 54          	cmp    DWORD PTR [esp+0x54],ebp
  738fcc:	89 5c 24 58          	mov    DWORD PTR [esp+0x58],ebx
  738fd0:	0f 86 28 fe ff ff    	jbe    0x738dfe
  738fd6:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  738fda:	51                   	push   ecx
  738fdb:	e8 00 b5 da ff       	call   0x4e44e0
  738fe0:	83 c4 04             	add    esp,0x4
  738fe3:	e9 16 fe ff ff       	jmp    0x738dfe
  738fe8:	57                   	push   edi
  738fe9:	e8 72 e1 fe ff       	call   0x727160
  738fee:	83 c4 04             	add    esp,0x4
  738ff1:	e8 da 2b e5 ff       	call   0x58bbd0
  738ff6:	8b f8                	mov    edi,eax
  738ff8:	3b fb                	cmp    edi,ebx
  738ffa:	0f 84 e4 00 00 00    	je     0x7390e4
  739000:	68 98 e3 ff 00       	push   0xffe398
  739005:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  73900c:	e8 4f ce ff ff       	call   0x735e60
  739011:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
  739018:	8d 54 24 24          	lea    edx,[esp+0x24]
  73901c:	52                   	push   edx
  73901d:	68 c0 f8 ff 00       	push   0xfff8c0
  739022:	50                   	push   eax
  739023:	8b cf                	mov    ecx,edi
  739025:	e8 b6 35 e5 ff       	call   0x58c5e0
  73902a:	84 c0                	test   al,al
  73902c:	0f 84 84 00 00 00    	je     0x7390b6
  739032:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  739036:	ba 6c d2 fc 00       	mov    edx,0xfcd26c
  73903b:	8b c8                	mov    ecx,eax
  73903d:	8d 49 00             	lea    ecx,[ecx+0x0]
  739040:	66 8b 39             	mov    di,WORD PTR [ecx]
  739043:	66 3b 3a             	cmp    di,WORD PTR [edx]
  739046:	75 1e                	jne    0x739066
  739048:	66 3b fb             	cmp    di,bx
  73904b:	74 15                	je     0x739062
  73904d:	66 8b 79 02          	mov    di,WORD PTR [ecx+0x2]
  739051:	66 3b 7a 02          	cmp    di,WORD PTR [edx+0x2]
  739055:	75 0f                	jne    0x739066
  739057:	83 c1 04             	add    ecx,0x4
  73905a:	83 c2 04             	add    edx,0x4
  73905d:	66 3b fb             	cmp    di,bx
  739060:	75 de                	jne    0x739040
  739062:	33 c9                	xor    ecx,ecx
  739064:	eb 05                	jmp    0x73906b
  739066:	1b c9                	sbb    ecx,ecx
  739068:	83 d9 ff             	sbb    ecx,0xffffffff
  73906b:	3b cb                	cmp    ecx,ebx
  73906d:	75 09                	jne    0x739078
  73906f:	c6 86 5c 07 00 00 01 	mov    BYTE PTR [esi+0x75c],0x1
  739076:	eb 3e                	jmp    0x7390b6
  739078:	b9 68 d2 fc 00       	mov    ecx,0xfcd268
  73907d:	8d 49 00             	lea    ecx,[ecx+0x0]
  739080:	66 8b 10             	mov    dx,WORD PTR [eax]
  739083:	66 3b 11             	cmp    dx,WORD PTR [ecx]
  739086:	75 1e                	jne    0x7390a6
  739088:	66 3b d3             	cmp    dx,bx
  73908b:	74 15                	je     0x7390a2
  73908d:	66 8b 50 02          	mov    dx,WORD PTR [eax+0x2]
  739091:	66 3b 51 02          	cmp    dx,WORD PTR [ecx+0x2]
  739095:	75 0f                	jne    0x7390a6
  739097:	83 c0 04             	add    eax,0x4
  73909a:	83 c1 04             	add    ecx,0x4
  73909d:	66 3b d3             	cmp    dx,bx
  7390a0:	75 de                	jne    0x739080
  7390a2:	33 c0                	xor    eax,eax
  7390a4:	eb 05                	jmp    0x7390ab
  7390a6:	1b c0                	sbb    eax,eax
  7390a8:	83 d8 ff             	sbb    eax,0xffffffff
  7390ab:	3b c3                	cmp    eax,ebx
  7390ad:	75 07                	jne    0x7390b6
  7390af:	c6 86 5c 07 00 00 00 	mov    BYTE PTR [esi+0x75c],0x0
  7390b6:	8b 8c 24 c0 00 00 00 	mov    ecx,DWORD PTR [esp+0xc0]
  7390bd:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
  7390c4:	2b c8                	sub    ecx,eax
  7390c6:	83 e1 fe             	and    ecx,0xfffffffe
  7390c9:	83 f9 02             	cmp    ecx,0x2
  7390cc:	7e 16                	jle    0x7390e4
  7390ce:	3b c3                	cmp    eax,ebx
  7390d0:	74 12                	je     0x7390e4
  7390d2:	3b 84 24 c8 00 00 00 	cmp    eax,DWORD PTR [esp+0xc8]
  7390d9:	74 09                	je     0x7390e4
  7390db:	50                   	push   eax
  7390dc:	e8 ff b3 da ff       	call   0x4e44e0
  7390e1:	83 c4 04             	add    esp,0x4
  7390e4:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  7390e8:	8d 54 24 18          	lea    edx,[esp+0x18]
  7390ec:	3b f2                	cmp    esi,edx
  7390ee:	74 15                	je     0x739105
  7390f0:	8b c6                	mov    eax,esi
  7390f2:	8b 36                	mov    esi,DWORD PTR [esi]
  7390f4:	50                   	push   eax
  7390f5:	e8 e6 b3 da ff       	call   0x4e44e0
  7390fa:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  7390fe:	83 c4 04             	add    esp,0x4
  739101:	3b f0                	cmp    esi,eax
  739103:	75 eb                	jne    0x7390f0
  739105:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  739109:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
  73910d:	51                   	push   ecx
  73910e:	52                   	push   edx
  73910f:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  739113:	e8 f8 72 3a 00       	call   0xae0410
  739118:	39 6c 24 54          	cmp    DWORD PTR [esp+0x54],ebp
  73911c:	89 5c 24 58          	mov    DWORD PTR [esp+0x58],ebx
  739120:	76 0d                	jbe    0x73912f
  739122:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  739126:	50                   	push   eax
  739127:	e8 b4 b3 da ff       	call   0x4e44e0
  73912c:	83 c4 04             	add    esp,0x4
  73912f:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  739133:	e8 28 18 ff ff       	call   0x72a960
  739138:	5d                   	pop    ebp
  739139:	5f                   	pop    edi
  73913a:	5e                   	pop    esi
  73913b:	b0 01                	mov    al,0x1
  73913d:	5b                   	pop    ebx
  73913e:	81 c4 0c 05 00 00    	add    esp,0x50c
  739144:	c3                   	ret
