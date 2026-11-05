# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007527f0, 0x00752b50); analyst name RouteHost_DecodePathPlanFailure.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007527f0 <.text+0x3517f0>:
  7527f0:	83 ec 28             	sub    esp,0x28
  7527f3:	53                   	push   ebx
  7527f4:	8b c1                	mov    eax,ecx
  7527f6:	33 db                	xor    ebx,ebx
  7527f8:	38 98 f4 00 00 00    	cmp    BYTE PTR [eax+0xf4],bl
  7527fe:	57                   	push   edi
  7527ff:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  752803:	74 08                	je     0x75280d
  752805:	8b b8 ec 00 00 00    	mov    edi,DWORD PTR [eax+0xec]
  75280b:	eb 12                	jmp    0x75281f
  75280d:	05 e0 00 00 00       	add    eax,0xe0
  752812:	39 00                	cmp    DWORD PTR [eax],eax
  752814:	0f 84 2e 03 00 00    	je     0x752b48
  75281a:	8b 00                	mov    eax,DWORD PTR [eax]
  75281c:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  75281f:	3b fb                	cmp    edi,ebx
  752821:	0f 84 21 03 00 00    	je     0x752b48
  752827:	55                   	push   ebp
  752828:	56                   	push   esi
  752829:	8d 47 04             	lea    eax,[edi+0x4]
  75282c:	b9 01 00 00 00       	mov    ecx,0x1
  752831:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  752835:	8b 17                	mov    edx,DWORD PTR [edi]
  752837:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  75283a:	8b cf                	mov    ecx,edi
  75283c:	ff d0                	call   eax
  75283e:	83 f8 08             	cmp    eax,0x8
  752841:	0f 87 d5 02 00 00    	ja     0x752b1c
  752847:	ff 24 85 50 2b 75 00 	jmp    DWORD PTR [eax*4+0x752b50]
  75284e:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  752852:	c7 01 01 00 00 00    	mov    DWORD PTR [ecx],0x1
  752858:	e9 c9 02 00 00       	jmp    0x752b26
  75285d:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  752861:	c7 02 02 00 00 00    	mov    DWORD PTR [edx],0x2
  752867:	e9 ba 02 00 00       	jmp    0x752b26
  75286c:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  752870:	c7 00 03 00 00 00    	mov    DWORD PTR [eax],0x3
  752876:	e9 ab 02 00 00       	jmp    0x752b26
  75287b:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  75287f:	c7 01 04 00 00 00    	mov    DWORD PTR [ecx],0x4
  752885:	e9 9c 02 00 00       	jmp    0x752b26
  75288a:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  75288e:	c7 02 0a 00 00 00    	mov    DWORD PTR [edx],0xa
  752894:	e9 8d 02 00 00       	jmp    0x752b26
  752899:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  75289d:	c7 06 10 00 00 00    	mov    DWORD PTR [esi],0x10
  7528a3:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  7528a6:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  7528a9:	8b 07                	mov    eax,DWORD PTR [edi]
  7528ab:	8b 90 60 01 00 00    	mov    edx,DWORD PTR [eax+0x160]
  7528b1:	8b cf                	mov    ecx,edi
  7528b3:	ff d2                	call   edx
  7528b5:	85 c0                	test   eax,eax
  7528b7:	0f 86 69 02 00 00    	jbe    0x752b26
  7528bd:	8b 07                	mov    eax,DWORD PTR [edi]
  7528bf:	8b 90 60 01 00 00    	mov    edx,DWORD PTR [eax+0x160]
  7528c5:	8b cf                	mov    ecx,edi
  7528c7:	ff d2                	call   edx
  7528c9:	33 ed                	xor    ebp,ebp
  7528cb:	3b c3                	cmp    eax,ebx
  7528cd:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  7528d1:	0f 86 4f 02 00 00    	jbe    0x752b26
  7528d7:	eb 09                	jmp    0x7528e2
  7528d9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7528e0:	33 db                	xor    ebx,ebx
  7528e2:	8b 07                	mov    eax,DWORD PTR [edi]
  7528e4:	0f 57 c0             	xorps  xmm0,xmm0
  7528e7:	8b 80 64 01 00 00    	mov    eax,DWORD PTR [eax+0x164]
  7528ed:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  7528f1:	51                   	push   ecx
  7528f2:	8d 54 24 38          	lea    edx,[esp+0x38]
  7528f6:	52                   	push   edx
  7528f7:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  7528fb:	51                   	push   ecx
  7528fc:	8d 54 24 30          	lea    edx,[esp+0x30]
  752900:	52                   	push   edx
  752901:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  752905:	51                   	push   ecx
  752906:	8d 54 24 24          	lea    edx,[esp+0x24]
  75290a:	52                   	push   edx
  75290b:	55                   	push   ebp
  75290c:	8b cf                	mov    ecx,edi
  75290e:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  752912:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
  752916:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  75291a:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  75291e:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  752922:	89 5c 24 58          	mov    DWORD PTR [esp+0x58],ebx
  752926:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  75292c:	ff d0                	call   eax
  75292e:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  752932:	32 c9                	xor    cl,cl
  752934:	3b d3                	cmp    edx,ebx
  752936:	7d 02                	jge    0x75293a
  752938:	b1 01                	mov    cl,0x1
  75293a:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  75293e:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  752942:	3b 58 40             	cmp    ebx,DWORD PTR [eax+0x40]
  752945:	75 09                	jne    0x752950
  752947:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  75294b:	3b 58 44             	cmp    ebx,DWORD PTR [eax+0x44]
  75294e:	74 56                	je     0x7529a6
  752950:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  752954:	83 f8 14             	cmp    eax,0x14
  752957:	74 5f                	je     0x7529b8
  752959:	83 f8 01             	cmp    eax,0x1
  75295c:	0f 84 67 01 00 00    	je     0x752ac9
  752962:	83 f8 09             	cmp    eax,0x9
  752965:	0f 84 5e 01 00 00    	je     0x752ac9
  75296b:	83 f8 04             	cmp    eax,0x4
  75296e:	0f 84 2c 01 00 00    	je     0x752aa0
  752974:	83 f8 15             	cmp    eax,0x15
  752977:	0f 84 23 01 00 00    	je     0x752aa0
  75297d:	83 f8 08             	cmp    eax,0x8
  752980:	74 62                	je     0x7529e4
  752982:	83 f8 0c             	cmp    eax,0xc
  752985:	0f 84 cd 00 00 00    	je     0x752a58
  75298b:	83 f8 17             	cmp    eax,0x17
  75298e:	0f 84 c4 00 00 00    	je     0x752a58
  752994:	83 f8 0e             	cmp    eax,0xe
  752997:	0f 84 8f 00 00 00    	je     0x752a2c
  75299d:	83 f8 10             	cmp    eax,0x10
  7529a0:	0f 84 86 00 00 00    	je     0x752a2c
  7529a6:	83 c5 01             	add    ebp,0x1
  7529a9:	3b 6c 24 18          	cmp    ebp,DWORD PTR [esp+0x18]
  7529ad:	0f 82 2d ff ff ff    	jb     0x7528e0
  7529b3:	e9 6e 01 00 00       	jmp    0x752b26
  7529b8:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  7529bc:	84 c9                	test   cl,cl
  7529be:	0f 94 c1             	sete   cl
  7529c1:	51                   	push   ecx
  7529c2:	6a 01                	push   0x1
  7529c4:	52                   	push   edx
  7529c5:	83 ec 08             	sub    esp,0x8
  7529c8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7529cc:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  7529d0:	d9 1c 24             	fstp   DWORD PTR [esp]
  7529d3:	e8 08 81 ff ff       	call   0x74aae0
  7529d8:	c7 46 28 01 00 00 00 	mov    DWORD PTR [esi+0x28],0x1
  7529df:	e9 0c 01 00 00       	jmp    0x752af0
  7529e4:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  7529e8:	84 c9                	test   cl,cl
  7529ea:	0f 94 c1             	sete   cl
  7529ed:	51                   	push   ecx
  7529ee:	6a 01                	push   0x1
  7529f0:	52                   	push   edx
  7529f1:	83 ec 08             	sub    esp,0x8
  7529f4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7529f8:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  7529fc:	d9 1c 24             	fstp   DWORD PTR [esp]
  7529ff:	e8 dc 80 ff ff       	call   0x74aae0
  752a04:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  752a08:	d9 5c 24 44          	fstp   DWORD PTR [esp+0x44]
  752a0c:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  752a10:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  752a14:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  752a17:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  752a1a:	83 c4 14             	add    esp,0x14
  752a1d:	c7 46 28 05 00 00 00 	mov    DWORD PTR [esi+0x28],0x5
  752a24:	89 4e 34             	mov    DWORD PTR [esi+0x34],ecx
  752a27:	e9 fa 00 00 00       	jmp    0x752b26
  752a2c:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  752a30:	84 c9                	test   cl,cl
  752a32:	0f 94 c0             	sete   al
  752a35:	50                   	push   eax
  752a36:	6a 01                	push   0x1
  752a38:	52                   	push   edx
  752a39:	83 ec 08             	sub    esp,0x8
  752a3c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  752a40:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  752a44:	d9 1c 24             	fstp   DWORD PTR [esp]
  752a47:	e8 94 80 ff ff       	call   0x74aae0
  752a4c:	c7 46 28 07 00 00 00 	mov    DWORD PTR [esi+0x28],0x7
  752a53:	e9 a6 00 00 00       	jmp    0x752afe
  752a58:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  752a5c:	84 c9                	test   cl,cl
  752a5e:	0f 94 c1             	sete   cl
  752a61:	51                   	push   ecx
  752a62:	6a 01                	push   0x1
  752a64:	52                   	push   edx
  752a65:	83 ec 08             	sub    esp,0x8
  752a68:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  752a6c:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  752a70:	d9 1c 24             	fstp   DWORD PTR [esp]
  752a73:	e8 68 80 ff ff       	call   0x74aae0
  752a78:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  752a7c:	d9 5c 24 44          	fstp   DWORD PTR [esp+0x44]
  752a80:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  752a84:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  752a88:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  752a8b:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  752a8e:	83 c4 14             	add    esp,0x14
  752a91:	c7 46 28 06 00 00 00 	mov    DWORD PTR [esi+0x28],0x6
  752a98:	89 4e 34             	mov    DWORD PTR [esi+0x34],ecx
  752a9b:	e9 86 00 00 00       	jmp    0x752b26
  752aa0:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  752aa4:	84 c9                	test   cl,cl
  752aa6:	0f 94 c0             	sete   al
  752aa9:	50                   	push   eax
  752aaa:	6a 01                	push   0x1
  752aac:	52                   	push   edx
  752aad:	83 ec 08             	sub    esp,0x8
  752ab0:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  752ab4:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  752ab8:	d9 1c 24             	fstp   DWORD PTR [esp]
  752abb:	e8 20 80 ff ff       	call   0x74aae0
  752ac0:	c7 46 28 04 00 00 00 	mov    DWORD PTR [esi+0x28],0x4
  752ac7:	eb 35                	jmp    0x752afe
  752ac9:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  752acd:	84 c9                	test   cl,cl
  752acf:	0f 94 c1             	sete   cl
  752ad2:	51                   	push   ecx
  752ad3:	6a 01                	push   0x1
  752ad5:	52                   	push   edx
  752ad6:	83 ec 08             	sub    esp,0x8
  752ad9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  752add:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  752ae1:	d9 1c 24             	fstp   DWORD PTR [esp]
  752ae4:	e8 f7 7f ff ff       	call   0x74aae0
  752ae9:	c7 46 28 03 00 00 00 	mov    DWORD PTR [esi+0x28],0x3
  752af0:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  752af4:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  752af8:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  752afb:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  752afe:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  752b02:	d9 5c 24 44          	fstp   DWORD PTR [esp+0x44]
  752b06:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  752b0a:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  752b0e:	89 4e 2c             	mov    DWORD PTR [esi+0x2c],ecx
  752b11:	89 56 30             	mov    DWORD PTR [esi+0x30],edx
  752b14:	83 c4 14             	add    esp,0x14
  752b17:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  752b1a:	eb 0a                	jmp    0x752b26
  752b1c:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  752b20:	c7 01 02 00 00 00    	mov    DWORD PTR [ecx],0x2
  752b26:	8d 47 04             	lea    eax,[edi+0x4]
  752b29:	5e                   	pop    esi
  752b2a:	8b d0                	mov    edx,eax
  752b2c:	83 c9 ff             	or     ecx,0xffffffff
  752b2f:	5d                   	pop    ebp
  752b30:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  752b34:	49                   	dec    ecx
  752b35:	75 11                	jne    0x752b48
  752b37:	ba 01 00 00 00       	mov    edx,0x1
  752b3c:	87 10                	xchg   DWORD PTR [eax],edx
  752b3e:	8b 07                	mov    eax,DWORD PTR [edi]
  752b40:	8b 10                	mov    edx,DWORD PTR [eax]
  752b42:	6a 01                	push   0x1
  752b44:	8b cf                	mov    ecx,edi
  752b46:	ff d2                	call   edx
  752b48:	5f                   	pop    edi
  752b49:	5b                   	pop    ebx
  752b4a:	83 c4 28             	add    esp,0x28
  752b4d:	c2 04 00             	ret    0x4
