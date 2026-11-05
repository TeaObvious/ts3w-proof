# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009747f0, 0x00974d7b).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

009747f0 <.text+0x5737f0>:
  9747f0:	55                   	push   ebp
  9747f1:	8b ec                	mov    ebp,esp
  9747f3:	83 e4 f0             	and    esp,0xfffffff0
  9747f6:	83 ec 24             	sub    esp,0x24
  9747f9:	53                   	push   ebx
  9747fa:	8b d9                	mov    ebx,ecx
  9747fc:	80 7b 14 00          	cmp    BYTE PTR [ebx+0x14],0x0
  974800:	56                   	push   esi
  974801:	57                   	push   edi
  974802:	0f 84 6a 05 00 00    	je     0x974d72
  974808:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  97480f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  974812:	f3 0f 10 40 10       	movss  xmm0,DWORD PTR [eax+0x10]
  974817:	0f 57 c9             	xorps  xmm1,xmm1
  97481a:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  974820:	74 09                	je     0x97482b
  974822:	0f 28 c1             	movaps xmm0,xmm1
  974825:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  97482b:	8a 40 18             	mov    al,BYTE PTR [eax+0x18]
  97482e:	3c 01                	cmp    al,0x1
  974830:	0f 94 c1             	sete   cl
  974833:	3c 04                	cmp    al,0x4
  974835:	0f 94 44 24 17       	sete   BYTE PTR [esp+0x17]
  97483a:	3c 02                	cmp    al,0x2
  97483c:	0f 94 c2             	sete   dl
  97483f:	33 ff                	xor    edi,edi
  974841:	84 d2                	test   dl,dl
  974843:	74 07                	je     0x97484c
  974845:	bf 01 00 00 00       	mov    edi,0x1
  97484a:	eb 09                	jmp    0x974855
  97484c:	84 c9                	test   cl,cl
  97484e:	74 05                	je     0x974855
  974850:	bf 02 00 00 00       	mov    edi,0x2
  974855:	33 f6                	xor    esi,esi
  974857:	84 c9                	test   cl,cl
  974859:	74 08                	je     0x974863
  97485b:	8d b3 40 02 00 00    	lea    esi,[ebx+0x240]
  974861:	eb 16                	jmp    0x974879
  974863:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  974868:	74 05                	je     0x97486f
  97486a:	8d 73 40             	lea    esi,[ebx+0x40]
  97486d:	eb 0a                	jmp    0x974879
  97486f:	84 d2                	test   dl,dl
  974871:	74 06                	je     0x974879
  974873:	8d b3 40 01 00 00    	lea    esi,[ebx+0x140]
  974879:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  97487c:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  97487f:	81 f9 00 10 54 02    	cmp    ecx,0x2541000
  974885:	0f 87 d6 03 00 00    	ja     0x974c61
  97488b:	0f 84 81 03 00 00    	je     0x974c12
  974891:	81 e9 00 00 54 02    	sub    ecx,0x2540000
  974897:	83 f9 0e             	cmp    ecx,0xe
  97489a:	0f 87 d2 04 00 00    	ja     0x974d72
  9748a0:	ff 24 8d 7c 4d 97 00 	jmp    DWORD PTR [ecx*4+0x974d7c]
  9748a7:	0f 28 46 70          	movaps xmm0,XMMWORD PTR [esi+0x70]
  9748ab:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  9748af:	0f be d0             	movsx  edx,al
  9748b2:	52                   	push   edx
  9748b3:	51                   	push   ecx
  9748b4:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  9748b9:	d9 1c 24             	fstp   DWORD PTR [esp]
  9748bc:	e8 3f 13 ff ff       	call   0x965c00
  9748c1:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  9748c5:	0f 28 44 24 28       	movaps xmm0,XMMWORD PTR [esp+0x28]
  9748ca:	83 c4 08             	add    esp,0x8
  9748cd:	0f 29 46 70          	movaps XMMWORD PTR [esi+0x70],xmm0
  9748d1:	5f                   	pop    edi
  9748d2:	5e                   	pop    esi
  9748d3:	5b                   	pop    ebx
  9748d4:	8b e5                	mov    esp,ebp
  9748d6:	5d                   	pop    ebp
  9748d7:	c2 08 00             	ret    0x8
  9748da:	0f 28 46 40          	movaps xmm0,XMMWORD PTR [esi+0x40]
  9748de:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  9748e2:	0f be c0             	movsx  eax,al
  9748e5:	50                   	push   eax
  9748e6:	51                   	push   ecx
  9748e7:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  9748ec:	d9 1c 24             	fstp   DWORD PTR [esp]
  9748ef:	e8 0c 13 ff ff       	call   0x965c00
  9748f4:	d9 e0                	fchs
  9748f6:	83 c4 08             	add    esp,0x8
  9748f9:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  9748fd:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  974902:	0f 29 46 40          	movaps XMMWORD PTR [esi+0x40],xmm0
  974906:	5f                   	pop    edi
  974907:	5e                   	pop    esi
  974908:	5b                   	pop    ebx
  974909:	8b e5                	mov    esp,ebp
  97490b:	5d                   	pop    ebp
  97490c:	c2 08 00             	ret    0x8
  97490f:	0f 28 46 40          	movaps xmm0,XMMWORD PTR [esi+0x40]
  974913:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974917:	0f be c8             	movsx  ecx,al
  97491a:	51                   	push   ecx
  97491b:	51                   	push   ecx
  97491c:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974921:	d9 1c 24             	fstp   DWORD PTR [esp]
  974924:	e8 d7 12 ff ff       	call   0x965c00
  974929:	d9 e0                	fchs
  97492b:	83 c4 08             	add    esp,0x8
  97492e:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  974932:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  974937:	0f 29 46 40          	movaps XMMWORD PTR [esi+0x40],xmm0
  97493b:	5f                   	pop    edi
  97493c:	5e                   	pop    esi
  97493d:	5b                   	pop    ebx
  97493e:	8b e5                	mov    esp,ebp
  974940:	5d                   	pop    ebp
  974941:	c2 08 00             	ret    0x8
  974944:	0f 28 46 70          	movaps xmm0,XMMWORD PTR [esi+0x70]
  974948:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  97494c:	0f be d0             	movsx  edx,al
  97494f:	52                   	push   edx
  974950:	51                   	push   ecx
  974951:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974956:	d9 1c 24             	fstp   DWORD PTR [esp]
  974959:	e8 a2 12 ff ff       	call   0x965c00
  97495e:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  974962:	0f 28 44 24 28       	movaps xmm0,XMMWORD PTR [esp+0x28]
  974967:	83 c4 08             	add    esp,0x8
  97496a:	0f 29 46 70          	movaps XMMWORD PTR [esi+0x70],xmm0
  97496e:	5f                   	pop    edi
  97496f:	5e                   	pop    esi
  974970:	5b                   	pop    ebx
  974971:	8b e5                	mov    esp,ebp
  974973:	5d                   	pop    ebp
  974974:	c2 08 00             	ret    0x8
  974977:	0f 28 46 40          	movaps xmm0,XMMWORD PTR [esi+0x40]
  97497b:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  97497f:	0f be c0             	movsx  eax,al
  974982:	50                   	push   eax
  974983:	51                   	push   ecx
  974984:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974989:	d9 1c 24             	fstp   DWORD PTR [esp]
  97498c:	e8 6f 12 ff ff       	call   0x965c00
  974991:	d9 e0                	fchs
  974993:	83 c4 08             	add    esp,0x8
  974996:	d9 5c 24 24          	fstp   DWORD PTR [esp+0x24]
  97499a:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  97499f:	0f 29 46 40          	movaps XMMWORD PTR [esi+0x40],xmm0
  9749a3:	5f                   	pop    edi
  9749a4:	5e                   	pop    esi
  9749a5:	5b                   	pop    ebx
  9749a6:	8b e5                	mov    esp,ebp
  9749a8:	5d                   	pop    ebp
  9749a9:	c2 08 00             	ret    0x8
  9749ac:	0f 28 46 70          	movaps xmm0,XMMWORD PTR [esi+0x70]
  9749b0:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  9749b4:	0f be c8             	movsx  ecx,al
  9749b7:	51                   	push   ecx
  9749b8:	51                   	push   ecx
  9749b9:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  9749be:	d9 1c 24             	fstp   DWORD PTR [esp]
  9749c1:	e8 3a 12 ff ff       	call   0x965c00
  9749c6:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  9749ca:	0f 28 44 24 28       	movaps xmm0,XMMWORD PTR [esp+0x28]
  9749cf:	83 c4 08             	add    esp,0x8
  9749d2:	0f 29 46 70          	movaps XMMWORD PTR [esi+0x70],xmm0
  9749d6:	5f                   	pop    edi
  9749d7:	5e                   	pop    esi
  9749d8:	5b                   	pop    ebx
  9749d9:	8b e5                	mov    esp,ebp
  9749db:	5d                   	pop    ebp
  9749dc:	c2 08 00             	ret    0x8
  9749df:	0f 28 46 50          	movaps xmm0,XMMWORD PTR [esi+0x50]
  9749e3:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  9749e7:	0f be d0             	movsx  edx,al
  9749ea:	52                   	push   edx
  9749eb:	51                   	push   ecx
  9749ec:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  9749f1:	d9 1c 24             	fstp   DWORD PTR [esp]
  9749f4:	e8 07 13 ff ff       	call   0x965d00
  9749f9:	6a 00                	push   0x0
  9749fb:	d9 e0                	fchs
  9749fd:	57                   	push   edi
  9749fe:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  974a02:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  974a07:	6a 02                	push   0x2
  974a09:	0f 29 46 50          	movaps XMMWORD PTR [esi+0x50],xmm0
  974a0d:	e8 6e de e1 ff       	call   0x792880
  974a12:	83 c4 14             	add    esp,0x14
  974a15:	5f                   	pop    edi
  974a16:	5e                   	pop    esi
  974a17:	5b                   	pop    ebx
  974a18:	8b e5                	mov    esp,ebp
  974a1a:	5d                   	pop    ebp
  974a1b:	c2 08 00             	ret    0x8
  974a1e:	0f 28 86 80 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0x80]
  974a25:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974a29:	0f be c0             	movsx  eax,al
  974a2c:	50                   	push   eax
  974a2d:	51                   	push   ecx
  974a2e:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974a33:	d9 1c 24             	fstp   DWORD PTR [esp]
  974a36:	e8 c5 12 ff ff       	call   0x965d00
  974a3b:	6a 00                	push   0x0
  974a3d:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  974a41:	0f 28 44 24 2c       	movaps xmm0,XMMWORD PTR [esp+0x2c]
  974a46:	57                   	push   edi
  974a47:	6a 02                	push   0x2
  974a49:	0f 29 86 80 00 00 00 	movaps XMMWORD PTR [esi+0x80],xmm0
  974a50:	e8 2b de e1 ff       	call   0x792880
  974a55:	83 c4 14             	add    esp,0x14
  974a58:	5f                   	pop    edi
  974a59:	5e                   	pop    esi
  974a5a:	5b                   	pop    ebx
  974a5b:	8b e5                	mov    esp,ebp
  974a5d:	5d                   	pop    ebp
  974a5e:	c2 08 00             	ret    0x8
  974a61:	0f 28 86 80 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0x80]
  974a68:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974a6c:	0f be c8             	movsx  ecx,al
  974a6f:	51                   	push   ecx
  974a70:	51                   	push   ecx
  974a71:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974a76:	d9 1c 24             	fstp   DWORD PTR [esp]
  974a79:	e8 82 12 ff ff       	call   0x965d00
  974a7e:	6a 00                	push   0x0
  974a80:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  974a84:	0f 28 44 24 2c       	movaps xmm0,XMMWORD PTR [esp+0x2c]
  974a89:	57                   	push   edi
  974a8a:	6a 01                	push   0x1
  974a8c:	0f 29 86 80 00 00 00 	movaps XMMWORD PTR [esi+0x80],xmm0
  974a93:	e8 e8 dd e1 ff       	call   0x792880
  974a98:	83 c4 14             	add    esp,0x14
  974a9b:	5f                   	pop    edi
  974a9c:	5e                   	pop    esi
  974a9d:	5b                   	pop    ebx
  974a9e:	8b e5                	mov    esp,ebp
  974aa0:	5d                   	pop    ebp
  974aa1:	c2 08 00             	ret    0x8
  974aa4:	0f 28 46 50          	movaps xmm0,XMMWORD PTR [esi+0x50]
  974aa8:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974aac:	0f be d0             	movsx  edx,al
  974aaf:	52                   	push   edx
  974ab0:	51                   	push   ecx
  974ab1:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974ab6:	d9 1c 24             	fstp   DWORD PTR [esp]
  974ab9:	e8 42 12 ff ff       	call   0x965d00
  974abe:	6a 00                	push   0x0
  974ac0:	d9 e0                	fchs
  974ac2:	57                   	push   edi
  974ac3:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  974ac7:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  974acc:	6a 01                	push   0x1
  974ace:	0f 29 46 50          	movaps XMMWORD PTR [esi+0x50],xmm0
  974ad2:	e8 a9 dd e1 ff       	call   0x792880
  974ad7:	83 c4 14             	add    esp,0x14
  974ada:	5f                   	pop    edi
  974adb:	5e                   	pop    esi
  974adc:	5b                   	pop    ebx
  974add:	8b e5                	mov    esp,ebp
  974adf:	5d                   	pop    ebp
  974ae0:	c2 08 00             	ret    0x8
  974ae3:	84 d2                	test   dl,dl
  974ae5:	74 2e                	je     0x974b15
  974ae7:	f3 0f 59 05 f8 92 fe 	mulss  xmm0,DWORD PTR ds:0xfe92f8
  974aee:	00
  974aef:	f3 0f 58 86 f0 00 00 	addss  xmm0,DWORD PTR [esi+0xf0]
  974af6:	00
  974af7:	6a 00                	push   0x0
  974af9:	57                   	push   edi
  974afa:	6a 03                	push   0x3
  974afc:	f3 0f 11 86 f0 00 00 	movss  DWORD PTR [esi+0xf0],xmm0
  974b03:	00
  974b04:	e8 77 dd e1 ff       	call   0x792880
  974b09:	83 c4 0c             	add    esp,0xc
  974b0c:	5f                   	pop    edi
  974b0d:	5e                   	pop    esi
  974b0e:	5b                   	pop    ebx
  974b0f:	8b e5                	mov    esp,ebp
  974b11:	5d                   	pop    ebp
  974b12:	c2 08 00             	ret    0x8
  974b15:	6a 00                	push   0x0
  974b17:	57                   	push   edi
  974b18:	6a 03                	push   0x3
  974b1a:	f3 0f 11 86 90 00 00 	movss  DWORD PTR [esi+0x90],xmm0
  974b21:	00
  974b22:	e8 59 dd e1 ff       	call   0x792880
  974b27:	83 c4 0c             	add    esp,0xc
  974b2a:	5f                   	pop    edi
  974b2b:	5e                   	pop    esi
  974b2c:	5b                   	pop    ebx
  974b2d:	8b e5                	mov    esp,ebp
  974b2f:	5d                   	pop    ebp
  974b30:	c2 08 00             	ret    0x8
  974b33:	84 d2                	test   dl,dl
  974b35:	74 32                	je     0x974b69
  974b37:	f3 0f 10 8e c0 00 00 	movss  xmm1,DWORD PTR [esi+0xc0]
  974b3e:	00
  974b3f:	f3 0f 59 05 f8 92 fe 	mulss  xmm0,DWORD PTR ds:0xfe92f8
  974b46:	00
  974b47:	6a 00                	push   0x0
  974b49:	57                   	push   edi
  974b4a:	f3 0f 5c c8          	subss  xmm1,xmm0
  974b4e:	6a 03                	push   0x3
  974b50:	f3 0f 11 8e c0 00 00 	movss  DWORD PTR [esi+0xc0],xmm1
  974b57:	00
  974b58:	e8 23 dd e1 ff       	call   0x792880
  974b5d:	83 c4 0c             	add    esp,0xc
  974b60:	5f                   	pop    edi
  974b61:	5e                   	pop    esi
  974b62:	5b                   	pop    ebx
  974b63:	8b e5                	mov    esp,ebp
  974b65:	5d                   	pop    ebp
  974b66:	c2 08 00             	ret    0x8
  974b69:	f3 0f 10 0d f0 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f0
  974b70:	00
  974b71:	6a 00                	push   0x0
  974b73:	57                   	push   edi
  974b74:	f3 0f 5c c8          	subss  xmm1,xmm0
  974b78:	6a 03                	push   0x3
  974b7a:	f3 0f 11 4e 60       	movss  DWORD PTR [esi+0x60],xmm1
  974b7f:	e8 fc dc e1 ff       	call   0x792880
  974b84:	83 c4 0c             	add    esp,0xc
  974b87:	5f                   	pop    edi
  974b88:	5e                   	pop    esi
  974b89:	5b                   	pop    ebx
  974b8a:	8b e5                	mov    esp,ebp
  974b8c:	5d                   	pop    ebp
  974b8d:	c2 08 00             	ret    0x8
  974b90:	8d 44 24 18          	lea    eax,[esp+0x18]
  974b94:	50                   	push   eax
  974b95:	e8 d6 4d c2 ff       	call   0x599970
  974b9a:	83 c4 04             	add    esp,0x4
  974b9d:	83 ec 08             	sub    esp,0x8
  974ba0:	84 c0                	test   al,al
  974ba2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  974ba5:	74 4d                	je     0x974bf4
  974ba7:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  974bad:	f3 0f 5c 40 14       	subss  xmm0,DWORD PTR [eax+0x14]
  974bb2:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  974bb8:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  974bbe:	f3 0f 5c 40 10       	subss  xmm0,DWORD PTR [eax+0x10]
  974bc3:	83 c3 40             	add    ebx,0x40
  974bc6:	8b cb                	mov    ecx,ebx
  974bc8:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  974bcd:	e8 de d9 fe ff       	call   0x9625b0
  974bd2:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  974bd6:	83 ec 08             	sub    esp,0x8
  974bd9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  974bdd:	8b cb                	mov    ecx,ebx
  974bdf:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  974be3:	d9 1c 24             	fstp   DWORD PTR [esp]
  974be6:	e8 85 d9 fe ff       	call   0x962570
  974beb:	5f                   	pop    edi
  974bec:	5e                   	pop    esi
  974bed:	5b                   	pop    ebx
  974bee:	8b e5                	mov    esp,ebp
  974bf0:	5d                   	pop    ebp
  974bf1:	c2 08 00             	ret    0x8
  974bf4:	d9 40 14             	fld    DWORD PTR [eax+0x14]
  974bf7:	8d 4b 40             	lea    ecx,[ebx+0x40]
  974bfa:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  974bfe:	d9 40 10             	fld    DWORD PTR [eax+0x10]
  974c01:	d9 1c 24             	fstp   DWORD PTR [esp]
  974c04:	e8 67 d9 fe ff       	call   0x962570
  974c09:	5f                   	pop    edi
  974c0a:	5e                   	pop    esi
  974c0b:	5b                   	pop    ebx
  974c0c:	8b e5                	mov    esp,ebp
  974c0e:	5d                   	pop    ebp
  974c0f:	c2 08 00             	ret    0x8
  974c12:	0f 2f 05 b4 b5 f9 00 	comiss xmm0,DWORD PTR ds:0xf9b5b4
  974c19:	76 27                	jbe    0x974c42
  974c1b:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  974c22:	00
  974c23:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  974c29:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974c2d:	51                   	push   ecx
  974c2e:	8d 4b 40             	lea    ecx,[ebx+0x40]
  974c31:	d9 1c 24             	fstp   DWORD PTR [esp]
  974c34:	e8 c7 d8 fe ff       	call   0x962500
  974c39:	5f                   	pop    edi
  974c3a:	5e                   	pop    esi
  974c3b:	5b                   	pop    ebx
  974c3c:	8b e5                	mov    esp,ebp
  974c3e:	5d                   	pop    ebp
  974c3f:	c2 08 00             	ret    0x8
  974c42:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  974c48:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974c4c:	51                   	push   ecx
  974c4d:	8d 4b 40             	lea    ecx,[ebx+0x40]
  974c50:	d9 1c 24             	fstp   DWORD PTR [esp]
  974c53:	e8 a8 d8 fe ff       	call   0x962500
  974c58:	5f                   	pop    edi
  974c59:	5e                   	pop    esi
  974c5a:	5b                   	pop    ebx
  974c5b:	8b e5                	mov    esp,ebp
  974c5d:	5d                   	pop    ebp
  974c5e:	c2 08 00             	ret    0x8
  974c61:	81 e9 01 10 54 02    	sub    ecx,0x2541001
  974c67:	83 f9 07             	cmp    ecx,0x7
  974c6a:	0f 87 02 01 00 00    	ja     0x974d72
  974c70:	ff 24 8d b8 4d 97 00 	jmp    DWORD PTR [ecx*4+0x974db8]
  974c77:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  974c7e:	0f 94 c1             	sete   cl
  974c81:	51                   	push   ecx
  974c82:	8d 4b 40             	lea    ecx,[ebx+0x40]
  974c85:	e8 b6 d9 fe ff       	call   0x962640
  974c8a:	5f                   	pop    edi
  974c8b:	5e                   	pop    esi
  974c8c:	5b                   	pop    ebx
  974c8d:	8b e5                	mov    esp,ebp
  974c8f:	5d                   	pop    ebp
  974c90:	c2 08 00             	ret    0x8
  974c93:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  974c9a:	8d 4b 40             	lea    ecx,[ebx+0x40]
  974c9d:	0f 94 c2             	sete   dl
  974ca0:	52                   	push   edx
  974ca1:	e8 da d9 fe ff       	call   0x962680
  974ca6:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  974cad:	75 15                	jne    0x974cc4
  974caf:	6a 01                	push   0x1
  974cb1:	6a 01                	push   0x1
  974cb3:	e8 98 4c c2 ff       	call   0x599950
  974cb8:	83 c4 08             	add    esp,0x8
  974cbb:	5f                   	pop    edi
  974cbc:	5e                   	pop    esi
  974cbd:	5b                   	pop    ebx
  974cbe:	8b e5                	mov    esp,ebp
  974cc0:	5d                   	pop    ebp
  974cc1:	c2 08 00             	ret    0x8
  974cc4:	6a 00                	push   0x0
  974cc6:	6a 00                	push   0x0
  974cc8:	e8 83 4c c2 ff       	call   0x599950
  974ccd:	6a 00                	push   0x0
  974ccf:	57                   	push   edi
  974cd0:	6a 02                	push   0x2
  974cd2:	e8 a9 db e1 ff       	call   0x792880
  974cd7:	83 c4 14             	add    esp,0x14
  974cda:	5f                   	pop    edi
  974cdb:	5e                   	pop    esi
  974cdc:	5b                   	pop    ebx
  974cdd:	8b e5                	mov    esp,ebp
  974cdf:	5d                   	pop    ebp
  974ce0:	c2 08 00             	ret    0x8
  974ce3:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  974cea:	8d 4b 40             	lea    ecx,[ebx+0x40]
  974ced:	0f 94 c0             	sete   al
  974cf0:	88 44 24 18          	mov    BYTE PTR [esp+0x18],al
  974cf4:	50                   	push   eax
  974cf5:	e8 c6 d9 fe ff       	call   0x9626c0
  974cfa:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  974cfe:	50                   	push   eax
  974cff:	e8 4c 43 c2 ff       	call   0x599050
  974d04:	83 c4 04             	add    esp,0x4
  974d07:	5f                   	pop    edi
  974d08:	5e                   	pop    esi
  974d09:	5b                   	pop    ebx
  974d0a:	8b e5                	mov    esp,ebp
  974d0c:	5d                   	pop    ebp
  974d0d:	c2 08 00             	ret    0x8
  974d10:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  974d17:	75 59                	jne    0x974d72
  974d19:	8b 13                	mov    edx,DWORD PTR [ebx]
  974d1b:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  974d1e:	8b cb                	mov    ecx,ebx
  974d20:	ff d0                	call   eax
  974d22:	5f                   	pop    edi
  974d23:	5e                   	pop    esi
  974d24:	5b                   	pop    ebx
  974d25:	8b e5                	mov    esp,ebp
  974d27:	5d                   	pop    ebp
  974d28:	c2 08 00             	ret    0x8
  974d2b:	81 7d 08 00 00 ce 5e 	cmp    DWORD PTR [ebp+0x8],0x5ece0000
  974d32:	75 3e                	jne    0x974d72
  974d34:	80 bb b6 08 00 00 00 	cmp    BYTE PTR [ebx+0x8b6],0x0
  974d3b:	75 35                	jne    0x974d72
  974d3d:	80 bb b7 08 00 00 00 	cmp    BYTE PTR [ebx+0x8b7],0x0
  974d44:	75 2c                	jne    0x974d72
  974d46:	80 bb bb 08 00 00 00 	cmp    BYTE PTR [ebx+0x8bb],0x0
  974d4d:	75 23                	jne    0x974d72
  974d4f:	80 bb bc 08 00 00 00 	cmp    BYTE PTR [ebx+0x8bc],0x0
  974d56:	75 1a                	jne    0x974d72
  974d58:	8b cb                	mov    ecx,ebx
  974d5a:	e8 51 f0 ff ff       	call   0x973db0
  974d5f:	e8 6c 4e ff ff       	call   0x969bd0
  974d64:	8b c8                	mov    ecx,eax
  974d66:	e8 85 d2 5a 00       	call   0xf21ff0
  974d6b:	8b c8                	mov    ecx,eax
  974d6d:	e8 3e 64 ff ff       	call   0x96b1b0
  974d72:	5f                   	pop    edi
  974d73:	5e                   	pop    esi
  974d74:	5b                   	pop    ebx
  974d75:	8b e5                	mov    esp,ebp
  974d77:	5d                   	pop    ebp
  974d78:	c2 08 00             	ret    0x8
