# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00b60750, 0x00b60cc6); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00b60750 <.text+0x75f750>:
  b60750:	55                   	push   ebp
  b60751:	8b ec                	mov    ebp,esp
  b60753:	83 e4 f0             	and    esp,0xfffffff0
  b60756:	81 ec e4 00 00 00    	sub    esp,0xe4
  b6075c:	53                   	push   ebx
  b6075d:	56                   	push   esi
  b6075e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b60761:	b8 56 55 55 55       	mov    eax,0x55555556
  b60766:	f7 ee                	imul   esi
  b60768:	8b c2                	mov    eax,edx
  b6076a:	c1 e8 1f             	shr    eax,0x1f
  b6076d:	8b d9                	mov    ebx,ecx
  b6076f:	03 c2                	add    eax,edx
  b60771:	8d 04 40             	lea    eax,[eax+eax*2]
  b60774:	8b ce                	mov    ecx,esi
  b60776:	2b c8                	sub    ecx,eax
  b60778:	57                   	push   edi
  b60779:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  b6077d:	74 0b                	je     0xb6078a
  b6077f:	32 c0                	xor    al,al
  b60781:	5f                   	pop    edi
  b60782:	5e                   	pop    esi
  b60783:	5b                   	pop    ebx
  b60784:	8b e5                	mov    esp,ebp
  b60786:	5d                   	pop    ebp
  b60787:	c2 0c 00             	ret    0xc
  b6078a:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  b60791:	00 
  b60792:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  b60797:	f7 e6                	mul    esi
  b60799:	33 ff                	xor    edi,edi
  b6079b:	d1 ea                	shr    edx,1
  b6079d:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  b607a3:	f3 0f 10 05 88 fd 03 	movss  xmm0,DWORD PTR ds:0x103fd88
  b607aa:	01 
  b607ab:	b9 00 d9 14 01       	mov    ecx,0x114d900
  b607b0:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  b607b6:	c7 44 24 5c 20 f1 06 	mov    DWORD PTR [esp+0x5c],0x106f120
  b607bd:	01 
  b607be:	c7 44 24 48 01 00 00 	mov    DWORD PTR [esp+0x48],0x1
  b607c5:	00 
  b607c6:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
  b607ca:	89 7c 24 4c          	mov    DWORD PTR [esp+0x4c],edi
  b607ce:	89 7c 24 58          	mov    DWORD PTR [esp+0x58],edi
  b607d2:	89 33                	mov    DWORD PTR [ebx],esi
  b607d4:	0f 84 d1 01 00 00    	je     0xb609ab
  b607da:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  b607dd:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  b607e1:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  b607e5:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  b607e9:	8d bc 24 d4 00 00 00 	lea    edi,[esp+0xd4]
  b607f0:	c7 44 24 18 03 00 00 	mov    DWORD PTR [esp+0x18],0x3
  b607f7:	00 
  b607f8:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  b607fb:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  b607fe:	52                   	push   edx
  b607ff:	8d 5f f8             	lea    ebx,[edi-0x8]
  b60802:	53                   	push   ebx
  b60803:	50                   	push   eax
  b60804:	e8 d7 d0 97 ff       	call   0x4dd8e0
  b60809:	83 c4 0c             	add    esp,0xc
  b6080c:	8b ce                	mov    ecx,esi
  b6080e:	50                   	push   eax
  b6080f:	e8 dc 71 c7 ff       	call   0x7d79f0
  b60814:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  b60817:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  b6081a:	51                   	push   ecx
  b6081b:	8d 47 fa             	lea    eax,[edi-0x6]
  b6081e:	50                   	push   eax
  b6081f:	52                   	push   edx
  b60820:	e8 bb d0 97 ff       	call   0x4dd8e0
  b60825:	83 c4 0c             	add    esp,0xc
  b60828:	8b ce                	mov    ecx,esi
  b6082a:	50                   	push   eax
  b6082b:	e8 c0 71 c7 ff       	call   0x7d79f0
  b60830:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  b60833:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  b60836:	50                   	push   eax
  b60837:	8d 4f fc             	lea    ecx,[edi-0x4]
  b6083a:	51                   	push   ecx
  b6083b:	52                   	push   edx
  b6083c:	e8 9f d0 97 ff       	call   0x4dd8e0
  b60841:	83 c4 0c             	add    esp,0xc
  b60844:	8b ce                	mov    ecx,esi
  b60846:	50                   	push   eax
  b60847:	e8 a4 71 c7 ff       	call   0x7d79f0
  b6084c:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  b6084f:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  b60852:	51                   	push   ecx
  b60853:	8d 47 fe             	lea    eax,[edi-0x2]
  b60856:	50                   	push   eax
  b60857:	52                   	push   edx
  b60858:	e8 83 d0 97 ff       	call   0x4dd8e0
  b6085d:	83 c4 0c             	add    esp,0xc
  b60860:	8b ce                	mov    ecx,esi
  b60862:	50                   	push   eax
  b60863:	e8 88 71 c7 ff       	call   0x7d79f0
  b60868:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  b6086b:	57                   	push   edi
  b6086c:	50                   	push   eax
  b6086d:	e8 1e d0 97 ff       	call   0x4dd890
  b60872:	83 c4 08             	add    esp,0x8
  b60875:	8b ce                	mov    ecx,esi
  b60877:	50                   	push   eax
  b60878:	e8 73 71 c7 ff       	call   0x7d79f0
  b6087d:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  b60880:	8d 4f 01             	lea    ecx,[edi+0x1]
  b60883:	51                   	push   ecx
  b60884:	52                   	push   edx
  b60885:	e8 06 d0 97 ff       	call   0x4dd890
  b6088a:	83 c4 08             	add    esp,0x8
  b6088d:	8b ce                	mov    ecx,esi
  b6088f:	50                   	push   eax
  b60890:	e8 5b 71 c7 ff       	call   0x7d79f0
  b60895:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  b60898:	8d 47 02             	lea    eax,[edi+0x2]
  b6089b:	50                   	push   eax
  b6089c:	51                   	push   ecx
  b6089d:	e8 ee cf 97 ff       	call   0x4dd890
  b608a2:	83 c4 08             	add    esp,0x8
  b608a5:	8b ce                	mov    ecx,esi
  b608a7:	50                   	push   eax
  b608a8:	e8 43 71 c7 ff       	call   0x7d79f0
  b608ad:	0f bf 03             	movsx  eax,WORD PTR [ebx]
  b608b0:	0f bf 4f fe          	movsx  ecx,WORD PTR [edi-0x2]
  b608b4:	99                   	cdq
  b608b5:	f7 f9                	idiv   ecx
  b608b7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  b608bb:	8d 84 02 00 20 00 00 	lea    eax,[edx+eax*1+0x2000]
  b608c2:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  b608c6:	0f bf 47 fa          	movsx  eax,WORD PTR [edi-0x6]
  b608ca:	99                   	cdq
  b608cb:	f7 f9                	idiv   ecx
  b608cd:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  b608d1:	8d 94 01 00 20 00 00 	lea    edx,[ecx+eax*1+0x2000]
  b608d8:	83 c7 0c             	add    edi,0xc
  b608db:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  b608e0:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  b608e4:	0f 85 0e ff ff ff    	jne    0xb607f8
  b608ea:	a1 34 49 18 01       	mov    eax,ds:0x1184934
  b608ef:	8d 0c 40             	lea    ecx,[eax+eax*2]
  b608f2:	8b c2                	mov    eax,edx
  b608f4:	99                   	cdq
  b608f5:	f7 f9                	idiv   ecx
  b608f7:	8b f8                	mov    edi,eax
  b608f9:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  b608fd:	99                   	cdq
  b608fe:	f7 f9                	idiv   ecx
  b60900:	c1 e7 0d             	shl    edi,0xd
  b60903:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  b60907:	03 f8                	add    edi,eax
  b60909:	8d 44 24 18          	lea    eax,[esp+0x18]
  b6090d:	50                   	push   eax
  b6090e:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  b60912:	e8 59 fd ff ff       	call   0xb60670
  b60917:	8b d8                	mov    ebx,eax
  b60919:	8d bc 24 cc 00 00 00 	lea    edi,[esp+0xcc]
  b60920:	c7 44 24 18 03 00 00 	mov    DWORD PTR [esp+0x18],0x3
  b60927:	00 
  b60928:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  b6092b:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
  b6092e:	73 1c                	jae    0xb6094c
  b60930:	85 c0                	test   eax,eax
  b60932:	8d 48 0c             	lea    ecx,[eax+0xc]
  b60935:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  b60938:	74 1b                	je     0xb60955
  b6093a:	8b 17                	mov    edx,DWORD PTR [edi]
  b6093c:	89 10                	mov    DWORD PTR [eax],edx
  b6093e:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  b60941:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  b60944:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  b60947:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  b6094a:	eb 09                	jmp    0xb60955
  b6094c:	57                   	push   edi
  b6094d:	50                   	push   eax
  b6094e:	8b cb                	mov    ecx,ebx
  b60950:	e8 4b f7 20 00       	call   0xd700a0
  b60955:	0f bf 4f 02          	movsx  ecx,WORD PTR [edi+0x2]
  b60959:	d9 ee                	fldz
  b6095b:	0f bf 47 06          	movsx  eax,WORD PTR [edi+0x6]
  b6095f:	0f bf 17             	movsx  edx,WORD PTR [edi]
  b60962:	83 ec 0c             	sub    esp,0xc
  b60965:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  b60969:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  b6096d:	f3 0f 5e c8          	divss  xmm1,xmm0
  b60971:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  b60977:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b6097b:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  b6097f:	f3 0f 5e c8          	divss  xmm1,xmm0
  b60983:	8d 4b 10             	lea    ecx,[ebx+0x10]
  b60986:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  b6098b:	e8 50 b5 b2 ff       	call   0x68bee0
  b60990:	83 c7 0c             	add    edi,0xc
  b60993:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  b60998:	75 8e                	jne    0xb60928
  b6099a:	33 ff                	xor    edi,edi
  b6099c:	83 6c 24 24 01       	sub    DWORD PTR [esp+0x24],0x1
  b609a1:	0f 85 3a fe ff ff    	jne    0xb607e1
  b609a7:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  b609ab:	8b 31                	mov    esi,DWORD PTR [ecx]
  b609ad:	3b f7                	cmp    esi,edi
  b609af:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  b609b3:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  b609b7:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  b609bb:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  b609bf:	c7 44 24 3c 04 f1 06 	mov    DWORD PTR [esp+0x3c],0x106f104
  b609c6:	01 
  b609c7:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  b609cb:	75 20                	jne    0xb609ed
  b609cd:	39 79 04             	cmp    DWORD PTR [ecx+0x4],edi
  b609d0:	8d 41 04             	lea    eax,[ecx+0x4]
  b609d3:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  b609d7:	75 12                	jne    0xb609eb
  b609d9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b609e0:	83 c0 04             	add    eax,0x4
  b609e3:	39 38                	cmp    DWORD PTR [eax],edi
  b609e5:	74 f9                	je     0xb609e0
  b609e7:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  b609eb:	8b 30                	mov    esi,DWORD PTR [eax]
  b609ed:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  b609f1:	8b 0c 81             	mov    ecx,DWORD PTR [ecx+eax*4]
  b609f4:	3b f1                	cmp    esi,ecx
  b609f6:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  b609fa:	0f 84 71 01 00 00    	je     0xb60b71
  b60a00:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
  b60a03:	8b 7e 10             	mov    edi,DWORD PTR [esi+0x10]
  b60a06:	8b cb                	mov    ecx,ebx
  b60a08:	2b cf                	sub    ecx,edi
  b60a0a:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  b60a0f:	f7 e9                	imul   ecx
  b60a11:	d1 fa                	sar    edx,1
  b60a13:	8b ca                	mov    ecx,edx
  b60a15:	c1 e9 1f             	shr    ecx,0x1f
  b60a18:	03 ca                	add    ecx,edx
  b60a1a:	83 f9 64             	cmp    ecx,0x64
  b60a1d:	0f 86 01 01 00 00    	jbe    0xb60b24
  b60a23:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  b60a27:	0f 28 56 30          	movaps xmm2,XMMWORD PTR [esi+0x30]
  b60a2b:	f3 0f 10 1d f0 c6 fc 	movss  xmm3,DWORD PTR ds:0xfcc6f0
  b60a32:	00 
  b60a33:	0f 28 4e 20          	movaps xmm1,XMMWORD PTR [esi+0x20]
  b60a37:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
  b60a3e:	03 c1                	add    eax,ecx
  b60a40:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  b60a44:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  b60a49:	f7 e1                	mul    ecx
  b60a4b:	0f 28 e2             	movaps xmm4,xmm2
  b60a4e:	0f c6 e2 55          	shufps xmm4,xmm2,0x55
  b60a52:	0f 28 c2             	movaps xmm0,xmm2
  b60a55:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  b60a59:	0f 58 e3             	addps  xmm4,xmm3
  b60a5c:	0f c6 c4 50          	shufps xmm0,xmm4,0x50
  b60a60:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  b60a64:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm0
  b60a6b:	00 
  b60a6c:	0f 28 d1             	movaps xmm2,xmm1
  b60a6f:	0f c6 d1 55          	shufps xmm2,xmm1,0x55
  b60a73:	0f 5c d3             	subps  xmm2,xmm3
  b60a76:	0f 28 c1             	movaps xmm0,xmm1
  b60a79:	d1 ea                	shr    edx,1
  b60a7b:	3b fb                	cmp    edi,ebx
  b60a7d:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  b60a81:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  b60a85:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [esp+0x90],xmm0
  b60a8c:	00 
  b60a8d:	89 94 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],edx
  b60a94:	74 35                	je     0xb60acb
  b60a96:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  b60a99:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  b60a9c:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  b60a9f:	73 1c                	jae    0xb60abd
  b60aa1:	85 c0                	test   eax,eax
  b60aa3:	8d 50 0c             	lea    edx,[eax+0xc]
  b60aa6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  b60aa9:	74 19                	je     0xb60ac4
  b60aab:	8b 0f                	mov    ecx,DWORD PTR [edi]
  b60aad:	89 08                	mov    DWORD PTR [eax],ecx
  b60aaf:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  b60ab2:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  b60ab5:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  b60ab8:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  b60abb:	eb 07                	jmp    0xb60ac4
  b60abd:	57                   	push   edi
  b60abe:	50                   	push   eax
  b60abf:	e8 dc f5 20 00       	call   0xd700a0
  b60ac4:	83 c7 0c             	add    edi,0xc
  b60ac7:	3b fb                	cmp    edi,ebx
  b60ac9:	75 cb                	jne    0xb60a96
  b60acb:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  b60acf:	8b 81 80 00 00 00    	mov    eax,DWORD PTR [ecx+0x80]
  b60ad5:	83 c1 7c             	add    ecx,0x7c
  b60ad8:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  b60adb:	73 37                	jae    0xb60b14
  b60add:	85 c0                	test   eax,eax
  b60adf:	8d 50 30             	lea    edx,[eax+0x30]
  b60ae2:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  b60ae5:	74 65                	je     0xb60b4c
  b60ae7:	0f 28 84 24 90 00 00 	movaps xmm0,XMMWORD PTR [esp+0x90]
  b60aee:	00 
  b60aef:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  b60af2:	0f 28 84 24 a0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xa0]
  b60af9:	00 
  b60afa:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  b60afe:	8b 8c 24 b0 00 00 00 	mov    ecx,DWORD PTR [esp+0xb0]
  b60b05:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  b60b08:	8b 94 24 b4 00 00 00 	mov    edx,DWORD PTR [esp+0xb4]
  b60b0f:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
  b60b12:	eb 38                	jmp    0xb60b4c
  b60b14:	8d 94 24 90 00 00 00 	lea    edx,[esp+0x90]
  b60b1b:	52                   	push   edx
  b60b1c:	50                   	push   eax
  b60b1d:	e8 5e e3 ff ff       	call   0xb5ee80
  b60b22:	eb 28                	jmp    0xb60b4c
  b60b24:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  b60b28:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  b60b2c:	73 13                	jae    0xb60b41
  b60b2e:	8b c8                	mov    ecx,eax
  b60b30:	83 c0 04             	add    eax,0x4
  b60b33:	85 c9                	test   ecx,ecx
  b60b35:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  b60b39:	74 11                	je     0xb60b4c
  b60b3b:	8b 06                	mov    eax,DWORD PTR [esi]
  b60b3d:	89 01                	mov    DWORD PTR [ecx],eax
  b60b3f:	eb 0b                	jmp    0xb60b4c
  b60b41:	56                   	push   esi
  b60b42:	50                   	push   eax
  b60b43:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  b60b47:	e8 d4 18 e2 ff       	call   0x982420
  b60b4c:	8b 76 40             	mov    esi,DWORD PTR [esi+0x40]
  b60b4f:	85 f6                	test   esi,esi
  b60b51:	75 12                	jne    0xb60b65
  b60b53:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  b60b57:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  b60b5a:	83 c0 04             	add    eax,0x4
  b60b5d:	85 f6                	test   esi,esi
  b60b5f:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  b60b63:	74 ee                	je     0xb60b53
  b60b65:	3b 74 24 18          	cmp    esi,DWORD PTR [esp+0x18]
  b60b69:	0f 85 91 fe ff ff    	jne    0xb60a00
  b60b6f:	33 ff                	xor    edi,edi
  b60b71:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  b60b75:	e8 c6 b3 b2 ff       	call   0x68bf40
  b60b7a:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
  b60b7e:	3b 5c 24 34          	cmp    ebx,DWORD PTR [esp+0x34]
  b60b82:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  b60b86:	89 bc 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edi
  b60b8d:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  b60b94:	0f 84 e1 00 00 00    	je     0xb60c7b
  b60b9a:	53                   	push   ebx
  b60b9b:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b60b9f:	e8 cc fa ff ff       	call   0xb60670
  b60ba4:	8b f0                	mov    esi,eax
  b60ba6:	8d 56 10             	lea    edx,[esi+0x10]
  b60ba9:	52                   	push   edx
  b60baa:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  b60bae:	e8 6d b2 b2 ff       	call   0x68be20
  b60bb3:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b60bb6:	2b 0e                	sub    ecx,DWORD PTR [esi]
  b60bb8:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  b60bbd:	f7 e9                	imul   ecx
  b60bbf:	d1 fa                	sar    edx,1
  b60bc1:	8b ca                	mov    ecx,edx
  b60bc3:	c1 e9 1f             	shr    ecx,0x1f
  b60bc6:	03 ca                	add    ecx,edx
  b60bc8:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  b60bcd:	f7 e1                	mul    ecx
  b60bcf:	d1 ea                	shr    edx,1
  b60bd1:	01 94 24 84 00 00 00 	add    DWORD PTR [esp+0x84],edx
  b60bd8:	8b 3e                	mov    edi,DWORD PTR [esi]
  b60bda:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  b60bdd:	3b fe                	cmp    edi,esi
  b60bdf:	74 35                	je     0xb60c16
  b60be1:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  b60be4:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  b60be7:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  b60bea:	73 1c                	jae    0xb60c08
  b60bec:	85 c0                	test   eax,eax
  b60bee:	8d 50 0c             	lea    edx,[eax+0xc]
  b60bf1:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  b60bf4:	74 19                	je     0xb60c0f
  b60bf6:	8b 0f                	mov    ecx,DWORD PTR [edi]
  b60bf8:	89 08                	mov    DWORD PTR [eax],ecx
  b60bfa:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  b60bfd:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  b60c00:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  b60c03:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  b60c06:	eb 07                	jmp    0xb60c0f
  b60c08:	57                   	push   edi
  b60c09:	50                   	push   eax
  b60c0a:	e8 91 f4 20 00       	call   0xd700a0
  b60c0f:	83 c7 0c             	add    edi,0xc
  b60c12:	3b fe                	cmp    edi,esi
  b60c14:	75 cb                	jne    0xb60be1
  b60c16:	83 c3 04             	add    ebx,0x4
  b60c19:	3b 5c 24 34          	cmp    ebx,DWORD PTR [esp+0x34]
  b60c1d:	0f 85 77 ff ff ff    	jne    0xb60b9a
  b60c23:	83 bc 24 84 00 00 00 	cmp    DWORD PTR [esp+0x84],0x0
  b60c2a:	00 
  b60c2b:	76 4e                	jbe    0xb60c7b
  b60c2d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  b60c31:	8b 81 80 00 00 00    	mov    eax,DWORD PTR [ecx+0x80]
  b60c37:	83 c1 7c             	add    ecx,0x7c
  b60c3a:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  b60c3d:	73 31                	jae    0xb60c70
  b60c3f:	85 c0                	test   eax,eax
  b60c41:	8d 50 30             	lea    edx,[eax+0x30]
  b60c44:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  b60c47:	74 32                	je     0xb60c7b
  b60c49:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  b60c4e:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  b60c51:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  b60c56:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  b60c5a:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  b60c61:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  b60c64:	8b 94 24 84 00 00 00 	mov    edx,DWORD PTR [esp+0x84]
  b60c6b:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
  b60c6e:	eb 0b                	jmp    0xb60c7b
  b60c70:	8d 54 24 60          	lea    edx,[esp+0x60]
  b60c74:	52                   	push   edx
  b60c75:	50                   	push   eax
  b60c76:	e8 05 e2 ff ff       	call   0xb5ee80
  b60c7b:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  b60c7f:	85 c0                	test   eax,eax
  b60c81:	74 09                	je     0xb60c8c
  b60c83:	50                   	push   eax
  b60c84:	e8 57 38 98 ff       	call   0x4e44e0
  b60c89:	83 c4 04             	add    esp,0x4
  b60c8c:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  b60c90:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  b60c94:	50                   	push   eax
  b60c95:	51                   	push   ecx
  b60c96:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  b60c9a:	e8 c1 e3 ff ff       	call   0xb5f060
  b60c9f:	83 7c 24 48 01       	cmp    DWORD PTR [esp+0x48],0x1
  b60ca4:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [esp+0x4c],0x0
  b60cab:	00 
  b60cac:	76 0d                	jbe    0xb60cbb
  b60cae:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  b60cb2:	52                   	push   edx
  b60cb3:	e8 28 38 98 ff       	call   0x4e44e0
  b60cb8:	83 c4 04             	add    esp,0x4
  b60cbb:	5f                   	pop    edi
  b60cbc:	5e                   	pop    esi
  b60cbd:	b0 01                	mov    al,0x1
  b60cbf:	5b                   	pop    ebx
  b60cc0:	8b e5                	mov    esp,ebp
  b60cc2:	5d                   	pop    ebp
  b60cc3:	c2 0c 00             	ret    0xc
