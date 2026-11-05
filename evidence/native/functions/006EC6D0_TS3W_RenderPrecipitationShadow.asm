# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x006ec6d0, 0x006ecf24).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

006ec6d0 <.text+0x2eb6d0>:
  6ec6d0:	55                   	push   ebp
  6ec6d1:	8b ec                	mov    ebp,esp
  6ec6d3:	83 e4 f0             	and    esp,0xfffffff0
  6ec6d6:	b8 44 49 00 00       	mov    eax,0x4944
  6ec6db:	e8 60 31 89 00       	call   0xf7f840
  6ec6e0:	53                   	push   ebx
  6ec6e1:	56                   	push   esi
  6ec6e2:	57                   	push   edi
  6ec6e3:	8b f1                	mov    esi,ecx
  6ec6e5:	e8 26 22 f2 ff       	call   0x60e910
  6ec6ea:	8b d8                	mov    ebx,eax
  6ec6ec:	80 bb 8d 00 00 00 00 	cmp    BYTE PTR [ebx+0x8d],0x0
  6ec6f3:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  6ec6f7:	0f 85 20 08 00 00    	jne    0x6ecf1d
  6ec6fd:	a1 30 25 1d 01       	mov    eax,ds:0x11d2530
  6ec702:	8b 88 2c 01 00 00    	mov    ecx,DWORD PTR [eax+0x12c]
  6ec708:	8b 3d 30 85 1d 01    	mov    edi,DWORD PTR ds:0x11d8530
  6ec70e:	8b 96 2c 02 00 00    	mov    edx,DWORD PTR [esi+0x22c]
  6ec714:	51                   	push   ecx
  6ec715:	52                   	push   edx
  6ec716:	8b cf                	mov    ecx,edi
  6ec718:	e8 63 d9 0a 00       	call   0x79a080
  6ec71d:	8b cb                	mov    ecx,ebx
  6ec71f:	e8 4c 58 e4 ff       	call   0x531f70
  6ec724:	80 be 9c 02 00 00 00 	cmp    BYTE PTR [esi+0x29c],0x0
  6ec72b:	89 86 68 03 00 00    	mov    DWORD PTR [esi+0x368],eax
  6ec731:	0f 84 d3 07 00 00    	je     0x6ecf0a
  6ec737:	e8 44 b0 f2 ff       	call   0x617780
  6ec73c:	8b d8                	mov    ebx,eax
  6ec73e:	68 83 b7 54 0d       	push   0xd54b783
  6ec743:	8b cb                	mov    ecx,ebx
  6ec745:	e8 06 b5 f2 ff       	call   0x617c50
  6ec74a:	68 6f ac 54 0d       	push   0xd54ac6f
  6ec74f:	8b cb                	mov    ecx,ebx
  6ec751:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  6ec755:	e8 f6 b4 f2 ff       	call   0x617c50
  6ec75a:	68 18 67 53 0d       	push   0xd536718
  6ec75f:	8b cb                	mov    ecx,ebx
  6ec761:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  6ec765:	e8 26 b5 f2 ff       	call   0x617c90
  6ec76a:	f6 05 90 2b 1d 01 01 	test   BYTE PTR ds:0x11d2b90,0x1
  6ec771:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  6ec775:	a1 e0 c3 15 01       	mov    eax,ds:0x115c3e0
  6ec77a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  6ec77e:	75 07                	jne    0x6ec787
  6ec780:	83 0d 90 2b 1d 01 01 	or     DWORD PTR ds:0x11d2b90,0x1
  6ec787:	85 c0                	test   eax,eax
  6ec789:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  6ec78d:	db 44 24 38          	fild   DWORD PTR [esp+0x38]
  6ec791:	7d 06                	jge    0x6ec799
  6ec793:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  6ec799:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6ec7a0:	00
  6ec7a1:	d9 5c 24 38          	fstp   DWORD PTR [esp+0x38]
  6ec7a5:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  6ec7ab:	0f 57 d2             	xorps  xmm2,xmm2
  6ec7ae:	f3 0f 5e c1          	divss  xmm0,xmm1
  6ec7b2:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  6ec7b8:	0f 28 d0             	movaps xmm2,xmm0
  6ec7bb:	f3 0f 59 15 88 fd 03 	mulss  xmm2,DWORD PTR ds:0x103fd88
  6ec7c2:	01
  6ec7c3:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  6ec7c9:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6ec7cf:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  6ec7d5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6ec7da:	0f 29 05 80 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b80,xmm0
  6ec7e1:	8b 86 0c 02 00 00    	mov    eax,DWORD PTR [esi+0x20c]
  6ec7e7:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec7ea:	73 18                	jae    0x6ec804
  6ec7ec:	c1 e0 04             	shl    eax,0x4
  6ec7ef:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec7f2:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec7f5:	66 8b 4f 12          	mov    cx,WORD PTR [edi+0x12]
  6ec7f9:	66 89 48 04          	mov    WORD PTR [eax+0x4],cx
  6ec7fd:	c7 40 0c 80 2b 1d 01 	mov    DWORD PTR [eax+0xc],0x11d2b80
  6ec804:	8b 86 10 02 00 00    	mov    eax,DWORD PTR [esi+0x210]
  6ec80a:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec80d:	73 1a                	jae    0x6ec829
  6ec80f:	c1 e0 04             	shl    eax,0x4
  6ec812:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec815:	8d 8e 10 01 00 00    	lea    ecx,[esi+0x110]
  6ec81b:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec81e:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ec822:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ec826:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6ec829:	8b 86 14 02 00 00    	mov    eax,DWORD PTR [esi+0x214]
  6ec82f:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec832:	73 1a                	jae    0x6ec84e
  6ec834:	c1 e0 04             	shl    eax,0x4
  6ec837:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec83a:	8d 8e d0 00 00 00    	lea    ecx,[esi+0xd0]
  6ec840:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec843:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ec847:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ec84b:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6ec84e:	8b 86 18 02 00 00    	mov    eax,DWORD PTR [esi+0x218]
  6ec854:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec857:	73 1a                	jae    0x6ec873
  6ec859:	c1 e0 04             	shl    eax,0x4
  6ec85c:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec85f:	8d 8e 50 01 00 00    	lea    ecx,[esi+0x150]
  6ec865:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec868:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ec86c:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ec870:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6ec873:	8b 86 00 02 00 00    	mov    eax,DWORD PTR [esi+0x200]
  6ec879:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec87c:	73 1a                	jae    0x6ec898
  6ec87e:	c1 e0 04             	shl    eax,0x4
  6ec881:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec884:	8d 8e 10 01 00 00    	lea    ecx,[esi+0x110]
  6ec88a:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec88d:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ec891:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ec895:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6ec898:	8b 86 04 02 00 00    	mov    eax,DWORD PTR [esi+0x204]
  6ec89e:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec8a1:	73 1a                	jae    0x6ec8bd
  6ec8a3:	c1 e0 04             	shl    eax,0x4
  6ec8a6:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec8a9:	8d 8e d0 00 00 00    	lea    ecx,[esi+0xd0]
  6ec8af:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec8b2:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ec8b6:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ec8ba:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6ec8bd:	8b 86 08 02 00 00    	mov    eax,DWORD PTR [esi+0x208]
  6ec8c3:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ec8c6:	73 1a                	jae    0x6ec8e2
  6ec8c8:	c1 e0 04             	shl    eax,0x4
  6ec8cb:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ec8ce:	8d 8e 50 01 00 00    	lea    ecx,[esi+0x150]
  6ec8d4:	83 00 01             	add    DWORD PTR [eax],0x1
  6ec8d7:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ec8db:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ec8df:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6ec8e2:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  6ec8e6:	8d 94 24 e0 00 00 00 	lea    edx,[esp+0xe0]
  6ec8ed:	52                   	push   edx
  6ec8ee:	8b cb                	mov    ecx,ebx
  6ec8f0:	e8 0b 3d f2 ff       	call   0x610600
  6ec8f5:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  6ec8f9:	e8 22 be f2 ff       	call   0x618720
  6ec8fe:	8d 84 24 f0 00 00 00 	lea    eax,[esp+0xf0]
  6ec905:	50                   	push   eax
  6ec906:	8b cb                	mov    ecx,ebx
  6ec908:	e8 23 20 f2 ff       	call   0x60e930
  6ec90d:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  6ec911:	85 c0                	test   eax,eax
  6ec913:	74 04                	je     0x6ec919
  6ec915:	8b 00                	mov    eax,DWORD PTR [eax]
  6ec917:	eb 02                	jmp    0x6ec91b
  6ec919:	33 c0                	xor    eax,eax
  6ec91b:	50                   	push   eax
  6ec91c:	6a 00                	push   0x0
  6ec91e:	8b cb                	mov    ecx,ebx
  6ec920:	e8 3b 2c f2 ff       	call   0x60f560
  6ec925:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  6ec929:	85 c0                	test   eax,eax
  6ec92b:	74 05                	je     0x6ec932
  6ec92d:	8b 08                	mov    ecx,DWORD PTR [eax]
  6ec92f:	51                   	push   ecx
  6ec930:	eb 1b                	jmp    0x6ec94d
  6ec932:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  6ec936:	85 c0                	test   eax,eax
  6ec938:	74 1a                	je     0x6ec954
  6ec93a:	8b 08                	mov    ecx,DWORD PTR [eax]
  6ec93c:	8d 54 24 78          	lea    edx,[esp+0x78]
  6ec940:	52                   	push   edx
  6ec941:	6a 00                	push   0x0
  6ec943:	e8 a8 d2 f2 ff       	call   0x619bf0
  6ec948:	8d 44 24 78          	lea    eax,[esp+0x78]
  6ec94c:	50                   	push   eax
  6ec94d:	8b cb                	mov    ecx,ebx
  6ec94f:	e8 5c 2c f2 ff       	call   0x60f5b0
  6ec954:	8b cb                	mov    ecx,ebx
  6ec956:	e8 45 29 f2 ff       	call   0x60f2a0
  6ec95b:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  6ec95e:	8b 15 30 25 1d 01    	mov    edx,DWORD PTR ds:0x11d2530
  6ec964:	8b 82 f4 00 00 00    	mov    eax,DWORD PTR [edx+0xf4]
  6ec96a:	51                   	push   ecx
  6ec96b:	8b 8e ec 02 00 00    	mov    ecx,DWORD PTR [esi+0x2ec]
  6ec971:	50                   	push   eax
  6ec972:	51                   	push   ecx
  6ec973:	8d 8c 24 4c 05 00 00 	lea    ecx,[esp+0x54c]
  6ec97a:	e8 b1 e2 00 00       	call   0x6fac30
  6ec97f:	8b 56 34             	mov    edx,DWORD PTR [esi+0x34]
  6ec982:	52                   	push   edx
  6ec983:	8d 8c 24 24 01 00 00 	lea    ecx,[esp+0x124]
  6ec98a:	e8 41 14 fa ff       	call   0x68ddd0
  6ec98f:	8b 86 50 02 00 00    	mov    eax,DWORD PTR [esi+0x250]
  6ec995:	33 c9                	xor    ecx,ecx
  6ec997:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  6ec99b:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  6ec99e:	89 4c 24 5c          	mov    DWORD PTR [esp+0x5c],ecx
  6ec9a2:	89 4c 24 68          	mov    DWORD PTR [esp+0x68],ecx
  6ec9a6:	89 4c 24 70          	mov    DWORD PTR [esp+0x70],ecx
  6ec9aa:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  6ec9ae:	8d 94 24 40 05 00 00 	lea    edx,[esp+0x540]
  6ec9b5:	89 4c 24 64          	mov    DWORD PTR [esp+0x64],ecx
  6ec9b9:	8a 8e a2 02 00 00    	mov    cl,BYTE PTR [esi+0x2a2]
  6ec9bf:	89 54 24 60          	mov    DWORD PTR [esp+0x60],edx
  6ec9c3:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  6ec9c7:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  6ec9cb:	8d 54 24 44          	lea    edx,[esp+0x44]
  6ec9cf:	8d 84 24 20 01 00 00 	lea    eax,[esp+0x120]
  6ec9d6:	88 4c 24 59          	mov    BYTE PTR [esp+0x59],cl
  6ec9da:	52                   	push   edx
  6ec9db:	8b ce                	mov    ecx,esi
  6ec9dd:	c6 44 24 59 00       	mov    BYTE PTR [esp+0x59],0x0
  6ec9e2:	c6 44 24 5a 00       	mov    BYTE PTR [esp+0x5a],0x0
  6ec9e7:	c6 44 24 5b 00       	mov    BYTE PTR [esp+0x5b],0x0
  6ec9ec:	c6 44 24 5c 00       	mov    BYTE PTR [esp+0x5c],0x0
  6ec9f1:	c6 44 24 5e 00       	mov    BYTE PTR [esp+0x5e],0x0
  6ec9f6:	c7 44 24 4c 08 00 00 	mov    DWORD PTR [esp+0x4c],0x8
  6ec9fd:	00
  6ec9fe:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  6eca02:	c6 44 24 58 00       	mov    BYTE PTR [esp+0x58],0x0
  6eca07:	e8 b4 c4 ff ff       	call   0x6e8ec0
  6eca0c:	6a 01                	push   0x1
  6eca0e:	68 ae 00 00 00       	push   0xae
  6eca13:	8b cb                	mov    ecx,ebx
  6eca15:	e8 96 24 f2 ff       	call   0x60eeb0
  6eca1a:	80 3d cc c3 15 01 00 	cmp    BYTE PTR ds:0x115c3cc,0x0
  6eca21:	75 09                	jne    0x6eca2c
  6eca23:	80 3d cd c3 15 01 00 	cmp    BYTE PTR ds:0x115c3cd,0x0
  6eca2a:	74 26                	je     0x6eca52
  6eca2c:	8b 86 b4 01 00 00    	mov    eax,DWORD PTR [esi+0x1b4]
  6eca32:	50                   	push   eax
  6eca33:	68 c3 00 00 00       	push   0xc3
  6eca38:	8b cb                	mov    ecx,ebx
  6eca3a:	e8 71 24 f2 ff       	call   0x60eeb0
  6eca3f:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  6eca45:	51                   	push   ecx
  6eca46:	68 af 00 00 00       	push   0xaf
  6eca4b:	8b cb                	mov    ecx,ebx
  6eca4d:	e8 5e 24 f2 ff       	call   0x60eeb0
  6eca52:	6a 00                	push   0x0
  6eca54:	8b cb                	mov    ecx,ebx
  6eca56:	e8 45 33 f2 ff       	call   0x60fda0
  6eca5b:	33 c0                	xor    eax,eax
  6eca5d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  6eca61:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6eca65:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6eca69:	8d 54 24 10          	lea    edx,[esp+0x10]
  6eca6d:	52                   	push   edx
  6eca6e:	8b cb                	mov    ecx,ebx
  6eca70:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6eca74:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  6eca78:	e8 13 2a f2 ff       	call   0x60f490
  6eca7d:	d9 e8                	fld1
  6eca7f:	33 c0                	xor    eax,eax
  6eca81:	83 ec 08             	sub    esp,0x8
  6eca84:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6eca88:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6eca8c:	d9 ee                	fldz
  6eca8e:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6eca92:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  6eca96:	d9 1c 24             	fstp   DWORD PTR [esp]
  6eca99:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  6eca9d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  6ecaa1:	8d 44 24 18          	lea    eax,[esp+0x18]
  6ecaa5:	50                   	push   eax
  6ecaa6:	8b cb                	mov    ecx,ebx
  6ecaa8:	e8 83 3b f2 ff       	call   0x610630
  6ecaad:	d9 05 b4 c1 15 01    	fld    DWORD PTR ds:0x115c1b4
  6ecab3:	80 3d cd c3 15 01 00 	cmp    BYTE PTR ds:0x115c3cd,0x0
  6ecaba:	6a 00                	push   0x0
  6ecabc:	51                   	push   ecx
  6ecabd:	d9 1c 24             	fstp   DWORD PTR [esp]
  6ecac0:	8b cb                	mov    ecx,ebx
  6ecac2:	6a 00                	push   0x0
  6ecac4:	74 04                	je     0x6ecaca
  6ecac6:	6a 02                	push   0x2
  6ecac8:	eb 02                	jmp    0x6ecacc
  6ecaca:	6a 06                	push   0x6
  6ecacc:	e8 df 2d f2 ff       	call   0x60f8b0
  6ecad1:	b8 01 00 00 00       	mov    eax,0x1
  6ecad6:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  6ecada:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6ecade:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  6ecae2:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6ecae6:	83 c0 ff             	add    eax,0xffffffff
  6ecae9:	51                   	push   ecx
  6ecaea:	8b cb                	mov    ecx,ebx
  6ecaec:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6ecaf0:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  6ecaf4:	e8 97 29 f2 ff       	call   0x60f490
  6ecaf9:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  6ecafc:	8d 90 50 01 00 00    	lea    edx,[eax+0x150]
  6ecb02:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  6ecb06:	8b 56 34             	mov    edx,DWORD PTR [esi+0x34]
  6ecb09:	8d 88 20 01 00 00    	lea    ecx,[eax+0x120]
  6ecb0f:	52                   	push   edx
  6ecb10:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  6ecb14:	50                   	push   eax
  6ecb15:	8b ce                	mov    ecx,esi
  6ecb17:	e8 c4 dc ff ff       	call   0x6ea7e0
  6ecb1c:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  6ecb20:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  6ecb23:	2b 08                	sub    ecx,DWORD PTR [eax]
  6ecb25:	f7 c1 f8 ff ff ff    	test   ecx,0xfffffff8
  6ecb2b:	74 11                	je     0x6ecb3e
  6ecb2d:	8d 54 24 44          	lea    edx,[esp+0x44]
  6ecb31:	52                   	push   edx
  6ecb32:	50                   	push   eax
  6ecb33:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  6ecb36:	50                   	push   eax
  6ecb37:	8b ce                	mov    ecx,esi
  6ecb39:	e8 62 de ff ff       	call   0x6ea9a0
  6ecb3e:	e8 9d 60 02 00       	call   0x712be0
  6ecb43:	85 c0                	test   eax,eax
  6ecb45:	74 13                	je     0x6ecb5a
  6ecb47:	8b 10                	mov    edx,DWORD PTR [eax]
  6ecb49:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  6ecb4c:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  6ecb50:	51                   	push   ecx
  6ecb51:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  6ecb55:	51                   	push   ecx
  6ecb56:	8b c8                	mov    ecx,eax
  6ecb58:	ff d2                	call   edx
  6ecb5a:	8d 8c 24 40 05 00 00 	lea    ecx,[esp+0x540]
  6ecb61:	e8 9a dd 00 00       	call   0x6fa900
  6ecb66:	8b cb                	mov    ecx,ebx
  6ecb68:	e8 c3 37 f2 ff       	call   0x610330
  6ecb6d:	8d 84 24 f0 00 00 00 	lea    eax,[esp+0xf0]
  6ecb74:	50                   	push   eax
  6ecb75:	8b cb                	mov    ecx,ebx
  6ecb77:	e8 e4 1e f2 ff       	call   0x60ea60
  6ecb7c:	0f 57 c0             	xorps  xmm0,xmm0
  6ecb7f:	f3 0f 10 25 b4 b5 f9 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  6ecb86:	00
  6ecb87:	f3 0f 10 15 00 b6 f9 	movss  xmm2,DWORD PTR ds:0xf9b600
  6ecb8e:	00
  6ecb8f:	f3 0f 10 2d f8 98 f9 	movss  xmm5,DWORD PTR ds:0xf998f8
  6ecb96:	00
  6ecb97:	a1 90 2b 1d 01       	mov    eax,ds:0x11d2b90
  6ecb9c:	a8 02                	test   al,0x2
  6ecb9e:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6ecba4:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6ecbaa:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6ecbb0:	f3 0f 11 64 24 10    	movss  DWORD PTR [esp+0x10],xmm4
  6ecbb6:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  6ecbbb:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6ecbc1:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6ecbc7:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  6ecbcd:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6ecbd3:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  6ecbd8:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6ecbde:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  6ecbe4:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6ecbea:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6ecbf0:	0f 28 5c 24 10       	movaps xmm3,XMMWORD PTR [esp+0x10]
  6ecbf5:	f3 0f 11 6c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm5
  6ecbfb:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6ecc01:	f3 0f 11 64 24 14    	movss  DWORD PTR [esp+0x14],xmm4
  6ecc07:	f3 0f 11 64 24 10    	movss  DWORD PTR [esp+0x10],xmm4
  6ecc0d:	0f 28 64 24 10       	movaps xmm4,XMMWORD PTR [esp+0x10]
  6ecc12:	75 08                	jne    0x6ecc1c
  6ecc14:	83 c8 02             	or     eax,0x2
  6ecc17:	a3 90 2b 1d 01       	mov    ds:0x11d2b90,eax
  6ecc1c:	a8 04                	test   al,0x4
  6ecc1e:	75 08                	jne    0x6ecc28
  6ecc20:	83 c8 04             	or     eax,0x4
  6ecc23:	a3 90 2b 1d 01       	mov    ds:0x11d2b90,eax
  6ecc28:	0f 28 86 10 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x110]
  6ecc2f:	0f 28 e8             	movaps xmm5,xmm0
  6ecc32:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  6ecc36:	0f 28 f0             	movaps xmm6,xmm0
  6ecc39:	0f c6 f0 55          	shufps xmm6,xmm0,0x55
  6ecc3d:	0f 59 f2             	mulps  xmm6,xmm2
  6ecc40:	0f 59 e9             	mulps  xmm5,xmm1
  6ecc43:	0f 58 ee             	addps  xmm5,xmm6
  6ecc46:	0f 28 f0             	movaps xmm6,xmm0
  6ecc49:	0f c6 f0 aa          	shufps xmm6,xmm0,0xaa
  6ecc4d:	0f 59 f3             	mulps  xmm6,xmm3
  6ecc50:	0f 58 ee             	addps  xmm5,xmm6
  6ecc53:	0f 28 f0             	movaps xmm6,xmm0
  6ecc56:	0f c6 f0 ff          	shufps xmm6,xmm0,0xff
  6ecc5a:	0f 28 86 20 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x120]
  6ecc61:	0f 59 f4             	mulps  xmm6,xmm4
  6ecc64:	0f 58 ee             	addps  xmm5,xmm6
  6ecc67:	0f 28 f0             	movaps xmm6,xmm0
  6ecc6a:	0f c6 f0 00          	shufps xmm6,xmm0,0x0
  6ecc6e:	0f 59 f1             	mulps  xmm6,xmm1
  6ecc71:	0f 28 f8             	movaps xmm7,xmm0
  6ecc74:	0f c6 f8 55          	shufps xmm7,xmm0,0x55
  6ecc78:	0f 59 fa             	mulps  xmm7,xmm2
  6ecc7b:	0f 58 f7             	addps  xmm6,xmm7
  6ecc7e:	0f 28 f8             	movaps xmm7,xmm0
  6ecc81:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  6ecc85:	0f 59 fb             	mulps  xmm7,xmm3
  6ecc88:	0f 58 f7             	addps  xmm6,xmm7
  6ecc8b:	0f 28 f8             	movaps xmm7,xmm0
  6ecc8e:	0f c6 f8 ff          	shufps xmm7,xmm0,0xff
  6ecc92:	0f 28 86 30 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x130]
  6ecc99:	0f 59 fc             	mulps  xmm7,xmm4
  6ecc9c:	0f 58 f7             	addps  xmm6,xmm7
  6ecc9f:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm6
  6ecca6:	00
  6ecca7:	0f 28 f0             	movaps xmm6,xmm0
  6eccaa:	0f c6 f0 00          	shufps xmm6,xmm0,0x0
  6eccae:	0f 59 f1             	mulps  xmm6,xmm1
  6eccb1:	0f 28 f8             	movaps xmm7,xmm0
  6eccb4:	0f c6 f8 55          	shufps xmm7,xmm0,0x55
  6eccb8:	0f 59 fa             	mulps  xmm7,xmm2
  6eccbb:	0f 58 f7             	addps  xmm6,xmm7
  6eccbe:	0f 28 f8             	movaps xmm7,xmm0
  6eccc1:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  6eccc5:	0f 59 fb             	mulps  xmm7,xmm3
  6eccc8:	0f 58 f7             	addps  xmm6,xmm7
  6ecccb:	0f 28 f8             	movaps xmm7,xmm0
  6eccce:	0f c6 f8 ff          	shufps xmm7,xmm0,0xff
  6eccd2:	0f 28 86 40 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x140]
  6eccd9:	0f 59 fc             	mulps  xmm7,xmm4
  6eccdc:	0f 58 f7             	addps  xmm6,xmm7
  6eccdf:	0f 29 b4 24 c0 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm6
  6ecce6:	00
  6ecce7:	0f 28 f0             	movaps xmm6,xmm0
  6eccea:	0f c6 f0 00          	shufps xmm6,xmm0,0x0
  6eccee:	0f 59 f1             	mulps  xmm6,xmm1
  6eccf1:	0f 28 f8             	movaps xmm7,xmm0
  6eccf4:	0f c6 f8 55          	shufps xmm7,xmm0,0x55
  6eccf8:	0f 59 fa             	mulps  xmm7,xmm2
  6eccfb:	0f 58 f7             	addps  xmm6,xmm7
  6eccfe:	0f 28 f8             	movaps xmm7,xmm0
  6ecd01:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  6ecd05:	0f 59 fb             	mulps  xmm7,xmm3
  6ecd08:	0f 58 f7             	addps  xmm6,xmm7
  6ecd0b:	0f 28 f8             	movaps xmm7,xmm0
  6ecd0e:	0f c6 f8 ff          	shufps xmm7,xmm0,0xff
  6ecd12:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xb0]
  6ecd19:	00
  6ecd1a:	0f 29 2d 40 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b40,xmm5
  6ecd21:	0f 29 05 50 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b50,xmm0
  6ecd28:	0f 28 84 24 c0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xc0]
  6ecd2f:	00
  6ecd30:	0f 59 fc             	mulps  xmm7,xmm4
  6ecd33:	0f 58 f7             	addps  xmm6,xmm7
  6ecd36:	0f 29 35 70 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b70,xmm6
  6ecd3d:	0f 29 05 60 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b60,xmm0
  6ecd44:	0f 28 86 d0 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0xd0]
  6ecd4b:	0f 28 e8             	movaps xmm5,xmm0
  6ecd4e:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  6ecd52:	0f 28 f0             	movaps xmm6,xmm0
  6ecd55:	0f c6 f0 55          	shufps xmm6,xmm0,0x55
  6ecd59:	0f 59 f2             	mulps  xmm6,xmm2
  6ecd5c:	0f 59 e9             	mulps  xmm5,xmm1
  6ecd5f:	0f 58 ee             	addps  xmm5,xmm6
  6ecd62:	0f 28 f0             	movaps xmm6,xmm0
  6ecd65:	0f c6 f0 aa          	shufps xmm6,xmm0,0xaa
  6ecd69:	0f 59 f3             	mulps  xmm6,xmm3
  6ecd6c:	0f 58 ee             	addps  xmm5,xmm6
  6ecd6f:	0f 28 f0             	movaps xmm6,xmm0
  6ecd72:	0f c6 f0 ff          	shufps xmm6,xmm0,0xff
  6ecd76:	0f 28 86 e0 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0xe0]
  6ecd7d:	0f 59 f4             	mulps  xmm6,xmm4
  6ecd80:	0f 58 ee             	addps  xmm5,xmm6
  6ecd83:	0f 28 f0             	movaps xmm6,xmm0
  6ecd86:	0f c6 f0 00          	shufps xmm6,xmm0,0x0
  6ecd8a:	0f 59 f1             	mulps  xmm6,xmm1
  6ecd8d:	0f 28 f8             	movaps xmm7,xmm0
  6ecd90:	0f c6 f8 55          	shufps xmm7,xmm0,0x55
  6ecd94:	0f 59 fa             	mulps  xmm7,xmm2
  6ecd97:	0f 58 f7             	addps  xmm6,xmm7
  6ecd9a:	0f 28 f8             	movaps xmm7,xmm0
  6ecd9d:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  6ecda1:	0f 59 fb             	mulps  xmm7,xmm3
  6ecda4:	0f 58 f7             	addps  xmm6,xmm7
  6ecda7:	0f 28 f8             	movaps xmm7,xmm0
  6ecdaa:	0f c6 f8 ff          	shufps xmm7,xmm0,0xff
  6ecdae:	0f 28 86 f0 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0xf0]
  6ecdb5:	0f 59 fc             	mulps  xmm7,xmm4
  6ecdb8:	0f 58 f7             	addps  xmm6,xmm7
  6ecdbb:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm6
  6ecdc2:	00
  6ecdc3:	0f 28 f0             	movaps xmm6,xmm0
  6ecdc6:	0f c6 f0 00          	shufps xmm6,xmm0,0x0
  6ecdca:	0f 59 f1             	mulps  xmm6,xmm1
  6ecdcd:	0f 28 f8             	movaps xmm7,xmm0
  6ecdd0:	0f c6 f8 55          	shufps xmm7,xmm0,0x55
  6ecdd4:	0f 59 fa             	mulps  xmm7,xmm2
  6ecdd7:	0f 58 f7             	addps  xmm6,xmm7
  6ecdda:	0f 28 f8             	movaps xmm7,xmm0
  6ecddd:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  6ecde1:	0f 59 fb             	mulps  xmm7,xmm3
  6ecde4:	0f 58 f7             	addps  xmm6,xmm7
  6ecde7:	0f 28 f8             	movaps xmm7,xmm0
  6ecdea:	0f c6 f8 ff          	shufps xmm7,xmm0,0xff
  6ecdee:	0f 28 86 00 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x100]
  6ecdf5:	0f 59 fc             	mulps  xmm7,xmm4
  6ecdf8:	0f 58 f7             	addps  xmm6,xmm7
  6ecdfb:	0f 28 f8             	movaps xmm7,xmm0
  6ecdfe:	0f c6 f8 00          	shufps xmm7,xmm0,0x0
  6ece02:	0f 59 f9             	mulps  xmm7,xmm1
  6ece05:	0f 28 c8             	movaps xmm1,xmm0
  6ece08:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  6ece0c:	0f 59 ca             	mulps  xmm1,xmm2
  6ece0f:	0f 58 f9             	addps  xmm7,xmm1
  6ece12:	0f 28 c8             	movaps xmm1,xmm0
  6ece15:	0f c6 c8 aa          	shufps xmm1,xmm0,0xaa
  6ece19:	0f 59 cb             	mulps  xmm1,xmm3
  6ece1c:	0f 58 f9             	addps  xmm7,xmm1
  6ece1f:	0f 28 c8             	movaps xmm1,xmm0
  6ece22:	0f c6 c8 ff          	shufps xmm1,xmm0,0xff
  6ece26:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xb0]
  6ece2d:	00
  6ece2e:	0f 59 cc             	mulps  xmm1,xmm4
  6ece31:	0f 58 f9             	addps  xmm7,xmm1
  6ece34:	0f 29 2d 00 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b00,xmm5
  6ece3b:	0f 29 05 10 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b10,xmm0
  6ece42:	0f 29 35 20 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b20,xmm6
  6ece49:	0f 29 3d 30 2b 1d 01 	movaps XMMWORD PTR ds:0x11d2b30,xmm7
  6ece50:	8b 86 10 02 00 00    	mov    eax,DWORD PTR [esi+0x210]
  6ece56:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ece59:	73 18                	jae    0x6ece73
  6ece5b:	c1 e0 04             	shl    eax,0x4
  6ece5e:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ece61:	83 00 01             	add    DWORD PTR [eax],0x1
  6ece64:	66 8b 4f 12          	mov    cx,WORD PTR [edi+0x12]
  6ece68:	66 89 48 04          	mov    WORD PTR [eax+0x4],cx
  6ece6c:	c7 40 0c 40 2b 1d 01 	mov    DWORD PTR [eax+0xc],0x11d2b40
  6ece73:	8b 86 14 02 00 00    	mov    eax,DWORD PTR [esi+0x214]
  6ece79:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ece7c:	73 18                	jae    0x6ece96
  6ece7e:	c1 e0 04             	shl    eax,0x4
  6ece81:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ece84:	83 00 01             	add    DWORD PTR [eax],0x1
  6ece87:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6ece8b:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6ece8f:	c7 40 0c 00 2b 1d 01 	mov    DWORD PTR [eax+0xc],0x11d2b00
  6ece96:	8b 86 00 02 00 00    	mov    eax,DWORD PTR [esi+0x200]
  6ece9c:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ece9f:	73 18                	jae    0x6eceb9
  6ecea1:	c1 e0 04             	shl    eax,0x4
  6ecea4:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ecea7:	83 00 01             	add    DWORD PTR [eax],0x1
  6eceaa:	66 8b 4f 12          	mov    cx,WORD PTR [edi+0x12]
  6eceae:	66 89 48 04          	mov    WORD PTR [eax+0x4],cx
  6eceb2:	c7 40 0c f0 28 1d 01 	mov    DWORD PTR [eax+0xc],0x11d28f0
  6eceb9:	8b 86 04 02 00 00    	mov    eax,DWORD PTR [esi+0x204]
  6ecebf:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ecec2:	73 18                	jae    0x6ecedc
  6ecec4:	c1 e0 04             	shl    eax,0x4
  6ecec7:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6ececa:	83 00 01             	add    DWORD PTR [eax],0x1
  6ececd:	66 8b 57 12          	mov    dx,WORD PTR [edi+0x12]
  6eced1:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  6eced5:	c7 40 0c b0 28 1d 01 	mov    DWORD PTR [eax+0xc],0x11d28b0
  6ecedc:	8b 86 08 02 00 00    	mov    eax,DWORD PTR [esi+0x208]
  6ecee2:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  6ecee5:	73 1a                	jae    0x6ecf01
  6ecee7:	c1 e0 04             	shl    eax,0x4
  6eceea:	03 47 04             	add    eax,DWORD PTR [edi+0x4]
  6eceed:	8d 96 c0 00 00 00    	lea    edx,[esi+0xc0]
  6ecef3:	83 00 01             	add    DWORD PTR [eax],0x1
  6ecef6:	66 8b 4f 12          	mov    cx,WORD PTR [edi+0x12]
  6ecefa:	66 89 48 04          	mov    WORD PTR [eax+0x4],cx
  6ecefe:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  6ecf01:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  6ecf05:	e8 e6 b4 f2 ff       	call   0x6183f0
  6ecf0a:	8b cb                	mov    ecx,ebx
  6ecf0c:	e8 5f 50 e4 ff       	call   0x531f70
  6ecf11:	2b 86 68 03 00 00    	sub    eax,DWORD PTR [esi+0x368]
  6ecf17:	89 86 68 03 00 00    	mov    DWORD PTR [esi+0x368],eax
  6ecf1d:	5f                   	pop    edi
  6ecf1e:	5e                   	pop    esi
  6ecf1f:	5b                   	pop    ebx
  6ecf20:	8b e5                	mov    esp,ebp
  6ecf22:	5d                   	pop    ebp
  6ecf23:	c3                   	ret
